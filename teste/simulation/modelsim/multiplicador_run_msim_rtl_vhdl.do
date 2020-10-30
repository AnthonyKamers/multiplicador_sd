transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/antho/Desktop/Anthony/UFSC/2020.1/SD/Prática/Trabalho Final/teste/bo.vhd}
vcom -93 -work work {C:/Users/antho/Desktop/Anthony/UFSC/2020.1/SD/Prática/Trabalho Final/teste/igualazero.vhd}
vcom -93 -work work {C:/Users/antho/Desktop/Anthony/UFSC/2020.1/SD/Prática/Trabalho Final/teste/mux2para1.vhd}
vcom -93 -work work {C:/Users/antho/Desktop/Anthony/UFSC/2020.1/SD/Prática/Trabalho Final/teste/registrador.vhd}
vcom -93 -work work {C:/Users/antho/Desktop/Anthony/UFSC/2020.1/SD/Prática/Trabalho Final/teste/registrador_r.vhd}
vcom -93 -work work {C:/Users/antho/Desktop/Anthony/UFSC/2020.1/SD/Prática/Trabalho Final/teste/somadorsubtrator.vhd}

