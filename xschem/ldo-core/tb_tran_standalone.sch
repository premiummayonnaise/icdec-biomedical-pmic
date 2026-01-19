v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 780 -1040 870 -1040 {lab=#net1}
N 1050 -820 1050 -800 {lab=VFBr}
N 980 -820 1050 -820 {lab=VFBr}
N 1050 -840 1050 -820 {lab=VFBr}
N 1050 -800 1050 -790 {lab=VFBr}
N 1050 -920 1050 -900 {lab=VREGloadtran}
N 520 -1160 550 -1160 {lab=#net1}
N 520 -900 550 -900 {lab=#net1}
N 420 -1070 600 -1070 {lab=VSS}
N 600 -1070 600 -810 {lab=VSS}
N 420 -810 600 -810 {lab=VSS}
N 440 -1250 670 -1250 {lab=VIN}
N 670 -1250 670 -990 {lab=VIN}
N 440 -990 670 -990 {lab=VIN}
N 220 -1180 310 -1180 {lab=VREF}
N 220 -1180 220 -880 {lab=VREF}
N 220 -880 310 -880 {lab=VREF}
N 260 -1140 310 -1140 {lab=VFBr}
N 260 -1140 260 -920 {lab=VFBr}
N 260 -920 310 -920 {lab=VFBr}
N 130 -1090 260 -1090 {lab=VFBr}
N 130 -990 220 -990 {lab=VREF}
N 390 -1290 390 -1250 {lab=IBIAS_200uA}
N 390 -1030 390 -990 {lab=IBIAS_10uA}
N 670 -1120 740 -1120 {lab=VIN}
N 600 -950 740 -950 {lab=VSS}
N 1050 -1300 1050 -1170 {lab=VIN}
N 550 -1160 780 -1160 {lab=#net1}
N 780 -1160 780 -1060 {lab=#net1}
N 550 -900 780 -900 {lab=#net1}
N 780 -1060 780 -900 {lab=#net1}
N 1050 -910 1190 -910 {lab=VREGloadtran}
N 1030 -1040 1100 -1040 {lab=VSS}
N 1190 -910 1420 -910 {lab=VREGloadtran}
N 790 -360 880 -360 {lab=#net2}
N 1060 -160 1060 -140 {lab=VFB}
N 1060 -240 1060 -220 {lab=VREGloadtran2}
N 530 -480 560 -480 {lab=#net2}
N 530 -220 560 -220 {lab=#net2}
N 430 -390 610 -390 {lab=VSS}
N 610 -390 610 -130 {lab=VSS}
N 430 -130 610 -130 {lab=VSS}
N 450 -570 680 -570 {lab=VIN}
N 680 -570 680 -310 {lab=VIN}
N 450 -310 680 -310 {lab=VIN}
N 230 -500 320 -500 {lab=VREF}
N 230 -500 230 -200 {lab=VREF}
N 230 -200 320 -200 {lab=VREF}
N 270 -460 320 -460 {lab=VFB}
N 270 -460 270 -240 {lab=VFB}
N 270 -240 320 -240 {lab=VFB}
N 140 -410 270 -410 {lab=VFB}
N 140 -310 230 -310 {lab=VREF}
N 400 -610 400 -570 {lab=IBIAS_200uA}
N 400 -350 400 -310 {lab=IBIAS_10uA}
N 680 -440 750 -440 {lab=VIN}
N 610 -270 750 -270 {lab=VSS}
N 1060 -620 1060 -490 {lab=VIN}
N 560 -480 790 -480 {lab=#net2}
N 790 -480 790 -380 {lab=#net2}
N 560 -220 790 -220 {lab=#net2}
N 790 -380 790 -220 {lab=#net2}
N 1060 -230 1200 -230 {lab=VREGloadtran2}
N 1040 -360 1110 -360 {lab=VSS}
N 1200 -230 1430 -230 {lab=VREGloadtran2}
N 1060 -140 1060 -120 {lab=VFB}
N 990 -140 1060 -140 {lab=VFB}
N 1060 -120 1060 -110 {lab=VFB}
N 950 -140 990 -140 {lab=VFB}
N 1300 -80 1300 -60 {lab=VSS}
N 1260 -230 1260 -180 {lab=VREGloadtran2}
N 1300 -230 1300 -210 {lab=VREGloadtran2}
N 1300 -180 1300 -150 {lab=VSS}
N 1300 -150 1300 -140 {lab=VSS}
N 1300 -140 1300 -80 {lab=VSS}
N 2170 -640 2170 -630 {lab=GND}
N 1260 -760 1260 -740 {lab=VSS}
N 1220 -910 1220 -860 {lab=VREGloadtran}
N 1260 -910 1260 -890 {lab=VREGloadtran}
N 1260 -860 1260 -830 {lab=VSS}
N 1260 -830 1260 -820 {lab=VSS}
N 1260 -820 1260 -760 {lab=VSS}
C {icdec-biomedical-pmic/xschem/power-fet/power-fet.sym} 730 -860 0 0 {name=x2}
C {lab_pin.sym} 1030 -870 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {ipin.sym} 980 -820 0 0 {name=p11 lab=VFBr}
C {lab_pin.sym} 1030 -760 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1050 -730 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 1050 -760 0 0 {name=R3
L=235
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 1050 -870 0 0 {name=R1
L=0.35
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 1100 -1040 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1050 -1300 0 0 {name=p22 sig_type=std_logic lab=VIN}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} 140 -980 0 0 {name=x3}
C {icdec-biomedical-pmic/xschem/5t-ota/schematics/5t-ota.sym} 210 -740 0 0 {name=x4}
C {ipin.sym} 130 -1090 0 0 {name=p4 lab=VFBr}
C {ipin.sym} 130 -990 0 0 {name=p8 lab=VREF}
C {ipin.sym} 390 -1030 0 0 {name=p23 lab=IBIAS_10uA}
C {ipin.sym} 390 -1290 0 0 {name=p24 lab=IBIAS_200uA}
C {ipin.sym} 740 -1120 0 1 {name=p25 lab=VIN}
C {iopin.sym} 740 -950 0 0 {name=p27 lab=VSS}
C {lab_pin.sym} 1420 -910 0 1 {name=p17 sig_type=std_logic lab=VREGloadtran}
C {lab_pin.sym} 1360 -850 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1860 -740 0 1 {name=p10 lab=IBIAS_200uA}
C {lab_pin.sym} 1860 -800 0 0 {name=p12 sig_type=std_logic lab=VIN}
C {isource.sym} 1860 -770 0 0 {name=I4 value="200u" savecurrent=false}
C {lab_pin.sym} 1740 -740 0 1 {name=p34 lab=IBIAS_10uA}
C {lab_pin.sym} 1740 -800 0 0 {name=p16 sig_type=std_logic lab=VIN}
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
C {ipin.sym} 140 -310 0 0 {name=p30 lab=VREF}
C {ipin.sym} 400 -350 0 0 {name=p31 lab=IBIAS_10uA}
C {ipin.sym} 400 -610 0 0 {name=p32 lab=IBIAS_200uA}
C {ipin.sym} 750 -440 0 1 {name=p33 lab=VIN}
C {iopin.sym} 750 -270 0 0 {name=p35 lab=VSS}
C {lab_pin.sym} 1430 -230 0 1 {name=p36 sig_type=std_logic lab=VREGloadtran2}
C {isource.sym} 1360 -880 0 0 {name=I3 value="PWL(
+ 0u 5m  1u 5m
+ 1.05u 50m  3u 50m
+ 3.05u 5m  4u 5m
+ 4.05u 40m  6u 40m
+ 6.05u 10m  7u 10m
+ 7.05u 50m  9u 50m
+ 9.05u 1m  12u 1m
+ 12.05u 30m  14u 30m
+ 14.05u 50m  15u 50m
+ 15.1u 0.5m  20u 0.5m
)"
 savecurrent=false}
C {lab_pin.sym} 1430 -170 0 0 {name=p37 sig_type=std_logic lab=VSS}
C {ipin.sym} 950 -140 0 0 {name=p20 lab=VFB}
C {lab_pin.sym} 1040 -80 0 0 {name=p43 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1060 -50 0 0 {name=p44 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 1060 -80 0 0 {name=R2
L=210
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 1300 -60 0 1 {name=p40 sig_type=std_logic lab=VSS}
C {isource.sym} 1430 -200 0 0 {name=I2 value="PWL(
+ 0u   200u
+ 2u   200u
+ 3u   10m
+ 7u   10m
+ 8u   1m
+ 12u  1m
+ 13u  25m
+ 17u  25m
+ 18u  30m
+ 21u  30m
+ 22u  15m
+ 24u  15m
+ 24.5u 0.5m
+ 25u  0.5m
)"}
C {code_shown.sym} 2240 -840 0 0 {name=AC-SIM1 only_toplevel=false value="

.temp 27
.control

tran 0.1u 30u

* Nominal output voltage (from regulation region)
let Vout_nom = 1.25
let Vout_95  = 0.95*Vout_nom

* Find Vin where Vout crosses 95%
meas dc Vin_do find v(vin) when v(vreg)=Vout_95

* Measure Vout at that Vin (for completeness)
meas dc Vout_do find v(vreg) when v(vreg)=Vout_95

* Compute dropout voltage
let Vdo = Vin_do - Vout_do

* Compute overshoot, undershoot and peak-to-peak voltage
meas tran Vout_max MAX v(VREGloadtran)
meas tran Vout_min MIN v(VREGloadtran)
let vpp = Vout_max - Vout_min

print Vin_do Vout_do Vdo
print Vout_max Vout_min Vpp
plot VREGloadtran
plot VREGloadtran2
plot VREG
plot VIN
plot I(Vmeas)

.endc
"}
C {vsource.sym} 2050 -770 0 0 {name=V4 value="1.25" savecurrent=false}
C {vsource.sym} 2170 -670 0 0 {name=V5 value=0 savecurrent=false}
C {vsource.sym} 2050 -670 0 0 {name=V9 value="DC 4" savecurrent=false}
C {lab_pin.sym} 2050 -700 0 0 {name=p42 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 2050 -800 0 0 {name=p47 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 2050 -640 0 0 {name=p49 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 2050 -740 0 0 {name=p50 sig_type=std_logic lab=VSS}
C {gnd.sym} 2170 -630 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 2170 -700 0 0 {name=p52 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 2040 -510 0 0 {name=CORNER2 only_toplevel=true corner=ff}
C {lab_pin.sym} 1740 -740 0 1 {name=p5 lab=IBIAS_10uA}
C {isource.sym} 1740 -770 0 0 {name=I5 value="10u" savecurrent=false}
C {lab_pin.sym} 1260 -740 0 1 {name=p41 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1240 -860 0 0 {name=M2
W=10
L=1.25
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1280 -180 0 0 {name=M1
W=20
L=1.25
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
