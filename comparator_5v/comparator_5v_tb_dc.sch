v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {sky130_fd_pr/corner.sym} -310 -300 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code_shown.sym} -300 -150 0 0 {name=dc only_toplevel=false value="
.control
  save all
  dc v4 0 3 0.01
  plot v(IN) v(REF) v(OUT)
.endc
"}
C {vsource.sym} -760 -290 0 0 {name=V1 value=5 savecurrent=false}
C {vsource.sym} -760 -180 0 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} -760 -60 0 0 {name=V3 value=1.25 savecurrent=false}
C {gnd.sym} -760 -150 0 0 {name=l1 lab=GND}
C {vsource.sym} -460 -290 0 0 {name=V5 value=1.5 savecurrent=false}
C {vsource.sym} -460 -60 0 0 {name=V6 value=0.7 savecurrent=false}
C {lab_pin.sym} -760 -320 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -590 -260 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -760 -260 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -760 -30 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -460 -260 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -460 -30 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -760 -210 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -760 -90 0 0 {name=p8 sig_type=std_logic lab=REF}
C {lab_pin.sym} -460 -320 0 1 {name=p9 sig_type=std_logic lab=B1}
C {lab_pin.sym} -460 -90 0 1 {name=p10 sig_type=std_logic lab=B2}
C {vsource.sym} -460 -180 0 0 {name=V4 value=3 savecurrent=false}
C {lab_pin.sym} -460 -210 0 1 {name=p11 sig_type=std_logic lab=IN}
C {lab_pin.sym} -460 -150 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -670 -180 0 0 {name=p13 sig_type=std_logic lab=IN}
C {lab_pin.sym} -630 -140 0 0 {name=p14 sig_type=std_logic lab=B2}
C {lab_pin.sym} -630 -260 0 0 {name=p15 sig_type=std_logic lab=B1}
C {lab_pin.sym} -670 -220 0 0 {name=p16 sig_type=std_logic lab=REF}
C {lab_pin.sym} -550 -200 0 1 {name=p17 sig_type=std_logic lab=OUT}
C {lab_pin.sym} -590 -140 0 1 {name=p18 sig_type=std_logic lab=VSS}
C {comparator_5v.sym} 30 10 0 0 {name=x1}
