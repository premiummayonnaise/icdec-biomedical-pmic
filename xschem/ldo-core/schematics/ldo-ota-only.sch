v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 430 -420 560 -420 {lab=#net1}
N 350 -550 350 -510 {lab=VIN}
N 110 -550 740 -550 {lab=VIN}
N 740 -190 740 -170 {lab=VFB}
N 670 -190 740 -190 {lab=VFB}
N 740 -210 740 -190 {lab=VFB}
N 740 -170 740 -160 {lab=VFB}
N 740 -300 740 -270 {lab=VREG}
N 150 -440 220 -440 {lab=VFB}
N 150 -400 220 -400 {lab=VREF}
N 330 -330 330 -110 {lab=VSS}
N 1340 -350 1340 -340 {lab=GND}
N 940 -280 1000 -280 {lab=VREG}
N 930 -280 930 -260 {lab=VREG}
N 810 -280 940 -280 {lab=VREG}
N 930 -130 930 -110 {lab=VSS}
N 930 -200 930 -190 {lab=#net2}
N 1000 -280 1000 -260 {lab=VREG}
N 1000 -260 1000 -240 {lab=VREG}
N 740 -280 810 -280 {lab=VREG}
N 220 -510 300 -510 {lab=IBIAS}
C {icdec-biomedical-pmic/xschem/5t-ota/schematics/5t-ota.sym} 120 -260 0 0 {name=x1}
C {icdec-biomedical-pmic/xschem/power-fet/power-fet.sym} 420 -240 0 0 {name=x2}
C {lab_pin.sym} 720 -240 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {ipin.sym} 670 -190 0 0 {name=p11 lab=VFB}
C {lab_pin.sym} 720 -130 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 740 -100 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 740 -130 0 0 {name=R3
L=235
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 740 -240 0 0 {name=R1
L=0.35
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 150 -440 0 0 {name=p16 lab=VFB}
C {ipin.sym} 150 -400 0 0 {name=p28 lab=VREF}
C {lab_pin.sym} 330 -110 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 720 -420 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 110 -550 0 0 {name=p5 lab=VIN}
C {code_shown.sym} 1420 -550 0 0 {name="AC-SIM" only_toplevel=false value="

.temp 27
.control

DC V8 0 5 0.01

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
plot VREG VIN

.endc
"}
C {vsource.sym} 1220 -480 0 0 {name=V2 value="1.25" savecurrent=false}
C {isource.sym} 1340 -480 0 0 {name=I6 value="10u" savecurrent=false}
C {vsource.sym} 1340 -380 0 0 {name=V7 value=0 savecurrent=false}
C {vsource.sym} 1220 -380 0 0 {name=V8 value="2.5" savecurrent=false}
C {lab_pin.sym} 1220 -410 0 0 {name=p17 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 1220 -510 0 0 {name=p19 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1340 -450 0 0 {name=p20 sig_type=std_logic lab=IBIAS}
C {lab_pin.sym} 1220 -350 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1220 -450 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1340 -510 0 0 {name=p23 sig_type=std_logic lab=VDD}
C {gnd.sym} 1340 -340 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 1340 -410 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 1180 -220 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {isource.sym} 1000 -210 0 0 {name=I2 value="50u"}
C {lab_pin.sym} 1000 -180 0 1 {name=p29 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1000 -280 0 1 {name=p32 sig_type=std_logic lab=VREG}
C {capa-2.sym} 930 -160 0 0 {name=C4
m=1
value=50p
footprint=1206
device=polarized_capacitor}
C {res.sym} 930 -230 0 0 {name=R6
value=20m
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 930 -110 0 1 {name=p33 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 220 -510 0 0 {name=p6 sig_type=std_logic lab=IBIAS}
