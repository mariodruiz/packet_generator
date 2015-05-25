; ModuleID = 'C:/Users/eps/Desktop/packet_generator/pkt.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1
@p_str2 = private unnamed_addr constant [23 x i8] c"-bus_bundle S_AXI_LITE\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [17 x i8] c"packet_generator\00"

define void @packet_generator(i32 %out_V, i48* %mac_destination_V, i48* %mac_source_V, i16* %length_V, i32* %ip_destination_V, i32* %ip_source_V, i16* %source_port_V, i16* %destination_port_V, i32* %inter_packet_gap_V, i16* %num_pkt_V, i1* %continuos_V) readnone {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %out_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i48* %mac_destination_V), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i48* %mac_source_V), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %length_V), !map !21
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %ip_destination_V), !map !25
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %ip_source_V), !map !29
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %source_port_V), !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %destination_port_V), !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %inter_packet_gap_V), !map !41
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %num_pkt_V), !map !45
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %continuos_V), !map !49
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i48* %mac_destination_V, [1 x i8]* @p_str, [10 x i8]* @p_str1, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [23 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecIFCore(i48* %mac_source_V, [1 x i8]* @p_str, [10 x i8]* @p_str1, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [23 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecIFCore(i16* %length_V, [1 x i8]* @p_str, [10 x i8]* @p_str1, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [23 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecIFCore(i32* %ip_destination_V, [1 x i8]* @p_str, [10 x i8]* @p_str1, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [23 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecIFCore(i32* %ip_source_V, [1 x i8]* @p_str, [10 x i8]* @p_str1, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [23 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecIFCore(i16* %source_port_V, [1 x i8]* @p_str, [10 x i8]* @p_str1, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [23 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecIFCore(i16* %destination_port_V, [1 x i8]* @p_str, [10 x i8]* @p_str1, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [23 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecIFCore(i16* %num_pkt_V, [1 x i8]* @p_str, [10 x i8]* @p_str1, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [23 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecIFCore(i32* %inter_packet_gap_V, [1 x i8]* @p_str, [10 x i8]* @p_str1, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [23 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecIFCore(i1* %continuos_V, [1 x i8]* @p_str, [10 x i8]* @p_str1, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [23 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str, [10 x i8]* @p_str1, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [23 x i8]* @p_str2)
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind

define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"out.V", metadata !11, metadata !"uint32", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 0}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 47, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"mac_destination.V", metadata !5, metadata !"uint48", i32 0, i32 47}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 47, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"mac_source.V", metadata !5, metadata !"uint48", i32 0, i32 47}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 15, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"length.V", metadata !5, metadata !"uint16", i32 0, i32 15}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 31, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"ip_destination.V", metadata !5, metadata !"uint32", i32 0, i32 31}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 31, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"ip_source.V", metadata !5, metadata !"uint32", i32 0, i32 31}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 15, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"source_port.V", metadata !5, metadata !"uint16", i32 0, i32 15}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 15, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"destination_port.V", metadata !5, metadata !"uint16", i32 0, i32 15}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 31, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"inter_packet_gap.V", metadata !5, metadata !"uint32", i32 0, i32 31}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 15, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"num_pkt.V", metadata !5, metadata !"uint16", i32 0, i32 15}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 0, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"continuos.V", metadata !5, metadata !"uint1", i32 0, i32 0}
