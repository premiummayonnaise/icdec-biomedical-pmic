v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 630 -340 630 -290 {lab=VIN}
N 530 -260 590 -260 {lab=EA_OUTPUT}
N 630 -230 630 -180 {lab=VREG}
N 630 -260 710 -260 {lab=VSS}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 610 -260 0 0 {name=M1
W=66
L=0.5
nf=8
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {ipin.sym} 630 -340 0 0 {name=p1 lab=VIN}
C {ipin.sym} 530 -260 0 0 {name=p2 lab=EA_OUTPUT}
C {iopin.sym} 710 -260 0 0 {name=p3 lab=VSS}
C {opin.sym} 630 -180 0 1 {name=p4 lab=VREG}
C {title.sym} 160 -50 0 0 {name=l1 author="Dzaki Andriansyah"}
