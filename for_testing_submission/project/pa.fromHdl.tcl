
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name microprogram_cdp_test_VHDL -dir "E:/for_testing_submission/project/planAhead_run_3" -part xc3s500eft256-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "E:/for_testing_submission/project/microprogram_cdp_test_VHDL/four_bit_synchronous_counter.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {microprogram_cdp_test_VHDL/d_flipflop.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../src/lab4/next_state_logic.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {microprogram_cdp_test_VHDL/nbit_reg.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../src/lab4/four_bit_synchronous_counter.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top four_bit_synchronous_counter $srcset
add_files [list {E:/for_testing_submission/project/microprogram_cdp_test_VHDL/four_bit_synchronous_counter.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500eft256-4
