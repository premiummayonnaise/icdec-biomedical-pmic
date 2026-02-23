v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 90 -860 120 -860 {lab=VP}
N 90 -820 120 -820 {lab=VN}
N 360 -840 380 -840 {lab=OUT}
N 330 -840 360 -840 {lab=OUT}
N 230 -750 230 -730 {lab=VSS}
N 120 -930 200 -930 {lab=IBIAS}
N 380 -780 380 -740 {lab=VSS}
N 230 -740 380 -740 {lab=VSS}
N 90 -610 120 -610 {lab=VCM}
N 90 -570 120 -570 {lab=VCM}
N 360 -590 380 -590 {lab=OUT2}
N 330 -590 360 -590 {lab=OUT2}
N 230 -500 230 -480 {lab=VSS}
N 120 -680 200 -680 {lab=IBIAS}
N 380 -530 380 -490 {lab=VSS}
N 230 -490 380 -490 {lab=VSS}
N 90 -610 90 -570 {lab=VCM}
N 110 -330 140 -330 {lab=VP}
N 110 -290 140 -290 {lab=VN}
N 380 -310 400 -310 {lab=OUT3}
N 350 -310 380 -310 {lab=OUT3}
N 250 -220 250 -200 {lab=VSS}
N 140 -400 220 -400 {lab=IBIAS}
N 120 -290 120 -120 {lab=VN}
N 380 -310 380 -120 {lab=OUT3}
N 250 -120 380 -120 {lab=OUT3}
N 270 -120 270 -110 {lab=OUT3}
N 120 -120 190 -120 {lab=VN}
C {vsource.sym} 560 -440 0 0 {name=V2 value="ac -1m dc 1.25" savecurrent=false}
C {vsource.sym} 560 -350 0 0 {name=V3 value="ac 1m dc 1.25" savecurrent=false}
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
C {vsource.sym} 710 -440 0 0 {name=V5 value=5 savecurrent=false}
C {vsource.sym} 710 -350 0 0 {name=V7 value=0 savecurrent=false}
C {lab_pin.sym} 710 -410 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 710 -470 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {gnd.sym} 710 -320 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 710 -380 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 90 -820 0 0 {name=p1 sig_type=std_logic lab=VN}
C {lab_pin.sym} 90 -860 0 0 {name=p3 sig_type=std_logic lab=VP}
C {sky130_fd_pr/corner.sym} 640 -610 0 0 {name=CORNER only_toplevel=true corner=ss}
C {lab_pin.sym} 380 -840 0 1 {name=p6 sig_type=std_logic lab=OUT}
C {capa-2.sym} 380 -810 0 0 {name=C2
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 250 -930 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 230 -730 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 560 -520 0 1 {name=p5 lab=IBIAS}
C {lab_pin.sym} 560 -580 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {isource.sym} 560 -550 0 0 {name=I4 value="200u" savecurrent=false}
C {lab_pin.sym} 120 -930 0 0 {name=p15 lab=IBIAS}
C {lab_pin.sym} 90 -590 0 0 {name=p16 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 380 -590 0 1 {name=p17 sig_type=std_logic lab=OUT2}
C {capa-2.sym} 380 -560 0 0 {name=C1
m=1
value=5p
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 250 -680 0 1 {name=p18 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 230 -480 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 120 -680 0 0 {name=p20 lab=IBIAS}
C {vsource.sym} 560 -670 0 0 {name=V1 value="ac 1m DC 0.9" savecurrent=false}
C {lab_pin.sym} 560 -640 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 560 -700 0 0 {name=p21 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 110 -290 0 0 {name=p23 sig_type=std_logic lab=VN}
C {lab_pin.sym} 110 -330 0 0 {name=p24 sig_type=std_logic lab=VP}
C {lab_pin.sym} 400 -310 0 1 {name=p25 sig_type=std_logic lab=OUT3}
C {lab_pin.sym} 270 -400 0 1 {name=p26 sig_type=std_logic lab=VDDr}
C {lab_pin.sym} 250 -200 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 140 -400 0 0 {name=p28 lab=IBIAS}
C {capa.sym} 270 -80 0 0 {name=C3
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 220 -120 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 270 -50 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {vsource.sym} 560 -250 0 0 {name=V4 value="DC 5 AC 1" savecurrent=false}
C {lab_pin.sym} 560 -220 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 560 -280 0 0 {name=p31 sig_type=std_logic lab=VDDr}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} -50 -660 0 0 {name=x1}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} -50 -410 0 0 {name=x2}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} -30 -130 0 0 {name=x3}
