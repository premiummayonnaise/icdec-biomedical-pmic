v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 870 -510 920 -510 {lab=#net1}
N 1100 -290 1100 -260 {lab=VFBr}
N 1030 -290 1100 -290 {lab=VFBr}
N 1100 -310 1100 -290 {lab=VFBr}
N 1100 -380 1100 -370 {lab=VREGloadtran}
N 570 -630 830 -630 {lab=#net1}
N 570 -370 830 -370 {lab=#net1}
N 470 -540 650 -540 {lab=VSS}
N 650 -420 650 -280 {lab=VSS}
N 470 -280 650 -280 {lab=VSS}
N 490 -720 720 -720 {lab=VIN}
N 720 -590 720 -460 {lab=VIN}
N 490 -460 720 -460 {lab=VIN}
N 270 -650 360 -650 {lab=VREF}
N 270 -460 270 -350 {lab=VREF}
N 270 -350 360 -350 {lab=VREF}
N 310 -610 360 -610 {lab=VFBr}
N 310 -560 310 -390 {lab=VFBr}
N 310 -390 360 -390 {lab=VFBr}
N 180 -560 310 -560 {lab=VFBr}
N 180 -460 270 -460 {lab=VREF}
N 440 -760 440 -720 {lab=IBIAS_200uA}
N 440 -500 440 -460 {lab=IBIAS_10uA}
N 720 -590 790 -590 {lab=VIN}
N 650 -420 790 -420 {lab=VSS}
N 1100 -770 1100 -640 {lab=VIN}
N 830 -630 830 -510 {lab=#net1}
N 830 -510 830 -370 {lab=#net1}
N 1100 -380 1270 -380 {lab=VREGloadtran}
N 1080 -510 1150 -510 {lab=VSS}
N 1310 -380 1470 -380 {lab=VREGloadtran}
N 1840 -600 1840 -590 {lab=GND}
N 1270 -380 1270 -330 {lab=VREGloadtran}
N 1310 -380 1310 -360 {lab=VREGloadtran}
N 1310 -330 1310 -210 {lab=VSS}
N 870 -510 870 -110 {lab=#net1}
N 870 -110 890 -110 {lab=#net1}
N 950 -110 990 -110 {lab=#net2}
N 1050 -110 1080 -110 {lab=VREGloadtran}
N 1080 -150 1080 -110 {lab=VREGloadtran}
N 940 -150 1080 -150 {lab=VREGloadtran}
N 940 -380 940 -150 {lab=VREGloadtran}
N 940 -380 1100 -380 {lab=VREGloadtran}
N 310 -610 310 -560 {lab=VFBr}
N 270 -650 270 -460 {lab=VREF}
N 720 -720 720 -590 {lab=VIN}
N 650 -540 650 -420 {lab=VSS}
N 1100 -390 1100 -380 {lab=VREGloadtran}
N 1270 -380 1310 -380 {lab=VREGloadtran}
N 830 -510 870 -510 {lab=#net1}
C {icdec-biomedical-pmic/xschem/power-fet/power-fet.sym} 780 -330 0 0 {name=x2}
C {lab_pin.sym} 1080 -340 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1030 -290 0 0 {name=p11 lab=VFBr}
C {lab_pin.sym} 1080 -230 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1100 -200 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 1100 -230 0 0 {name=R3
L=235
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 1100 -340 0 0 {name=R1
L=0.35
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 1150 -510 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1100 -770 0 0 {name=p22 sig_type=std_logic lab=VIN}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} 190 -450 0 0 {name=x3}
C {icdec-biomedical-pmic/xschem/5t-ota/schematics/5t-ota.sym} 260 -210 0 0 {name=x4}
C {lab_pin.sym} 180 -560 0 0 {name=p4 lab=VFBr}
C {lab_pin.sym} 180 -460 0 0 {name=p8 lab=VREF}
C {lab_pin.sym} 440 -500 0 0 {name=p23 lab=IBIAS_10uA}
C {lab_pin.sym} 440 -760 0 0 {name=p24 lab=IBIAS_200uA}
C {ipin.sym} 790 -590 0 1 {name=p25 lab=VIN}
C {iopin.sym} 790 -420 0 0 {name=p27 lab=VSS}
C {lab_pin.sym} 1470 -380 0 1 {name=p17 sig_type=std_logic lab=VREGloadtran}
C {lab_pin.sym} 1410 -320 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1530 -700 0 1 {name=p10 lab=IBIAS_200uA}
C {lab_pin.sym} 1530 -760 0 0 {name=p12 sig_type=std_logic lab=VIN}
C {isource.sym} 1530 -730 0 0 {name=I4 value="200u" savecurrent=false}
C {lab_pin.sym} 1410 -700 0 1 {name=p34 lab=IBIAS_10uA}
C {lab_pin.sym} 1410 -760 0 0 {name=p16 sig_type=std_logic lab=VIN}
C {isource.sym} 1410 -350 0 0 {name=I3 value="PWL(
+ 0        5m
+ 0.2u     5m
+ 0.21u    50m
+ 0.6u     50m
+ 0.61u    10m
+ 1.2u     10m
+ 1.21u    50m
+ 1.8u     60m
+ 1.81u    5m
+ 2.5u     5m
)"
 savecurrent=false}
C {code_shown.sym} 1910 -800 0 0 {name=AC-SIM1 only_toplevel=false value="

.temp 175
.control

tran 0.01n 2.8u

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
C {vsource.sym} 1720 -730 0 0 {name=V4 value="1.25" savecurrent=false}
C {vsource.sym} 1840 -630 0 0 {name=V5 value=0 savecurrent=false}
C {vsource.sym} 1720 -630 0 0 {name=V9 value="DC 5" savecurrent=false}
C {lab_pin.sym} 1720 -660 0 0 {name=p42 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 1720 -760 0 0 {name=p47 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1720 -600 0 0 {name=p49 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1720 -700 0 0 {name=p50 sig_type=std_logic lab=VSS}
C {gnd.sym} 1840 -590 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1840 -660 0 0 {name=p52 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 1710 -470 0 0 {name=CORNER2 only_toplevel=true corner=ff}
C {lab_pin.sym} 1410 -700 0 1 {name=p5 lab=IBIAS_10uA}
C {isource.sym} 1410 -730 0 0 {name=I5 value="10u" savecurrent=false}
C {lab_pin.sym} 1310 -210 0 1 {name=p41 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1290 -330 0 0 {name=M2
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 920 -110 1 0 {name=C1 model=cap_mim_m3_1 W=25 L=25 MF=8 spiceprefix=X}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 1020 -90 3 0 {name=M1
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
C {lab_pin.sym} 1020 -70 0 0 {name=p6 sig_type=std_logic lab=VSS}
