
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name microprogram_cdp_test_VHDL -dir "E:/for_testing_submission/project/planAhead_run_3" -part xc3s500eft256-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/for_testing_submission/project/modm_async_count.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/for_testing_submission/project} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "E:/for_testing_submission/project/microprogram_cdp_test_VHDL/modm_async_count.ucf" [current_fileset -constrset]
add_files [list {E:/for_testing_submission/project/microprogram_cdp_test_VHDL/modm_async_count.ucf}] -fileset [get_property constrset [current_run]]
link_design
