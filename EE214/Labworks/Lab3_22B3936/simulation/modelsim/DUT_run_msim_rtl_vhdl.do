transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ASUS/OneDrive - Indian Institute of Technology Bombay/ACADS/SEMESTER-3/EE-214/Lab3_22B3936/Gates.vhdl}
vcom -93 -work work {C:/Users/ASUS/OneDrive - Indian Institute of Technology Bombay/ACADS/SEMESTER-3/EE-214/Lab3_22B3936/DUT.vhdl}
vcom -93 -work work {C:/Users/ASUS/OneDrive - Indian Institute of Technology Bombay/ACADS/SEMESTER-3/EE-214/Lab3_22B3936/fibonacci.vhdl}

vcom -93 -work work {C:/Users/ASUS/OneDrive - Indian Institute of Technology Bombay/ACADS/SEMESTER-3/EE-214/Lab3_22B3936/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
