v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 150 -290 180 -290 {lab=VCM}
N 150 -250 180 -250 {lab=VCM}
N 420 -270 440 -270 {lab=OUT}
N 390 -270 420 -270 {lab=OUT}
N 290 -180 290 -160 {lab=VSS}
N 180 -360 260 -360 {lab=IBIAS}
N 440 -210 440 -170 {lab=VSS}
N 290 -170 440 -170 {lab=VSS}
N 150 -290 150 -250 {lab=VCM}
C {devices/code_shown.sym} 870 -340 0 0 {name=NGSPICE only_toplevel=true
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
C {vsource.sym} 730 -170 0 0 {name=V7 value=5 savecurrent=false}
C {vsource.sym} 730 -80 0 0 {name=V8 value=0 savecurrent=false}
C {lab_pin.sym} 730 -140 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 730 -200 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {gnd.sym} 730 -50 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 730 -110 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 660 -340 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {lab_pin.sym} 590 -140 0 1 {name=p20 lab=IBIAS}
C {lab_pin.sym} 590 -200 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {isource.sym} 590 -170 0 0 {name=I4 value="10u" savecurrent=false}
C {lab_pin.sym} 150 -270 0 0 {name=p22 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 440 -270 0 1 {name=p23 sig_type=std_logic lab=OUT}
C {capa-2.sym} 440 -240 0 0 {name=C1
m=1
value=2p
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 310 -360 0 1 {name=p24 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 290 -160 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 180 -360 0 0 {name=p26 lab=IBIAS}
C {vsource.sym} 590 -70 0 0 {name=V9 value="DC 0" savecurrent=false}
C {lab_pin.sym} 590 -40 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 590 -100 0 0 {name=p28 sig_type=std_logic lab=VCM}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} 10 -90 0 0 {name=x1}
