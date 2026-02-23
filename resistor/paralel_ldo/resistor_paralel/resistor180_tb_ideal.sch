v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {vsource.sym} -610 -270 0 0 {name=V1 value=1 savecurrent=false}
C {vsource.sym} -610 -170 0 0 {name=V2 value=0 savecurrent=false}
C {lab_pin.sym} -510 -160 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} -330 -160 0 1 {name=p2 sig_type=std_logic lab=B}
C {lab_pin.sym} -420 -120 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -610 -200 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -610 -300 0 0 {name=p5 sig_type=std_logic lab=A}
C {lab_pin.sym} -610 -240 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {gnd.sym} -610 -140 0 0 {name=l1 lab=GND}
C {code_shown.sym} -260 -110 0 0 {name=ideal only_toplevel=false value="
.dc V1 0 1 0.01
.save all
"

}
C {ammeter.sym} -610 -60 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {lab_pin.sym} -610 -90 0 1 {name=p7 sig_type=std_logic lab=B}
C {lab_pin.sym} -610 -30 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/code.sym} -280 -270 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {resistor180.sym} -420 -140 0 0 {name=x1}
