#include "packet_generator.h"
#include <stdio.h>


int main(void){
	
//	ap_uint<48> mac_destination=0xBC855635424D;//0x000FFECA
//	ap_uint<48> mac_source=0x8803553E0428;
//
//	ap_uint<32> ip_source=0x9D38342F;
//	ap_uint<32> ip_destination=0xC0A80170;
//	ap_uint<16> source_port=0x9C5B;
//	ap_uint<16> destination_port=0xF0E2;
//
//	ap_uint<16> length=46;
//
//	ap_uint<16> num_pkt = 1;
//	ap_uint<1> continuos = 0;
//
//	ap_uint<32> inter_packet_gap =0;

	ap_uint<48> mac_destination;//0x000FFECA
	ap_uint<48> mac_source;
	ap_uint<32> ip_source;
	ap_uint<32> ip_destination;
	ap_uint<16> source_port;
	ap_uint<16> destination_port;
	ap_uint<16> length;
	ap_uint<16> num_pkt;
	ap_uint<1> continuos;
	ap_uint<32> inter_packet_gap;

	ap_uint<ETH_INTERFACE_WIDTH> out;


	FILE *ptr;
	ptr=fopen("pkt_field.txt","r");

	if((ptr=fopen("pkt_field.txt","r"))==NULL){
		cout << "Error can't open file" << endl;
		return -1;
	}

	fscanf(ptr,"%llX",&mac_destination);
	fscanf(ptr,"%llX",&mac_source);
	fscanf(ptr,"%X",&ip_source);
	fscanf(ptr,"%X",&ip_destination);
	fscanf(ptr,"%X",&source_port);
	fscanf(ptr,"%X",&destination_port);
	fscanf(ptr,"%d",&length);
	fscanf(ptr,"%d",&num_pkt);
	fscanf(ptr,"%d",&continuos);
	fscanf(ptr,"%d",&inter_packet_gap);



	cout << "mac destination " << hex << mac_destination << endl;
	cout << "mac source " << hex << mac_source << endl;
	cout << "ip_source " << hex << ip_source << endl;
	cout << "ip_destination " << hex << ip_destination << endl;
	cout << "source port " << hex << source_port << endl;
	cout << "destination port " << hex << destination_port << endl;
	cout << "length " << dec << length << endl;
	cout << "num pkt " << hex << num_pkt << endl;
	cout << "continuos " << hex << continuos << endl;
	cout << "inter packet gap " << hex << inter_packet_gap << endl;


//
//	packet_generator(	&out,
//						&mac_destination,
//						&mac_source,
//						&length,				// length with out MAC
//						&ip_destination,
//						&ip_source,
//						&source_port,
//						&destination_port,
//
//						&inter_packet_gap,
//						&num_pkt,
//
//						&continuos
//
//		);


	fclose(ptr);

	
	return /*error*/0;
}
