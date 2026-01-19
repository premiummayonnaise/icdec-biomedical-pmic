v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 350 -160 520 -160 {lab=#net1}
N 440 -160 440 -130 {lab=#net1}
N 350 -290 350 -220 {lab=#net2}
N 520 -290 520 -220 {lab=#net3}
N 350 -350 520 -350 {lab=VDD}
N 350 -350 350 -320 {lab=VDD}
N 520 -350 520 -320 {lab=VDD}
N 390 -320 480 -320 {lab=#net2}
N 350 -250 440 -250 {lab=#net2}
N 440 -320 440 -250 {lab=#net2}
N 290 -100 400 -100 {lab=IBIAS}
N 350 -190 520 -190 {lab=VSS}
N 440 -100 440 -70 {lab=VSS}
N 250 -100 250 -70 {lab=VSS}
N 250 -70 440 -70 {lab=VSS}
N 440 -70 740 -70 {lab=VSS}
N 520 -350 740 -350 {lab=VDD}
N 130 -350 350 -350 {lab=VDD}
N 120 -70 250 -70 {lab=VSS}
N 740 -290 740 -130 {lab=OUT}
N 250 -160 250 -130 {lab=IBIAS}
N 460 -100 700 -100 {lab=IBIAS}
N 450 -110 460 -100 {lab=IBIAS}
N 390 -110 450 -110 {lab=IBIAS}
N 380 -100 390 -110 {lab=IBIAS}
N 620 -250 640 -250 {lab=#net4}
N 520 -250 560 -250 {lab=#net3}
N 540 -320 700 -320 {lab=#net3}
N 540 -320 540 -250 {lab=#net3}
N 740 -350 740 -320 {lab=VDD}
N 740 -100 740 -70 {lab=VSS}
N 740 -250 800 -250 {lab=OUT}
N 300 -190 310 -190 {lab=VP}
N 560 -190 570 -190 {lab=VN}
N 710 -250 740 -250 {lab=OUT}
N 250 -140 330 -140 {lab=IBIAS}
N 330 -140 330 -100 {lab=IBIAS}
N 640 -250 680 -250 {lab=#net4}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 500 -320 0 0 {name=M1
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 370 -320 0 1 {name=M2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 540 -190 0 1 {name=M3
W=37.7
L=0.5
nf=8
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 330 -190 0 0 {name=M4
W=37.7
L=0.5
nf=8
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 420 -100 0 0 {name=M5
W=60
L=1.25
nf=8
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
nf=8
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 720 -320 0 0 {name=M7
W=160
L=1.25
nf=16
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 720 -100 0 0 {name=M8
W=60
L=1.25
nf=8
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
C {iopin.sym} 130 -350 0 1 {name=p1 lab=VDD}
C {iopin.sym} 120 -70 0 1 {name=p2 lab=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} 590 -250 1 0 {name=C1 model=cap_mim_m3_1 W=25 L=25 MF=8 spiceprefix=X}
C {ipin.sym} 250 -160 0 0 {name=p3 lab=IBIAS}
C {lab_wire.sym} 440 -190 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {ipin.sym} 300 -190 0 0 {name=p6 lab=VP}
C {ipin.sym} 570 -190 0 1 {name=p7 lab=VN}
C {opin.sym} 800 -250 0 0 {name=p8 lab=OUT}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 680 -270 3 1 {name=M9
W=20
L=0.9
nf=4
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
C {lab_wire.sym} 680 -290 0 0 {name=p5 sig_type=std_logic lab=VSS}
