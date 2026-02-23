v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1750 -450 1750 -440 {lab=GND}
N 630 -440 720 -440 {lab=#net1}
N 900 -220 900 -200 {lab=VFBr}
N 830 -220 900 -220 {lab=VFBr}
N 900 -240 900 -220 {lab=VFBr}
N 900 -200 900 -190 {lab=VFBr}
N 900 -320 900 -300 {lab=VREGloadtran}
N 290 -570 290 -530 {lab=IBIAS_200uA}
N 900 -700 900 -570 {lab=VIN}
N 900 -310 1040 -310 {lab=VREGloadtran}
N 880 -440 950 -440 {lab=VSS}
N 1040 -310 1270 -310 {lab=VREGloadtran}
N 1110 -160 1110 -140 {lab=VSS}
N 1110 -310 1110 -290 {lab=VREGloadtran}
N 1110 -230 1110 -220 {lab=VSS}
N 1110 -220 1110 -160 {lab=VSS}
N 470 -310 490 -310 {lab=#net1}
N 550 -310 590 -310 {lab=#net2}
N 650 -310 680 -310 {lab=VREGloadtran}
N 750 -310 900 -310 {lab=VREGloadtran}
N 340 -570 340 -530 {lab=VIN}
N 320 -350 320 -310 {lab=VSS}
N 420 -440 630 -440 {lab=#net1}
N 680 -310 750 -310 {lab=VREGloadtran}
N 470 -440 470 -310 {lab=#net1}
N 1210 -240 1210 -220 {lab=VSS}
N 1210 -160 1210 -130 {lab=VSS}
N 1210 -220 1210 -160 {lab=VSS}
N 1210 -310 1210 -300 {lab=VREGloadtran}
C {lab_pin.sym} 1440 -550 0 1 {name=p10 lab=IBIAS_200uA}
C {lab_pin.sym} 1440 -610 0 0 {name=p12 sig_type=std_logic lab=VIN}
C {isource.sym} 1440 -580 0 0 {name=I4 value="200u" savecurrent=false}
C {code_shown.sym} 1820 -650 0 0 {name=AC-SIM1 only_toplevel=false value="

.temp 27
.control

tran 0.01n 1u

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
C {vsource.sym} 1630 -480 0 0 {name=V9 value="DC 10.5" savecurrent=false}
C {lab_pin.sym} 1630 -510 0 0 {name=p42 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 1630 -610 0 0 {name=p47 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1630 -450 0 0 {name=p49 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1630 -550 0 0 {name=p50 sig_type=std_logic lab=VSS}
C {gnd.sym} 1750 -440 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1750 -510 0 0 {name=p52 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 1620 -320 0 0 {name=CORNER2 only_toplevel=true corner=tt}
C {icdec-biomedical-pmic/xschem/power-fet/power-fet.sym} 580 -260 0 0 {name=x1}
C {lab_pin.sym} 880 -270 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 830 -220 0 0 {name=p14 lab=VFBr}
C {lab_pin.sym} 880 -160 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 900 -130 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 900 -160 0 0 {name=R2
L=235
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 900 -270 0 0 {name=R4
L=0.35
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 950 -440 0 1 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 900 -700 0 0 {name=p21 sig_type=std_logic lab=VIN}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} 40 -260 0 0 {name=x5}
C {lab_pin.sym} 210 -420 0 0 {name=p26 lab=VFBr}
C {lab_pin.sym} 210 -460 0 0 {name=p28 lab=VREF}
C {lab_pin.sym} 290 -570 0 0 {name=p29 lab=IBIAS_200uA}
C {ipin.sym} 340 -570 0 1 {name=p30 lab=VIN}
C {iopin.sym} 320 -310 0 0 {name=p31 lab=VSS}
C {lab_pin.sym} 1270 -310 0 1 {name=p32 sig_type=std_logic lab=VREGloadtran}
C {lab_pin.sym} 1110 -140 0 1 {name=p33 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} 520 -310 1 0 {name=C2 model=cap_mim_m3_1 W=25 L=25 MF=8 spiceprefix=X}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 620 -290 3 0 {name=M4
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
C {lab_pin.sym} 620 -270 0 0 {name=p35 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1210 -130 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {isource.sym} 1210 -270 0 0 {name=I1 value="PWL(
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 1110 -260 0 0 {name=C1 model=cap_mim_m3_1 W=30 L=30 MF=8 spiceprefix=X}
