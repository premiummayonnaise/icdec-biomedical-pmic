v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1740 -230 1740 -220 {lab=GND}
N 780 -390 870 -390 {lab=#net1}
N 1050 -190 1050 -170 {lab=PROBE}
N 1050 -270 1050 -250 {lab=VREGac}
N 400 -390 430 -390 {lab=#net1}
N 270 -520 270 -480 {lab=IBIAS_200uA}
N 1050 -650 1050 -520 {lab=VIN}
N 430 -390 660 -390 {lab=#net1}
N 1050 -260 1190 -260 {lab=VREGac}
N 1030 -390 1100 -390 {lab=VSS}
N 1190 -260 1420 -260 {lab=VREGac}
N 1050 -170 1050 -150 {lab=PROBE}
N 980 -170 1050 -170 {lab=PROBE}
N 1050 -150 1050 -140 {lab=PROBE}
N 880 -170 920 -170 {lab=VFB}
N 880 -170 880 -130 {lab=VFB}
N 1050 -170 1090 -170 {lab=PROBE}
N 530 -260 550 -260 {lab=#net1}
N 1250 -110 1250 -90 {lab=VSS}
N 1210 -260 1210 -210 {lab=VREGac}
N 1250 -260 1250 -240 {lab=VREGac}
N 1250 -210 1250 -180 {lab=VSS}
N 1250 -180 1250 -170 {lab=VSS}
N 1250 -170 1250 -110 {lab=VSS}
N 610 -260 650 -260 {lab=#net2}
N 1000 -260 1050 -260 {lab=VREGac}
N 510 -260 530 -260 {lab=#net1}
N 710 -260 770 -260 {lab=VREGac}
N 970 -260 1000 -260 {lab=VREGac}
N 150 -410 190 -410 {lab=VREFac}
N 150 -370 190 -370 {lab=VFB}
N 300 -300 300 -280 {lab=VSS}
N 320 -520 320 -480 {lab=VIN}
N 660 -390 780 -390 {lab=#net1}
N 430 -260 510 -260 {lab=#net1}
N 430 -390 430 -260 {lab=#net1}
N 770 -260 970 -260 {lab=VREGac}
C {code_shown.sym} 1860 -640 0 0 {name="AC-SIM" only_toplevel=false value="

.temp 27
.control
	
AC DEC 100 1 100G
let PSRR = -20*log10(VREG)
* Phase (same expression form you used — adopted)
let phase = 180 + 180*cph( v(PROBE) )/pi

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
C {vsource.sym} 1620 -410 0 0 {name=V2 value="1.25" savecurrent=false}
C {vsource.sym} 1740 -260 0 0 {name=V7 value=0 savecurrent=false}
C {vsource.sym} 1620 -260 0 0 {name=V8 value="DC 2 AC 1" savecurrent=false}
C {lab_pin.sym} 1620 -290 0 0 {name=p5 sig_type=std_logic lab=VINr}
C {lab_pin.sym} 1620 -440 0 0 {name=p19 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1620 -230 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1620 -380 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {gnd.sym} 1740 -220 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/corner.sym} 1620 -170 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {lab_pin.sym} 1740 -290 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1740 -480 0 1 {name=p10 lab=IBIAS_200uA}
C {lab_pin.sym} 1740 -540 0 0 {name=p12 sig_type=std_logic lab=VIN}
C {isource.sym} 1740 -510 0 0 {name=I4 value="200u" savecurrent=false}
C {lab_pin.sym} 1620 -480 0 1 {name=p34 lab=IBIAS_10uA}
C {lab_pin.sym} 1620 -540 0 0 {name=p16 sig_type=std_logic lab=VIN}
C {isource.sym} 1620 -510 0 0 {name=I1 value="10u" savecurrent=false}
C {icdec-biomedical-pmic/xschem/power-fet/power-fet.sym} 730 -210 0 0 {name=x1}
C {lab_pin.sym} 1030 -220 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_2p85.sym} 1050 -220 0 0 {name=R4
L=0.35
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 1100 -390 0 1 {name=p26 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1050 -650 0 0 {name=p28 sig_type=std_logic lab=VIN}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} 20 -210 0 0 {name=x5}
C {ipin.sym} 150 -370 0 0 {name=p29 lab=VFB}
C {ipin.sym} 150 -410 0 0 {name=p30 lab=VREFac}
C {ipin.sym} 270 -520 0 0 {name=p32 lab=IBIAS_200uA}
C {ipin.sym} 320 -520 0 1 {name=p33 lab=VIN}
C {iopin.sym} 300 -280 0 0 {name=p35 lab=VSS}
C {lab_pin.sym} 1420 -260 0 1 {name=p36 sig_type=std_logic lab=VREGac}
C {isource.sym} 1420 -230 0 0 {name=I3 value="50m" savecurrent=false}
C {lab_pin.sym} 1420 -200 0 0 {name=p37 sig_type=std_logic lab=VSS}
C {vsource.sym} 1740 -410 0 0 {name=V1 value="DC 7.5" savecurrent=false}
C {lab_pin.sym} 1740 -440 0 0 {name=p14 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 1740 -380 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {ipin.sym} 880 -170 0 0 {name=p20 lab=VFB}
C {lab_pin.sym} 1030 -110 0 0 {name=p43 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1050 -80 0 0 {name=p44 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 1050 -110 0 0 {name=R2
L=210
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {res.sym} 950 -170 3 1 {name=R7
value=159k
footprint=1206
device=resistor
m=1}
C {capa-2.sym} 880 -100 0 1 {name=C1
m=1
value=4.55
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 880 -70 0 1 {name=p45 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1090 -170 0 1 {name=p46 sig_type=std_logic lab=PROBE}
C {vsource.sym} 1620 -630 0 0 {name=V3 value="DC 1.25 AC 1" savecurrent=false}
C {lab_pin.sym} 1620 -660 0 0 {name=p38 sig_type=std_logic lab=VREFac}
C {lab_pin.sym} 1620 -600 0 0 {name=p39 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} 580 -260 1 0 {name=C3 model=cap_mim_m3_1 W=25 L=25 MF=8 spiceprefix=X}
C {lab_pin.sym} 1250 -90 0 1 {name=p41 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1230 -210 0 0 {name=M2
W=20
L=0.5
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
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 680 -240 3 0 {name=M1
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
C {lab_pin.sym} 680 -220 0 0 {name=p1 sig_type=std_logic lab=VSS}
