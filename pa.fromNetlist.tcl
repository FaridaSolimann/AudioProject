
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name DSP -dir "C:/Users/faridasoliman.AUC/Downloads/DSP1/DSP/planAhead_run_1" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/faridasoliman.AUC/Downloads/DSP1/DSP/Test.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/faridasoliman.AUC/Downloads/DSP1/DSP} {ipcore_dir} }
add_files [list {ipcore_dir/delay.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/maged.ncf}] -fileset [get_property constrset [current_run]]
set_property target_constrs_file "test_ucf.ucf" [current_fileset -constrset]
add_files [list {test_ucf.ucf}] -fileset [get_property constrset [current_run]]
link_design
