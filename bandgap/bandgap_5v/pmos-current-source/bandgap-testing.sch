v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 500 -670 550 -670 {lab=#net1}
N 1130 -620 1130 -600 {lab=OUT}
N 870 -640 870 -600 {lab=#net2}
N 910 -140 960 -140 {lab=VSS}
N 960 -140 960 -110 {lab=VSS}
N 1040 -140 1090 -140 {lab=VSS}
N 1040 -140 1040 -110 {lab=VSS}
N 410 -610 410 -570 {lab=#net1}
N 500 -670 500 -610 {lab=#net1}
N 410 -610 500 -610 {lab=#net1}
N 740 -540 740 -110 {lab=VSS}
N 450 -540 740 -540 {lab=VSS}
N 590 -630 590 -620 {lab=#net3}
N 660 -670 700 -670 {lab=#net3}
N 660 -670 660 -630 {lab=#net3}
N 590 -630 660 -630 {lab=#net3}
N 410 -510 410 -110 {lab=VSS}
N 590 -560 590 -110 {lab=VSS}
N 1000 -670 1000 -610 {lab=#net4}
N 1040 -110 1130 -110 {lab=VSS}
N 1130 -620 1180 -620 {lab=OUT}
N 1370 -420 1370 -410 {lab=GND}
N 740 -110 960 -110 {lab=VSS}
N 960 -110 1040 -110 {lab=VSS}
N 450 -670 500 -670 {lab=#net1}
N 410 -640 410 -610 {lab=#net1}
N 740 -640 740 -540 {lab=VSS}
N 590 -640 590 -630 {lab=#net3}
N 230 -110 410 -110 {lab=VSS}
N 410 -110 590 -110 {lab=VSS}
N 910 -670 1000 -670 {lab=#net4}
N 590 -110 740 -110 {lab=VSS}
N 1130 -640 1130 -620 {lab=OUT}
N 1130 -250 1130 -170 {lab=#net5}
N 1130 -370 1130 -310 {lab=#net5}
N 1130 -310 1130 -260 {lab=#net5}
N 870 -250 870 -170 {lab=#net6}
N 870 -370 870 -310 {lab=#net6}
N 870 -540 870 -450 {lab=#net6}
N 870 -310 870 -250 {lab=#net6}
N 870 -390 870 -370 {lab=#net6}
N 870 -450 870 -390 {lab=#net6}
N 1130 -390 1130 -370 {lab=#net5}
N 1000 -610 1000 -570 {lab=#net4}
N 830 -420 910 -420 {lab=VDD}
N 1090 -400 1150 -400 {lab=VSS}
N 1000 -570 1000 -500 {lab=#net4}
N 1130 -260 1130 -250 {lab=#net5}
N 1020 -290 1020 -270 {lab=#net5}
N 1020 -270 1130 -270 {lab=#net5}
N 980 -290 980 -270 {lab=#net6}
N 870 -270 980 -270 {lab=#net6}
N 1130 -470 1130 -450 {lab=#net7}
N 1130 -540 1130 -530 {lab=#net8}
N 230 -700 1130 -700 {lab=VDD}
N 1000 -670 1090 -670 {lab=#net4}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 1110 -670 0 0 {name=M4
W=6.3
L=0.75
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 890 -670 0 1 {name=M5
W=6.3
L=0.75
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 570 -670 0 0 {name=M2
W=8
L=0.75
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 720 -670 0 0 {name=M3
W=8
L=0.5
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 430 -670 0 1 {name=M6
W=8
L=0.75
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 430 -540 0 1 {name=M7
W=1.58
L=1.25
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {res.sym} 870 -570 0 0 {name=R1
value=60k
footprint=1206
device=resistor
m=1}
C {res.sym} 1130 -570 0 0 {name=R3
value=5.7k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/pnp_05v5.sym} 1110 -140 0 0 {name=Q1
model=pnp_05v5_W3p40L3p40
m=10
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} 890 -140 0 1 {name=Q2
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {res.sym} 590 -590 0 0 {name=R7
value=1k
footprint=1206
device=resistor
m=1}
C {iopin.sym} 230 -700 0 1 {name=p1 lab=VDD}
C {iopin.sym} 230 -110 0 1 {name=p2 lab=VSS}
C {lab_pin.sym} 1150 -400 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1180 -620 0 1 {name=p6 sig_type=std_logic lab=OUT}
C {sky130_fd_pr/corner.sym} 1420 -680 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code_shown.sym} 1590 -670 0 0 {name=s1 only_toplevel=false value="

.control
	DC temp -40 175 1
	plot i(vmeas) 
	plot i(vmeas1)
	plot OUT
.endc

"}
C {vsource.sym} 1270 -450 0 0 {name=V1 value=1.35 savecurrent=false}
C {vsource.sym} 1370 -450 0 0 {name=V3 value=0 savecurrent=false}
C {lab_pin.sym} 1270 -480 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1270 -420 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1370 -480 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {gnd.sym} 1370 -410 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 830 -420 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} 1180 -120 3 0 {name=x1}
C {isource.sym} 1270 -340 0 0 {name=I0 value=200u}
C {lab_pin.sym} 1270 -370 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 910 -370 0 0 {name=p12 sig_type=std_logic lab=IBIAS}
C {lab_pin.sym} 1270 -310 0 0 {name=p3 sig_type=std_logic lab=IBIAS}
C {res.sym} 1130 -500 0 0 {name=R2
value=5.7k
footprint=1206
device=resistor
m=1}
C {res.sym} 1130 -420 0 0 {name=R4
value=5.7k
footprint=1206
device=resistor
m=1}
