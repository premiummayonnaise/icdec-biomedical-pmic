v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 780 -670 870 -670 {lab=#net1}
N 1050 -450 1050 -430 {lab=VFBr}
N 980 -450 1050 -450 {lab=VFBr}
N 1050 -470 1050 -450 {lab=VFBr}
N 1050 -430 1050 -420 {lab=VFBr}
N 1050 -550 1050 -530 {lab=VREGloadtran}
N 440 -800 440 -760 {lab=IBIAS_200uA}
N 1050 -930 1050 -800 {lab=VIN}
N 1050 -540 1190 -540 {lab=VREGloadtran}
N 1030 -670 1100 -670 {lab=VSS}
N 1190 -540 1420 -540 {lab=VREGloadtran}
N 1790 -760 1790 -750 {lab=GND}
N 620 -540 640 -540 {lab=#net1}
N 700 -540 740 -540 {lab=#net2}
N 800 -540 830 -540 {lab=VREGloadtran}
N 900 -540 1050 -540 {lab=VREGloadtran}
N 1360 -450 1360 -430 {lab=VSS}
N 1360 -480 1360 -450 {lab=VSS}
N 1360 -430 1360 -370 {lab=VSS}
N 490 -800 490 -760 {lab=VIN}
N 470 -580 470 -540 {lab=VSS}
N 570 -670 780 -670 {lab=#net1}
N 830 -540 900 -540 {lab=VREGloadtran}
N 620 -670 620 -540 {lab=#net1}
N 1230 -390 1230 -370 {lab=VSS}
N 1190 -540 1190 -490 {lab=VREGloadtran}
N 1230 -540 1230 -520 {lab=VREGloadtran}
N 1230 -490 1230 -460 {lab=VSS}
N 1230 -460 1230 -450 {lab=VSS}
N 1230 -450 1230 -390 {lab=VSS}
C {icdec-biomedical-pmic/xschem/power-fet/power-fet.sym} 730 -490 0 0 {name=x2}
C {lab_pin.sym} 1030 -500 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 980 -450 0 0 {name=p11 lab=VFBr}
C {lab_pin.sym} 1030 -390 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1050 -360 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 1050 -390 0 0 {name=R3
L=235
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 1050 -500 0 0 {name=R1
L=0.35
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 1100 -670 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1050 -930 0 0 {name=p22 sig_type=std_logic lab=VIN}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} 190 -490 0 0 {name=x3}
C {lab_pin.sym} 360 -650 0 0 {name=p4 lab=VFBr}
C {lab_pin.sym} 360 -690 0 0 {name=p8 lab=VREF}
C {lab_pin.sym} 440 -800 0 0 {name=p24 lab=IBIAS_200uA}
C {ipin.sym} 490 -800 0 1 {name=p25 lab=VIN}
C {iopin.sym} 470 -540 0 0 {name=p27 lab=VSS}
C {lab_pin.sym} 1420 -540 0 1 {name=p17 sig_type=std_logic lab=VREGloadtran}
C {lab_pin.sym} 1480 -860 0 1 {name=p10 lab=IBIAS_200uA}
C {lab_pin.sym} 1480 -920 0 0 {name=p12 sig_type=std_logic lab=VIN}
C {isource.sym} 1480 -890 0 0 {name=I4 value="200u" savecurrent=false}
C {isource.sym} 1360 -510 0 0 {name=ILOAD value="PWL(0 1m 50n 1m 85n 50m 185n 50m 220n 1m)"
 savecurrent=false}
C {code_shown.sym} 1880 -1210 0 0 {name=AC-SIM1 only_toplevel=false value="

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
C {vsource.sym} 1670 -890 0 0 {name=V4 value="1.25" savecurrent=false}
C {vsource.sym} 1790 -790 0 0 {name=V5 value=0 savecurrent=false}
C {vsource.sym} 1670 -790 0 0 {name=V9 value="DC 10.5" savecurrent=false}
C {lab_pin.sym} 1670 -820 0 0 {name=p42 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 1670 -920 0 0 {name=p47 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1670 -760 0 0 {name=p49 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1670 -860 0 0 {name=p50 sig_type=std_logic lab=VSS}
C {gnd.sym} 1790 -750 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1790 -820 0 0 {name=p52 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 1660 -630 0 0 {name=CORNER2 only_toplevel=true corner=FF}
C {sky130_fd_pr/cap_mim_m3_1.sym} 670 -540 1 0 {name=C3 model=cap_mim_m3_1 W=25 L=25 MF=8 spiceprefix=X}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 770 -520 3 0 {name=M1
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
C {lab_pin.sym} 770 -500 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1360 -370 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1230 -370 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1210 -490 0 0 {name=M2
W=20
L=0.5
nf=1
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
