transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/antho/Desktop/Anthony/UFSC/2020.1/SD/Prática/Trabalho Final/multiplicador_equipe_8_bits/BO/bo.vhd}
vcom -93 -work work {C:/Users/antho/Desktop/Anthony/UFSC/2020.1/SD/Prática/Trabalho Final/multiplicador_equipe_8_bits/BO/igualazero.vhd}
vcom -93 -work work {C:/Users/antho/Desktop/Anthony/UFSC/2020.1/SD/Prática/Trabalho Final/multiplicador_equipe_8_bits/BO/mux2para1.vhd}
vcom -93 -work work {C:/Users/antho/Desktop/Anthony/UFSC/2020.1/SD/Prática/Trabalho Final/multiplicador_equipe_8_bits/BO/registrador.vhd}
vcom -93 -work work {C:/Users/antho/Desktop/Anthony/UFSC/2020.1/SD/Prática/Trabalho Final/multiplicador_equipe_8_bits/BO/registrador_r.vhd}
vcom -93 -work work {C:/Users/antho/Desktop/Anthony/UFSC/2020.1/SD/Prática/Trabalho Final/multiplicador_equipe_8_bits/BO/somadorsubtrator.vhd}
vcom -93 -work work {C:/Users/antho/Desktop/Anthony/UFSC/2020.1/SD/Prática/Trabalho Final/multiplicador_equipe_8_bits/BC/bc.vhd}
vcom -93 -work work {C:/Users/antho/Desktop/Anthony/UFSC/2020.1/SD/Prática/Trabalho Final/multiplicador_equipe_8_bits/multiplicador.vhd}

