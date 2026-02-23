v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {serpentine259k.sym} -740 -210 0 0 {name=x1}
C {vsource.sym} -930 -350 0 0 {name=V1 value=1 savecurrent=false}
C {vsource.sym} -930 -250 0 0 {name=V2 value=0 savecurrent=false}
C {lab_pin.sym} -830 -240 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} -650 -240 0 1 {name=p2 sig_type=std_logic lab=B}
C {lab_pin.sym} -740 -200 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -930 -280 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -930 -380 0 0 {name=p5 sig_type=std_logic lab=A}
C {lab_pin.sym} -930 -320 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {gnd.sym} -930 -220 0 0 {name=l1 lab=GND}
C {code_shown.sym} -580 -190 0 0 {name=post_layout only_toplevel=false value="
.dc V1 0 1 0.01
.save all
"

}
C {ammeter.sym} -930 -140 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {lab_pin.sym} -930 -170 0 1 {name=p7 sig_type=std_logic lab=B}
C {lab_pin.sym} -930 -110 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/code.sym} -600 -350 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include /foss/designs/kerjapraktik/test/serpentine_res/topology2/serpentine259k_pex.spice
"
spice_ignore=false}
