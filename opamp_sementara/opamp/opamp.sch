v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -720 -470 -550 -470 {lab=VDD}
N -680 -440 -590 -440 {lab=#net1}
N -720 -370 -630 -370 {lab=#net1}
N -630 -440 -630 -370 {lab=#net1}
N -720 -370 -720 -360 {lab=#net1}
N -550 -370 -550 -360 {lab=#net2}
N -830 -470 -720 -470 {lab=VDD}
N -720 -360 -720 -340 {lab=#net1}
N -550 -360 -550 -340 {lab=#net2}
N -720 -410 -720 -370 {lab=#net1}
N -550 -410 -550 -370 {lab=#net2}
N -550 -470 -550 -440 {lab=VDD}
N -720 -470 -720 -440 {lab=VDD}
N -720 -230 -550 -230 {lab=#net3}
N -720 -260 -550 -260 {lab=VSS}
N -770 -260 -760 -260 {lab=VP}
N -510 -260 -500 -260 {lab=VN}
N -640 -230 -640 -190 {lab=#net3}
N -720 -340 -720 -290 {lab=#net1}
N -550 -340 -550 -290 {lab=#net2}
N -790 -130 -680 -130 {lab=IBIAS}
N -640 -130 -640 -100 {lab=VSS}
N -830 -130 -830 -100 {lab=VSS}
N -830 -100 -640 -100 {lab=VSS}
N -830 -190 -830 -160 {lab=IBIAS}
N -830 -170 -750 -170 {lab=IBIAS}
N -750 -170 -750 -130 {lab=IBIAS}
N -640 -190 -640 -160 {lab=#net3}
N -550 -350 -470 -350 {lab=#net2}
N -220 -390 -220 -230 {lab=OUT}
N -340 -350 -320 -350 {lab=#net4}
N -420 -420 -260 -420 {lab=#net2}
N -420 -420 -420 -350 {lab=#net2}
N -220 -450 -220 -420 {lab=VDD}
N -220 -200 -220 -170 {lab=VSS}
N -220 -350 -160 -350 {lab=OUT}
N -250 -350 -220 -350 {lab=OUT}
N -320 -350 -310 -350 {lab=#net4}
N -280 -350 -280 -310 {lab=VDD}
N -640 -100 -220 -100 {lab=VSS}
N -220 -170 -220 -100 {lab=VSS}
N -220 -470 -220 -450 {lab=VDD}
N -550 -470 -220 -470 {lab=VDD}
N -470 -350 -400 -350 {lab=#net2}
N -750 -200 -260 -200 {lab=IBIAS}
N -750 -200 -750 -170 {lab=IBIAS}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -570 -440 0 0 {name=M1
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -700 -440 0 1 {name=M2
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
C {iopin.sym} -830 -470 0 1 {name=p1 lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -530 -260 0 1 {name=M5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -740 -260 0 0 {name=M6
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
C {lab_wire.sym} -630 -260 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {ipin.sym} -770 -260 0 0 {name=p9 lab=VP}
C {ipin.sym} -500 -260 0 1 {name=p10 lab=VN}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -660 -130 0 0 {name=M23
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -810 -130 0 1 {name=M24
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
C {ipin.sym} -830 -190 0 0 {name=p47 lab=IBIAS}
C {iopin.sym} -730 -100 3 1 {name=p49 lab=VSS}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -240 -420 0 0 {name=M27
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -240 -200 0 0 {name=M28
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
C {sky130_fd_pr/cap_mim_m3_1.sym} -370 -350 1 0 {name=C1 model=cap_mim_m3_1 W=25 L=25 MF=8 spiceprefix=X}
C {opin.sym} -160 -350 0 0 {name=p3 lab=OUT}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -280 -370 3 1 {name=M29
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
C {lab_wire.sym} -280 -390 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -280 -310 2 0 {name=p12 sig_type=std_logic lab=VDD}
