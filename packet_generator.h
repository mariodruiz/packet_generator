#include <ap_int.h>
#include <hls_stream.h>
#include <stdint.h>
#include <iostream>

//#ifndef _RECEIVE_H_
//#define _RECEIVE_H_

using namespace std;
using namespace hls;

// Use hls namespace
//#define IP_TYPE 0x800
//#define IP_VER 4
//#define IP_HDR_LEN 5
#define WIDTH_BASE 480



#define ETH_INTERFACE_WIDTH 128

template<int D>
struct my_axis {
	ap_uint<D> data;
	ap_uint<D / 8> keep;
	ap_uint<1> last;
};

typedef my_axis<ETH_INTERFACE_WIDTH> axi_interface_type;

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

		);

//#endif
