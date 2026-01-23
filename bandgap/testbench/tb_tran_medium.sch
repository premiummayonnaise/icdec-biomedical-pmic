v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1760 -450 1760 -440 {lab=GND}
N 630 -460 720 -460 {lab=#net1}
N 900 -240 900 -220 {lab=VFBr}
N 830 -240 900 -240 {lab=VFBr}
N 900 -260 900 -240 {lab=VFBr}
N 900 -220 900 -210 {lab=VFBr}
N 900 -340 900 -320 {lab=VREGloadtran}
N 290 -590 290 -550 {lab=IBIAS_200uA}
N 900 -720 900 -590 {lab=VIN}
N 900 -330 1040 -330 {lab=VREGloadtran}
N 880 -460 950 -460 {lab=VSS}
N 1040 -330 1270 -330 {lab=VREGloadtran}
N 470 -330 490 -330 {lab=#net1}
N 550 -330 590 -330 {lab=#net2}
N 650 -330 680 -330 {lab=VREGloadtran}
N 750 -330 900 -330 {lab=VREGloadtran}
N 1210 -240 1210 -220 {lab=VSS}
N 1210 -270 1210 -240 {lab=VSS}
N 1210 -220 1210 -160 {lab=VSS}
N 340 -590 340 -550 {lab=VIN}
N 320 -370 320 -330 {lab=VSS}
N 420 -460 630 -460 {lab=#net1}
N 680 -330 750 -330 {lab=VREGloadtran}
N 470 -460 470 -330 {lab=#net1}
N 1090 -180 1090 -160 {lab=VSS}
N 1050 -330 1050 -280 {lab=VREGloadtran}
N 1090 -330 1090 -310 {lab=VREGloadtran}
N 1090 -280 1090 -250 {lab=VSS}
N 1090 -250 1090 -240 {lab=VSS}
N 1090 -240 1090 -180 {lab=VSS}
C {lab_pin.sym} 1450 -550 0 1 {name=p10 lab=IBIAS_200uA}
C {lab_pin.sym} 1450 -610 0 0 {name=p12 sig_type=std_logic lab=VIN}
C {isource.sym} 1450 -580 0 0 {name=I4 value="200u" savecurrent=false}
C {code_shown.sym} 1850 -1130 0 0 {name=AC-SIM1 only_toplevel=false value="

.temp 175
.control

tran 0.001n 0.08u

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
C {vsource.sym} 1640 -480 0 0 {name=V9 value="DC 3.9" savecurrent=false}
C {lab_pin.sym} 1640 -510 0 0 {name=p42 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 1640 -610 0 0 {name=p47 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1640 -450 0 0 {name=p49 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1640 -550 0 0 {name=p50 sig_type=std_logic lab=VSS}
C {gnd.sym} 1760 -440 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1760 -510 0 0 {name=p52 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 1630 -320 0 0 {name=CORNER2 only_toplevel=true corner=ff}
C {icdec-biomedical-pmic/xschem/power-fet/power-fet.sym} 580 -280 0 0 {name=x1}
C {lab_pin.sym} 880 -290 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 830 -240 0 0 {name=p14 lab=VFBr}
C {lab_pin.sym} 880 -180 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 900 -150 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 900 -180 0 0 {name=R2
L=235
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 900 -290 0 0 {name=R4
L=0.35
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 950 -460 0 1 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 900 -720 0 0 {name=p21 sig_type=std_logic lab=VIN}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} 40 -280 0 0 {name=x5}
C {lab_pin.sym} 210 -440 0 0 {name=p26 lab=VFBr}
C {lab_pin.sym} 210 -480 0 0 {name=p28 lab=VREF}
C {lab_pin.sym} 290 -590 0 0 {name=p29 lab=IBIAS_200uA}
C {ipin.sym} 340 -590 0 1 {name=p30 lab=VIN}
C {iopin.sym} 320 -330 0 0 {name=p31 lab=VSS}
C {lab_pin.sym} 1270 -330 0 1 {name=p32 sig_type=std_logic lab=VREGloadtran}
C {isource.sym} 1210 -300 0 0 {name=ILOAD1 value="PWL(
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 520 -330 1 0 {name=C1 model=cap_mim_m3_1 W=25 L=25 MF=8 spiceprefix=X}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 620 -310 3 0 {name=M4
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
C {lab_pin.sym} 620 -290 0 0 {name=p35 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1210 -160 0 0 {name=p36 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1090 -160 0 1 {name=p41 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1070 -280 0 0 {name=M2
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
