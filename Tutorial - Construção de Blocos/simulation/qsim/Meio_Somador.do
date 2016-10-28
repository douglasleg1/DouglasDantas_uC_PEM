onerror {exit -code 1}
vlib work
vlog -work work Meio_Somador.vo
vlog -work work tb_Meio_Somador.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.Meio_Somador_vlg_vec_tst -voptargs="+acc"
vcd file -direction Meio_Somador.msim.vcd
vcd add -internal Meio_Somador_vlg_vec_tst/*
vcd add -internal Meio_Somador_vlg_vec_tst/i1/*
run -all
quit -f
