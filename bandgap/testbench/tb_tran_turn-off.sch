v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 720 -440 810 -440 {lab=#net1}
N 990 -220 990 -200 {lab=VFBr}
N 920 -220 990 -220 {lab=VFBr}
N 990 -240 990 -220 {lab=VFBr}
N 990 -200 990 -190 {lab=VFBr}
N 990 -320 990 -300 {lab=VREGloadtran}
N 460 -560 490 -560 {lab=#net1}
N 460 -300 490 -300 {lab=#net1}
N 360 -470 540 -470 {lab=VSS}
N 540 -470 540 -210 {lab=VSS}
N 360 -210 540 -210 {lab=VSS}
N 380 -650 610 -650 {lab=VIN}
N 610 -650 610 -390 {lab=VIN}
N 380 -390 610 -390 {lab=VIN}
N 160 -580 250 -580 {lab=VREF}
N 160 -580 160 -280 {lab=VREF}
N 160 -280 250 -280 {lab=VREF}
N 200 -540 250 -540 {lab=VFBr}
N 200 -540 200 -320 {lab=VFBr}
N 200 -320 250 -320 {lab=VFBr}
N 70 -490 200 -490 {lab=VFBr}
N 70 -390 160 -390 {lab=VREF}
N 330 -690 330 -650 {lab=IBIAS_200uA}
N 330 -430 330 -390 {lab=IBIAS_10uA}
N 610 -520 680 -520 {lab=VIN}
N 540 -350 680 -350 {lab=VSS}
N 990 -700 990 -570 {lab=VIN}
N 490 -560 720 -560 {lab=#net1}
N 720 -560 720 -460 {lab=#net1}
N 490 -300 720 -300 {lab=#net1}
N 720 -460 720 -300 {lab=#net1}
N 990 -310 1130 -310 {lab=VREGloadtran}
N 970 -440 1040 -440 {lab=VSS}
N 1130 -310 1360 -310 {lab=VREGloadtran}
N 1610 -750 1610 -740 {lab=GND}
N 1200 -160 1200 -140 {lab=VSS}
N 1160 -310 1160 -260 {lab=VREGloadtran}
N 1200 -310 1200 -290 {lab=VREGloadtran}
N 1200 -260 1200 -230 {lab=VSS}
N 1200 -230 1200 -220 {lab=VSS}
N 1200 -220 1200 -160 {lab=VSS}
N 760 -440 760 -310 {lab=#net1}
N 870 -310 990 -310 {lab=VREGloadtran}
N 720 -130 760 -130 {lab=#net2}
N 820 -130 850 -130 {lab=VREGloadtran}
N 760 -310 760 -280 {lab=#net1}
N 650 -280 760 -280 {lab=#net1}
N 650 -280 650 -130 {lab=#net1}
N 650 -130 660 -130 {lab=#net1}
N 850 -310 850 -130 {lab=VREGloadtran}
N 850 -310 870 -310 {lab=VREGloadtran}
N 1300 -250 1300 -220 {lab=VSS}
N 750 -640 750 -440 {lab=#net1}
N 620 -700 990 -700 {lab=VIN}
N 1300 -160 1300 -140 {lab=VSS}
N 1300 -220 1300 -160 {lab=VSS}
C {icdec-biomedical-pmic/xschem/power-fet/power-fet.sym} 670 -260 0 0 {name=x2}
C {lab_pin.sym} 970 -270 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 920 -220 0 0 {name=p11 lab=VFBr}
C {lab_pin.sym} 970 -160 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 990 -130 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 990 -160 0 0 {name=R3
L=235
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 990 -270 0 0 {name=R1
L=0.35
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 1040 -440 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} 80 -380 0 0 {name=x3}
C {icdec-biomedical-pmic/xschem/5t-ota/schematics/5t-ota.sym} 150 -140 0 0 {name=x4}
C {lab_pin.sym} 70 -490 0 0 {name=p4 lab=VFBr}
C {lab_pin.sym} 70 -390 0 0 {name=p8 lab=VREF}
C {lab_pin.sym} 330 -430 0 0 {name=p23 lab=IBIAS_10uA}
C {lab_pin.sym} 330 -690 0 0 {name=p24 lab=IBIAS_200uA}
C {ipin.sym} 680 -520 0 1 {name=p25 lab=VIN}
C {iopin.sym} 680 -350 0 0 {name=p27 lab=VSS}
C {lab_pin.sym} 1360 -310 0 1 {name=p17 sig_type=std_logic lab=VREGloadtran}
C {lab_pin.sym} 1300 -140 0 1 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1420 -630 0 1 {name=p10 lab=IBIAS_200uA}
C {lab_pin.sym} 1420 -690 0 0 {name=p12 sig_type=std_logic lab=VIN}
C {isource.sym} 1420 -660 0 0 {name=I4 value="200u" savecurrent=false}
C {lab_pin.sym} 1300 -630 0 1 {name=p34 lab=IBIAS_10uA}
C {lab_pin.sym} 1300 -690 0 0 {name=p16 sig_type=std_logic lab=VIN}
C {isource.sym} 1300 -280 0 0 {name=I3 value="PWL(
+ 0       50m
+ 160m    50m
+ 200m    0
)"
 savecurrent=false}
C {code_shown.sym} 1800 -730 0 0 {name=AC-SIM1 only_toplevel=false value="

.temp 27
.control

tran 10u 200m

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
plot VREGloadtran EN VIN VREF
plot VREGloadtran2
plot VREG
plot VIN
plot I(load)

.endc
"}
C {vsource.sym} 1610 -660 0 0 {name=V4 value="PWL(
+ 0       1.25
+ 170m    1.25
+ 185m    0.6
+ 200m    0
)" savecurrent=false}
C {vsource.sym} 1610 -780 0 0 {name=V5 value=0 savecurrent=false}
C {vsource.sym} 1610 -510 0 0 {name=V9 value="PWL(
+ 0       5
+ 180m    5
+ 200m    0
)"
savecurrent=false}
C {lab_pin.sym} 1610 -540 0 0 {name=p42 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 1610 -690 0 0 {name=p47 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1610 -480 0 0 {name=p49 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1610 -630 0 0 {name=p50 sig_type=std_logic lab=VSS}
C {gnd.sym} 1610 -740 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1610 -810 0 0 {name=p52 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 1600 -400 0 0 {name=CORNER2 only_toplevel=true corner=ff}
C {lab_pin.sym} 1300 -630 0 1 {name=p5 lab=IBIAS_10uA}
C {isource.sym} 1300 -660 0 0 {name=I5 value="10u" savecurrent=false}
C {lab_pin.sym} 1200 -140 0 1 {name=p41 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1180 -260 0 0 {name=M2
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 690 -130 1 0 {name=C1 model=cap_mim_m3_1 W=25 L=25 MF=8 spiceprefix=X}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 790 -110 3 0 {name=M1
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
C {lab_pin.sym} 790 -90 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 730 -670 0 0 {name=M3
W=10
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
C {lab_pin.sym} 620 -700 0 0 {name=p7 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 710 -670 0 0 {name=p9 sig_type=std_logic lab=EN}
C {vsource.sym} 1420 -560 0 0 {name=V1 value="PWL(
+ 0       5
+ 160m    5
+ 161m    0
)" savecurrent=false}
C {lab_pin.sym} 1420 -590 0 0 {name=p14 sig_type=std_logic lab=EN}
C {lab_pin.sym} 1420 -530 0 0 {name=p15 sig_type=std_logic lab=VSS}
