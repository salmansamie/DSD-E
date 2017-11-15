
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name microprogram_cdp_test_VHDL -dir "C:/Users/neoke/Desktop/DSD-E/for_testing_submission/project/planAhead_run_1" -part xc3s500eft256-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "C:/Users/neoke/Desktop/DSD-E/for_testing_submission/project/microprogram_cdp_test_VHDL/four_bit_alu.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {microprogram_cdp_test_VHDL/OR.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {microprogram_cdp_test_VHDL/half_adder.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {microprogram_cdp_test_VHDL/full_adder.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {microprogram_cdp_test_VHDL/XOR.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {microprogram_cdp_test_VHDL/NOT.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {microprogram_cdp_test_VHDL/nbit_adder.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {microprogram_cdp_test_VHDL/four_bit_LAC.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {microprogram_cdp_test_VHDL/AND.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {microprogram_cdp_test_VHDL/two_input_multiplexer.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {microprogram_cdp_test_VHDL/nbit_xor_contol.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {microprogram_cdp_test_VHDL/four_input_mux.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {microprogram_cdp_test_VHDL/four_bit_LAC_adder.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {microprogram_cdp_test_VHDL/one_bit_logic_slice.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {microprogram_cdp_test_VHDL/nbit_two_input_mux.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {microprogram_cdp_test_VHDL/four_bit_adder_subtractor.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {microprogram_cdp_test_VHDL/nbit_logic_unit.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {microprogram_cdp_test_VHDL/four_bit_arithmetic_unit.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {microprogram_cdp_test_VHDL/four_bit_alu.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top four_bit_alu $srcset
add_files [list {C:/Users/neoke/Desktop/DSD-E/for_testing_submission/project/microprogram_cdp_test_VHDL/four_bit_alu.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500eft256-4
