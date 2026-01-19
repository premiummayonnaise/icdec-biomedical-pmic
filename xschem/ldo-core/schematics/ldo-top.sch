v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 810 -380 900 -380 {lab=#net1}
N 1080 -160 1080 -140 {lab=VFB}
N 1010 -160 1080 -160 {lab=VFB}
N 1080 -180 1080 -160 {lab=VFB}
N 1080 -140 1080 -130 {lab=VFB}
N 1080 -260 1080 -240 {lab=VREG}
N 550 -500 580 -500 {lab=#net1}
N 550 -240 580 -240 {lab=#net1}
N 450 -410 630 -410 {lab=VSS}
N 630 -410 630 -150 {lab=VSS}
N 450 -150 630 -150 {lab=VSS}
N 470 -590 700 -590 {lab=VIN}
N 700 -590 700 -330 {lab=VIN}
N 470 -330 700 -330 {lab=VIN}
N 250 -520 340 -520 {lab=VREF}
N 250 -520 250 -220 {lab=VREF}
N 250 -220 340 -220 {lab=VREF}
N 290 -480 340 -480 {lab=VFB}
N 290 -480 290 -260 {lab=VFB}
N 290 -260 340 -260 {lab=VFB}
N 160 -430 290 -430 {lab=VFB}
N 160 -330 250 -330 {lab=VREF}
N 420 -630 420 -590 {lab=IBIAS_200uA}
N 420 -370 420 -330 {lab=IBIAS_10uA}
N 700 -460 770 -460 {lab=VIN}
N 630 -290 770 -290 {lab=VSS}
N 1080 -640 1080 -510 {lab=VIN}
N 580 -500 810 -500 {lab=#net1}
N 810 -500 810 -400 {lab=#net1}
N 580 -240 810 -240 {lab=#net1}
N 810 -400 810 -240 {lab=#net1}
N 1080 -250 1220 -250 {lab=VREG}
N 1060 -380 1130 -380 {lab=VSS}
C {icdec-biomedical-pmic/xschem/power-fet/power-fet.sym} 760 -200 0 0 {name=x2}
C {lab_pin.sym} 1060 -210 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {ipin.sym} 1010 -160 0 0 {name=p11 lab=VFB}
C {lab_pin.sym} 1060 -100 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1080 -70 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 1080 -100 0 0 {name=R3
L=235
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 1080 -210 0 0 {name=R1
L=0.35
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 1130 -380 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {vsource.sym} 1370 -230 0 0 {name=V3 value="DC 1.25" savecurrent=false}
C {lab_pin.sym} 1370 -200 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1370 -260 0 0 {name=p12 sig_type=std_logic lab=VREF}
C {vsource.sym} 1520 -320 0 0 {name=V5 value=5 savecurrent=false}
C {vsource.sym} 1520 -230 0 0 {name=V7 value=0 savecurrent=false}
C {lab_pin.sym} 1520 -290 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1520 -350 0 0 {name=p6 sig_type=std_logic lab=VIN}
C {gnd.sym} 1520 -200 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 1520 -260 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 2070 -300 0 0 {name=CORNER only_toplevel=true corner=ss}
C {lab_pin.sym} 1520 -410 0 1 {name=p7 lab=IBIAS_200uA}
C {lab_pin.sym} 1520 -470 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {isource.sym} 1520 -440 0 0 {name=I4 value="200u" savecurrent=false}
C {vsource.sym} 1370 -330 0 0 {name=V1 value="ac 1m DC 0.9" savecurrent=false}
C {lab_pin.sym} 1370 -300 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1370 -360 0 0 {name=p21 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 1360 -410 0 1 {name=p34 lab=IBIAS_10uA}
C {lab_pin.sym} 1360 -470 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {isource.sym} 1360 -440 0 0 {name=I1 value="10u" savecurrent=false}
C {lab_pin.sym} 1080 -640 0 0 {name=p22 sig_type=std_logic lab=VIN}
C {code_shown.sym} 1740 -610 0 0 {name="AC-SIM" only_toplevel=false value="

.temp 27
.control

DC V5 0 5 0.01

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
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} 170 -320 0 0 {name=x3}
C {icdec-biomedical-pmic/xschem/5t-ota/schematics/5t-ota.sym} 240 -80 0 0 {name=x4}
C {ipin.sym} 160 -430 0 0 {name=p4 lab=VFB}
C {ipin.sym} 160 -330 0 0 {name=p8 lab=VREF}
C {ipin.sym} 420 -370 0 0 {name=p23 lab=IBIAS_10uA}
C {ipin.sym} 420 -630 0 0 {name=p24 lab=IBIAS_200uA}
C {ipin.sym} 770 -460 0 1 {name=p25 lab=VIN}
C {iopin.sym} 770 -290 0 0 {name=p27 lab=VSS}
C {lab_pin.sym} 1220 -250 0 1 {name=p17 sig_type=std_logic lab=VREG}
C {isource.sym} 1220 -220 0 0 {name=I2 value="50m" savecurrent=false}
C {lab_pin.sym} 1220 -190 0 0 {name=p18 sig_type=std_logic lab=VSS}
