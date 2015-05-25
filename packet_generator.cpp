#include "packet_generator.h"


void packet_generator(
		//stream <axi_interface_type> &out_data,

		ap_uint<ETH_INTERFACE_WIDTH> out,

		ap_uint<48> *mac_destination,
		ap_uint<48> *mac_source,
		ap_uint<16> *length,				// length with out MAC
		ap_uint<32> *ip_destination,
		ap_uint<32> *ip_source,
		ap_uint<16> *source_port,
		ap_uint<16> *destination_port,

		ap_uint<32> *inter_packet_gap,
		ap_uint<16> *num_pkt,

		ap_uint<1>  *continuos

		){


//#pragma HLS RESOURCE variable=out_data core=AXIS metadata="-bus_bundle S_AXIS_RXD"

#pragma HLS RESOURCE variable=mac_destination core=AXI4LiteS metadata="-bus_bundle S_AXI_LITE"
#pragma HLS RESOURCE variable=mac_source core=AXI4LiteS metadata="-bus_bundle S_AXI_LITE"
#pragma HLS RESOURCE variable=length core=AXI4LiteS metadata="-bus_bundle S_AXI_LITE"
#pragma HLS RESOURCE variable=ip_destination core=AXI4LiteS metadata="-bus_bundle S_AXI_LITE"
#pragma HLS RESOURCE variable=ip_source core=AXI4LiteS metadata="-bus_bundle S_AXI_LITE"
#pragma HLS RESOURCE variable=source_port core=AXI4LiteS metadata="-bus_bundle S_AXI_LITE"
#pragma HLS RESOURCE variable=destination_port core=AXI4LiteS metadata="-bus_bundle S_AXI_LITE"
#pragma HLS RESOURCE variable=num_pkt core=AXI4LiteS metadata="-bus_bundle S_AXI_LITE"
#pragma HLS RESOURCE variable=inter_packet_gap core=AXI4LiteS metadata="-bus_bundle S_AXI_LITE"
#pragma HLS RESOURCE variable=continuos core=AXI4LiteS metadata="-bus_bundle S_AXI_LITE"

#pragma HLS RESOURCE variable=return core=AXI4LiteS metadata="-bus_bundle S_AXI_LITE"

	

	ap_uint<16> pkt_send=0;

	ap_uint<WIDTH_BASE> base_pkt;

	ap_uint<16> ip_type = 0x800,chk_sum_ip=0xfa17,length_udp,chk_sum_udp;
	ap_uint<4> ip_ver = 4 , ip_hdr_len = 5; 
	ap_uint<8> type_of_service = 0, filled=0xFF;
	ap_uint<3> ip_flag =0;
	ap_uint<13> fragment_offset;
	ap_uint<8> time_to_live= 255, protocol= 0x11;

	ap_uint<64> data=0xFFFFFFFFFFFFFFFF, sum_chk=0;


	length_udp = *length - 20;


	int i,j,l;

	int rest_trans,complete_trans,last_bytes;

	int trans_base;

	ap_uint<ETH_INTERFACE_WIDTH/8> keep;


	read_data:	while (pkt_send!=*num_pkt || *continuos == 1){
#pragma HLS PIPELINE
#pragma HLS LOOP_TRIPCOUNT min=1 max=1518 // only estimating clock cycles in simulation

		base_pkt=(*mac_destination,*mac_source,ip_type,ip_ver, ip_hdr_len,type_of_service,
				  *length,pkt_send.range(15,0),ip_flag,fragment_offset,time_to_live,protocol,
				  chk_sum_ip,*ip_source,*ip_destination,*source_port,*destination_port,
				  length_udp,chk_sum_udp,data,data,filled,filled);


		chk_sum_ip = ~(sum_chk.range(63,32) + sum_chk.range(31,0))+1;

		trans_base = WIDTH_BASE / ETH_INTERFACE_WIDTH;

		rest_trans = (((*length+14)*8) % ETH_INTERFACE_WIDTH)/8;

		//complete_trans = ((*length+14)*8 / ETH_INTERFACE_WIDTH) - trans_base;

		complete_trans = ((*length+14)*8 / ETH_INTERFACE_WIDTH);

		last_bytes = WIDTH_BASE % ETH_INTERFACE_WIDTH;

		cout << "Hacen falta " << trans_base << " transacciones de base" << endl;
		cout << "faltan enviar "<< complete_trans << " transacciones completas y "<<rest_trans << " bytes " <<endl;

		cout << "last bytes " << last_bytes << endl;

		keep = 0;

		for (i=0; i< ETH_INTERFACE_WIDTH-1 ; i++)
			keep += 1 << i;

		i=WIDTH_BASE-1;



		for (l=0; l < complete_trans ; l++){



			if (l < trans_base) {
				out = base_pkt.range(i,i-ETH_INTERFACE_WIDTH + 1);
//				cout << "inside 1" << endl;
			}
			else if (l==trans_base){
				out = base_pkt.range(last_bytes,0);
//				cout << "inside 2" << endl;
			}
			else{
				out = 0;
//				cout << "inside 3" << endl;
			}


			cout << "i ( " << dec <<i << " , "<<i-ETH_INTERFACE_WIDTH+1 <<")\tdata = "<< hex << out;
			cout << "\tkeep " << hex << keep << endl;

			i-=ETH_INTERFACE_WIDTH;

		}

//		cout << "i after for " << dec << i << endl;

		keep =0;

		if (complete_trans == trans_base) {
			out = base_pkt.range(i,0);
			for (j=0;j<rest_trans;j++){
				keep += 1<< j;
			}
			cout << "i ( " << dec <<i << " , "<< 0 <<")\tdata = "<< hex << out;

			cout << "\tkeep " << keep<< endl;
		}

//		if (complete_trans == 0){
//			//i = i + ETH_INTERFACE_WIDTH;
//			out = base_pkt.range(i,0);
//
//			for (j=0;j<rest_trans;j++){
//				keep += 1<< j;
//			}
//
//			cout << "i ( " << dec <<i << " , "<< 0 <<")\tdata = "<< hex << out;
//
//			cout << "\tkeep " << keep<< endl;
//		}

		//out = base_pkt.range(ETH_INTERFACE_WIDTH-1,0);

		//cout << "base pkt" << base_pkt <<endl;


		pkt_send++;
	}
}	
