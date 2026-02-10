v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 1970 -580 1970 -130 {}
L 4 1970 -130 2080 -130 {}
L 4 1970 -580 2080 -580 {}
L 4 2080 -580 2080 -130 {}
L 4 1580 -580 1580 -130 {}
L 4 1580 -580 1930 -580 {}
L 4 1930 -580 1930 -130 {}
L 4 1580 -130 1930 -130 {}
L 4 2110 -580 2110 -130 {}
L 4 2110 -580 2460 -580 {}
L 4 2110 -130 2460 -130 {}
L 4 2460 -580 2460 -130 {}
L 4 1940 -870 1940 -730 {}
L 4 1940 -870 2220 -870 {}
L 4 1940 -730 2220 -730 {}
L 4 2220 -870 2220 -730 {}
L 4 920 -580 1220 -580 {}
L 4 920 -580 920 -130 {}
L 4 1220 -580 1280 -580 {}
L 4 1460 -580 1460 -130 {}
L 4 920 -130 1280 -130 {}
L 4 1280 -580 1460 -580 {}
L 4 1280 -130 1460 -130 {}
T {BGR CORE} 1700 -630 0 0 0.4 0.4 {}
T {CURVATURE
CORRECTION} 1960 -650 0 0 0.4 0.4 {}
T {STARTUP 
CIRCUIT} 2240 -650 0 0 0.4 0.4 {}
T {Note:
BGR core cuma bisa ngelakuin first-order cancellation terhadap gradien suhu (sifatnya cuma linier)
Untuk menambah fitur second-order cancellation, diterapkan rangkaian + resistor curvature correction
Startup Circuit dianggep nggak ada, tapi ngebantu biar BGR core gak terjebak di zero-current state} 2540 -230 0 0 0.4 0.4 {}
T {RC Lowpass Filter} 1990 -910 0 0 0.4 0.4 {}
N 1650 -550 1870 -550 {lab=VDD}
N 1810 -520 1830 -520 {lab=BOTAK}
N 1760 -520 1760 -460 {lab=BOTAK}
N 1650 -490 1650 -340 {lab=#net1}
N 1650 -550 1650 -520 {lab=VDD}
N 1870 -550 1870 -520 {lab=VDD}
N 1690 -220 1720 -220 {lab=VSS}
N 1720 -220 1720 -170 {lab=VSS}
N 1650 -190 1650 -170 {lab=VSS}
N 1800 -170 1870 -170 {lab=VSS}
N 1870 -190 1870 -170 {lab=VSS}
N 1800 -220 1830 -220 {lab=VSS}
N 1800 -220 1800 -170 {lab=VSS}
N 1650 -270 1650 -250 {lab=VBE1}
N 1650 -340 1650 -330 {lab=#net1}
N 1780 -340 1870 -340 {lab=VBE2}
N 1650 -340 1740 -340 {lab=#net1}
N 1810 -380 1820 -380 {lab=VDD}
N 1700 -380 1710 -380 {lab=VSS}
N 2710 -560 2710 -550 {lab=GND}
N 1870 -330 1870 -250 {lab=VBE2}
N 1960 -520 1990 -520 {lab=BOTAK}
N 1880 -530 1890 -520 {lab=BOTAK}
N 1820 -530 1880 -530 {lab=BOTAK}
N 1810 -520 1820 -530 {lab=BOTAK}
N 1870 -550 2030 -550 {lab=VDD}
N 2030 -350 2030 -170 {lab=VSS}
N 1870 -170 2030 -170 {lab=VSS}
N 1960 -520 1960 -450 {lab=BOTAK}
N 1960 -450 2160 -450 {lab=BOTAK}
N 2160 -450 2160 -410 {lab=BOTAK}
N 2130 -380 2160 -380 {lab=VSS}
N 2130 -380 2130 -170 {lab=VSS}
N 2160 -350 2160 -170 {lab=VSS}
N 2130 -170 2160 -170 {lab=VSS}
N 1870 -330 2210 -330 {lab=VBE2}
N 2210 -330 2210 -280 {lab=VBE2}
N 2250 -250 2250 -170 {lab=VSS}
N 2160 -170 2250 -170 {lab=VSS}
N 2030 -550 2030 -520 {lab=VDD}
N 2250 -550 2250 -520 {lab=VDD}
N 2030 -550 2250 -550 {lab=VDD}
N 2200 -380 2250 -380 {lab=#net2}
N 2250 -380 2250 -310 {lab=#net2}
N 2360 -520 2390 -520 {lab=VSS}
N 2370 -550 2430 -550 {lab=VDD}
N 2320 -550 2320 -440 {lab=VDD}
N 2430 -480 2430 -170 {lab=VSS}
N 2360 -170 2430 -170 {lab=VSS}
N 2250 -280 2270 -280 {lab=VSS}
N 2270 -280 2270 -170 {lab=VSS}
N 2360 -480 2360 -470 {lab=VSS}
N 2360 -440 2370 -440 {lab=VDD}
N 2370 -550 2370 -440 {lab=VDD}
N 2360 -480 2430 -480 {lab=VSS}
N 2360 -410 2360 -170 {lab=VSS}
N 2430 -550 2430 -520 {lab=VDD}
N 1710 -520 1760 -520 {lab=BOTAK}
N 1650 -170 1720 -170 {lab=VSS}
N 1720 -170 1800 -170 {lab=VSS}
N 1760 -520 1810 -520 {lab=BOTAK}
N 1890 -520 1960 -520 {lab=BOTAK}
N 2030 -170 2130 -170 {lab=VSS}
N 1870 -340 1870 -330 {lab=VBE2}
N 2250 -490 2250 -380 {lab=#net2}
N 2250 -550 2320 -550 {lab=VDD}
N 2250 -170 2270 -170 {lab=VSS}
N 2290 -520 2360 -520 {lab=VSS}
N 2320 -550 2370 -550 {lab=VDD}
N 2360 -520 2360 -480 {lab=VSS}
N 2430 -490 2430 -480 {lab=VSS}
N 2270 -170 2360 -170 {lab=VSS}
N 2030 -490 2030 -410 {lab=#net3}
N 1870 -360 1870 -340 {lab=VBE2}
N 1870 -490 1870 -460 {lab=#net4}
N 1870 -460 1870 -420 {lab=#net4}
N 1870 -460 1910 -460 {lab=#net4}
N 1910 -820 2020 -820 {lab=#net4}
N 2080 -820 2150 -820 {lab=OUT}
N 1910 -820 1910 -460 {lab=#net4}
N 1190 -520 1220 -520 {lab=#net5}
N 1510 -170 1650 -170 {lab=VSS}
N 1150 -390 1150 -340 {lab=#net6}
N 1280 -190 1280 -170 {lab=VSS}
N 1320 -220 1370 -220 {lab=VSS}
N 1370 -220 1370 -170 {lab=VSS}
N 1280 -270 1280 -250 {lab=#net7}
N 1280 -310 1290 -310 {lab=#net7}
N 1290 -310 1290 -270 {lab=#net7}
N 1280 -270 1290 -270 {lab=#net7}
N 1280 -280 1280 -270 {lab=#net7}
N 960 -550 1000 -550 {lab=VDD}
N 1280 -380 1280 -340 {lab=BOTAK}
N 390 -550 390 -520 {lab=VDD}
N 260 -550 260 -520 {lab=VDD}
N 530 -550 530 -520 {lab=VDD}
N 670 -550 670 -520 {lab=VDD}
N 530 -490 530 -400 {lab=#net8}
N 90 -550 260 -550 {lab=VDD}
N 460 -240 460 -170 {lab=VSS}
N 260 -490 260 -400 {lab=#net8}
N 670 -490 670 -420 {lab=VZTC}
N 1380 -550 1380 -520 {lab=VDD}
N 1380 -390 1380 -380 {lab=#net5}
N 1380 -290 1380 -170 {lab=VSS}
N 1380 -350 1380 -320 {lab=VSS}
N 1170 -550 1380 -550 {lab=VDD}
N 1390 -550 1650 -550 {lab=VDD}
N 1380 -550 1390 -550 {lab=VDD}
N 1380 -490 1380 -460 {lab=#net9}
N 1240 -520 1340 -520 {lab=#net5}
N 1290 -520 1290 -390 {lab=#net5}
N 1290 -390 1380 -390 {lab=#net5}
N 1380 -320 1380 -290 {lab=VSS}
N 1380 -400 1380 -390 {lab=#net5}
N 1520 -490 1520 -470 {lab=BOTAK}
N 1520 -550 1520 -520 {lab=VDD}
N 1560 -520 1560 -470 {lab=BOTAK}
N 1520 -470 1560 -470 {lab=BOTAK}
N 1690 -520 1710 -520 {lab=BOTAK}
N 1150 -200 1150 -170 {lab=VSS}
N 910 -170 1000 -170 {lab=VSS}
N 810 -550 870 -550 {lab=VDD}
N 750 -550 810 -550 {lab=VDD}
N 810 -550 810 -520 {lab=VDD}
N 850 -520 850 -480 {lab=#net5}
N 850 -480 1290 -480 {lab=#net5}
N 1120 -310 1150 -310 {lab=VSS}
N 1120 -310 1120 -170 {lab=VSS}
N 1150 -280 1150 -260 {lab=#net10}
N 260 -550 670 -550 {lab=VDD}
N 1560 -540 1560 -520 {lab=BOTAK}
N 1560 -540 1730 -540 {lab=BOTAK}
N 1730 -540 1730 -520 {lab=BOTAK}
N 810 -490 810 -450 {lab=#net11}
N 670 -550 750 -550 {lab=VDD}
N 570 -520 570 -480 {lab=#net5}
N 710 -520 710 -480 {lab=#net5}
N 570 -480 850 -480 {lab=#net5}
N 430 -540 430 -520 {lab=BOTAK}
N 300 -540 300 -520 {lab=BOTAK}
N 300 -540 1560 -540 {lab=BOTAK}
N 390 -390 670 -390 {lab=VZTC}
N 670 -420 670 -390 {lab=VZTC}
N 460 -390 460 -300 {lab=VZTC}
N 260 -400 530 -400 {lab=#net8}
N 390 -490 390 -390 {lab=VZTC}
N 260 -400 260 -300 {lab=#net8}
N 90 -170 910 -170 {lab=VSS}
N 870 -550 960 -550 {lab=VDD}
N 1150 -400 1150 -390 {lab=#net6}
N 1380 -170 1510 -170 {lab=VSS}
N 1150 -550 1150 -520 {lab=VDD}
N 1150 -490 1150 -400 {lab=#net6}
N 1280 -470 1280 -380 {lab=BOTAK}
N 1280 -470 1520 -470 {lab=BOTAK}
N 1280 -350 1340 -350 {lab=BOTAK}
N 1280 -170 1380 -170 {lab=VSS}
N 1190 -310 1220 -310 {lab=#net6}
N 1000 -170 1280 -170 {lab=VSS}
N 1220 -310 1240 -310 {lab=#net6}
N 1220 -520 1240 -520 {lab=#net5}
N 1150 -370 1220 -370 {lab=#net6}
N 1220 -370 1220 -310 {lab=#net6}
N 1000 -550 1170 -550 {lab=VDD}
N 300 -200 340 -200 {lab=#net8}
N 260 -300 260 -230 {lab=#net8}
N 260 -280 320 -280 {lab=#net8}
N 320 -280 320 -210 {lab=#net8}
N 320 -210 320 -200 {lab=#net8}
N 380 -280 380 -230 {lab=#net12}
N 730 -200 770 -200 {lab=#net11}
N 750 -210 750 -200 {lab=#net11}
N 810 -450 810 -230 {lab=#net11}
N 750 -280 750 -210 {lab=#net11}
N 750 -280 810 -280 {lab=#net11}
N 690 -280 690 -230 {lab=#net13}
N 380 -200 380 -170 {lab=VSS}
N 260 -200 260 -170 {lab=VSS}
N 810 -200 810 -170 {lab=VSS}
N 690 -200 690 -170 {lab=VSS}
C {afe-icdec-teknofest-2026/bandgap/bgr-opamp/bgr-opamp.sym} 1600 -180 1 1 {name=x1}
C {sky130_fd_pr/pfet_01v8.sym} 1850 -520 0 0 {name=M1
W=20
L=5
nf=1
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
C {sky130_fd_pr/pfet_01v8.sym} 1670 -520 0 1 {name=M2
W=20
L=5
nf=1
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
C {res.sym} 1870 -390 0 0 {name=R1
value=973k
footprint=1206
device=resistor
m=1}
C {res.sym} 1650 -300 0 0 {name=R2
value=199.4k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/pnp_05v5.sym} 1850 -220 0 0 {name=Q1
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} 1670 -220 0 1 {name=Q2
model=pnp_05v5_W3p40L3p40
m=64
spiceprefix=X
}
C {lab_pin.sym} 1820 -380 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1700 -380 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {vsource.sym} 2590 -590 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 2710 -590 0 0 {name=V2 value=0 savecurrent=false}
C {lab_pin.sym} 2590 -560 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 2710 -620 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {gnd.sym} 2710 -550 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 2590 -620 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/corner.sym} 2540 -440 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code_shown.sym} 2800 -490 0 0 {name=s1 only_toplevel=false value="

.control

  dc temp 27 27.01 0.01

  plot i(Vmeas1) i(Vmeas)

.endc
"}
C {lab_pin.sym} 90 -550 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 90 -170 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 2010 -520 0 0 {name=M3
W=20
L=5
nf=1
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
C {res.sym} 2030 -380 0 0 {name=R3
value=10k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/nfet_01v8.sym} 2180 -380 0 1 {name=M4
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 2230 -280 0 0 {name=M5
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 2270 -520 0 1 {name=M6
W=20
L=5
nf=1
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
C {sky130_fd_pr/pfet_01v8.sym} 2410 -520 0 0 {name=M7
W=20
L=5
nf=1
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
C {sky130_fd_pr/pfet_01v8.sym} 2340 -440 0 0 {name=M8
W=5
L=5
nf=1
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
C {lab_pin.sym} 1650 -260 0 1 {name=p11 sig_type=std_logic lab=VBE1}
C {lab_pin.sym} 1870 -270 0 1 {name=p12 sig_type=std_logic lab=VBE2}
C {title.sym} 1120 -70 0 0 {name=l2 author="Dzaki Andriansyah"}
C {lab_pin.sym} 2150 -820 0 1 {name=p5 sig_type=std_logic lab=OUT}
C {capa.sym} 2120 -790 0 0 {name=C2
m=1
value=4f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 2120 -760 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {res.sym} 2050 -820 1 0 {name=R4
value=1
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 1760 -490 0 1 {name=p6 sig_type=std_logic lab=BOTAK}
C {sky130_fd_pr/nfet_01v8.sym} 1170 -310 0 1 {name=M10
W=20
L=5
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
C {sky130_fd_pr/nfet_01v8.sym} 1260 -310 0 0 {name=M11
W=20
L=5
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
C {sky130_fd_pr/pnp_05v5.sym} 1300 -220 0 1 {name=Q3
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 690 -520 0 1 {name=M15
W=20
L=5
nf=1
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
C {sky130_fd_pr/pfet_01v8.sym} 550 -520 0 1 {name=M16
W=20
L=5
nf=1
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
C {sky130_fd_pr/pfet_01v8.sym} 410 -520 0 1 {name=M17
W=20
L=5
nf=1
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
C {sky130_fd_pr/pfet_01v8.sym} 280 -520 0 1 {name=M18
W=20
L=5
nf=1
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
C {res.sym} 460 -270 0 0 {name=R5
value=2.3k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 460 -340 0 0 {name=p15 sig_type=std_logic lab=VZTC}
C {sky130_fd_pr/pfet_01v8.sym} 1170 -520 0 1 {name=M19
W=20
L=5
nf=1
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
C {sky130_fd_pr/pfet_01v8.sym} 1360 -520 0 0 {name=M23
W=20
L=5
nf=1
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
C {res.sym} 1380 -430 0 1 {name=R7
value=0.3k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/nfet_01v8.sym} 1360 -350 0 0 {name=M24
W=20
L=5
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
C {sky130_fd_pr/pfet_01v8.sym} 1540 -520 0 1 {name=M12
W=20
L=5
nf=1
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
C {res.sym} 1150 -230 0 0 {name=R6
value=200.3k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/pfet_01v8.sym} 830 -520 0 1 {name=M9
W=20
L=5
nf=1
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
C {sky130_fd_pr/nfet_01v8.sym} 280 -200 0 1 {name=M13
W=20
L=5
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
C {sky130_fd_pr/nfet_01v8.sym} 360 -200 0 0 {name=M14
W=16
L=5
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
C {sky130_fd_pr/nfet_01v8.sym} 710 -200 0 1 {name=M20
W=16
L=5
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
C {sky130_fd_pr/nfet_01v8.sym} 790 -200 0 0 {name=M21
W=20
L=5
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
C {ammeter.sym} 380 -310 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 690 -310 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {lab_pin.sym} 380 -340 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 690 -340 0 0 {name=p14 sig_type=std_logic lab=VDD}
