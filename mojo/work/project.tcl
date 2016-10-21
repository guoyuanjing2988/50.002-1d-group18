set projDir "C:/Users/Rosen Chang/Documents/50.002-1d-group18/mojo/work/planAhead"
set projName "mojo"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/Rosen Chang/Documents/50.002-1d-group18/mojo/work/verilog/mojo_top_0.v" "C:/Users/Rosen Chang/Documents/50.002-1d-group18/mojo/work/verilog/alu_1.v" "C:/Users/Rosen Chang/Documents/50.002-1d-group18/mojo/work/verilog/reset_conditioner_2.v" "C:/Users/Rosen Chang/Documents/50.002-1d-group18/mojo/work/verilog/test_case_3.v" "C:/Users/Rosen Chang/Documents/50.002-1d-group18/mojo/work/verilog/eightbitadder_4.v" "C:/Users/Rosen Chang/Documents/50.002-1d-group18/mojo/work/verilog/eightbitsubtracter_5.v" "C:/Users/Rosen Chang/Documents/50.002-1d-group18/mojo/work/verilog/eightbitand_6.v" "C:/Users/Rosen Chang/Documents/50.002-1d-group18/mojo/work/verilog/eightbitor_7.v" "C:/Users/Rosen Chang/Documents/50.002-1d-group18/mojo/work/verilog/eightbitxor_8.v" "C:/Users/Rosen Chang/Documents/50.002-1d-group18/mojo/work/verilog/eightbitequalsa_9.v" "C:/Users/Rosen Chang/Documents/50.002-1d-group18/mojo/work/verilog/eightbitshiftleft_10.v" "C:/Users/Rosen Chang/Documents/50.002-1d-group18/mojo/work/verilog/eightbitshiftright_11.v" "C:/Users/Rosen Chang/Documents/50.002-1d-group18/mojo/work/verilog/eightbitSRA_12.v" "C:/Users/Rosen Chang/Documents/50.002-1d-group18/mojo/work/verilog/eightbitCMPEQ_13.v" "C:/Users/Rosen Chang/Documents/50.002-1d-group18/mojo/work/verilog/eightbitCMPLT_14.v" "C:/Users/Rosen Chang/Documents/50.002-1d-group18/mojo/work/verilog/eightbitCMPLE_15.v" "C:/Users/Rosen Chang/Documents/50.002-1d-group18/mojo/work/verilog/eightbitdivider_16.v" "C:/Users/Rosen Chang/Documents/50.002-1d-group18/mojo/work/verilog/eightbitmultiplier_17.v" "C:/Users/Rosen Chang/Documents/50.002-1d-group18/mojo/work/verilog/eightbitmod_18.v" "C:/Users/Rosen Chang/Documents/50.002-1d-group18/mojo/work/verilog/eightbitxnor_19.v" "C:/Users/Rosen Chang/Documents/50.002-1d-group18/mojo/work/verilog/eightbitnor_20.v" "C:/Users/Rosen Chang/Documents/50.002-1d-group18/mojo/work/verilog/eightbitnand_21.v" "C:/Users/Rosen Chang/Documents/50.002-1d-group18/mojo/work/verilog/eightbitdotproduct_22.v" "C:/Users/Rosen Chang/Documents/50.002-1d-group18/mojo/work/verilog/eightbitnota_23.v" "C:/Users/Rosen Chang/Documents/50.002-1d-group18/mojo/work/verilog/blinker_24.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list  "C:/Program\ Files/Mojo\ IDE/library/components/io_shield.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
