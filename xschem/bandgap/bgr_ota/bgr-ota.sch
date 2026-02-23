v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 580 -760 750 -760 {lab=VDD}
N 620 -730 710 -730 {lab=#net1}
N 580 -760 580 -730 {lab=VDD}
N 580 -700 580 -630 {lab=#net1}
N 760 -700 760 -630 {lab=#net2}
N 580 -660 670 -660 {lab=#net1}
N 670 -730 670 -660 {lab=#net1}
N 710 -730 720 -730 {lab=#net1}
N 750 -760 760 -760 {lab=VDD}
N 580 -570 760 -570 {lab=#net3}
N 580 -600 760 -600 {lab=VSS}
N 670 -570 670 -560 {lab=#net3}
N 760 -760 760 -730 {lab=VDD}
N 760 -660 790 -660 {lab=#net2}
N 670 -510 670 -480 {lab=VSS}
N 520 -50 670 -50 {lab=VSS}
N 520 -760 580 -760 {lab=VDD}
N 800 -660 860 -660 {lab=#net2}
N 790 -660 800 -660 {lab=#net2}
N 670 -550 670 -540 {lab=#net3}
N 670 -560 670 -550 {lab=#net3}
N 310 -50 520 -50 {lab=VSS}
N 440 -510 630 -510 {lab=IB}
N 400 -510 400 -480 {lab=#net4}
N 220 -760 390 -760 {lab=VDD}
N 260 -730 350 -730 {lab=IB}
N 220 -760 220 -730 {lab=VDD}
N 220 -700 220 -630 {lab=#net5}
N 400 -700 400 -630 {lab=IB}
N 350 -730 360 -730 {lab=IB}
N 390 -760 400 -760 {lab=VDD}
N 400 -760 400 -730 {lab=VDD}
N 160 -760 220 -760 {lab=VDD}
N 400 -760 520 -760 {lab=VDD}
N 160 -50 310 -50 {lab=VSS}
N 260 -510 360 -510 {lab=#net5}
N 220 -630 220 -540 {lab=#net5}
N 310 -560 310 -510 {lab=#net5}
N 220 -480 220 -440 {lab=VSS}
N 670 -480 670 -440 {lab=VSS}
N 440 -550 440 -510 {lab=IB}
N 220 -440 220 -410 {lab=VSS}
N 670 -440 670 -410 {lab=VSS}
N 400 -60 400 -50 {lab=VSS}
N 220 -510 220 -480 {lab=VSS}
N 670 -50 990 -50 {lab=VSS}
N 990 -510 990 -410 {lab=VSS}
N 990 -700 990 -540 {lab=OUT}
N 830 -730 950 -730 {lab=#net2}
N 830 -730 830 -660 {lab=#net2}
N 760 -760 990 -760 {lab=VDD}
N 990 -760 990 -730 {lab=VDD}
N 940 -660 990 -660 {lab=OUT}
N 860 -660 880 -660 {lab=#net2}
N 590 -510 590 -450 {lab=IB}
N 590 -450 950 -450 {lab=IB}
N 950 -510 950 -450 {lab=IB}
N 400 -630 400 -540 {lab=IB}
N 400 -550 440 -550 {lab=IB}
N 220 -560 310 -560 {lab=#net5}
N 310 -670 400 -670 {lab=IB}
N 310 -590 330 -590 {lab=#net5}
N 330 -590 330 -510 {lab=#net5}
N 270 -660 270 -620 {lab=IB}
N 270 -660 310 -660 {lab=IB}
N 310 -620 310 -590 {lab=#net5}
N 310 -730 310 -660 {lab=IB}
N 310 -660 310 -650 {lab=IB}
N 220 -410 220 -340 {lab=VSS}
N 400 -420 400 -410 {lab=#net6}
N 670 -410 670 -340 {lab=VSS}
N 990 -410 990 -340 {lab=VSS}
N 400 -250 400 -240 {lab=#net7}
N 400 -70 400 -60 {lab=VSS}
N 990 -340 990 -50 {lab=VSS}
N 670 -340 670 -50 {lab=VSS}
N 220 -340 220 -50 {lab=VSS}
N 400 -410 400 -390 {lab=#net6}
N 400 -330 400 -310 {lab=#net8}
N 400 -240 400 -220 {lab=#net7}
N 400 -160 400 -130 {lab=#net9}
C {sky130_fd_pr/nfet_01v8.sym} 560 -600 0 0 {name=M1
W=2.5
L=0.3
nf=2
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
C {sky130_fd_pr/nfet_01v8.sym} 780 -600 0 1 {name=M2
W=2.5
L=0.3
nf=2
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
C {sky130_fd_pr/pfet_01v8.sym} 740 -730 0 0 {name=M4
W=10.8
L=1.25
nf=4
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
C {sky130_fd_pr/pfet_01v8.sym} 600 -730 0 1 {name=M5
W=10.8
L=1.25
nf=4
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
C {sky130_fd_pr/nfet_01v8.sym} 650 -510 0 0 {name=M6
W=3.4
L=1.25
nf=1 
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
C {iopin.sym} 160 -50 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {iopin.sym} 160 -760 0 1 {name=p3 sig_type=std_logic lab=VDD
W=5.25
L=1}
C {ipin.sym} 540 -600 0 0 {name=p4 sig_type=std_logic lab=VP}
C {ipin.sym} 800 -600 0 1 {name=p5 sig_type=std_logic lab=VN}
C {lab_pin.sym} 670 -600 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {opin.sym} 990 -660 0 0 {name=p7 sig_type=std_logic lab=OUT}
C {sky130_fd_pr/nfet_01v8.sym} 380 -510 0 0 {name=M3
W=3.4
L=1.25
nf=1 
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
C {sky130_fd_pr/pfet_01v8.sym} 380 -730 0 0 {name=M7
W=10.8
L=1.25
nf=4
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
C {sky130_fd_pr/pfet_01v8.sym} 240 -730 0 1 {name=M8
W=10.8
L=1.25
nf=4
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
C {sky130_fd_pr/nfet_01v8.sym} 240 -510 0 1 {name=M9
W=3.4
L=1.25
nf=1 
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
C {sky130_fd_pr/pfet_01v8.sym} 970 -730 0 0 {name=M11
W=110
L=1.25
nf=32
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
C {sky130_fd_pr/nfet_01v8.sym} 970 -510 0 0 {name=M12
W=12
L=1.25
nf=4
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 910 -660 1 0 {name=C1 model=cap_mim_m3_1 W=20 L=20 MF=4 spiceprefix=X}
C {lab_pin.sym} 440 -550 0 1 {name=p8 sig_type=std_logic lab=IB}
C {sky130_fd_pr/nfet_01v8.sym} 290 -620 0 0 {name=M14
W=0.85
L=0.15
nf=1 
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
C {sky130_fd_pr/res_high_po_1p41.sym} 400 -450 0 0 {name=R1
L=3.235
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {lab_pin.sym} 380 -450 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_1p41.sym} 400 -360 0 0 {name=R2
L=3.235
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {lab_pin.sym} 380 -360 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_1p41.sym} 400 -280 0 0 {name=R3
L=3.235
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {lab_pin.sym} 380 -280 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_1p41.sym} 400 -190 0 0 {name=R4
L=3.235
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {lab_pin.sym} 380 -190 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_1p41.sym} 400 -100 0 0 {name=R5
L=3.235
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {lab_pin.sym} 380 -100 0 0 {name=p12 sig_type=std_logic lab=VSS}
