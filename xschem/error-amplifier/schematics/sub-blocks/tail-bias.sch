v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 290 -100 400 -100 {lab=IBIAS}
N 440 -100 440 -70 {lab=VSS}
N 250 -100 250 -70 {lab=VSS}
N 250 -70 440 -70 {lab=VSS}
N 250 -160 250 -130 {lab=IBIAS}
N 250 -140 330 -140 {lab=IBIAS}
N 330 -140 330 -100 {lab=IBIAS}
N 440 -160 440 -130 {lab=S}
N 710 -100 750 -100 {lab=VSS}
N 750 -100 750 -40 {lab=VSS}
N 710 -40 750 -40 {lab=VSS}
N 650 -70 710 -70 {lab=VSS}
N 840 -100 880 -100 {lab=VSS}
N 840 -100 840 -40 {lab=VSS}
N 840 -40 880 -40 {lab=VSS}
N 880 -70 940 -70 {lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 420 -100 0 0 {name=M5
W=60
L=1.25
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 270 -100 0 1 {name=M6
W=60
L=1.25
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
C {ipin.sym} 250 -160 0 0 {name=p3 lab=IBIAS}
C {iopin.sym} 440 -160 0 0 {name=p1 lab=S}
C {iopin.sym} 350 -70 3 1 {name=p2 lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 730 -70 0 1 {name=M2
W=7.5
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
C {lab_pin.sym} 650 -70 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 750 -70 0 1 {name=p7 sig_type=std_logic lab=S
W=7.5
nf=1}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 860 -70 0 0 {name=M14
W=7.5
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
C {lab_pin.sym} 940 -70 0 1 {name=p25 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 840 -70 0 0 {name=p27 sig_type=std_logic lab=S
W=7.5
nf=1}
