v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -640 -400 -470 -400 {lab=VDD}
N -600 -370 -510 -370 {lab=#net1}
N -640 -300 -550 -300 {lab=#net1}
N -550 -370 -550 -300 {lab=#net1}
N -640 -300 -640 -290 {lab=#net1}
N -470 -300 -470 -290 {lab=#net2}
N -750 -400 -640 -400 {lab=VDD}
N -640 -290 -640 -270 {lab=#net1}
N -470 -290 -470 -270 {lab=#net2}
N -640 -340 -640 -300 {lab=#net1}
N -470 -340 -470 -300 {lab=#net2}
N -470 -400 -470 -370 {lab=VDD}
N -640 -400 -640 -370 {lab=VDD}
N -640 -160 -470 -160 {lab=#net3}
N -640 -190 -470 -190 {lab=VSS}
N -690 -190 -680 -190 {lab=VP}
N -430 -190 -420 -190 {lab=VN}
N -560 -160 -560 -120 {lab=#net3}
N -640 -270 -640 -220 {lab=#net1}
N -470 -270 -470 -220 {lab=#net2}
N -710 -60 -600 -60 {lab=IBIAS}
N -560 -60 -560 -30 {lab=VSS}
N -750 -60 -750 -30 {lab=VSS}
N -750 -30 -560 -30 {lab=VSS}
N -750 -120 -750 -90 {lab=IBIAS}
N -750 -100 -670 -100 {lab=IBIAS}
N -670 -100 -670 -60 {lab=IBIAS}
N -560 -120 -560 -90 {lab=#net3}
N -470 -280 -390 -280 {lab=#net2}
N -140 -320 -140 -160 {lab=OUT}
N -260 -280 -240 -280 {lab=#net4}
N -340 -350 -180 -350 {lab=#net2}
N -340 -350 -340 -280 {lab=#net2}
N -140 -380 -140 -350 {lab=VDD}
N -140 -130 -140 -100 {lab=VSS}
N -140 -280 -80 -280 {lab=OUT}
N -170 -280 -140 -280 {lab=OUT}
N -240 -280 -230 -280 {lab=#net4}
N -200 -280 -200 -240 {lab=VDD}
N -560 -30 -140 -30 {lab=VSS}
N -140 -100 -140 -30 {lab=VSS}
N -140 -400 -140 -380 {lab=VDD}
N -470 -400 -140 -400 {lab=VDD}
N -390 -280 -320 -280 {lab=#net2}
N -670 -130 -180 -130 {lab=IBIAS}
N -670 -130 -670 -100 {lab=IBIAS}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -490 -370 0 0 {name=M1
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -620 -370 0 1 {name=M2
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
C {iopin.sym} -750 -400 0 1 {name=p1 lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -450 -190 0 1 {name=M5
W=38
L=0.5
nf=2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -660 -190 0 0 {name=M6
W=38
L=0.5
nf=2
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
C {lab_wire.sym} -550 -190 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {ipin.sym} -690 -190 0 0 {name=p9 lab=VP}
C {ipin.sym} -420 -190 0 1 {name=p10 lab=VN}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -580 -60 0 0 {name=M23
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -730 -60 0 1 {name=M24
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
C {ipin.sym} -750 -120 0 0 {name=p47 lab=IBIAS}
C {iopin.sym} -650 -30 3 1 {name=p49 lab=VSS}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -160 -350 0 0 {name=M27
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -160 -130 0 0 {name=M28
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
C {sky130_fd_pr/cap_mim_m3_1.sym} -290 -280 1 0 {name=C1 model=cap_mim_m3_1 W=25 L=25 MF=8 spiceprefix=X}
C {opin.sym} -80 -280 0 0 {name=p3 lab=OUT}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -200 -300 3 1 {name=M29
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
C {lab_wire.sym} -200 -320 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -200 -240 2 0 {name=p12 sig_type=std_logic lab=VDD}
