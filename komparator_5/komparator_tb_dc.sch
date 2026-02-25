v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {code_shown.sym} -770 -310 0 0 {name=dc only_toplevel=true value="
.control
  save all
  dc v4 0 3 0.01
  plot v(IN) v(REF) v(OUT)
.endc
"}
C {vsource.sym} -1250 -460 0 0 {name=V1 value=5 savecurrent=false}
C {vsource.sym} -1250 -350 0 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} -1250 -230 0 0 {name=V3 value=1.25 savecurrent=false}
C {gnd.sym} -1250 -320 0 0 {name=l1 lab=GND}
C {vsource.sym} -930 -460 0 0 {name=V5 value=1.5 savecurrent=false}
C {vsource.sym} -930 -230 0 0 {name=V6 value=0.7 savecurrent=false}
C {lab_pin.sym} -1250 -490 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1060 -440 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1250 -430 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -1250 -200 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -930 -430 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -930 -200 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -1250 -380 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -1250 -260 0 0 {name=p8 sig_type=std_logic lab=REF}
C {lab_pin.sym} -930 -490 0 1 {name=p9 sig_type=std_logic lab=B1}
C {lab_pin.sym} -930 -260 0 1 {name=p10 sig_type=std_logic lab=B2}
C {vsource.sym} -930 -350 0 0 {name=V4 value=3 savecurrent=false}
C {lab_pin.sym} -930 -380 0 1 {name=p11 sig_type=std_logic lab=IN}
C {lab_pin.sym} -930 -320 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -1140 -360 0 0 {name=p13 sig_type=std_logic lab=IN}
C {lab_pin.sym} -1100 -320 0 0 {name=p14 sig_type=std_logic lab=B2}
C {lab_pin.sym} -1100 -440 0 0 {name=p15 sig_type=std_logic lab=B1}
C {lab_pin.sym} -1140 -390 0 0 {name=p16 sig_type=std_logic lab=REF}
C {lab_pin.sym} -1020 -380 0 1 {name=p17 sig_type=std_logic lab=OUT}
C {lab_pin.sym} -1060 -320 0 1 {name=p18 sig_type=std_logic lab=VSS}
C {komparator.sym} -1080 -380 0 0 {name=x1}
C {devices/code.sym} -790 -480 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include /foss/designs/kerjapraktik/test/komparator_5/komparator_pex.spice
"
spice_ignore=false}
