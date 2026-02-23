v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1430 -510 1430 -500 {lab=GND}
N 510 -380 600 -380 {lab=#net1}
N 780 -160 780 -140 {lab=VFBr}
N 710 -160 780 -160 {lab=VFBr}
N 780 -180 780 -160 {lab=VFBr}
N 780 -140 780 -130 {lab=VFBr}
N 780 -260 780 -240 {lab=VREG}
N 170 -510 170 -470 {lab=IBIAS_200uA}
N 780 -640 780 -510 {lab=VIN}
N 780 -250 920 -250 {lab=VREG}
N 760 -380 830 -380 {lab=VSS}
N 920 -250 1150 -250 {lab=VREG}
N 990 -100 990 -80 {lab=VSS}
N 990 -250 990 -230 {lab=VREG}
N 990 -170 990 -160 {lab=VSS}
N 990 -160 990 -100 {lab=VSS}
N 350 -250 370 -250 {lab=#net1}
N 430 -250 470 -250 {lab=#net2}
N 530 -250 560 -250 {lab=VREG}
N 630 -250 780 -250 {lab=VREG}
N 220 -510 220 -470 {lab=VIN}
N 200 -290 200 -250 {lab=VSS}
N 300 -380 510 -380 {lab=#net1}
N 560 -250 630 -250 {lab=VREG}
N 350 -380 350 -250 {lab=#net1}
N 1090 -180 1090 -160 {lab=VSS}
N 1090 -100 1090 -70 {lab=VSS}
N 1090 -160 1090 -100 {lab=VSS}
N 1090 -250 1090 -240 {lab=VREG}
N 490 -520 490 -380 {lab=#net1}
N 490 -640 490 -580 {lab=VIN}
C {lab_pin.sym} 1120 -610 0 1 {name=p10 lab=IBIAS_200uA}
C {lab_pin.sym} 1120 -670 0 0 {name=p12 sig_type=std_logic lab=VIN}
C {isource.sym} 1120 -640 0 0 {name=I4 value="200u" savecurrent=false}
C {lab_pin.sym} 1000 -610 0 1 {name=p34 lab=IBIAS_10uA}
C {lab_pin.sym} 1000 -670 0 0 {name=p16 sig_type=std_logic lab=VIN}
C {code_shown.sym} 1500 -710 0 0 {name=AC-SIM1 only_toplevel=false value="

.temp 27
.control

tran 1u 50m

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
plot VREG EN VIN VREF
plot VREGloadtran2
plot VREG
plot VIN
plot I(load)

.endc
"}
C {vsource.sym} 1310 -640 0 0 {name=V4 value="1.25" savecurrent=false}
C {vsource.sym} 1430 -540 0 0 {name=V5 value=0 savecurrent=false}
C {vsource.sym} 1310 -540 0 0 {name=V9 value="5"
savecurrent=false}
C {lab_pin.sym} 1310 -570 0 0 {name=p42 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 1310 -670 0 0 {name=p47 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1310 -510 0 0 {name=p49 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1310 -610 0 0 {name=p50 sig_type=std_logic lab=VSS}
C {gnd.sym} 1430 -500 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1430 -570 0 0 {name=p52 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 1300 -380 0 0 {name=CORNER2 only_toplevel=true corner=tt}
C {lab_pin.sym} 1000 -610 0 1 {name=p5 lab=IBIAS_10uA}
C {isource.sym} 1000 -640 0 0 {name=I5 value="10u" savecurrent=false}
C {vsource.sym} 1120 -540 0 0 {name=V1 value="PWL(
+ 0       0
+ 40m     0
+ 41m     5
)" savecurrent=false}
C {lab_pin.sym} 1120 -570 0 0 {name=p14 sig_type=std_logic lab=EN}
C {lab_pin.sym} 1120 -510 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {icdec-biomedical-pmic/xschem/power-fet/power-fet.sym} 460 -200 0 0 {name=x1}
C {lab_pin.sym} 760 -210 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 710 -160 0 0 {name=p20 lab=VFBr}
C {lab_pin.sym} 760 -100 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 780 -70 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 780 -100 0 0 {name=R2
L=235
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 780 -210 0 0 {name=R4
L=0.35
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 830 -380 0 1 {name=p26 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 780 -640 0 0 {name=p28 sig_type=std_logic lab=VIN}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} -80 -200 0 0 {name=x5}
C {lab_pin.sym} 90 -360 0 0 {name=p29 lab=VFBr}
C {lab_pin.sym} 90 -400 0 0 {name=p30 lab=VREF}
C {lab_pin.sym} 170 -510 0 0 {name=p31 lab=IBIAS_200uA}
C {ipin.sym} 220 -510 0 1 {name=p32 lab=VIN}
C {iopin.sym} 200 -250 0 0 {name=p33 lab=VSS}
C {lab_pin.sym} 1150 -250 0 1 {name=p35 sig_type=std_logic lab=VREG}
C {lab_pin.sym} 990 -80 0 1 {name=p36 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} 400 -250 1 0 {name=C2 model=cap_mim_m3_1 W=25 L=25 MF=8 spiceprefix=X}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 500 -230 3 0 {name=M4
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
C {lab_pin.sym} 500 -210 0 0 {name=p37 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1090 -70 0 0 {name=p38 sig_type=std_logic lab=VSS}
C {isource.sym} 1090 -210 0 0 {name=I1 value="PWL(
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 990 -200 0 0 {name=C3 model=cap_mim_m3_1 W=30 L=30 MF=8 spiceprefix=X}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 470 -550 0 0 {name=M1
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
C {lab_pin.sym} 490 -640 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 450 -550 0 0 {name=p2 sig_type=std_logic lab=EN}
