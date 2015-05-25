#include "packet_generator.h"



int main(void){
	
	ap_uint<48> mac_destination=0xBC855635424D;//0x000FFECA
	ap_uint<48> mac_source=0x8803553E0428;

	ap_uint<32> ip_source=0x9D38342F;
	ap_uint<32> ip_destination=0xC0A80170;
	ap_uint<16> source_port=0x9C5B;
	ap_uint<16> destination_port=0xF0E2;

	ap_uint<16> length=50;
	
	ap_uint<16> num_pkt = 1;
	ap_uint<1> continuos = 0;

	ap_uint<32> inter_packet_gap =0;

	ap_uint<ETH_INTERFACE_WIDTH> out;




	packet_generator(	&out,
						&mac_destination,
						&mac_source,
						&length,				// length with out MAC
						&ip_destination,
						&ip_source,
						&source_port,
						&destination_port,

						&inter_packet_gap,
						&num_pkt,

						&continuos

		);


	
	return /*error*/0;
}
