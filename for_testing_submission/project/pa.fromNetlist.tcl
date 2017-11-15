
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name microprogram_cdp_test_VHDL -dir "C:/Users/neoke/Desktop/DSD-E/for_testing_submission/project/planAhead_run_2" -part xc3s500eft256-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/neoke/Desktop/DSD-E/for_testing_submission/project/four_bit_alu.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/neoke/Desktop/DSD-E/for_testing_submission/project} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "C:/Users/neoke/Desktop/DSD-E/for_testing_submission/project/microprogram_cdp_test_VHDL/four_bit_alu.ucf" [current_fileset -constrset]
add_files [list {C:/Users/neoke/Desktop/DSD-E/for_testing_submission/project/microprogram_cdp_test_VHDL/four_bit_alu.ucf}] -fileset [get_property constrset [current_run]]
link_design
