v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 210 -230 380 -230 {lab=VDD}
N 250 -200 340 -200 {lab=D1}
N 210 -130 300 -130 {lab=D1}
N 300 -200 300 -130 {lab=D1}
N 210 -130 210 -120 {lab=D1}
N 380 -130 380 -120 {lab=D2}
N 100 -230 210 -230 {lab=VDD}
N 210 -120 210 -100 {lab=D1}
N 380 -120 380 -100 {lab=D2}
N 560 -210 650 -210 {lab=VDD}
N 650 -240 690 -240 {lab=D1}
N 690 -240 690 -180 {lab=D1}
N 650 -180 690 -180 {lab=D1}
N 650 -150 690 -150 {lab=D2}
N 690 -150 690 -90 {lab=D2}
N 650 -90 690 -90 {lab=D2}
N 560 -120 650 -120 {lab=VDD}
N 210 -170 210 -130 {lab=D1}
N 380 -170 380 -130 {lab=D2}
N 380 -230 380 -200 {lab=VDD}
N 210 -230 210 -200 {lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 360 -200 0 0 {name=M1
W=75.2
L=1.25
nf=8
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 230 -200 0 1 {name=M2
W=75.2
L=1.25
nf=8
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
C {iopin.sym} 100 -230 0 1 {name=p1 lab=VDD}
C {iopin.sym} 210 -100 0 1 {name=p2 lab=D1}
C {iopin.sym} 380 -100 0 1 {name=p3 lab=D2}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 670 -120 0 1 {name=M3
W=9.4
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 670 -210 0 1 {name=M4
W=9.4
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
C {lab_pin.sym} 560 -210 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 560 -120 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 690 -120 0 1 {name=p6 sig_type=std_logic lab=D1}
C {lab_pin.sym} 690 -210 0 1 {name=p7 sig_type=std_logic lab=D1}
