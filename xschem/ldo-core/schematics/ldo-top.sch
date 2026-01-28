v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 1300 -660 1310 -650 {}
L 4 1300 -640 1310 -650 {}
N 1040 -740 1040 -720 {lab=VFB}
N 970 -740 1040 -740 {lab=VFB}
N 1040 -760 1040 -740 {lab=VFB}
N 1040 -720 1040 -710 {lab=VFB}
N 1040 -840 1040 -820 {lab=VREG}
N 250 -940 380 -940 {lab=VFB}
N 250 -980 340 -980 {lab=VREF}
N 460 -1090 460 -1050 {lab=IBIAS_200uA}
N 1040 -1220 1040 -1090 {lab=VIN}
N 1040 -830 1180 -830 {lab=VREG}
N 1020 -960 1090 -960 {lab=VSS}
N 780 -960 860 -960 {lab=#net1}
N 490 -870 490 -820 {lab=VSS}
N 340 -980 380 -980 {lab=VREF}
N 510 -1090 510 -1050 {lab=VIN}
N 1180 -830 1350 -830 {lab=VREG}
N 630 -830 650 -830 {lab=#net1}
N 710 -830 750 -830 {lab=#net2}
N 810 -830 1040 -830 {lab=VREG}
N 590 -960 780 -960 {lab=#net1}
N 630 -960 630 -830 {lab=#net1}
N 1040 -650 1040 -630 {lab=#net3}
N 1040 -570 1040 -540 {lab=#net4}
N 1040 -480 1040 -460 {lab=#net5}
N 1040 -400 1040 -370 {lab=#net6}
N 1040 -310 1040 -290 {lab=#net7}
N 1040 -230 1040 -200 {lab=#net8}
N 1040 -140 1040 -120 {lab=#net9}
N 1040 -60 1040 -40 {lab=VSS}
N 1200 -830 1200 -710 {lab=VREG}
N 1350 -830 1470 -830 {lab=VREG}
C {icdec-biomedical-pmic/xschem/power-fet/power-fet.sym} 720 -780 0 0 {name=x2}
C {lab_pin.sym} 1020 -790 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 970 -740 0 0 {name=p11 lab=VFB}
C {lab_pin.sym} 1020 -680 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1020 -600 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 1040 -680 0 0 {name=R3
L=23.5
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 1040 -790 0 0 {name=R1
L=0.35
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 1090 -960 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1040 -1220 0 0 {name=p22 sig_type=std_logic lab=VIN}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} 210 -780 0 0 {name=x3}
C {ipin.sym} 250 -940 0 0 {name=p4 lab=VFB}
C {ipin.sym} 250 -980 0 0 {name=p8 lab=VREF}
C {ipin.sym} 460 -1090 0 0 {name=p24 lab=IBIAS_200uA}
C {ipin.sym} 510 -1090 0 1 {name=p25 lab=VIN}
C {iopin.sym} 490 -820 0 0 {name=p27 lab=VSS}
C {opin.sym} 1470 -830 0 0 {name=p17 sig_type=std_logic lab=VREG}
C {sky130_fd_pr/cap_mim_m3_1.sym} 680 -830 1 0 {name=C2 model=cap_mim_m3_1 W=25 L=25 MF=8 spiceprefix=X}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 780 -810 3 0 {name=M1
W=40
L=0.5
body=VDD
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
C {lab_pin.sym} 780 -790 0 0 {name=p37 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 1040 -600 0 0 {name=R2
L=23.5
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 1020 -510 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1020 -430 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 1040 -510 0 0 {name=R4
L=23.5
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 1040 -430 0 0 {name=R5
L=23.5
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 1020 -340 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1020 -260 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 1040 -340 0 0 {name=R6
L=23.5
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 1040 -260 0 0 {name=R7
L=23.5
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 1020 -170 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1020 -90 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 1040 -170 0 0 {name=R8
L=23.5
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 1040 -90 0 0 {name=R9
L=23.5
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 1040 -40 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {icdec-biomedical-pmic/xschem/ldo-core/schematics/damping-nmos.sym} 1090 -470 0 0 {name=x1}
