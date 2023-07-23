transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/emrey/OneDrive/Masaüstü/bonus_project {C:/Users/emrey/OneDrive/Masaüstü/bonus_project/main.v}
vlog -vlog01compat -work work +incdir+C:/Users/emrey/OneDrive/Masaüstü/bonus_project {C:/Users/emrey/OneDrive/Masaüstü/bonus_project/datapath.v}
vlog -vlog01compat -work work +incdir+C:/Users/emrey/OneDrive/Masaüstü/bonus_project {C:/Users/emrey/OneDrive/Masaüstü/bonus_project/control.v}

