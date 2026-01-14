v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {komparator_histeris.sym} 140 80 0 0 {name=x1}
C {sky130_fd_pr/corner.sym} 150 -180 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code_shown.sym} 160 -20 0 0 {name=tb1 only_toplevel=false value="
.control
  save all
  dc v4 0 3 0.01
  plot v(IN) v(REF) v(OUT)
.endc
"}
C {vsource.sym} -250 -150 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -250 -40 0 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} -250 80 0 0 {name=V3 value=1.25 savecurrent=false}
C {gnd.sym} -250 -10 0 0 {name=l1 lab=GND}
C {vsource.sym} 50 -150 0 0 {name=V5 value=1.5 savecurrent=false}
C {vsource.sym} 50 80 0 0 {name=V6 value=0.5 savecurrent=false}
C {lab_pin.sym} -250 -180 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -90 -130 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -250 -120 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -250 110 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 50 -120 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 50 110 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -250 -70 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -250 50 0 0 {name=p8 sig_type=std_logic lab=REF}
C {lab_pin.sym} 50 -180 0 1 {name=p9 sig_type=std_logic lab=B1}
C {lab_pin.sym} 50 50 0 1 {name=p10 sig_type=std_logic lab=B2}
C {vsource.sym} 50 -40 0 0 {name=V4 value=3 savecurrent=false}
C {lab_pin.sym} 50 -70 0 1 {name=p11 sig_type=std_logic lab=IN}
C {lab_pin.sym} 50 -10 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -140 -80 0 0 {name=p13 sig_type=std_logic lab=IN}
C {lab_pin.sym} -180 -10 0 0 {name=p14 sig_type=std_logic lab=B2}
C {lab_pin.sym} -180 -100 0 0 {name=p15 sig_type=std_logic lab=B1}
C {lab_pin.sym} -140 -40 0 0 {name=p16 sig_type=std_logic lab=REF}
C {lab_pin.sym} -30 -60 0 1 {name=p17 sig_type=std_logic lab=OUT}
C {lab_pin.sym} -90 20 0 1 {name=p18 sig_type=std_logic lab=VSS}
