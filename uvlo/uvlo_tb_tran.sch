v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -560 -280 -560 -220 {lab=#net1}
N -560 -160 -560 -110 {lab=#net2}
N -390 -370 -390 -300 {lab=VDD}
N -560 -370 -390 -370 {lab=VDD}
N -560 -290 -560 -280 {lab=#net1}
N -560 -370 -560 -350 {lab=VDD}
N -560 -250 -440 -250 {lab=#net1}
N -560 -130 -450 -130 {lab=#net2}
N -450 -130 -440 -130 {lab=#net2}
N -440 -130 -440 -110 {lab=#net2}
N -400 -80 -290 -80 {lab=UVLO}
N -290 -230 -290 -80 {lab=UVLO}
N -440 -80 -440 -50 {lab=VSS}
N -330 -230 -290 -230 {lab=UVLO}
C {komparator_histeris.sym} -160 -90 0 0 {name=x1}
C {code_shown.sym} -210 -190 0 0 {name=tb2 only_toplevel=false value="
.control
tran 1u 10m
plot v(VDD) v(UVLO)
.endc
"}
C {vsource.sym} -740 -330 0 0 {name=V1 value="PWL(0 0 5m 3)" savecurrent=false}
C {vsource.sym} -740 -220 0 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} -740 -100 0 0 {name=V3 value=1.25 savecurrent=false}
C {gnd.sym} -740 -190 0 0 {name=l1 lab=GND}
C {vsource.sym} -620 -330 0 0 {name=V5 value=1.3 savecurrent=false}
C {vsource.sym} -620 -100 0 0 {name=V6 value=0.7 savecurrent=false}
C {lab_pin.sym} -740 -360 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -740 -300 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -740 -70 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -620 -300 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -620 -70 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -740 -250 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -740 -130 0 0 {name=p8 sig_type=std_logic lab=REF}
C {lab_pin.sym} -620 -360 0 1 {name=p9 sig_type=std_logic lab=B1}
C {lab_pin.sym} -620 -130 0 1 {name=p10 sig_type=std_logic lab=B2}
C {lab_pin.sym} -480 -180 0 0 {name=p14 sig_type=std_logic lab=B2}
C {lab_pin.sym} -480 -270 0 0 {name=p15 sig_type=std_logic lab=B1}
C {lab_pin.sym} -440 -210 0 0 {name=p16 sig_type=std_logic lab=REF}
C {lab_pin.sym} -390 -150 0 1 {name=p18 sig_type=std_logic lab=VSS}
C {res.sym} -560 -320 0 0 {name=R1
value=68
footprint=1206
device=resistor
m=1}
C {res.sym} -560 -190 0 0 {name=R2
value=100
footprint=1206
device=resistor
m=1}
C {res.sym} -560 -80 0 0 {name=R3
value=1600
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} -390 -370 0 1 {name=p19 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} -420 -80 0 1 {name=M1
W=40
L=0.5
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} -290 -230 0 1 {name=p2 sig_type=std_logic lab=UVLO}
C {lab_pin.sym} -560 -50 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -440 -50 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {devices/code.sym} -220 -360 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
