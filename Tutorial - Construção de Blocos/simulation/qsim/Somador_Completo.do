onerror {exit -code 1}
vlib work
vlog -work work Somador_Completo.vo
vlog -work work tb_Somador_Completo.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.Somador_Completo_vlg_vec_tst -voptargs="+acc"
vcd file -direction Somador_Completo.msim.vcd
vcd add -internal Somador_Completo_vlg_vec_tst/*
vcd add -internal Somador_Completo_vlg_vec_tst/i1/*
run -all
quit -f
