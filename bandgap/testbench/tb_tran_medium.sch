v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 750 -360 840 -360 {lab=#net1}
N 1020 -140 1020 -120 {lab=VFBr}
N 950 -140 1020 -140 {lab=VFBr}
N 1020 -160 1020 -140 {lab=VFBr}
N 1020 -120 1020 -110 {lab=VFBr}
N 1020 -240 1020 -220 {lab=VREGloadtran}
N 490 -480 520 -480 {lab=#net1}
N 490 -220 520 -220 {lab=#net1}
N 390 -390 570 -390 {lab=VSS}
N 570 -390 570 -130 {lab=VSS}
N 390 -130 570 -130 {lab=VSS}
N 410 -570 640 -570 {lab=VIN}
N 640 -570 640 -310 {lab=VIN}
N 410 -310 640 -310 {lab=VIN}
N 190 -500 280 -500 {lab=VREF}
N 190 -500 190 -200 {lab=VREF}
N 190 -200 280 -200 {lab=VREF}
N 230 -460 280 -460 {lab=VFBr}
N 230 -460 230 -240 {lab=VFBr}
N 230 -240 280 -240 {lab=VFBr}
N 100 -410 230 -410 {lab=VFBr}
N 100 -310 190 -310 {lab=VREF}
N 360 -610 360 -570 {lab=IBIAS_200uA}
N 360 -350 360 -310 {lab=IBIAS_10uA}
N 640 -440 710 -440 {lab=VIN}
N 570 -270 710 -270 {lab=VSS}
N 1020 -620 1020 -490 {lab=VIN}
N 520 -480 750 -480 {lab=#net1}
N 750 -480 750 -380 {lab=#net1}
N 520 -220 750 -220 {lab=#net1}
N 750 -380 750 -220 {lab=#net1}
N 1020 -230 1160 -230 {lab=VREGloadtran}
N 1000 -360 1070 -360 {lab=VSS}
N 1160 -230 1390 -230 {lab=VREGloadtran}
N 1760 -450 1760 -440 {lab=GND}
N 1230 -80 1230 -60 {lab=VSS}
N 1190 -230 1190 -180 {lab=VREGloadtran}
N 1230 -230 1230 -210 {lab=VREGloadtran}
N 1230 -180 1230 -150 {lab=VSS}
N 1230 -150 1230 -140 {lab=VSS}
N 1230 -140 1230 -80 {lab=VSS}
N 790 -360 790 -230 {lab=#net1}
N 660 -50 680 -50 {lab=#net1}
N 740 -50 780 -50 {lab=#net2}
N 790 -230 790 -180 {lab=#net1}
N 660 -180 790 -180 {lab=#net1}
N 660 -180 660 -50 {lab=#net1}
N 840 -50 870 -50 {lab=VREGloadtran}
N 870 -220 870 -50 {lab=VREGloadtran}
N 870 -230 870 -220 {lab=VREGloadtran}
N 870 -230 1020 -230 {lab=VREGloadtran}
N 1330 -140 1330 -120 {lab=VSS}
N 1330 -170 1330 -140 {lab=VSS}
C {icdec-biomedical-pmic/xschem/power-fet/power-fet.sym} 700 -180 0 0 {name=x2}
C {lab_pin.sym} 1000 -190 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 950 -140 0 0 {name=p11 lab=VFBr}
C {lab_pin.sym} 1000 -80 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1020 -50 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 1020 -80 0 0 {name=R3
L=235
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 1020 -190 0 0 {name=R1
L=0.35
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 1070 -360 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1020 -620 0 0 {name=p22 sig_type=std_logic lab=VIN}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} 110 -300 0 0 {name=x3}
C {icdec-biomedical-pmic/xschem/5t-ota/schematics/5t-ota.sym} 180 -60 0 0 {name=x4}
C {lab_pin.sym} 100 -410 0 0 {name=p4 lab=VFBr}
C {lab_pin.sym} 100 -310 0 0 {name=p8 lab=VREF}
C {lab_pin.sym} 360 -350 0 0 {name=p23 lab=IBIAS_10uA}
C {lab_pin.sym} 360 -610 0 0 {name=p24 lab=IBIAS_200uA}
C {ipin.sym} 710 -440 0 1 {name=p25 lab=VIN}
C {iopin.sym} 710 -270 0 0 {name=p27 lab=VSS}
C {lab_pin.sym} 1390 -230 0 1 {name=p17 sig_type=std_logic lab=VREGloadtran}
C {lab_pin.sym} 1330 -170 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1450 -550 0 1 {name=p10 lab=IBIAS_200uA}
C {lab_pin.sym} 1450 -610 0 0 {name=p12 sig_type=std_logic lab=VIN}
C {isource.sym} 1450 -580 0 0 {name=I4 value="200u" savecurrent=false}
C {lab_pin.sym} 1330 -550 0 1 {name=p34 lab=IBIAS_10uA}
C {lab_pin.sym} 1330 -610 0 0 {name=p16 sig_type=std_logic lab=VIN}
C {isource.sym} 1330 -200 0 0 {name=ILOAD value="PWL(0 1m 50n 1m 85n 50m 185n 50m 220n 1m)"
 savecurrent=false}
C {code_shown.sym} 1850 -1130 0 0 {name=AC-SIM1 only_toplevel=false value="

.temp 175
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

*Compute PSRR
meas ac psrr_dc  param= -20*log10(mag(v(VREGac)))  at=1
meas ac psrr_100k  param= -20*log10(mag(v(VREGac)))  at=100k
meas ac psrr_1M  param= -20*log10(mag(v(VREGaz)))  at=1Meg

* --- Settling Time Measurement Block ---
let v_final = 1.25  ; Target Vout
let tol = 0.01 * v_final
let hi_bound = v_final + tol
let lo_bound = v_final - tol

* 1. FIXED TRIGGER: We know the PWL starts the rise at 50ns
let t_trigger = 50n

* 2. Find the LAST time the signal was outside the tolerance band
* We measure after the step occurs (after 50ns)
meas tran t_last_hi WHEN v(VREGloadtran)=hi_bound FALL=LAST
meas tran t_last_lo WHEN v(VREGloadtran)=lo_bound RISE=LAST

* 3. Calculate Settling Time
* Ensure we only look at crossings that happened AFTER the trigger
let t_settle_end = max(t_last_hi, t_last_lo)
let settling_time = t_settle_end - t_trigger

print settling_time


print Vin_do Vout_do Vdo
print Vout_max Vout_min Vpp
plot VREGloadtran
plot VREGloadtran2
plot VREG
plot VIN
plot I(Vmeas)

.endc
"}
C {vsource.sym} 1640 -580 0 0 {name=V4 value="1.25" savecurrent=false}
C {vsource.sym} 1760 -480 0 0 {name=V5 value=0 savecurrent=false}
C {vsource.sym} 1640 -480 0 0 {name=V9 value="DC 5" savecurrent=false}
C {lab_pin.sym} 1640 -510 0 0 {name=p42 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 1640 -610 0 0 {name=p47 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1640 -450 0 0 {name=p49 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1640 -550 0 0 {name=p50 sig_type=std_logic lab=VSS}
C {gnd.sym} 1760 -440 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1760 -510 0 0 {name=p52 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 1630 -320 0 0 {name=CORNER2 only_toplevel=true corner=ff}
C {lab_pin.sym} 1330 -550 0 1 {name=p5 lab=IBIAS_10uA}
C {isource.sym} 1330 -580 0 0 {name=I5 value="10u" savecurrent=false}
C {lab_pin.sym} 1230 -60 0 1 {name=p41 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1210 -180 0 0 {name=M2
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 710 -50 1 0 {name=C3 model=cap_mim_m3_1 W=25 L=25 MF=8 spiceprefix=X}
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
C {lab_pin.sym} 1330 -120 0 0 {name=p7 sig_type=std_logic lab=VSS}
