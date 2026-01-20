v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 740 -360 830 -360 {lab=#net1}
N 1010 -140 1010 -120 {lab=VFBr}
N 940 -140 1010 -140 {lab=VFBr}
N 1010 -160 1010 -140 {lab=VFBr}
N 1010 -120 1010 -110 {lab=VFBr}
N 1010 -240 1010 -220 {lab=VREGloadtran}
N 480 -480 510 -480 {lab=#net1}
N 480 -220 510 -220 {lab=#net1}
N 380 -390 560 -390 {lab=VSS}
N 560 -390 560 -130 {lab=VSS}
N 380 -130 560 -130 {lab=VSS}
N 400 -570 630 -570 {lab=VIN}
N 630 -570 630 -310 {lab=VIN}
N 400 -310 630 -310 {lab=VIN}
N 180 -500 270 -500 {lab=VREF}
N 180 -500 180 -200 {lab=VREF}
N 180 -200 270 -200 {lab=VREF}
N 220 -460 270 -460 {lab=VFBr}
N 220 -460 220 -240 {lab=VFBr}
N 220 -240 270 -240 {lab=VFBr}
N 90 -410 220 -410 {lab=VFBr}
N 90 -310 180 -310 {lab=VREF}
N 350 -610 350 -570 {lab=IBIAS_200uA}
N 350 -350 350 -310 {lab=IBIAS_10uA}
N 630 -440 700 -440 {lab=VIN}
N 560 -270 700 -270 {lab=VSS}
N 1010 -620 1010 -490 {lab=VIN}
N 510 -480 740 -480 {lab=#net1}
N 740 -480 740 -380 {lab=#net1}
N 510 -220 740 -220 {lab=#net1}
N 740 -380 740 -220 {lab=#net1}
N 1010 -230 1150 -230 {lab=VREGloadtran}
N 990 -360 1060 -360 {lab=VSS}
N 1150 -230 1380 -230 {lab=VREGloadtran}
N 1750 -450 1750 -440 {lab=GND}
N 1220 -80 1220 -60 {lab=VSS}
N 1180 -230 1180 -180 {lab=VREGloadtran}
N 1220 -230 1220 -210 {lab=VREGloadtran}
N 1220 -180 1220 -150 {lab=VSS}
N 1220 -150 1220 -140 {lab=VSS}
N 1220 -140 1220 -80 {lab=VSS}
N 780 -360 780 -230 {lab=#net1}
N 890 -230 1010 -230 {lab=VREGloadtran}
N 740 -50 780 -50 {lab=#net2}
N 840 -50 870 -50 {lab=VREGloadtran}
N 780 -230 780 -200 {lab=#net1}
N 670 -200 780 -200 {lab=#net1}
N 670 -200 670 -50 {lab=#net1}
N 670 -50 680 -50 {lab=#net1}
N 870 -230 870 -50 {lab=VREGloadtran}
N 870 -230 890 -230 {lab=VREGloadtran}
N 1320 -170 1320 -150 {lab=VSS}
N 1320 -90 1320 -60 {lab=VSS}
N 1320 -150 1320 -90 {lab=VSS}
C {icdec-biomedical-pmic/xschem/power-fet/power-fet.sym} 690 -180 0 0 {name=x2}
C {lab_pin.sym} 990 -190 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 940 -140 0 0 {name=p11 lab=VFBr}
C {lab_pin.sym} 990 -80 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1010 -50 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 1010 -80 0 0 {name=R3
L=235
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 1010 -190 0 0 {name=R1
L=0.35
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 1060 -360 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1010 -620 0 0 {name=p22 sig_type=std_logic lab=VIN}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} 100 -300 0 0 {name=x3}
C {icdec-biomedical-pmic/xschem/5t-ota/schematics/5t-ota.sym} 170 -60 0 0 {name=x4}
C {lab_pin.sym} 90 -410 0 0 {name=p4 lab=VFBr}
C {lab_pin.sym} 90 -310 0 0 {name=p8 lab=VREF}
C {lab_pin.sym} 350 -350 0 0 {name=p23 lab=IBIAS_10uA}
C {lab_pin.sym} 350 -610 0 0 {name=p24 lab=IBIAS_200uA}
C {ipin.sym} 700 -440 0 1 {name=p25 lab=VIN}
C {iopin.sym} 700 -270 0 0 {name=p27 lab=VSS}
C {lab_pin.sym} 1380 -230 0 1 {name=p17 sig_type=std_logic lab=VREGloadtran}
C {lab_pin.sym} 1320 -60 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1440 -550 0 1 {name=p10 lab=IBIAS_200uA}
C {lab_pin.sym} 1440 -610 0 0 {name=p12 sig_type=std_logic lab=VIN}
C {isource.sym} 1440 -580 0 0 {name=I4 value="200u" savecurrent=false}
C {lab_pin.sym} 1320 -550 0 1 {name=p34 lab=IBIAS_10uA}
C {lab_pin.sym} 1320 -610 0 0 {name=p16 sig_type=std_logic lab=VIN}
C {isource.sym} 1320 -200 0 0 {name=I3 value="PWL(
+ 0        5m
+ 0.01u    5m
+ 0.011u   50m
+ 0.02u    50m
+ 0.021u   10m
+ 0.025u   10m
+ 0.026u   50m
+ 0.035u   50m
+ 0.036u   5m
+ 0.04u    5m
)"
 savecurrent=false}
C {code_shown.sym} 1820 -650 0 0 {name=AC-SIM1 only_toplevel=false value="

.temp 175
.control

tran 0.01n 200n

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
C {vsource.sym} 1630 -580 0 0 {name=V4 value="1.25" savecurrent=false}
C {vsource.sym} 1750 -480 0 0 {name=V5 value=0 savecurrent=false}
C {vsource.sym} 1630 -480 0 0 {name=V9 value="DC 5" savecurrent=false}
C {lab_pin.sym} 1630 -510 0 0 {name=p42 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 1630 -610 0 0 {name=p47 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1630 -450 0 0 {name=p49 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1630 -550 0 0 {name=p50 sig_type=std_logic lab=VSS}
C {gnd.sym} 1750 -440 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1750 -510 0 0 {name=p52 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 1620 -320 0 0 {name=CORNER2 only_toplevel=true corner=ff}
C {lab_pin.sym} 1320 -550 0 1 {name=p5 lab=IBIAS_10uA}
C {isource.sym} 1320 -580 0 0 {name=I5 value="10u" savecurrent=false}
C {lab_pin.sym} 1220 -60 0 1 {name=p41 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1200 -180 0 0 {name=M2
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 710 -50 1 0 {name=C1 model=cap_mim_m3_1 W=25 L=25 MF=8 spiceprefix=X}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 810 -30 3 0 {name=M1
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
C {lab_pin.sym} 810 -10 0 0 {name=p6 sig_type=std_logic lab=VSS}
