v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 360 -160 360 -140 {lab=B}
N 320 -310 320 -260 {lab=VREG}
N 360 -230 360 -220 {lab=B}
N 360 -220 360 -160 {lab=B}
N 360 -340 360 -290 {lab=VREG}
N 320 -330 320 -310 {lab=VREG}
N 320 -340 320 -330 {lab=VREG}
N 320 -340 500 -340 {lab=VREG}
N 360 -260 460 -260 {lab=BULK}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 340 -260 0 0 {name=M3
W=2560
L=0.5
nf=128
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
C {iopin.sym} 500 -340 0 0 {name=p1 lab=VREG}
C {iopin.sym} 460 -260 0 0 {name=p3 lab=BULK}
C {iopin.sym} 360 -140 0 0 {name=p4 lab=VSS}
