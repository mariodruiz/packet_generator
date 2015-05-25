set moduleName packet_generator
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {packet_generator}
set C_modelType { void 0 }
set C_modelArgList { 
	{ out_V int 32 unused  }
	{ mac_destination_V int 48 unused {pointer 0}  }
	{ mac_source_V int 48 unused {pointer 0}  }
	{ length_V int 16 unused {pointer 0}  }
	{ ip_destination_V int 32 unused {pointer 0}  }
	{ ip_source_V int 32 unused {pointer 0}  }
	{ source_port_V int 16 unused {pointer 0}  }
	{ destination_port_V int 16 unused {pointer 0}  }
	{ inter_packet_gap_V int 32 unused {pointer 0}  }
	{ num_pkt_V int 16 unused {pointer 0}  }
	{ continuos_V int 1 unused {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "out_V", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "mac_destination_V", "interface" : "wire", "bitwidth" : 48,"bitSlice":[{"low":0,"up":47,"cElement": [{"cName": "mac_destination.V","cData": "uint48","bit_use": { "low": 0,"up": 47},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "mac_source_V", "interface" : "wire", "bitwidth" : 48,"bitSlice":[{"low":0,"up":47,"cElement": [{"cName": "mac_source.V","cData": "uint48","bit_use": { "low": 0,"up": 47},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "length_V", "interface" : "wire", "bitwidth" : 16,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "length.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ip_destination_V", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ip_destination.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ip_source_V", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ip_source.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "source_port_V", "interface" : "wire", "bitwidth" : 16,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "source_port.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "destination_port_V", "interface" : "wire", "bitwidth" : 16,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "destination_port.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inter_packet_gap_V", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "inter_packet_gap.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "num_pkt_V", "interface" : "wire", "bitwidth" : 16,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "num_pkt.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "continuos_V", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "continuos.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_V sc_in sc_lv 32 signal 0 } 
	{ mac_destination_V sc_in sc_lv 48 signal 1 } 
	{ mac_source_V sc_in sc_lv 48 signal 2 } 
	{ length_V sc_in sc_lv 16 signal 3 } 
	{ ip_destination_V sc_in sc_lv 32 signal 4 } 
	{ ip_source_V sc_in sc_lv 32 signal 5 } 
	{ source_port_V sc_in sc_lv 16 signal 6 } 
	{ destination_port_V sc_in sc_lv 16 signal 7 } 
	{ inter_packet_gap_V sc_in sc_lv 32 signal 8 } 
	{ num_pkt_V sc_in sc_lv 16 signal 9 } 
	{ continuos_V sc_in sc_lv 1 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_V", "role": "default" }} , 
 	{ "name": "mac_destination_V", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_destination_V", "role": "default" }} , 
 	{ "name": "mac_source_V", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_source_V", "role": "default" }} , 
 	{ "name": "length_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "length_V", "role": "default" }} , 
 	{ "name": "ip_destination_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ip_destination_V", "role": "default" }} , 
 	{ "name": "ip_source_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ip_source_V", "role": "default" }} , 
 	{ "name": "source_port_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "source_port_V", "role": "default" }} , 
 	{ "name": "destination_port_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "destination_port_V", "role": "default" }} , 
 	{ "name": "inter_packet_gap_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inter_packet_gap_V", "role": "default" }} , 
 	{ "name": "num_pkt_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "num_pkt_V", "role": "default" }} , 
 	{ "name": "continuos_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "continuos_V", "role": "default" }}  ]}
set Spec2ImplPortList { 
	out_V { ap_none {  { out_V in_data 0 32 } } }
	mac_destination_V { ap_none {  { mac_destination_V in_data 0 48 } } }
	mac_source_V { ap_none {  { mac_source_V in_data 0 48 } } }
	length_V { ap_none {  { length_V in_data 0 16 } } }
	ip_destination_V { ap_none {  { ip_destination_V in_data 0 32 } } }
	ip_source_V { ap_none {  { ip_source_V in_data 0 32 } } }
	source_port_V { ap_none {  { source_port_V in_data 0 16 } } }
	destination_port_V { ap_none {  { destination_port_V in_data 0 16 } } }
	inter_packet_gap_V { ap_none {  { inter_packet_gap_V in_data 0 32 } } }
	num_pkt_V { ap_none {  { num_pkt_V in_data 0 16 } } }
	continuos_V { ap_none {  { continuos_V in_data 0 1 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
