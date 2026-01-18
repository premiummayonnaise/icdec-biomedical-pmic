v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 470 -370 680 -370 {lab=VDD}
N 470 -370 470 -340 {lab=VDD}
N 680 -370 680 -340 {lab=VDD}
N 510 -340 640 -340 {lab=#net1}
N 470 -310 470 -210 {lab=#net1}
N 680 -310 680 -210 {lab=OUT}
N 470 -180 680 -180 {lab=VSS}
N 470 -150 680 -150 {lab=#net2}
N 580 -150 580 -140 {lab=#net2}
N 330 -80 580 -80 {lab=VSS}
N 580 -110 580 -80 {lab=VSS}
N 330 -110 330 -80 {lab=VSS}
N 370 -110 540 -110 {lab=IBIAS}
N 330 -250 330 -140 {lab=IBIAS}
N 330 -170 400 -170 {lab=IBIAS}
N 400 -170 400 -110 {lab=IBIAS}
N 580 -340 580 -280 {lab=#net1}
N 470 -280 580 -280 {lab=#net1}
N 210 -80 330 -80 {lab=VSS}
N 210 -370 470 -370 {lab=VDD}
N 690 -260 710 -260 {lab=OUT}
N 680 -260 690 -260 {lab=OUT}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 450 -180 0 0 {name=M1
W=8.5
L=0.75
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 700 -180 0 1 {name=M2
W=8.5
L=0.75
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 560 -110 0 0 {name=M3
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 660 -340 0 0 {name=M4
W=4.85
L=1.25
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 490 -340 0 1 {name=M5
W=4.85
L=1.25
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 350 -110 0 1 {name=M6
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
C {ipin.sym} 430 -180 0 0 {name=p1 sig_type=std_logic lab=VP}
C {ipin.sym} 720 -180 0 1 {name=p2 sig_type=std_logic lab=VN}
C {lab_wire.sym} 580 -180 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {ipin.sym} 330 -250 0 0 {name=p4 sig_type=std_logic lab=IBIAS}
C {iopin.sym} 210 -370 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {iopin.sym} 210 -80 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {opin.sym} 710 -260 0 0 {name=p7 sig_type=std_logic lab=OUT}
