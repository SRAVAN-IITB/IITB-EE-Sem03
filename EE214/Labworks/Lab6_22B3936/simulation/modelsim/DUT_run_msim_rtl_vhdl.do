transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ASUS/OneDrive - Indian Institute of Technology Bombay/ACADS/SEMESTER-3/EE-214/Scan_Chain_Files/Scan_Chain_Files/Scan_Chain_Files/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {C:/Users/ASUS/OneDrive - Indian Institute of Technology Bombay/ACADS/SEMESTER-3/EE-214/Scan_Chain_Files/Scan_Chain_Files/Scan_Chain_Files/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {C:/Users/ASUS/OneDrive - Indian Institute of Technology Bombay/ACADS/SEMESTER-3/EE-214/Lab6_22B3936/TopLevel.vhdl}
vcom -93 -work work {C:/Users/ASUS/OneDrive - Indian Institute of Technology Bombay/ACADS/SEMESTER-3/EE-214/Lab6_22B3936/Gates.vhdl}
vcom -93 -work work {C:/Users/ASUS/OneDrive - Indian Institute of Technology Bombay/ACADS/SEMESTER-3/EE-214/Lab6_22B3936/DUT.vhdl}
vcom -93 -work work {C:/Users/ASUS/OneDrive - Indian Institute of Technology Bombay/ACADS/SEMESTER-3/EE-214/Lab6_22B3936/Flipflops.vhdl}
vcom -93 -work work {C:/Users/ASUS/OneDrive - Indian Institute of Technology Bombay/ACADS/SEMESTER-3/EE-214/Lab6_22B3936/Seq_generator.vhdl}

vcom -93 -work work {C:/Users/ASUS/OneDrive - Indian Institute of Technology Bombay/ACADS/SEMESTER-3/EE-214/Lab6_22B3936/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
