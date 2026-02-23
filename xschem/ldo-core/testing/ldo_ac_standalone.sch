v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 750 -1660 840 -1660 {lab=#net1}
N 1020 -1440 1020 -1420 {lab=VFBr}
N 950 -1440 1020 -1440 {lab=VFBr}
N 1020 -1460 1020 -1440 {lab=VFBr}
N 1020 -1420 1020 -1410 {lab=VFBr}
N 1020 -1540 1020 -1520 {lab=VREG}
N 490 -1780 520 -1780 {lab=#net1}
N 490 -1520 520 -1520 {lab=#net1}
N 390 -1690 570 -1690 {lab=VSS}
N 570 -1690 570 -1430 {lab=VSS}
N 390 -1430 570 -1430 {lab=VSS}
N 410 -1870 640 -1870 {lab=VINr}
N 640 -1870 640 -1610 {lab=VINr}
N 410 -1610 640 -1610 {lab=VINr}
N 190 -1800 280 -1800 {lab=VREF}
N 190 -1800 190 -1500 {lab=VREF}
N 190 -1500 280 -1500 {lab=VREF}
N 230 -1760 280 -1760 {lab=VFBr}
N 230 -1760 230 -1540 {lab=VFBr}
N 230 -1540 280 -1540 {lab=VFBr}
N 100 -1710 230 -1710 {lab=VFBr}
N 100 -1610 190 -1610 {lab=VREF}
N 360 -1910 360 -1870 {lab=IBIAS_200uA}
N 360 -1650 360 -1610 {lab=IBIAS_10uA}
N 640 -1740 710 -1740 {lab=VINr}
N 570 -1570 710 -1570 {lab=VSS}
N 1020 -1920 1020 -1790 {lab=VINr}
N 520 -1780 750 -1780 {lab=#net1}
N 750 -1780 750 -1680 {lab=#net1}
N 520 -1520 750 -1520 {lab=#net1}
N 750 -1680 750 -1520 {lab=#net1}
N 1020 -1530 1160 -1530 {lab=VREG}
N 1000 -1660 1070 -1660 {lab=VSS}
N 1160 -1530 1390 -1530 {lab=VREG}
N 1820 -690 1820 -680 {lab=GND}
N 790 -360 880 -360 {lab=#net2}
N 1060 -160 1060 -140 {lab=PROBE}
N 1060 -240 1060 -220 {lab=VREGac}
N 530 -480 560 -480 {lab=#net2}
N 530 -220 560 -220 {lab=#net2}
N 430 -390 610 -390 {lab=VSS}
N 610 -390 610 -130 {lab=VSS}
N 430 -130 610 -130 {lab=VSS}
N 450 -570 680 -570 {lab=VIN}
N 680 -570 680 -310 {lab=VIN}
N 450 -310 680 -310 {lab=VIN}
N 230 -500 320 -500 {lab=VREFac}
N 230 -500 230 -200 {lab=VREFac}
N 230 -200 320 -200 {lab=VREFac}
N 270 -460 320 -460 {lab=VFB}
N 270 -460 270 -240 {lab=VFB}
N 270 -240 320 -240 {lab=VFB}
N 140 -410 270 -410 {lab=VFB}
N 140 -310 230 -310 {lab=VREFac}
N 400 -610 400 -570 {lab=IBIAS_200uA}
N 400 -350 400 -310 {lab=IBIAS_10uA}
N 680 -440 750 -440 {lab=VIN}
N 610 -270 750 -270 {lab=VSS}
N 1060 -620 1060 -490 {lab=VIN}
N 560 -480 790 -480 {lab=#net2}
N 790 -480 790 -380 {lab=#net2}
N 560 -220 790 -220 {lab=#net2}
N 790 -380 790 -220 {lab=#net2}
N 1060 -230 1200 -230 {lab=VREGac}
N 1040 -360 1110 -360 {lab=VSS}
N 1200 -230 1430 -230 {lab=VREGac}
N 1060 -140 1060 -120 {lab=PROBE}
N 990 -140 1060 -140 {lab=PROBE}
N 1060 -120 1060 -110 {lab=PROBE}
N 890 -140 930 -140 {lab=VFB}
N 890 -140 890 -100 {lab=VFB}
N 1060 -140 1100 -140 {lab=PROBE}
N 1300 -80 1300 -60 {lab=VSS}
N 1260 -230 1260 -180 {lab=VREGac}
N 1300 -230 1300 -210 {lab=VREGac}
N 1300 -180 1300 -150 {lab=VSS}
N 1300 -150 1300 -140 {lab=VSS}
N 1300 -140 1300 -80 {lab=VSS}
N 1250 -1380 1250 -1360 {lab=VSS}
N 1210 -1530 1210 -1480 {lab=VREG}
N 1250 -1530 1250 -1510 {lab=VREG}
N 1250 -1480 1250 -1450 {lab=VSS}
N 1250 -1450 1250 -1440 {lab=VSS}
N 1250 -1440 1250 -1380 {lab=VSS}
C {icdec-biomedical-pmic/xschem/power-fet/power-fet.sym} 700 -1480 0 0 {name=x2}
C {lab_pin.sym} 1000 -1490 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {ipin.sym} 950 -1440 0 0 {name=p11 lab=VFBr}
C {lab_pin.sym} 1000 -1380 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1020 -1350 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 1020 -1380 0 0 {name=R3
L=235
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 1020 -1490 0 0 {name=R1
L=0.35
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 1070 -1660 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1020 -1920 0 0 {name=p22 sig_type=std_logic lab=VINr}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} 110 -1600 0 0 {name=x3}
C {icdec-biomedical-pmic/xschem/5t-ota/schematics/5t-ota.sym} 180 -1360 0 0 {name=x4}
C {ipin.sym} 100 -1710 0 0 {name=p4 lab=VFBr}
C {ipin.sym} 100 -1610 0 0 {name=p8 lab=VREF}
C {ipin.sym} 360 -1650 0 0 {name=p23 lab=IBIAS_10uA}
C {ipin.sym} 360 -1910 0 0 {name=p24 lab=IBIAS_200uA}
C {ipin.sym} 710 -1740 0 1 {name=p25 lab=VINr}
C {iopin.sym} 710 -1570 0 0 {name=p27 lab=VSS}
C {lab_pin.sym} 1390 -1530 0 1 {name=p17 sig_type=std_logic lab=VREG}
C {isource.sym} 1390 -1500 0 0 {name=I2 value="50u" savecurrent=false}
C {lab_pin.sym} 1390 -1470 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {code_shown.sym} 1910 -850 0 0 {name="AC-SIM" only_toplevel=false value="

.temp 27
.control
	
AC DEC 100 1 100G
let PSRR = -20*log10(VREG)
* Phase (same expression form you used — adopted)
let phase = 180 + 180*cph( v(VREGac) )/pi

* 1. Calculate the True Loop Gain (T)
  * T = V_return / V_injected
  let loop_gain_complex = v(PROBE)
  let lg_db = db(loop_gain_complex)
  let lg_ph = ph(loop_gain_complex) * 180 / PI
  
* 2. Normalize Phase (so it starts at 0 or 180 depending on your EA polarity)
  * For a standard LDO, we want to see how far we are from -180 degrees.
  let phase_margin_plot = lg_ph + 180

* 3. Automatically find the Phase Margin value
  meas ac f_unity when lg_db=0
  meas ac PM_value find phase_margin_plot when frequency=f_unity
  
  echo Unity Gain Frequency: $&f_unity Hz
  echo Phase Margin: $&PM_value degrees

  plot lg_db
  plot lg_db phase_margin_plot
	
	
	plot PSRR
	plot phase

.endc
"}
C {vsource.sym} 1700 -870 0 0 {name=V2 value="1.25" savecurrent=false}
C {vsource.sym} 1820 -720 0 0 {name=V7 value=0 savecurrent=false}
C {vsource.sym} 1700 -720 0 0 {name=V8 value="DC 4 AC 1" savecurrent=false}
C {lab_pin.sym} 1700 -750 0 0 {name=p5 sig_type=std_logic lab=VINr}
C {lab_pin.sym} 1700 -900 0 0 {name=p19 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1700 -690 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1700 -840 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {gnd.sym} 1820 -680 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/corner.sym} 1700 -630 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {lab_pin.sym} 1820 -750 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1820 -940 0 1 {name=p10 lab=IBIAS_200uA}
C {lab_pin.sym} 1820 -1000 0 0 {name=p12 sig_type=std_logic lab=VIN}
C {isource.sym} 1820 -970 0 0 {name=I4 value="200u" savecurrent=false}
C {lab_pin.sym} 1700 -940 0 1 {name=p34 lab=IBIAS_10uA}
C {lab_pin.sym} 1700 -1000 0 0 {name=p16 sig_type=std_logic lab=VIN}
C {isource.sym} 1700 -970 0 0 {name=I1 value="10u" savecurrent=false}
C {icdec-biomedical-pmic/xschem/power-fet/power-fet.sym} 740 -180 0 0 {name=x1}
C {lab_pin.sym} 1040 -190 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_2p85.sym} 1060 -190 0 0 {name=R4
L=0.35
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 1110 -360 0 1 {name=p26 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1060 -620 0 0 {name=p28 sig_type=std_logic lab=VIN}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} 150 -300 0 0 {name=x5}
C {icdec-biomedical-pmic/xschem/5t-ota/schematics/5t-ota.sym} 220 -60 0 0 {name=x6}
C {ipin.sym} 140 -410 0 0 {name=p29 lab=VFB}
C {ipin.sym} 140 -310 0 0 {name=p30 lab=VREFac}
C {ipin.sym} 400 -350 0 0 {name=p31 lab=IBIAS_10uA}
C {ipin.sym} 400 -610 0 0 {name=p32 lab=IBIAS_200uA}
C {ipin.sym} 750 -440 0 1 {name=p33 lab=VIN}
C {iopin.sym} 750 -270 0 0 {name=p35 lab=VSS}
C {lab_pin.sym} 1430 -230 0 1 {name=p36 sig_type=std_logic lab=VREGac}
C {isource.sym} 1430 -200 0 0 {name=I3 value="3m" savecurrent=false}
C {lab_pin.sym} 1430 -170 0 0 {name=p37 sig_type=std_logic lab=VSS}
C {vsource.sym} 1820 -870 0 0 {name=V1 value="DC 3.3" savecurrent=false}
C {lab_pin.sym} 1820 -900 0 0 {name=p14 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 1820 -840 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {ipin.sym} 890 -140 0 0 {name=p20 lab=VFB}
C {lab_pin.sym} 1040 -80 0 0 {name=p43 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1060 -50 0 0 {name=p44 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 1060 -80 0 0 {name=R2
L=210
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {res.sym} 960 -140 3 1 {name=R7
value=159k
footprint=1206
device=resistor
m=1}
C {capa-2.sym} 890 -70 0 1 {name=C1
m=1
value=4.55
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 890 -40 0 1 {name=p45 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1100 -140 0 1 {name=p46 sig_type=std_logic lab=PROBE}
C {vsource.sym} 1700 -1090 0 0 {name=V3 value="DC 1.25 AC 1" savecurrent=false}
C {lab_pin.sym} 1700 -1120 0 0 {name=p38 sig_type=std_logic lab=VREFac}
C {lab_pin.sym} 1700 -1060 0 0 {name=p39 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1300 -60 0 1 {name=p40 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1250 -1360 0 1 {name=p41 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1230 -1480 0 0 {name=M2
W=20
L=1.25
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1280 -180 0 0 {name=M1
W=20
L=1.25
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {lab_pin.sym} 1820 -1180 0 1 {name=p42 lab=IBIAS_200uA}
C {lab_pin.sym} 1820 -1240 0 0 {name=p47 sig_type=std_logic lab=VINr}
C {isource.sym} 1820 -1210 0 0 {name=I5 value="200u" savecurrent=false}
C {lab_pin.sym} 1700 -1180 0 1 {name=p48 lab=IBIAS_10uA}
C {lab_pin.sym} 1700 -1240 0 0 {name=p49 sig_type=std_logic lab=VINr}
C {isource.sym} 1700 -1210 0 0 {name=I6 value="10u" savecurrent=false}
