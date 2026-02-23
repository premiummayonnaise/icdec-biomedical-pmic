v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {serpentine259k.sym} -330 -210 0 0 {name=x1}
C {vsource.sym} -520 -350 0 0 {name=V1 value=1 savecurrent=false}
C {vsource.sym} -520 -250 0 0 {name=V2 value=0 savecurrent=false}
C {lab_pin.sym} -420 -240 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} -240 -240 0 1 {name=p2 sig_type=std_logic lab=B}
C {lab_pin.sym} -330 -200 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -520 -280 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -520 -380 0 0 {name=p5 sig_type=std_logic lab=A}
C {lab_pin.sym} -520 -320 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {gnd.sym} -520 -220 0 0 {name=l1 lab=GND}
C {code_shown.sym} -170 -190 0 0 {name=ideal only_toplevel=false value="
.dc V1 0 1 0.01
.save all
"

}
C {ammeter.sym} -520 -140 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {lab_pin.sym} -520 -170 0 1 {name=p7 sig_type=std_logic lab=B}
C {lab_pin.sym} -520 -110 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/code.sym} -190 -350 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
