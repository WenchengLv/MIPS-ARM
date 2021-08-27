onerror {exit -code 1}
vlib work
vlog -work work MyProject.vo
vlog -work work divideby3FSM.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.dividebyFSM_vlg_vec_tst -voptargs="+acc"
vcd file -direction MyProject.msim.vcd
vcd add -internal dividebyFSM_vlg_vec_tst/*
vcd add -internal dividebyFSM_vlg_vec_tst/i1/*
run -all
quit -f
