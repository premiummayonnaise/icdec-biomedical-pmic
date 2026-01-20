v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 760 -390 760 -380 {lab=GND}
C {icdec-biomedical-pmic/bandgap/bandgap5.sym} 160 -170 0 0 {name=x1}
C {lab_pin.sym} 360 -290 0 1 {name=p1 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 240 -370 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 240 -210 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 180 -290 0 0 {name=p4 sig_type=std_logic lab=EN}
C {vsource.sym} 600 -420 0 0 {name=V1 value=2.3 savecurrent=false}
C {vsource.sym} 680 -420 0 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} 760 -420 0 0 {name=V3 value=0 savecurrent=false}
C {lab_pin.sym} 600 -450 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 680 -450 0 0 {name=p6 sig_type=std_logic lab=EN}
C {lab_pin.sym} 760 -450 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 600 -390 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 680 -390 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {gnd.sym} 760 -380 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} 560 -310 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code_shown.sym} 720 -300 0 0 {name=s1 only_toplevel=false value="

.control
	DC temp -40 125 1
	plot VREF
.endc
"}
