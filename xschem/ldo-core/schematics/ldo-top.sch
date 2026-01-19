v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 740 -410 830 -410 {lab=#net1}
N 1010 -190 1010 -170 {lab=VFB}
N 940 -190 1010 -190 {lab=VFB}
N 1010 -210 1010 -190 {lab=VFB}
N 1010 -170 1010 -160 {lab=VFB}
N 1010 -290 1010 -270 {lab=VREG}
N 480 -510 510 -510 {lab=#net1}
N 480 -250 510 -250 {lab=#net1}
N 380 -420 560 -420 {lab=VSS}
N 560 -420 560 -160 {lab=VSS}
N 380 -160 560 -160 {lab=VSS}
N 400 -600 630 -600 {lab=VIN}
N 630 -600 630 -340 {lab=VIN}
N 400 -340 630 -340 {lab=VIN}
N 180 -530 270 -530 {lab=VREF}
N 180 -530 180 -230 {lab=VREF}
N 180 -230 270 -230 {lab=VREF}
N 220 -490 270 -490 {lab=VFB}
N 220 -490 220 -270 {lab=VFB}
N 220 -270 270 -270 {lab=VFB}
N 90 -440 220 -440 {lab=VFB}
N 90 -340 180 -340 {lab=VREF}
N 350 -640 350 -600 {lab=IBIAS_200uA}
N 350 -380 350 -340 {lab=IBIAS_10uA}
N 630 -470 700 -470 {lab=VIN}
N 560 -300 700 -300 {lab=VSS}
N 1010 -670 1010 -540 {lab=VIN}
N 510 -510 740 -510 {lab=#net1}
N 740 -510 740 -410 {lab=#net1}
N 510 -250 740 -250 {lab=#net1}
N 740 -410 740 -250 {lab=#net1}
N 1010 -280 1150 -280 {lab=VREG}
N 990 -410 1060 -410 {lab=VSS}
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
C {lab_pin.sym} 1060 -410 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {vsource.sym} 1300 -260 0 0 {name=V3 value="DC 1.25" savecurrent=false}
C {lab_pin.sym} 1300 -230 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1300 -290 0 0 {name=p12 sig_type=std_logic lab=VREF}
C {vsource.sym} 1450 -350 0 0 {name=V5 value=5 savecurrent=false}
C {vsource.sym} 1450 -260 0 0 {name=V7 value=0 savecurrent=false}
C {lab_pin.sym} 1450 -320 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1450 -380 0 0 {name=p6 sig_type=std_logic lab=VIN}
C {gnd.sym} 1450 -230 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 1450 -290 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 1380 -520 0 0 {name=CORNER only_toplevel=true corner=ss}
C {lab_pin.sym} 1190 -780 0 1 {name=p7 lab=IBIAS_200uA}
C {lab_pin.sym} 1190 -840 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {isource.sym} 1190 -810 0 0 {name=I4 value="200u" savecurrent=false}
C {vsource.sym} 1300 -360 0 0 {name=V1 value="ac 1m DC 0.9" savecurrent=false}
C {lab_pin.sym} 1300 -330 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1300 -390 0 0 {name=p21 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 1030 -780 0 1 {name=p34 lab=IBIAS_10uA}
C {lab_pin.sym} 1030 -840 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {isource.sym} 1030 -810 0 0 {name=I1 value="10u" savecurrent=false}
C {lab_pin.sym} 1010 -670 0 0 {name=p22 sig_type=std_logic lab=VIN}
C {code_shown.sym} 1680 -570 0 0 {name="AC-SIM" only_toplevel=false value="

.temp 27
.control

DC V5 3.3 5 0.01

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
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} 100 -330 0 0 {name=x3}
C {icdec-biomedical-pmic/xschem/5t-ota/schematics/5t-ota.sym} 170 -90 0 0 {name=x4}
C {ipin.sym} 90 -440 0 0 {name=p4 lab=VFB}
C {ipin.sym} 90 -340 0 0 {name=p8 lab=VREF}
C {ipin.sym} 350 -380 0 0 {name=p23 lab=IBIAS_10uA}
C {ipin.sym} 350 -640 0 0 {name=p24 lab=IBIAS_200uA}
C {ipin.sym} 700 -470 0 1 {name=p25 lab=VIN}
C {iopin.sym} 700 -300 0 0 {name=p27 lab=VSS}
C {lab_pin.sym} 1150 -280 0 1 {name=p17 sig_type=std_logic lab=VREG}
