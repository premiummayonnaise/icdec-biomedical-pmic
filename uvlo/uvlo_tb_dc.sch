v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -800 -450 -800 -390 {lab=#net1}
N -800 -330 -800 -280 {lab=#net2}
N -630 -540 -630 -470 {lab=VDD}
N -800 -540 -630 -540 {lab=VDD}
N -800 -460 -800 -450 {lab=#net1}
N -800 -540 -800 -520 {lab=VDD}
N -800 -420 -680 -420 {lab=#net1}
N -800 -300 -690 -300 {lab=#net2}
N -690 -300 -680 -300 {lab=#net2}
N -680 -300 -680 -280 {lab=#net2}
N -640 -250 -530 -250 {lab=UVLO}
N -530 -400 -530 -250 {lab=UVLO}
N -680 -250 -680 -220 {lab=VSS}
N -570 -400 -530 -400 {lab=UVLO}
C {komparator_histeris.sym} -400 -260 0 0 {name=x1}
C {code_shown.sym} -450 -360 0 0 {name=tb1 only_toplevel=false value="
.control
dc V1 0 2.1 0.01
plot v(VDD) v(UVLO)
.endc
"}
C {vsource.sym} -980 -500 0 0 {name=V1 value=1 savecurrent=false}
C {vsource.sym} -980 -390 0 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} -980 -270 0 0 {name=V3 value=1.25 savecurrent=false}
C {gnd.sym} -980 -360 0 0 {name=l1 lab=GND}
C {vsource.sym} -860 -500 0 0 {name=V5 value=1.3 savecurrent=false}
C {vsource.sym} -860 -270 0 0 {name=V6 value=0.7 savecurrent=false}
C {lab_pin.sym} -980 -530 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -980 -470 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -980 -240 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -860 -470 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -860 -240 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -980 -420 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -980 -300 0 0 {name=p8 sig_type=std_logic lab=REF}
C {lab_pin.sym} -860 -530 0 1 {name=p9 sig_type=std_logic lab=B1}
C {lab_pin.sym} -860 -300 0 1 {name=p10 sig_type=std_logic lab=B2}
C {lab_pin.sym} -720 -350 0 0 {name=p14 sig_type=std_logic lab=B2}
C {lab_pin.sym} -720 -440 0 0 {name=p15 sig_type=std_logic lab=B1}
C {lab_pin.sym} -680 -380 0 0 {name=p16 sig_type=std_logic lab=REF}
C {lab_pin.sym} -630 -320 0 1 {name=p18 sig_type=std_logic lab=VSS}
C {res.sym} -800 -490 0 0 {name=R1
value=68
footprint=1206
device=resistor
m=1}
C {res.sym} -800 -360 0 0 {name=R2
value=100
footprint=1206
device=resistor
m=1}
C {res.sym} -800 -250 0 0 {name=R3
value=1600
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} -630 -540 0 1 {name=p19 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} -660 -250 0 1 {name=M1
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
C {lab_pin.sym} -530 -400 0 1 {name=p2 sig_type=std_logic lab=UVLO}
C {lab_pin.sym} -800 -220 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -680 -220 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {devices/code.sym} -460 -530 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
