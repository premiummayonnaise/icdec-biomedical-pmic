v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 380 -490 550 -490 {lab=VDD}
N 420 -460 510 -460 {lab=#net1}
N 380 -390 470 -390 {lab=#net1}
N 470 -460 470 -390 {lab=#net1}
N 380 -390 380 -380 {lab=#net1}
N 550 -390 550 -380 {lab=#net2}
N 270 -490 380 -490 {lab=VDD}
N 380 -380 380 -360 {lab=#net1}
N 550 -380 550 -360 {lab=#net2}
N 380 -430 380 -390 {lab=#net1}
N 550 -430 550 -390 {lab=#net2}
N 550 -490 550 -460 {lab=VDD}
N 380 -490 380 -460 {lab=VDD}
N 380 -250 550 -250 {lab=#net3}
N 380 -280 550 -280 {lab=VSS}
N 330 -280 340 -280 {lab=VP}
N 590 -280 600 -280 {lab=VN}
N 460 -250 460 -210 {lab=#net3}
N 380 -360 380 -310 {lab=#net1}
N 550 -360 550 -310 {lab=#net2}
N 310 -150 420 -150 {lab=IBIAS}
N 460 -150 460 -120 {lab=#net4}
N 270 -150 270 -120 {lab=#net4}
N 270 -120 460 -120 {lab=#net4}
N 270 -210 270 -180 {lab=IBIAS}
N 270 -190 350 -190 {lab=IBIAS}
N 350 -190 350 -150 {lab=IBIAS}
N 460 -210 460 -180 {lab=#net3}
N 550 -370 630 -370 {lab=#net2}
N 880 -410 880 -250 {lab=OUT}
N 760 -370 780 -370 {lab=#net5}
N 680 -440 840 -440 {lab=#net2}
N 680 -440 680 -370 {lab=#net2}
N 880 -470 880 -440 {lab=VDD}
N 880 -220 880 -190 {lab=#net4}
N 880 -370 940 -370 {lab=OUT}
N 850 -370 880 -370 {lab=OUT}
N 780 -370 790 -370 {lab=#net5}
N 820 -370 820 -330 {lab=VDD}
N 460 -120 880 -120 {lab=#net4}
N 880 -190 880 -120 {lab=#net4}
N 880 -490 880 -470 {lab=VDD}
N 550 -490 880 -490 {lab=VDD}
N 630 -370 700 -370 {lab=#net2}
N 350 -220 840 -220 {lab=IBIAS}
N 350 -220 350 -190 {lab=IBIAS}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 530 -460 0 0 {name=M1
W=75.2
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 400 -460 0 1 {name=M2
W=75.2
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
C {iopin.sym} 270 -490 0 1 {name=p1 lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 570 -280 0 1 {name=M5
W=38
L=0.5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 360 -280 0 0 {name=M6
W=38
L=0.5
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
C {lab_wire.sym} 470 -280 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {ipin.sym} 330 -280 0 0 {name=p9 lab=VP}
C {ipin.sym} 600 -280 0 1 {name=p10 lab=VN}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 440 -150 0 0 {name=M23
W=60
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 290 -150 0 1 {name=M24
W=60
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
C {ipin.sym} 270 -210 0 0 {name=p47 lab=IBIAS}
C {iopin.sym} 270 -120 0 1 {name=p49 lab=VSS}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 860 -440 0 0 {name=M27
W=160
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 860 -220 0 0 {name=M28
W=60
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 730 -370 1 0 {name=C1 model=cap_mim_m3_1 W=25 L=25 MF=8 spiceprefix=X}
C {opin.sym} 940 -370 0 0 {name=p3 lab=OUT}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 820 -390 3 1 {name=M29
W=20
L=0.9
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
C {lab_wire.sym} 820 -410 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 820 -330 2 0 {name=p12 sig_type=std_logic lab=VDD}
