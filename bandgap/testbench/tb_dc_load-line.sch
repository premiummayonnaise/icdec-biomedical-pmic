v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 890 -500 940 -500 {lab=#net1}
N 1120 -280 1120 -250 {lab=VFBr}
N 1050 -280 1120 -280 {lab=VFBr}
N 1120 -300 1120 -280 {lab=VFBr}
N 1120 -370 1120 -360 {lab=VREG}
N 590 -620 850 -620 {lab=#net1}
N 590 -360 850 -360 {lab=#net1}
N 490 -530 670 -530 {lab=VSS}
N 670 -410 670 -270 {lab=VSS}
N 490 -270 670 -270 {lab=VSS}
N 510 -710 740 -710 {lab=VIN}
N 740 -580 740 -450 {lab=VIN}
N 510 -450 740 -450 {lab=VIN}
N 290 -640 380 -640 {lab=VREF}
N 290 -450 290 -340 {lab=VREF}
N 290 -340 380 -340 {lab=VREF}
N 330 -600 380 -600 {lab=VFBr}
N 330 -550 330 -380 {lab=VFBr}
N 330 -380 380 -380 {lab=VFBr}
N 200 -550 330 -550 {lab=VFBr}
N 200 -450 290 -450 {lab=VREF}
N 460 -750 460 -710 {lab=IBIAS_200uA}
N 460 -490 460 -450 {lab=IBIAS_10uA}
N 740 -580 810 -580 {lab=VIN}
N 670 -410 810 -410 {lab=VSS}
N 1120 -760 1120 -630 {lab=VIN}
N 850 -620 850 -500 {lab=#net1}
N 850 -500 850 -360 {lab=#net1}
N 1120 -370 1290 -370 {lab=VREG}
N 1100 -500 1170 -500 {lab=VSS}
N 1330 -370 1490 -370 {lab=VREG}
N 1860 -590 1860 -580 {lab=GND}
N 1260 -370 1260 -320 {lab=VREG}
N 1300 -370 1300 -350 {lab=VREG}
N 1300 -320 1300 -200 {lab=VSS}
N 890 -500 890 -100 {lab=#net1}
N 890 -100 910 -100 {lab=#net1}
N 970 -100 1010 -100 {lab=#net2}
N 1070 -100 1100 -100 {lab=VREG}
N 1100 -140 1100 -100 {lab=VREG}
N 960 -140 1100 -140 {lab=VREG}
N 960 -370 960 -140 {lab=VREG}
N 960 -370 1120 -370 {lab=VREG}
N 330 -600 330 -550 {lab=VFBr}
N 290 -640 290 -450 {lab=VREF}
N 740 -710 740 -580 {lab=VIN}
N 670 -530 670 -410 {lab=VSS}
N 1120 -380 1120 -370 {lab=VREG}
N 1290 -370 1330 -370 {lab=VREG}
N 850 -500 890 -500 {lab=#net1}
C {icdec-biomedical-pmic/xschem/power-fet/power-fet.sym} 800 -320 0 0 {name=x2}
C {lab_pin.sym} 1100 -330 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1050 -280 0 0 {name=p11 lab=VFBr}
C {lab_pin.sym} 1100 -220 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1120 -190 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 1120 -220 0 0 {name=R3
L=235
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 1120 -330 0 0 {name=R1
L=0.35
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 1170 -500 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1120 -760 0 0 {name=p22 sig_type=std_logic lab=VIN}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} 210 -440 0 0 {name=x3}
C {icdec-biomedical-pmic/xschem/5t-ota/schematics/5t-ota.sym} 280 -200 0 0 {name=x4}
C {lab_pin.sym} 200 -550 0 0 {name=p4 lab=VFBr}
C {lab_pin.sym} 200 -450 0 0 {name=p8 lab=VREF}
C {lab_pin.sym} 460 -490 0 0 {name=p23 lab=IBIAS_10uA}
C {lab_pin.sym} 460 -750 0 0 {name=p24 lab=IBIAS_200uA}
C {ipin.sym} 810 -580 0 1 {name=p25 lab=VIN}
C {iopin.sym} 810 -410 0 0 {name=p27 lab=VSS}
C {lab_pin.sym} 1490 -370 0 1 {name=p17 sig_type=std_logic lab=VREG}
C {lab_pin.sym} 1440 -310 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1450 -460 0 1 {name=p10 lab=IBIAS_200uA}
C {lab_pin.sym} 1450 -520 0 0 {name=p12 sig_type=std_logic lab=VIN}
C {isource.sym} 1450 -490 0 0 {name=I4 value="200u" savecurrent=false}
C {lab_pin.sym} 1330 -460 0 1 {name=p34 lab=IBIAS_10uA}
C {lab_pin.sym} 1330 -520 0 0 {name=p16 sig_type=std_logic lab=VIN}
C {isource.sym} 1440 -340 0 0 {name=I3 value="50m"
 savecurrent=false}
C {code_shown.sym} 1980 -750 0 0 {name=AC-SIM1 only_toplevel=false value=

"
.control
    * Run the nested sweep
    * V9 (outer): 1.6 to 5.0 (35 steps)
    * I3 (inner): 0 to 50m (100 steps)
    dc V9 1.6 10.0 0.1 I3 0 50m 0.5m 

    * In a nested sweep, the total number of points is (OuterSteps * InnerSteps)
    * Inner sweep has (50m - 0) / 0.5m + 1 = 101 points.

    * 1. LINE REGULATION
    * We want VREG at Iload=0 for Vin=5.0 and Vin=1.6
    * Point at Vin=1.6, I3=0 is index [0]
    * Point at Vin=5.0, I3=0 is index [34 * 101] 
    let vreg_low = v(VREG)[0]
    let vreg_high = v(VREG)[3434] 
    let line_reg = (vreg_high - vreg_low) / (5.0 - 1.6)

    * 2. LOAD REGULATION
    * We calculate this at a fixed Vin (e.g., the last sweep at Vin=5.0)
    * Full load (50mA) is the last point of that sweep
    let vreg_no_load = v(VREG)[3434]
    let vreg_full_load = v(VREG)[3534]
    let load_reg = (vreg_no_load - vreg_full_load) / 50m

    * 3. VOLTAGE DRIFT
    * Use vecmax and vecmin for vectors
    let v_max = vecmax(v(VREG))
    let v_min = vecmin(v(VREG))
    let v_drift = v_max - v_min

    * Print Results
    echo ==== REGULATION ANALYSIS ====
    print line_reg
    print load_reg
    print v_drift
    echo =============================

    plot v(VREG)
.endc
"}
C {vsource.sym} 1740 -720 0 0 {name=V4 value="1.25" savecurrent=false}
C {vsource.sym} 1860 -620 0 0 {name=V5 value=0 savecurrent=false}
C {vsource.sym} 1740 -620 0 0 {name=V9 value="0" savecurrent=false}
C {lab_pin.sym} 1740 -650 0 0 {name=p42 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 1740 -750 0 0 {name=p47 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1740 -590 0 0 {name=p49 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1740 -690 0 0 {name=p50 sig_type=std_logic lab=VSS}
C {gnd.sym} 1860 -580 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1860 -650 0 0 {name=p52 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 1730 -460 0 0 {name=CORNER2 only_toplevel=true corner=ff}
C {lab_pin.sym} 1330 -460 0 1 {name=p5 lab=IBIAS_10uA}
C {isource.sym} 1330 -490 0 0 {name=I5 value="10u" savecurrent=false}
C {lab_pin.sym} 1300 -200 0 1 {name=p41 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1280 -320 0 0 {name=M2
W=20
L=0.5
nf=1
mult=128
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 940 -100 1 0 {name=C1 model=cap_mim_m3_1 W=25 L=25 MF=8 spiceprefix=X}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 1040 -80 3 0 {name=M1
W=20
L=0.5
body=VDD
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {lab_pin.sym} 1040 -60 0 0 {name=p6 sig_type=std_logic lab=VSS}
