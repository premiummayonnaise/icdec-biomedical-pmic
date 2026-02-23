v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 650 -470 860 -470 {lab=VDD}
N 650 -470 650 -440 {lab=VDD}
N 860 -470 860 -440 {lab=VDD}
N 690 -440 820 -440 {lab=#net1}
N 650 -410 650 -310 {lab=#net1}
N 860 -410 860 -310 {lab=OUT}
N 650 -280 860 -280 {lab=VSS}
N 650 -250 860 -250 {lab=#net2}
N 760 -250 760 -240 {lab=#net2}
N 510 -180 760 -180 {lab=VSS}
N 760 -210 760 -180 {lab=VSS}
N 510 -210 510 -180 {lab=VSS}
N 550 -210 720 -210 {lab=IBIAS}
N 510 -350 510 -240 {lab=IBIAS}
N 510 -270 580 -270 {lab=IBIAS}
N 580 -270 580 -210 {lab=IBIAS}
N 760 -440 760 -380 {lab=#net1}
N 650 -380 760 -380 {lab=#net1}
N 390 -180 510 -180 {lab=VSS}
N 390 -470 650 -470 {lab=VDD}
N 870 -360 890 -360 {lab=OUT}
N 860 -360 870 -360 {lab=OUT}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 630 -280 0 0 {name=M1
W=8.5
L=0.75
nf=4
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 880 -280 0 1 {name=M2
W=8.5
L=0.75
nf=4
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 740 -210 0 0 {name=M3
W=1.58
L=1.25
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 840 -440 0 0 {name=M4
W=4.85
L=1.25
nf=2
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 670 -440 0 1 {name=M5
W=4.85
L=1.25
nf=2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 530 -210 0 1 {name=M6
W=1.58
L=1.25
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
C {ipin.sym} 610 -280 0 0 {name=p1 sig_type=std_logic lab=VP}
C {ipin.sym} 900 -280 0 1 {name=p2 sig_type=std_logic lab=VN}
C {lab_wire.sym} 760 -280 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {ipin.sym} 510 -350 0 0 {name=p4 sig_type=std_logic lab=IBIAS}
C {iopin.sym} 390 -470 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {iopin.sym} 390 -180 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {opin.sym} 890 -360 0 0 {name=p7 sig_type=std_logic lab=OUT}
C {title.sym} 160 -50 0 0 {name=l1 author="Dzaki Andriansyah"}
