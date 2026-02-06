v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {sky130_fd_pr/corner.sym} -480 -400 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code_shown.sym} -470 -250 0 0 {name=dc only_toplevel=false value="
.control
  save all
  dc v4 0 3 0.01
  plot i(Vmeas)
.endc
"}
C {vsource.sym} -930 -390 0 0 {name=V1 value=5 savecurrent=false}
C {vsource.sym} -930 -280 0 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} -930 -160 0 0 {name=V3 value=1.25 savecurrent=false}
C {gnd.sym} -930 -250 0 0 {name=l1 lab=GND}
C {vsource.sym} -630 -390 0 0 {name=V5 value=1.5 savecurrent=false}
C {vsource.sym} -630 -160 0 0 {name=V6 value=0.7 savecurrent=false}
C {lab_pin.sym} -930 -420 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -760 -360 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -930 -360 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -930 -130 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -630 -360 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -630 -130 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -930 -310 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -930 -190 0 0 {name=p8 sig_type=std_logic lab=REF}
C {lab_pin.sym} -630 -420 0 1 {name=p9 sig_type=std_logic lab=B1}
C {lab_pin.sym} -630 -190 0 1 {name=p10 sig_type=std_logic lab=B2}
C {vsource.sym} -630 -280 0 0 {name=V4 value=3 savecurrent=false}
C {lab_pin.sym} -630 -310 0 1 {name=p11 sig_type=std_logic lab=IN}
C {lab_pin.sym} -630 -250 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -840 -280 0 0 {name=p13 sig_type=std_logic lab=IN}
C {lab_pin.sym} -800 -240 0 0 {name=p14 sig_type=std_logic lab=B2}
C {lab_pin.sym} -800 -360 0 0 {name=p15 sig_type=std_logic lab=B1}
C {lab_pin.sym} -840 -320 0 0 {name=p16 sig_type=std_logic lab=REF}
C {lab_pin.sym} -720 -300 0 1 {name=p17 sig_type=std_logic lab=OUT}
C {lab_pin.sym} -760 -240 0 1 {name=p18 sig_type=std_logic lab=VSS}
C {comparator_5v.sym} -140 -90 0 0 {name=x1}
C {ammeter.sym} -1130 -320 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {lab_pin.sym} -1130 -350 0 1 {name=p19 sig_type=std_logic lab=OUT}
C {lab_pin.sym} -1130 -290 0 0 {name=p20 sig_type=std_logic lab=VSS}
