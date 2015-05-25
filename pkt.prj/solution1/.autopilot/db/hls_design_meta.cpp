#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("out_V", 32, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("mac_destination_V", 48, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("mac_source_V", 48, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("length_V", 16, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("ip_destination_V", 32, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("ip_source_V", 32, hls_in, 5, "ap_none", "in_data", 1),
	Port_Property("source_port_V", 16, hls_in, 6, "ap_none", "in_data", 1),
	Port_Property("destination_port_V", 16, hls_in, 7, "ap_none", "in_data", 1),
	Port_Property("inter_packet_gap_V", 32, hls_in, 8, "ap_none", "in_data", 1),
	Port_Property("num_pkt_V", 16, hls_in, 9, "ap_none", "in_data", 1),
	Port_Property("continuos_V", 1, hls_in, 10, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "packet_generator";
