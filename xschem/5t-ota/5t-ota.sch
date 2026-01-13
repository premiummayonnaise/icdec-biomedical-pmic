v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 520 -400 680 -400 {lab=VDD}
N 680 -340 680 -290 {lab=OUT}
N 520 -340 520 -290 {lab=#net1}
N 520 -400 520 -370 {lab=VDD}
N 680 -400 680 -370 {lab=VDD}
N 560 -370 640 -370 {lab=#net1}
N 520 -310 600 -310 {lab=#net1}
N 600 -370 600 -310 {lab=#net1}
N 520 -260 680 -260 {lab=VSS}
N 520 -230 680 -230 {lab=#net2}
N 600 -230 600 -220 {lab=#net2}
N 600 -190 600 -160 {lab=VSS}
N 680 -310 720 -310 {lab=OUT}
N 430 -160 600 -160 {lab=VSS}
N 430 -400 520 -400 {lab=VDD}
N 470 -190 560 -190 {lab=VBIAS}
N 470 -260 480 -260 {lab=VP}
N 720 -260 730 -260 {lab=VN}
C {sky130_fd_pr/pfet_01v8.sym} 540 -370 0 1 {name=M1
W=32.7
L=0.75
nf=8
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 660 -370 0 0 {name=M2
W=32.7
L=0.75
nf=8
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 700 -260 0 1 {name=M3
W=17
L=0.5
nf=8
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 500 -260 0 0 {name=M4
W=17
L=0.5
nf=8
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 580 -190 0 0 {name=M5
W=16.7
L=0.75
nf=8 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {opin.sym} 720 -310 0 0 {name=p1 lab=OUT}
C {iopin.sym} 430 -400 0 1 {name=p2 lab=VDD}
C {iopin.sym} 430 -160 0 1 {name=p3 lab=VSS}
C {ipin.sym} 470 -260 0 0 {name=p4 lab=VP}
C {ipin.sym} 730 -260 0 1 {name=p5 lab=VN}
C {lab_wire.sym} 600 -260 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {ipin.sym} 470 -190 0 0 {name=p7 lab=VBIAS}
C {title.sym} 160 -40 0 0 {name=l1 author="Dzaki Andriansyah"}
