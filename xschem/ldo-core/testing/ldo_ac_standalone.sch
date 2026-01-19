v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 730 -1520 820 -1520 {lab=#net1}
N 1000 -1300 1000 -1280 {lab=VFBr}
N 930 -1300 1000 -1300 {lab=VFBr}
N 1000 -1320 1000 -1300 {lab=VFBr}
N 1000 -1280 1000 -1270 {lab=VFBr}
N 1000 -1400 1000 -1380 {lab=VREG}
N 470 -1640 500 -1640 {lab=#net1}
N 470 -1380 500 -1380 {lab=#net1}
N 370 -1550 550 -1550 {lab=VSS}
N 550 -1550 550 -1290 {lab=VSS}
N 370 -1290 550 -1290 {lab=VSS}
N 390 -1730 620 -1730 {lab=VINr}
N 620 -1730 620 -1470 {lab=VINr}
N 390 -1470 620 -1470 {lab=VINr}
N 170 -1660 260 -1660 {lab=VREF}
N 170 -1660 170 -1360 {lab=VREF}
N 170 -1360 260 -1360 {lab=VREF}
N 210 -1620 260 -1620 {lab=VFBr}
N 210 -1620 210 -1400 {lab=VFBr}
N 210 -1400 260 -1400 {lab=VFBr}
N 80 -1570 210 -1570 {lab=VFBr}
N 80 -1470 170 -1470 {lab=VREF}
N 340 -1770 340 -1730 {lab=IBIAS_200uA}
N 340 -1510 340 -1470 {lab=IBIAS_10uA}
N 620 -1600 690 -1600 {lab=VINr}
N 550 -1430 690 -1430 {lab=VSS}
N 1000 -1780 1000 -1650 {lab=VINr}
N 500 -1640 730 -1640 {lab=#net1}
N 730 -1640 730 -1540 {lab=#net1}
N 500 -1380 730 -1380 {lab=#net1}
N 730 -1540 730 -1380 {lab=#net1}
N 1000 -1390 1140 -1390 {lab=VREG}
N 980 -1520 1050 -1520 {lab=VSS}
N 1140 -1390 1370 -1390 {lab=VREG}
N 1770 -1170 1770 -1160 {lab=GND}
N 740 -840 830 -840 {lab=#net2}
N 1010 -640 1010 -620 {lab=PROBE}
N 1010 -720 1010 -700 {lab=VREGac}
N 480 -960 510 -960 {lab=#net2}
N 480 -700 510 -700 {lab=#net2}
N 380 -870 560 -870 {lab=VSS}
N 560 -870 560 -610 {lab=VSS}
N 380 -610 560 -610 {lab=VSS}
N 400 -1050 630 -1050 {lab=VIN}
N 630 -1050 630 -790 {lab=VIN}
N 400 -790 630 -790 {lab=VIN}
N 180 -980 270 -980 {lab=VREFac}
N 180 -980 180 -680 {lab=VREFac}
N 180 -680 270 -680 {lab=VREFac}
N 220 -940 270 -940 {lab=VFB}
N 220 -940 220 -720 {lab=VFB}
N 220 -720 270 -720 {lab=VFB}
N 90 -890 220 -890 {lab=VFB}
N 90 -790 180 -790 {lab=VREFac}
N 350 -1090 350 -1050 {lab=IBIAS_200uA}
N 350 -830 350 -790 {lab=IBIAS_10uA}
N 630 -920 700 -920 {lab=VIN}
N 560 -750 700 -750 {lab=VSS}
N 1010 -1100 1010 -970 {lab=VIN}
N 510 -960 740 -960 {lab=#net2}
N 740 -960 740 -860 {lab=#net2}
N 510 -700 740 -700 {lab=#net2}
N 740 -860 740 -700 {lab=#net2}
N 1010 -710 1150 -710 {lab=VREGac}
N 990 -840 1060 -840 {lab=VSS}
N 1150 -710 1380 -710 {lab=VREGac}
N 1010 -620 1010 -600 {lab=PROBE}
N 940 -620 1010 -620 {lab=PROBE}
N 1010 -600 1010 -590 {lab=PROBE}
N 840 -620 880 -620 {lab=VFB}
N 840 -620 840 -580 {lab=VFB}
N 1010 -620 1050 -620 {lab=PROBE}
N 1250 -560 1250 -540 {lab=VSS}
N 1210 -710 1210 -660 {lab=VREGac}
N 1250 -710 1250 -690 {lab=VREGac}
N 1250 -660 1250 -630 {lab=VSS}
N 1250 -630 1250 -620 {lab=VSS}
N 1250 -620 1250 -560 {lab=VSS}
N 1230 -1240 1230 -1220 {lab=VSS}
N 1190 -1390 1190 -1340 {lab=VREG}
N 1230 -1390 1230 -1370 {lab=VREG}
N 1230 -1340 1230 -1310 {lab=VSS}
N 1230 -1310 1230 -1300 {lab=VSS}
N 1230 -1300 1230 -1240 {lab=VSS}
C {icdec-biomedical-pmic/xschem/power-fet/power-fet.sym} 680 -1340 0 0 {name=x2}
C {lab_pin.sym} 980 -1350 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {ipin.sym} 930 -1300 0 0 {name=p11 lab=VFBr}
C {lab_pin.sym} 980 -1240 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1000 -1210 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 1000 -1240 0 0 {name=R3
L=235
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 1000 -1350 0 0 {name=R1
L=0.35
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 1050 -1520 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1000 -1780 0 0 {name=p22 sig_type=std_logic lab=VINr}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} 90 -1460 0 0 {name=x3}
C {icdec-biomedical-pmic/xschem/5t-ota/schematics/5t-ota.sym} 160 -1220 0 0 {name=x4}
C {ipin.sym} 80 -1570 0 0 {name=p4 lab=VFBr}
C {ipin.sym} 80 -1470 0 0 {name=p8 lab=VREF}
C {ipin.sym} 340 -1510 0 0 {name=p23 lab=IBIAS_10uA}
C {ipin.sym} 340 -1770 0 0 {name=p24 lab=IBIAS_200uA}
C {ipin.sym} 690 -1600 0 1 {name=p25 lab=VINr}
C {iopin.sym} 690 -1430 0 0 {name=p27 lab=VSS}
C {lab_pin.sym} 1370 -1390 0 1 {name=p17 sig_type=std_logic lab=VREG}
C {isource.sym} 1370 -1360 0 0 {name=I2 value="50m" savecurrent=false}
C {lab_pin.sym} 1370 -1330 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {code_shown.sym} 1860 -1330 0 0 {name="AC-SIM" only_toplevel=false value="

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
C {vsource.sym} 1650 -1350 0 0 {name=V2 value="1.25" savecurrent=false}
C {vsource.sym} 1770 -1200 0 0 {name=V7 value=0 savecurrent=false}
C {vsource.sym} 1650 -1200 0 0 {name=V8 value="DC 4 AC 1" savecurrent=false}
C {lab_pin.sym} 1650 -1230 0 0 {name=p5 sig_type=std_logic lab=VINr}
C {lab_pin.sym} 1650 -1380 0 0 {name=p19 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1650 -1170 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1650 -1320 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {gnd.sym} 1770 -1160 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/corner.sym} 1650 -1110 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {lab_pin.sym} 1770 -1230 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1770 -1420 0 1 {name=p10 lab=IBIAS_200uA}
C {lab_pin.sym} 1770 -1480 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {isource.sym} 1770 -1450 0 0 {name=I4 value="200u" savecurrent=false}
C {lab_pin.sym} 1650 -1420 0 1 {name=p34 lab=IBIAS_10uA}
C {lab_pin.sym} 1650 -1480 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {isource.sym} 1650 -1450 0 0 {name=I1 value="10u" savecurrent=false}
C {icdec-biomedical-pmic/xschem/power-fet/power-fet.sym} 690 -660 0 0 {name=x1}
C {lab_pin.sym} 990 -670 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_2p85.sym} 1010 -670 0 0 {name=R4
L=0.35
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 1060 -840 0 1 {name=p26 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1010 -1100 0 0 {name=p28 sig_type=std_logic lab=VIN}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} 100 -780 0 0 {name=x5}
C {icdec-biomedical-pmic/xschem/5t-ota/schematics/5t-ota.sym} 170 -540 0 0 {name=x6}
C {ipin.sym} 90 -890 0 0 {name=p29 lab=VFB}
C {ipin.sym} 90 -790 0 0 {name=p30 lab=VREFac}
C {ipin.sym} 350 -830 0 0 {name=p31 lab=IBIAS_10uA}
C {ipin.sym} 350 -1090 0 0 {name=p32 lab=IBIAS_200uA}
C {ipin.sym} 700 -920 0 1 {name=p33 lab=VIN}
C {iopin.sym} 700 -750 0 0 {name=p35 lab=VSS}
C {lab_pin.sym} 1380 -710 0 1 {name=p36 sig_type=std_logic lab=VREGac}
C {isource.sym} 1380 -680 0 0 {name=I3 value="50m" savecurrent=false}
C {lab_pin.sym} 1380 -650 0 0 {name=p37 sig_type=std_logic lab=VSS}
C {vsource.sym} 1770 -1350 0 0 {name=V1 value="DC 4" savecurrent=false}
C {lab_pin.sym} 1770 -1380 0 0 {name=p14 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 1770 -1320 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {ipin.sym} 840 -620 0 0 {name=p20 lab=VFB}
C {lab_pin.sym} 990 -560 0 0 {name=p43 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1010 -530 0 0 {name=p44 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 1010 -560 0 0 {name=R2
L=210
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {res.sym} 910 -620 3 1 {name=R7
value=159k
footprint=1206
device=resistor
m=1}
C {capa-2.sym} 840 -550 0 1 {name=C1
m=1
value=4.55
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 840 -520 0 1 {name=p45 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1050 -620 0 1 {name=p46 sig_type=std_logic lab=PROBE}
C {vsource.sym} 1650 -1570 0 0 {name=V3 value="DC 1.25 AC 1" savecurrent=false}
C {lab_pin.sym} 1650 -1600 0 0 {name=p38 sig_type=std_logic lab=VREFac}
C {lab_pin.sym} 1650 -1540 0 0 {name=p39 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1250 -540 0 1 {name=p40 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 1230 -660 0 0 {name=M8
W=20
L=0.15
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
C {lab_pin.sym} 1230 -1220 0 1 {name=p41 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 1210 -1340 0 0 {name=M1
W=20
L=0.15
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
