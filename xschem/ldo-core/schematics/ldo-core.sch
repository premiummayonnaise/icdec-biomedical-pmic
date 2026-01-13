v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1180 -290 1180 -280 {lab=GND}
N 230 -500 650 -500 {lab=VIN}
N 650 -350 650 -330 {lab=VREG}
N 650 -440 650 -410 {lab=VIN}
N 650 -460 650 -440 {lab=VIN}
N 650 -410 650 -380 {lab=VIN}
N 780 -340 840 -340 {lab=VREG}
N 770 -340 770 -320 {lab=VREG}
N 650 -340 780 -340 {lab=VREG}
N 770 -190 770 -170 {lab=VSS}
N 770 -260 770 -250 {lab=#net1}
N 390 -380 610 -380 {lab=#net2}
N 840 -340 840 -320 {lab=VREG}
N 840 -320 840 -300 {lab=VREG}
N 650 -250 650 -230 {lab=VFB}
N 580 -250 650 -250 {lab=VFB}
N 650 -270 650 -250 {lab=VFB}
N 650 -230 650 -220 {lab=VFB}
N 650 -500 650 -460 {lab=VIN}
N 310 -500 310 -460 {lab=VIN}
N 410 -170 500 -170 {lab=#net2}
N 500 -380 500 -170 {lab=#net2}
N 240 -250 300 -250 {lab=VIN}
N 240 -500 240 -250 {lab=VIN}
N 200 -500 230 -500 {lab=VIN}
N 220 -410 290 -410 {lab=VFB}
N 220 -350 290 -350 {lab=VREF}
N 220 -200 280 -200 {lab=VREF}
N 220 -140 280 -140 {lab=VFB}
N 370 -460 530 -460 {lab=VB}
N 380 -250 440 -250 {lab=VB}
N 340 -300 340 -280 {lab=VSS}
N 340 -90 340 -60 {lab=VSS}
C {code_shown.sym} 1260 -500 0 0 {name="AC-SIM" only_toplevel=false value="

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
C {vsource.sym} 1060 -420 0 0 {name=V2 value="1.25" savecurrent=false}
C {vsource.sym} 1180 -420 0 0 {name=V6 value="DC 0.9" savecurrent=false}
C {vsource.sym} 1180 -320 0 0 {name=V7 value=0 savecurrent=false}
C {vsource.sym} 1060 -320 0 0 {name=V8 value="2.5" savecurrent=false}
C {lab_pin.sym} 1060 -350 0 0 {name=p17 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 1060 -450 0 0 {name=p19 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1180 -450 0 0 {name=p20 sig_type=std_logic lab=VB}
C {lab_pin.sym} 1060 -290 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1060 -390 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1180 -390 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {gnd.sym} 1180 -280 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 1180 -350 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 1020 -160 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {sky130_fd_pr/pfet_01v8.sym} 630 -380 0 0 {name=M2
W=80.5
L=0.35
nf=40
mult=100
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 630 -300 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 220 -410 0 0 {name=p16 lab=VFB}
C {lab_pin.sym} 340 -280 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {ipin.sym} 200 -500 0 0 {name=p25 lab=VIN}
C {ipin.sym} 440 -250 0 1 {name=p26 lab=VB}
C {ipin.sym} 220 -350 0 0 {name=p28 lab=VREF}
C {isource.sym} 840 -270 0 0 {name=I2 value="100m"}
C {lab_pin.sym} 840 -240 0 1 {name=p29 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 840 -340 0 1 {name=p32 sig_type=std_logic lab=VREG}
C {capa-2.sym} 770 -220 0 0 {name=C4
m=1
value=50p
footprint=1206
device=polarized_capacitor}
C {res.sym} 770 -290 0 0 {name=R6
value=20m
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 770 -170 0 1 {name=p33 sig_type=std_logic lab=VSS}
C {ipin.sym} 530 -460 0 1 {name=p34 lab=VB}
C {lab_pin.sym} 220 -140 0 0 {name=p35 lab=VFB}
C {ipin.sym} 220 -200 0 0 {name=p36 lab=VREF}
C {ipin.sym} 580 -250 0 0 {name=p11 lab=VFB}
C {lab_pin.sym} 630 -190 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 650 -160 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 650 -190 0 0 {name=R3
L=235
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 650 -300 0 0 {name=R1
L=0.35
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {icdec-biomedical-pmic/xschem/5t-ota/5t-ota.sym} 160 -240 0 0 {name=x1}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/error-amplifier.sym} 190 -70 0 0 {name=x2}
C {lab_pin.sym} 340 -60 0 0 {name=p3 sig_type=std_logic lab=VSS}
