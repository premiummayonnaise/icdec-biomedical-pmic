v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 180 -360 210 -360 {lab=VCM}
N 180 -320 210 -320 {lab=VCM}
N 450 -340 470 -340 {lab=OUT}
N 420 -340 450 -340 {lab=OUT}
N 320 -250 320 -230 {lab=VSS}
N 210 -430 290 -430 {lab=IBIAS}
N 470 -280 470 -240 {lab=VSS}
N 320 -240 470 -240 {lab=VSS}
N 180 -360 180 -320 {lab=VCM}
C {devices/code_shown.sym} 900 -410 0 0 {name=NGSPICE only_toplevel=true
value="

.temp 27
.control
save all
dc V9 0 5 0.01

let p_vdd = -i(V7)*VDD
let p_vss = i(V8)*VSS
let p_total = p_vdd + p_vss

plot OUT
plot p_total
plot i(vmeas)

.endc
"}
C {vsource.sym} 760 -240 0 0 {name=V7 value=5 savecurrent=false}
C {vsource.sym} 760 -150 0 0 {name=V8 value=0 savecurrent=false}
C {lab_pin.sym} 760 -210 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 760 -270 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {gnd.sym} 760 -120 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 760 -180 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 690 -410 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {lab_pin.sym} 620 -210 0 1 {name=p20 lab=IBIAS}
C {lab_pin.sym} 620 -270 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {isource.sym} 620 -240 0 0 {name=I4 value="10u" savecurrent=false}
C {lab_pin.sym} 180 -340 0 0 {name=p22 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 470 -340 0 1 {name=p23 sig_type=std_logic lab=OUT}
C {capa-2.sym} 470 -310 0 0 {name=C1
m=1
value=2p
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 340 -430 0 1 {name=p24 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 320 -230 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {icdec-biomedical-pmic/xschem/5t-ota/schematics/5t-ota.sym} 110 -180 0 0 {name=x2}
C {lab_pin.sym} 210 -430 0 0 {name=p26 lab=IBIAS}
C {vsource.sym} 620 -140 0 0 {name=V9 value="DC 0" savecurrent=false}
C {lab_pin.sym} 620 -110 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 620 -170 0 0 {name=p28 sig_type=std_logic lab=VCM}
