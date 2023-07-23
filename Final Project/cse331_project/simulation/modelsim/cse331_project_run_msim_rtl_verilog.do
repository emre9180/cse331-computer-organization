transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/emrey/OneDrive/Masa�st�/cse331_project {C:/Users/emrey/OneDrive/Masa�st�/cse331_project/or_16bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/emrey/OneDrive/Masa�st�/cse331_project {C:/Users/emrey/OneDrive/Masa�st�/cse331_project/not_16bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/emrey/OneDrive/Masa�st�/cse331_project {C:/Users/emrey/OneDrive/Masa�st�/cse331_project/and_16bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/emrey/OneDrive/Masa�st�/cse331_project {C:/Users/emrey/OneDrive/Masa�st�/cse331_project/mux_32bit_2x1.v}
vlog -vlog01compat -work work +incdir+C:/Users/emrey/OneDrive/Masa�st�/cse331_project {C:/Users/emrey/OneDrive/Masa�st�/cse331_project/mux_1bit_8x3.v}
vlog -vlog01compat -work work +incdir+C:/Users/emrey/OneDrive/Masa�st�/cse331_project {C:/Users/emrey/OneDrive/Masa�st�/cse331_project/mux_1bit_2x1.v}
vlog -vlog01compat -work work +incdir+C:/Users/emrey/OneDrive/Masa�st�/cse331_project {C:/Users/emrey/OneDrive/Masa�st�/cse331_project/mux_16bit_2x1.v}
vlog -vlog01compat -work work +incdir+C:/Users/emrey/OneDrive/Masa�st�/cse331_project {C:/Users/emrey/OneDrive/Masa�st�/cse331_project/full_adder.v}
vlog -vlog01compat -work work +incdir+C:/Users/emrey/OneDrive/Masa�st�/cse331_project {C:/Users/emrey/OneDrive/Masa�st�/cse331_project/alu.v}
vlog -vlog01compat -work work +incdir+C:/Users/emrey/OneDrive/Masa�st�/cse331_project {C:/Users/emrey/OneDrive/Masa�st�/cse331_project/adder_4bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/emrey/OneDrive/Masa�st�/cse331_project {C:/Users/emrey/OneDrive/Masa�st�/cse331_project/adder_32bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/emrey/OneDrive/Masa�st�/cse331_project {C:/Users/emrey/OneDrive/Masa�st�/cse331_project/adder_16bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/emrey/OneDrive/Masa�st�/cse331_project {C:/Users/emrey/OneDrive/Masa�st�/cse331_project/main_control.v}
vlog -vlog01compat -work work +incdir+C:/Users/emrey/OneDrive/Masa�st�/cse331_project {C:/Users/emrey/OneDrive/Masa�st�/cse331_project/main_memory.v}
vlog -vlog01compat -work work +incdir+C:/Users/emrey/OneDrive/Masa�st�/cse331_project {C:/Users/emrey/OneDrive/Masa�st�/cse331_project/register_memory.v}
vlog -vlog01compat -work work +incdir+C:/Users/emrey/OneDrive/Masa�st�/cse331_project {C:/Users/emrey/OneDrive/Masa�st�/cse331_project/mips.v}
vlog -vlog01compat -work work +incdir+C:/Users/emrey/OneDrive/Masa�st�/cse331_project {C:/Users/emrey/OneDrive/Masa�st�/cse331_project/mux_3bit_2x1.v}
vlog -vlog01compat -work work +incdir+C:/Users/emrey/OneDrive/Masa�st�/cse331_project {C:/Users/emrey/OneDrive/Masa�st�/cse331_project/mux_16bit_8x3.v}
vlog -vlog01compat -work work +incdir+C:/Users/emrey/OneDrive/Masa�st�/cse331_project {C:/Users/emrey/OneDrive/Masa�st�/cse331_project/or_4bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/emrey/OneDrive/Masa�st�/cse331_project {C:/Users/emrey/OneDrive/Masa�st�/cse331_project/or_6bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/emrey/OneDrive/Masa�st�/cse331_project {C:/Users/emrey/OneDrive/Masa�st�/cse331_project/or_10bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/emrey/OneDrive/Masa�st�/cse331_project {C:/Users/emrey/OneDrive/Masa�st�/cse331_project/or_22bit.v}

