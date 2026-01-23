v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1530 -310 1530 -300 {lab=GND}
N 540 -390 630 -390 {lab=#net1}
N 810 -170 810 -150 {lab=VFBr}
N 740 -170 810 -170 {lab=VFBr}
N 810 -190 810 -170 {lab=VFBr}
N 810 -150 810 -140 {lab=VFBr}
N 810 -270 810 -250 {lab=VREG}
N 200 -520 200 -480 {lab=IBIAS_200uA}
N 810 -650 810 -520 {lab=VIN}
N 810 -260 950 -260 {lab=VREG}
N 790 -390 860 -390 {lab=VSS}
N 950 -260 1180 -260 {lab=VREG}
N 1020 -110 1020 -90 {lab=VSS}
N 980 -260 980 -210 {lab=VREG}
N 1020 -260 1020 -240 {lab=VREG}
N 1020 -210 1020 -180 {lab=VSS}
N 1020 -180 1020 -170 {lab=VSS}
N 1020 -170 1020 -110 {lab=VSS}
N 380 -260 400 -260 {lab=#net1}
N 520 -260 560 -260 {lab=#net2}
N 620 -260 650 -260 {lab=VREG}
N 660 -260 810 -260 {lab=VREG}
N 250 -520 250 -480 {lab=VIN}
N 230 -300 230 -260 {lab=VSS}
N 330 -390 540 -390 {lab=#net1}
N 380 -390 380 -260 {lab=#net1}
N 1120 -190 1120 -170 {lab=VSS}
N 1120 -110 1120 -80 {lab=VSS}
N 1120 -170 1120 -110 {lab=VSS}
N 650 -260 660 -260 {lab=VREG}
N 400 -260 460 -260 {lab=#net1}
C {code_shown.sym} 1660 -470 0 0 {name=AC-SIM1 only_toplevel=false value=

"
.control
DC V9 0 10.5 0.01

* Nominal output voltage (from regulation region)
let Vout_nom = 1.25
let Vout_95  = 0.95*Vout_nom

* Find Vin where Vout crosses 95%
meas dc Vin_do find v(vin) when v(vreg)=Vout_95

* Measure Vout at that Vin (for completeness)
meas dc Vout_do find v(vreg) when v(vreg)=Vout_95

* Compute dropout voltage
let Vdo = Vin_do - Vout_do
print vdo
plot VIN VREG
.endc
"}
C {vsource.sym} 1410 -440 0 0 {name=V4 value="1.8" savecurrent=false}
C {vsource.sym} 1530 -340 0 0 {name=V5 value=0 savecurrent=false}
C {vsource.sym} 1410 -340 0 0 {name=V9 value="0" savecurrent=false}
C {lab_pin.sym} 1410 -370 0 0 {name=p42 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 1410 -470 0 0 {name=p47 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1410 -310 0 0 {name=p49 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1410 -410 0 0 {name=p50 sig_type=std_logic lab=VSS}
C {gnd.sym} 1530 -300 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1530 -370 0 0 {name=p52 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 1400 -180 0 0 {name=CORNER2 only_toplevel=true corner=ss}
C {icdec-biomedical-pmic/xschem/power-fet/power-fet.sym} 490 -210 0 0 {name=x1}
C {lab_pin.sym} 790 -220 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 740 -170 0 0 {name=p14 lab=VFBr}
C {lab_pin.sym} 790 -110 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 810 -80 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 810 -110 0 0 {name=R2
L=235
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 810 -220 0 0 {name=R4
L=0.35
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 860 -390 0 1 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 810 -650 0 0 {name=p21 sig_type=std_logic lab=VIN}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} -50 -210 0 0 {name=x5}
C {lab_pin.sym} 120 -370 0 0 {name=p26 lab=VFBr}
C {lab_pin.sym} 120 -410 0 0 {name=p28 lab=VREF}
C {lab_pin.sym} 200 -520 0 0 {name=p29 lab=IBIAS_200uA}
C {ipin.sym} 250 -520 0 1 {name=p30 lab=VIN}
C {iopin.sym} 230 -260 0 0 {name=p31 lab=VSS}
C {lab_pin.sym} 1180 -260 0 1 {name=p32 sig_type=std_logic lab=VREG}
C {lab_pin.sym} 1020 -90 0 1 {name=p33 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1000 -210 0 0 {name=M4
W=20
L=0.5
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 490 -260 1 0 {name=C2 model=cap_mim_m3_1 W=25 L=25 MF=8 spiceprefix=X}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 590 -240 3 0 {name=M5
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
C {lab_pin.sym} 590 -220 0 0 {name=p35 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1120 -80 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {isource.sym} 1120 -220 0 0 {name=I1 value="50m"
 savecurrent=false}
C {lab_pin.sym} 1530 -410 0 1 {name=p10 lab=IBIAS_200uA}
C {lab_pin.sym} 1530 -470 0 0 {name=p12 sig_type=std_logic lab=VIN}
C {isource.sym} 1530 -440 0 0 {name=I4 value="200u" savecurrent=false}
