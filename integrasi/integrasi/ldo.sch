v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -650 -560 -650 -540 {lab=VREG}
N -1440 -660 -1310 -660 {lab=VFB}
N -1440 -700 -1350 -700 {lab=VREF}
N -1230 -810 -1230 -770 {lab=IBIAS_200uA}
N -650 -940 -650 -810 {lab=VIN}
N -650 -550 -510 -550 {lab=VREG}
N -670 -680 -600 -680 {lab=VSS}
N -910 -680 -830 -680 {lab=#net1}
N -1200 -590 -1200 -540 {lab=VSS}
N -1350 -700 -1310 -700 {lab=VREF}
N -1180 -810 -1180 -770 {lab=VIN}
N -510 -550 -340 -550 {lab=VREG}
N -1100 -680 -910 -680 {lab=#net1}
N -1060 -680 -1060 -550 {lab=#net1}
N -340 -550 -220 -550 {lab=VREG}
N -650 -540 -650 -510 {lab=VREG}
N -650 -330 -650 -270 {lab=VFB}
N -680 -300 -650 -300 {lab=VFB}
N -1060 -550 -1060 -530 {lab=#net1}
N -1060 -530 -1040 -530 {lab=#net1}
N -940 -530 -900 -530 {lab=#net2}
N -800 -530 -650 -530 {lab=VREG}
N -850 -560 -850 -540 {lab=VIN}
N -850 -470 -850 -450 {lab=VSS}
N -850 -540 -850 -530 {lab=VIN}
N -850 -490 -850 -470 {lab=VSS}
N -900 -530 -880 -530 {lab=#net2}
N -820 -530 -800 -530 {lab=VREG}
N -1040 -530 -1020 -530 {lab=#net1}
N -960 -530 -940 -530 {lab=#net2}
C {/foss/designs/kerjapraktik/test/ldo/xschem/integrasi/power-fet/power-fet.sym} -970 -500 0 0 {name=x2}
C {lab_pin.sym} -680 -300 0 0 {name=p11 lab=VFB}
C {lab_pin.sym} -600 -680 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -650 -940 0 0 {name=p22 sig_type=std_logic lab=VIN}
C {/foss/designs/kerjapraktik/test/ldo/xschem/integrasi/error-amplifier2/schematics/1st-stage.sym} -1480 -500 0 0 {name=x3}
C {ipin.sym} -1440 -660 0 0 {name=p4 lab=VFB}
C {ipin.sym} -1440 -700 0 0 {name=p8 lab=VREF}
C {ipin.sym} -1230 -810 0 0 {name=p24 lab=IBIAS_200uA}
C {ipin.sym} -1180 -810 0 1 {name=p25 lab=VIN}
C {iopin.sym} -1200 -540 0 0 {name=p27 lab=VSS}
C {opin.sym} -220 -550 0 0 {name=p17 sig_type=std_logic lab=VREG}
C {/foss/designs/kerjapraktik/test/ldo/xschem/integrasi/resistor_paralel/resistor180.sym} -670 -420 1 0 {name=x1}
C {/foss/designs/kerjapraktik/test/ldo/xschem/integrasi/serpentine_res/topology2/serpentine259k.sym} -680 -170 1 0 {name=x4}
C {lab_pin.sym} -690 -420 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -690 -180 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -650 -90 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -850 -450 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -850 -560 0 0 {name=p7 sig_type=std_logic lab=VIN}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -850 -510 3 0 {name=M1
W=40
L=0.5
nf=8
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_1.sym} -990 -530 1 0 {name=C2 model=cap_mim_m3_1 W=25 L=25 MF=8 spiceprefix=X}
