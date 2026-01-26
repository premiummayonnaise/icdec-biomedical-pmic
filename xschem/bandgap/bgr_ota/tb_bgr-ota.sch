v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 160 -820 190 -820 {lab=VP}
N 160 -860 190 -860 {lab=VN}
N 360 -840 380 -840 {lab=OUT}
N 330 -840 360 -840 {lab=OUT}
N 230 -750 230 -730 {lab=VSS}
N 380 -780 380 -740 {lab=VSS}
N 230 -740 380 -740 {lab=VSS}
N 160 -610 190 -610 {lab=VCM}
N 160 -570 190 -570 {lab=VCM}
N 360 -590 380 -590 {lab=OUT2}
N 330 -590 360 -590 {lab=OUT2}
N 230 -500 230 -480 {lab=VSS}
N 380 -530 380 -490 {lab=VSS}
N 230 -490 380 -490 {lab=VSS}
N 160 -610 160 -570 {lab=VCM}
N 160 -290 190 -290 {lab=VPr}
N 160 -330 190 -330 {lab=VNr}
N 380 -310 400 -310 {lab=OUT3}
N 350 -310 380 -310 {lab=OUT3}
N 230 -260 230 -240 {lab=VSS}
N 120 -290 120 -120 {lab=VNr}
N 380 -310 380 -120 {lab=OUT3}
N 250 -120 380 -120 {lab=OUT3}
N 270 -120 270 -110 {lab=OUT3}
N 120 -120 190 -120 {lab=VNr}
N 230 -930 230 -890 {lab=VDD}
N 300 -840 330 -840 {lab=OUT}
N 230 -790 230 -750 {lab=VSS}
N 230 -680 230 -640 {lab=VDD}
N 230 -540 230 -500 {lab=VSS}
N 300 -590 330 -590 {lab=OUT2}
N 70 -330 160 -330 {lab=VNr}
N 120 -330 120 -290 {lab=VNr}
N 230 -400 230 -360 {lab=VDDr}
N 300 -310 350 -310 {lab=OUT3}
C {vsource.sym} 560 -440 0 0 {name=V2 value="ac -1m dc 0.9" savecurrent=false}
C {vsource.sym} 560 -350 0 0 {name=V3 value="ac 1m dc 0.9" savecurrent=false}
C {lab_pin.sym} 560 -410 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 560 -320 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 560 -470 0 0 {name=p11 sig_type=std_logic lab=VN}
C {lab_pin.sym} 560 -380 0 0 {name=p12 sig_type=std_logic lab=VP}
C {devices/code_shown.sym} 800 -790 0 0 {name=NGSPICE only_toplevel=true
value=".control
  .temp 27
  op
  ac dec 100 1 100MEG
  save all

  * --- Original Logic ---
  let vd = v(vp) - v(vn)
  let Av = db( v(OUT) / vd)
  let phase = 180*cph( v(OUT) )/pi

  * --- New Measurement Snippet ---
  * We use the 'Av' and 'phase' vectors created above
  meas ac f_0db when Av = 0
  meas ac phase_at_unity find phase when Av = 0
  
  * Note: p_total needs a definition to be plotted
  * Assuming p_total is VDD * Total Current:
  let p_total = v(vdd) * i(Vdd)

  * --- Original CMRR & PSRR calculation ---
  let Acm = db( v(OUT2)/vcm)
  let cmrr = Av - Acm
  let psrr = -20*log10(OUT3)

  * --- Output ---
  print f_0db phase_at_unity
  plot psrr
  plot av
  plot acm
  plot cmrr
  plot phase
  plot p_total
.endc

"}
C {vsource.sym} 710 -440 0 0 {name=V5 value=1.8 savecurrent=false}
C {vsource.sym} 710 -350 0 0 {name=V7 value=0 savecurrent=false}
C {lab_pin.sym} 710 -410 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 710 -470 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {gnd.sym} 710 -320 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 710 -380 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 160 -860 0 0 {name=p1 sig_type=std_logic lab=VN}
C {lab_pin.sym} 160 -820 0 0 {name=p3 sig_type=std_logic lab=VP}
C {sky130_fd_pr/corner.sym} 640 -690 0 0 {name=CORNER only_toplevel=true corner=tt}
C {lab_pin.sym} 380 -840 0 1 {name=p6 sig_type=std_logic lab=OUT}
C {capa-2.sym} 380 -810 0 0 {name=C2
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 230 -930 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 230 -730 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 160 -590 0 0 {name=p16 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 380 -590 0 1 {name=p17 sig_type=std_logic lab=OUT2}
C {capa-2.sym} 380 -560 0 0 {name=C1
m=1
value=5p
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 230 -680 0 1 {name=p18 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 230 -480 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {vsource.sym} 560 -540 0 0 {name=V1 value="ac 1m DC 0.9" savecurrent=false}
C {lab_pin.sym} 560 -510 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 560 -570 0 0 {name=p21 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 70 -330 0 0 {name=p23 sig_type=std_logic lab=VNr}
C {lab_pin.sym} 160 -290 0 0 {name=p24 sig_type=std_logic lab=VPr}
C {lab_pin.sym} 400 -310 0 1 {name=p25 sig_type=std_logic lab=OUT3}
C {lab_pin.sym} 230 -400 0 1 {name=p26 sig_type=std_logic lab=VDDr}
C {lab_pin.sym} 230 -240 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {capa.sym} 270 -80 0 0 {name=C3
m=1
value=50u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 220 -120 1 0 {name=R1
value=3183.1
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 270 -50 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {vsource.sym} 560 -250 0 0 {name=V4 value="DC 1.8 AC 1" savecurrent=false}
C {lab_pin.sym} 560 -220 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 560 -280 0 0 {name=p31 sig_type=std_logic lab=VDDr}
C {icdec-biomedical-pmic/xschem/bandgap/bgr_ota/bgr-ota.sym} 110 -680 0 0 {name=x1}
C {icdec-biomedical-pmic/xschem/bandgap/bgr_ota/bgr-ota.sym} 110 -430 0 0 {name=x2}
C {icdec-biomedical-pmic/xschem/bandgap/bgr_ota/bgr-ota.sym} 110 -150 0 0 {name=x3}
C {vsource.sym} 550 -140 0 0 {name=V6 value="dc 0.9 ac -1m" savecurrent=false}
C {vsource.sym} 550 -50 0 0 {name=V8 value="dc 0.9 ac 1m" savecurrent=false}
C {lab_pin.sym} 550 -110 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 550 -20 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 550 -170 0 0 {name=p15 sig_type=std_logic lab=VNr}
C {lab_pin.sym} 550 -80 0 0 {name=p20 sig_type=std_logic lab=VPr}
