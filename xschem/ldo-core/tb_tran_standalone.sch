v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 800 -430 890 -430 {lab=#net1}
N 1070 -210 1070 -190 {lab=VFBr}
N 1000 -210 1070 -210 {lab=VFBr}
N 1070 -230 1070 -210 {lab=VFBr}
N 1070 -190 1070 -180 {lab=VFBr}
N 1070 -310 1070 -290 {lab=VREGloadtran}
N 540 -550 570 -550 {lab=#net1}
N 540 -290 570 -290 {lab=#net1}
N 440 -460 620 -460 {lab=VSS}
N 620 -460 620 -200 {lab=VSS}
N 440 -200 620 -200 {lab=VSS}
N 460 -640 690 -640 {lab=VIN}
N 690 -640 690 -380 {lab=VIN}
N 460 -380 690 -380 {lab=VIN}
N 240 -570 330 -570 {lab=VREF}
N 240 -570 240 -270 {lab=VREF}
N 240 -270 330 -270 {lab=VREF}
N 280 -530 330 -530 {lab=VFBr}
N 280 -530 280 -310 {lab=VFBr}
N 280 -310 330 -310 {lab=VFBr}
N 150 -480 280 -480 {lab=VFBr}
N 150 -380 240 -380 {lab=VREF}
N 410 -680 410 -640 {lab=IBIAS_200uA}
N 410 -420 410 -380 {lab=IBIAS_10uA}
N 690 -510 760 -510 {lab=VIN}
N 620 -340 760 -340 {lab=VSS}
N 1070 -690 1070 -560 {lab=VIN}
N 570 -550 800 -550 {lab=#net1}
N 800 -550 800 -450 {lab=#net1}
N 570 -290 800 -290 {lab=#net1}
N 800 -450 800 -290 {lab=#net1}
N 1070 -300 1210 -300 {lab=VREGloadtran}
N 1050 -430 1120 -430 {lab=VSS}
N 1210 -300 1440 -300 {lab=VREGloadtran}
N 2110 -520 2110 -510 {lab=GND}
N 1280 -150 1280 -130 {lab=VSS}
N 1240 -300 1240 -250 {lab=VREGloadtran}
N 1280 -300 1280 -280 {lab=VREGloadtran}
N 1280 -250 1280 -220 {lab=VSS}
N 1280 -220 1280 -210 {lab=VSS}
N 1280 -210 1280 -150 {lab=VSS}
N 840 -430 840 -300 {lab=#net1}
N 840 -300 890 -300 {lab=#net1}
N 950 -300 1070 -300 {lab=VREGloadtran}
C {icdec-biomedical-pmic/xschem/power-fet/power-fet.sym} 750 -250 0 0 {name=x2}
C {lab_pin.sym} 1050 -260 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1000 -210 0 0 {name=p11 lab=VFBr}
C {lab_pin.sym} 1050 -150 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1070 -120 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 1070 -150 0 0 {name=R3
L=235
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 1070 -260 0 0 {name=R1
L=0.35
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 1120 -430 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1070 -690 0 0 {name=p22 sig_type=std_logic lab=VIN}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} 160 -370 0 0 {name=x3}
C {icdec-biomedical-pmic/xschem/5t-ota/schematics/5t-ota.sym} 230 -130 0 0 {name=x4}
C {lab_pin.sym} 150 -480 0 0 {name=p4 lab=VFBr}
C {lab_pin.sym} 150 -380 0 0 {name=p8 lab=VREF}
C {lab_pin.sym} 410 -420 0 0 {name=p23 lab=IBIAS_10uA}
C {lab_pin.sym} 410 -680 0 0 {name=p24 lab=IBIAS_200uA}
C {ipin.sym} 760 -510 0 1 {name=p25 lab=VIN}
C {iopin.sym} 760 -340 0 0 {name=p27 lab=VSS}
C {lab_pin.sym} 1440 -300 0 1 {name=p17 sig_type=std_logic lab=VREGloadtran}
C {lab_pin.sym} 1380 -240 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1800 -620 0 1 {name=p10 lab=IBIAS_200uA}
C {lab_pin.sym} 1800 -680 0 0 {name=p12 sig_type=std_logic lab=VIN}
C {isource.sym} 1800 -650 0 0 {name=I4 value="200u" savecurrent=false}
C {lab_pin.sym} 1680 -620 0 1 {name=p34 lab=IBIAS_10uA}
C {lab_pin.sym} 1680 -680 0 0 {name=p16 sig_type=std_logic lab=VIN}
C {isource.sym} 1380 -270 0 0 {name=I3 value="PWL(
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
C {code_shown.sym} 2180 -720 0 0 {name=AC-SIM1 only_toplevel=false value="

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
C {vsource.sym} 1990 -650 0 0 {name=V4 value="1.25" savecurrent=false}
C {vsource.sym} 2110 -550 0 0 {name=V5 value=0 savecurrent=false}
C {vsource.sym} 1990 -550 0 0 {name=V9 value="DC 3.3" savecurrent=false}
C {lab_pin.sym} 1990 -580 0 0 {name=p42 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 1990 -680 0 0 {name=p47 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1990 -520 0 0 {name=p49 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1990 -620 0 0 {name=p50 sig_type=std_logic lab=VSS}
C {gnd.sym} 2110 -510 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 2110 -580 0 0 {name=p52 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 1980 -390 0 0 {name=CORNER2 only_toplevel=true corner=ff}
C {lab_pin.sym} 1680 -620 0 1 {name=p5 lab=IBIAS_10uA}
C {isource.sym} 1680 -650 0 0 {name=I5 value="10u" savecurrent=false}
C {lab_pin.sym} 1280 -130 0 1 {name=p41 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1260 -250 0 0 {name=M2
W=20
L=0.55
nf=1
mult=64
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 920 -300 1 0 {name=C3 model=cap_mim_m3_1 W=25 L=25 MF=1 spiceprefix=X}
