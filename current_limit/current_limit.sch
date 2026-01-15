v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 420 230 740 230 {lab=#net1}
N 640 210 640 230 {lab=#net1}
N 780 260 780 300 {lab=LDO}
N 780 360 780 400 {lab=VFB}
N 780 280 920 280 {lab=LDO}
N 920 280 960 280 {lab=LDO}
N 340 130 340 150 {lab=VDD}
N 340 340 340 370 {lab=VDD}
N 640 130 640 150 {lab=VDD}
N 780 170 780 200 {lab=VDD}
N 400 130 400 150 {lab=VB}
N 420 340 420 370 {lab=VB}
N 450 450 540 450 {lab=#net1}
N 540 230 540 450 {lab=#net1}
N 750 380 780 380 {lab=VFB}
N 1260 280 1260 310 {lab=#net2}
N 1180 500 1180 530 {lab=VSS}
N 1180 280 1180 380 {lab=LDO}
N 1220 500 1320 500 {lab=#net3}
N 1180 380 1180 470 {lab=LDO}
N 1260 310 1430 310 {lab=#net2}
N 1430 310 1610 310 {lab=#net2}
N 1560 310 1560 350 {lab=#net2}
N 1450 530 1500 530 {lab=#net4}
N 1500 430 1500 530 {lab=#net4}
N 1670 310 1730 310 {lab=LIM}
N 1730 260 1730 310 {lab=LIM}
N 1450 470 1470 470 {lab=#net5}
N 1470 470 1470 550 {lab=#net5}
N 1470 550 1890 550 {lab=#net5}
N 1890 170 1890 550 {lab=#net5}
N 1730 170 1890 170 {lab=#net5}
N 1730 170 1730 200 {lab=#net5}
N 1730 140 1730 170 {lab=#net5}
N 1260 230 1260 250 {lab=VDD}
N 1180 530 1180 560 {lab=VSS}
N 1730 310 1770 310 {lab=LIM}
N 1350 400 1350 420 {lab=#net6}
N 1570 120 1570 140 {lab=rs}
N 1570 40 1570 60 {lab=LIM}
N 1180 280 1220 280 {lab=LDO}
N 1130 280 1180 280 {lab=LDO}
N 1560 410 1560 450 {lab=#net4}
N 1500 430 1560 430 {lab=#net4}
N 640 150 640 180 {lab=VDD}
N 780 200 780 230 {lab=VDD}
C {/foss/designs/kerjapraktik/icdec-biomedical-pmic/xschem/5t-ota/5t-ota.sym} 190 370 0 0 {name=x1}
C {/foss/designs/kerjapraktik/icdec-biomedical-pmic/xschem/error-amplifier/schematics/error-amplifier.sym} 230 550 0 0 {name=x2}
C {sky130_fd_pr/pfet_01v8.sym} 620 180 0 0 {name=M1
W=20
L=0.5
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 760 230 0 0 {name=M2
W=80.5
L=0.35
nf=40
mult=100
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/res_xhigh_po_2p85.sym} 780 330 0 0 {name=R1
L=10.15
model=res_xhigh_po_2p85
spiceprefix=X
mult=40}
C {sky130_fd_pr/res_xhigh_po_2p85.sym} 780 430 0 0 {name=R2
L=372.75
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 960 280 0 1 {name=p1 sig_type=std_logic lab=LDO}
C {lab_pin.sym} 320 260 0 0 {name=p2 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 320 480 0 0 {name=p3 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 320 200 0 0 {name=p4 sig_type=std_logic lab=VFB}
C {lab_pin.sym} 320 420 0 0 {name=p5 sig_type=std_logic lab=VFB}
C {lab_pin.sym} 340 130 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 340 340 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 640 130 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 780 170 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 400 130 0 0 {name=p10 sig_type=std_logic lab=VB}
C {lab_pin.sym} 420 340 0 0 {name=p11 sig_type=std_logic lab=VB}
C {lab_pin.sym} 370 310 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 380 530 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 780 460 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 750 380 0 0 {name=p16 sig_type=std_logic lab=VFB}
C {/foss/designs/kerjapraktik/icdec-biomedical-pmic/xschem/error-amplifier/schematics/error-amplifier.sym} 1540 600 0 1 {name=x3}
C {sky130_fd_pr/nfet_01v8.sym} 1240 280 0 0 {name=M3
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1200 500 0 1 {name=M4
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/res_generic_m1.sym} 1640 310 3 1 {name=R4
W=1
L=16
model=res_generic_m1
mult=1}
C {sky130_fd_pr/res_xhigh_po_2p85.sym} 1560 380 0 0 {name=R5
L=16.6155
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_2p85.sym} 1560 480 0 0 {name=R6
L=1.197
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_2p85.sym} 1730 230 0 0 {name=R7
L=4.275
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 1710 230 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1540 380 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1540 480 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1560 510 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1390 580 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {isource.sym} 1730 110 0 0 {name=I0 value=10u}
C {lab_pin.sym} 1730 80 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1260 230 0 0 {name=p23 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1180 560 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1430 420 0 0 {name=p25 sig_type=std_logic lab=VDD}
C {vsource.sym} 1130 80 0 0 {name=V3 value=1.8 savecurrent=false}
C {vsource.sym} 1210 80 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 1130 50 0 0 {name=p27 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1210 50 0 0 {name=p28 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1130 110 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {gnd.sym} 1210 110 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1770 310 0 1 {name=p30 sig_type=std_logic lab=LIM}
C {isource.sym} 1570 170 0 0 {name=I1 value=10u}
C {lab_pin.sym} 1570 200 0 0 {name=p31 sig_type=std_logic lab=VSS}
C {vsource.sym} 1350 370 0 0 {name=V5 value=0.9 savecurrent=false}
C {lab_pin.sym} 1350 340 0 0 {name=p32 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1570 40 0 1 {name=p33 sig_type=std_logic lab=LIM}
C {sky130_fd_pr/res_generic_m1.sym} 1570 90 0 0 {name=R8
W=1
L=8
model=res_generic_m1
mult=1}
C {lab_pin.sym} 1570 130 0 0 {name=p34 sig_type=std_logic lab=rs}
C {lab_pin.sym} 1130 280 0 0 {name=p35 sig_type=std_logic lab=LDO}
C {sky130_fd_pr/corner.sym} 1970 60 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code_shown.sym} 1990 230 0 0 {name=s1 only_toplevel=false value="
.control
save all
set noaskquit

* Sweep load current
dc I1 0 500m 2m

* Load current via Rsense (1 ohm)
plot v(lim,rs)

* The foldback verdict plot
plot v(lim) vs v(lim,rs)

.endc

"}
C {vsource.sym} 1040 80 0 0 {name=V1 value=0.9 savecurrent=false}
C {lab_pin.sym} 1040 50 0 0 {name=p15 sig_type=std_logic lab=VB}
C {lab_pin.sym} 1040 110 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {vsource.sym} 950 80 0 0 {name=V2 value=1.25 savecurrent=false}
C {lab_pin.sym} 950 50 0 0 {name=p36 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 950 110 0 0 {name=p37 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 760 330 0 0 {name=p38 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 760 430 0 0 {name=p39 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 600 180 0 0 {name=p40 sig_type=std_logic lab=EN}
C {vsource.sym} 850 80 0 0 {name=V6 value=0.9 savecurrent=false}
C {lab_pin.sym} 850 50 0 0 {name=p41 sig_type=std_logic lab=EN}
C {lab_pin.sym} 850 110 0 0 {name=p42 sig_type=std_logic lab=VSS}
