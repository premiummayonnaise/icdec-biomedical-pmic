v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {vsource.sym} -740 -330 0 0 {name=V1 value=1 savecurrent=false}
C {vsource.sym} -740 -230 0 0 {name=V2 value=0 savecurrent=false}
C {lab_pin.sym} -640 -220 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} -460 -220 0 1 {name=p2 sig_type=std_logic lab=B}
C {lab_pin.sym} -550 -180 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -740 -260 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -740 -360 0 0 {name=p5 sig_type=std_logic lab=A}
C {lab_pin.sym} -740 -300 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {gnd.sym} -740 -200 0 0 {name=l1 lab=GND}
C {code_shown.sym} -390 -170 0 0 {name=ideal only_toplevel=false value="
.dc V1 0 1 0.01
.save all
"

}
C {ammeter.sym} -740 -120 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {lab_pin.sym} -740 -150 0 1 {name=p7 sig_type=std_logic lab=B}
C {lab_pin.sym} -740 -90 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/code.sym} -410 -330 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {resistor180.sym} -550 -200 0 0 {name=x1}
