
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Calculator -dir "C:/Users/seb/Documents/GitHub/Calculator/planAhead_run_2" -part xc6slx9csg324-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/seb/Documents/GitHub/Calculator/lab2_design_top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/seb/Documents/GitHub/Calculator} }
set_property target_constrs_file "lab2_design_top.ucf" [current_fileset -constrset]
add_files [list {lab2_design_top.ucf}] -fileset [get_property constrset [current_run]]
link_design