
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name XJY1126_09 -dir "C:/Users/89293/Desktop/Lab1_V4_final/planAhead_run_1" -part xc7k325tffg676-2L
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/89293/Desktop/Lab1_V4_final/M_datapath.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/89293/Desktop/Lab1_V4_final} {ipcore_dir} }
add_files [list {ipcore_dir/RAM_B.ncf}] -fileset [get_property constrset [current_run]]
set_param project.pinAheadLayout  yes
set_property target_constrs_file "M_datapath.ucf" [current_fileset -constrset]
add_files [list {M_datapath.ucf}] -fileset [get_property constrset [current_run]]
link_design
