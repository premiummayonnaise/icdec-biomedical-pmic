v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 740 -410 830 -410 {lab=#net1}
N 220 -540 1010 -540 {lab=VIN}
N 1010 -190 1010 -170 {lab=VFB}
N 940 -190 1010 -190 {lab=VFB}
N 1010 -210 1010 -190 {lab=VFB}
N 1010 -170 1010 -160 {lab=VFB}
N 1010 -290 1010 -270 {lab=#net2}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/error-amplifier-module.sym} 70 -30 0 0 {name=x1}
C {icdec-biomedical-pmic/xschem/power-fet/power-fet.sym} 690 -230 0 0 {name=x2}
C {lab_pin.sym} 990 -240 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {ipin.sym} 940 -190 0 0 {name=p11 lab=VFB}
C {lab_pin.sym} 990 -130 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1010 -100 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 1010 -130 0 0 {name=R3
L=235
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 1010 -240 0 0 {name=R1
L=0.35
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 990 -410 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 290 -380 0 0 {name=p35 lab=VFB}
C {ipin.sym} 290 -440 0 0 {name=p36 lab=VREF}
C {vsource.sym} 1300 -260 0 0 {name=V3 value="DC 1.25" savecurrent=false}
C {lab_pin.sym} 1300 -230 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1300 -290 0 0 {name=p12 sig_type=std_logic lab=VP}
C {vsource.sym} 1450 -350 0 0 {name=V5 value=5 savecurrent=false}
C {vsource.sym} 1450 -260 0 0 {name=V7 value=0 savecurrent=false}
C {lab_pin.sym} 1450 -320 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1450 -380 0 0 {name=p6 sig_type=std_logic lab=VIN}
C {gnd.sym} 1450 -230 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 1450 -290 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 1380 -520 0 0 {name=CORNER only_toplevel=true corner=ss}
C {lab_pin.sym} 670 -130 0 1 {name=p7 lab=IBIAS_200uA}
C {lab_pin.sym} 670 -190 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {isource.sym} 670 -160 0 0 {name=I4 value="200u" savecurrent=false}
C {vsource.sym} 1300 -360 0 0 {name=V1 value="ac 1m DC 0.9" savecurrent=false}
C {lab_pin.sym} 1300 -330 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1300 -390 0 0 {name=p21 sig_type=std_logic lab=VCM}
C {vsource.sym} 1300 -160 0 0 {name=V4 value="DC 5 AC 1" savecurrent=false}
C {lab_pin.sym} 1300 -130 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1300 -190 0 0 {name=p31 sig_type=std_logic lab=VDDr}
C {lab_pin.sym} 510 -130 0 1 {name=p34 lab=IBIAS_10uA}
C {lab_pin.sym} 510 -190 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {isource.sym} 510 -160 0 0 {name=I1 value="10u" savecurrent=false}
C {lab_pin.sym} 280 -290 0 0 {name=p17 lab=IBIAS_10uA}
C {lab_pin.sym} 280 -320 0 0 {name=p18 lab=IBIAS_200uA}
C {lab_pin.sym} 280 -260 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 280 -230 0 0 {name=p20 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 220 -540 0 0 {name=p22 sig_type=std_logic lab=VIN}
C {code_shown.sym} 1680 -570 0 0 {name="AC-SIM" only_toplevel=false value="

.temp 27
.control

DC V8 0 3 0.01

* Nominal output voltage (from regulation region)
let Vout_nom = 1.25
let Vout_95  = 0.95*Vout_nom

* Find Vin where Vout crosses 95%
meas dc Vin_do find v(vin) when v(vreg)=Vout_95

* Measure Vout at that Vin (for completeness)
meas dc Vout_do find v(vreg) when v(vreg)=Vout_95

* Compute dropout voltage
let Vdo = Vin_do - Vout_do

print Vin_do Vout_do Vdo
plot VREG

.endc
"}
