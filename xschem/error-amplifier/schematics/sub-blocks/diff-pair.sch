v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 230 -160 400 -160 {lab=S}
N 230 -190 400 -190 {lab=VSS}
N 180 -190 190 -190 {lab=VP}
N 440 -190 450 -190 {lab=VN}
N 310 -160 310 -120 {lab=S}
N 230 -270 230 -220 {lab=D1}
N 400 -270 400 -220 {lab=D2}
N 730 -260 770 -260 {lab=D1}
N 770 -260 770 -200 {lab=D1}
N 730 -200 770 -200 {lab=D1}
N 730 -120 770 -120 {lab=D2}
N 770 -120 770 -60 {lab=D2}
N 730 -60 770 -60 {lab=D2}
N 620 -230 730 -230 {lab=VSS}
N 620 -90 730 -90 {lab=VSS}
N 770 -230 830 -230 {lab=D1}
N 770 -90 830 -90 {lab=D2}
N 1060 -260 1100 -260 {lab=D1}
N 1100 -260 1100 -200 {lab=D1}
N 1060 -200 1100 -200 {lab=D1}
N 1060 -120 1100 -120 {lab=D2}
N 1100 -120 1100 -60 {lab=D2}
N 1060 -60 1100 -60 {lab=D2}
N 950 -230 1060 -230 {lab=VSS}
N 950 -90 1060 -90 {lab=VSS}
N 1100 -230 1160 -230 {lab=D1}
N 1100 -90 1160 -90 {lab=D2}
N 730 -520 770 -520 {lab=D1}
N 770 -520 770 -460 {lab=D1}
N 730 -460 770 -460 {lab=D1}
N 730 -380 770 -380 {lab=D2}
N 770 -380 770 -320 {lab=D2}
N 730 -320 770 -320 {lab=D2}
N 620 -490 730 -490 {lab=VSS}
N 620 -350 730 -350 {lab=VSS}
N 770 -490 830 -490 {lab=D1}
N 770 -350 830 -350 {lab=D2}
N 1060 -520 1100 -520 {lab=D1}
N 1100 -520 1100 -460 {lab=D1}
N 1060 -460 1100 -460 {lab=D1}
N 1060 -380 1100 -380 {lab=D2}
N 1100 -380 1100 -320 {lab=D2}
N 1060 -320 1100 -320 {lab=D2}
N 950 -490 1060 -490 {lab=VSS}
N 950 -350 1060 -350 {lab=VSS}
N 1100 -490 1160 -490 {lab=D1}
N 1100 -350 1160 -350 {lab=D2}
N 730 -790 770 -790 {lab=D1}
N 770 -790 770 -730 {lab=D1}
N 730 -730 770 -730 {lab=D1}
N 730 -650 770 -650 {lab=D2}
N 770 -650 770 -590 {lab=D2}
N 730 -590 770 -590 {lab=D2}
N 620 -760 730 -760 {lab=VSS}
N 620 -620 730 -620 {lab=VSS}
N 770 -760 830 -760 {lab=D1}
N 770 -620 830 -620 {lab=D2}
N 1060 -790 1100 -790 {lab=D1}
N 1100 -790 1100 -730 {lab=D1}
N 1060 -730 1100 -730 {lab=D1}
N 1060 -650 1100 -650 {lab=D2}
N 1100 -650 1100 -590 {lab=D2}
N 1060 -590 1100 -590 {lab=D2}
N 950 -760 1060 -760 {lab=VSS}
N 950 -620 1060 -620 {lab=VSS}
N 1100 -760 1160 -760 {lab=D1}
N 1100 -620 1160 -620 {lab=D2}
N 730 -1050 770 -1050 {lab=D1}
N 770 -1050 770 -990 {lab=D1}
N 730 -990 770 -990 {lab=D1}
N 730 -910 770 -910 {lab=D2}
N 770 -910 770 -850 {lab=D2}
N 730 -850 770 -850 {lab=D2}
N 620 -1020 730 -1020 {lab=VSS}
N 620 -880 730 -880 {lab=VSS}
N 770 -1020 830 -1020 {lab=D1}
N 770 -880 830 -880 {lab=D2}
N 1060 -1050 1100 -1050 {lab=D1}
N 1100 -1050 1100 -990 {lab=D1}
N 1060 -990 1100 -990 {lab=D1}
N 1060 -910 1100 -910 {lab=D2}
N 1100 -910 1100 -850 {lab=D2}
N 1060 -850 1100 -850 {lab=D2}
N 950 -1020 1060 -1020 {lab=VSS}
N 950 -880 1060 -880 {lab=VSS}
N 1100 -1020 1160 -1020 {lab=D1}
N 1100 -880 1160 -880 {lab=D2}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 420 -190 0 1 {name=M3
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 210 -190 0 0 {name=M4
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
C {lab_wire.sym} 320 -190 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {ipin.sym} 180 -190 0 0 {name=p6 lab=VP}
C {ipin.sym} 450 -190 0 1 {name=p7 lab=VN}
C {iopin.sym} 310 -120 0 0 {name=p1 lab=S}
C {iopin.sym} 400 -270 0 0 {name=p2 lab=D2}
C {iopin.sym} 230 -270 0 1 {name=p3 lab=D1}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 750 -90 0 1 {name=M1
W=4.75
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 750 -230 0 1 {name=M2
W=4.75
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
C {lab_wire.sym} 620 -230 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 620 -90 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 830 -230 0 1 {name=p9 sig_type=std_logic lab=D1}
C {lab_wire.sym} 830 -90 0 1 {name=p10 sig_type=std_logic lab=D2}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1080 -90 0 1 {name=M5
W=4.75
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1080 -230 0 1 {name=M6
W=4.75
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
C {lab_wire.sym} 950 -230 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 950 -90 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1160 -230 0 1 {name=p13 sig_type=std_logic lab=D1}
C {lab_wire.sym} 1160 -90 0 1 {name=p14 sig_type=std_logic lab=D2}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 750 -350 0 1 {name=M7
W=4.75
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 750 -490 0 1 {name=M8
W=4.75
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
C {lab_wire.sym} 620 -490 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 620 -350 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 830 -490 0 1 {name=p17 sig_type=std_logic lab=D1}
C {lab_wire.sym} 830 -350 0 1 {name=p18 sig_type=std_logic lab=D2}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1080 -350 0 1 {name=M9
W=4.75
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1080 -490 0 1 {name=M10
W=4.75
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
C {lab_wire.sym} 950 -490 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 950 -350 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1160 -490 0 1 {name=p21 sig_type=std_logic lab=D1}
C {lab_wire.sym} 1160 -350 0 1 {name=p22 sig_type=std_logic lab=D2}
C {iopin.sym} 310 -60 0 0 {name=p23 lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 750 -620 0 1 {name=M11
W=4.75
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 750 -760 0 1 {name=M12
W=4.75
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
C {lab_wire.sym} 620 -760 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 620 -620 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 830 -760 0 1 {name=p26 sig_type=std_logic lab=D1}
C {lab_wire.sym} 830 -620 0 1 {name=p27 sig_type=std_logic lab=D2}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1080 -620 0 1 {name=M13
W=4.75
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1080 -760 0 1 {name=M14
W=4.75
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
C {lab_wire.sym} 950 -760 0 0 {name=p28 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 950 -620 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1160 -760 0 1 {name=p30 sig_type=std_logic lab=D1}
C {lab_wire.sym} 1160 -620 0 1 {name=p31 sig_type=std_logic lab=D2}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 750 -880 0 1 {name=M15
W=4.75
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 750 -1020 0 1 {name=M16
W=4.75
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
C {lab_wire.sym} 620 -1020 0 0 {name=p32 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 620 -880 0 0 {name=p33 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 830 -1020 0 1 {name=p34 sig_type=std_logic lab=D1}
C {lab_wire.sym} 830 -880 0 1 {name=p35 sig_type=std_logic lab=D2}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1080 -880 0 1 {name=M17
W=4.75
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1080 -1020 0 1 {name=M18
W=4.75
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
C {lab_wire.sym} 950 -1020 0 0 {name=p36 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 950 -880 0 0 {name=p37 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1160 -1020 0 1 {name=p38 sig_type=std_logic lab=D1}
C {lab_wire.sym} 1160 -880 0 1 {name=p39 sig_type=std_logic lab=D2}
