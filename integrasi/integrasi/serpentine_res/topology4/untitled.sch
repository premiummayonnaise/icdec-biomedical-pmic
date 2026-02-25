v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {vsource.sym} -810 -170 0 0 {name=V1 value=1 savecurrent=false}
C {vsource.sym} -660 -280 0 0 {name=V2 value=0 savecurrent=false}
C {lab_pin.sym} -560 -270 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} -380 -270 0 1 {name=p2 sig_type=std_logic lab=B}
C {lab_pin.sym} -470 -230 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -660 -310 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -810 -200 0 0 {name=p5 sig_type=std_logic lab=A}
C {lab_pin.sym} -810 -140 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {gnd.sym} -660 -250 0 0 {name=l1 lab=GND}
C {code_shown.sym} -310 -220 0 0 {name=ideal only_toplevel=false value="
.dc V1 0 1 0.01
.save all
"

}
C {ammeter.sym} -660 -170 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {lab_pin.sym} -660 -200 0 1 {name=p7 sig_type=std_logic lab=B}
C {lab_pin.sym} -660 -140 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {serpentine.sym} -470 -250 0 0 {name=x1}
C {devices/code.sym} -340 -380 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
