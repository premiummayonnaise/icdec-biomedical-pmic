v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 310 -930 340 -930 {lab=VP}
N 310 -990 340 -990 {lab=VN}
N 820 -960 840 -960 {lab=OUT}
N 790 -960 820 -960 {lab=OUT}
N 840 -900 840 -860 {lab=VSS}
N 310 -620 340 -620 {lab=VCM}
N 310 -680 340 -680 {lab=VCM}
N 310 -190 340 -190 {lab=VP}
N 310 -250 340 -250 {lab=VN}
N 820 -650 840 -650 {lab=OUT2}
N 790 -650 820 -650 {lab=OUT2}
N 840 -590 840 -550 {lab=VSS}
N 820 -220 840 -220 {lab=OUT3}
N 790 -220 820 -220 {lab=OUT3}
N 840 -160 840 -120 {lab=VSS}
N 310 -680 310 -620 {lab=VCM}
N 310 -340 310 -250 {lab=VN}
N 310 -400 530 -400 {lab=VN}
N 680 -400 680 -390 {lab=OUT3}
N 310 -400 310 -340 {lab=VN}
N 530 -400 600 -400 {lab=VN}
N 660 -400 680 -400 {lab=OUT3}
N 680 -400 840 -400 {lab=OUT3}
N 840 -400 840 -220 {lab=OUT3}
C {vsource.sym} 1060 -540 0 0 {name=V2 value="ac -1m dc 1.8" savecurrent=false}
C {vsource.sym} 1060 -450 0 0 {name=V3 value="ac 1m dc 1.8" savecurrent=false}
C {lab_pin.sym} 1060 -510 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1060 -420 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1060 -570 0 0 {name=p11 sig_type=std_logic lab=VN}
C {lab_pin.sym} 1060 -480 0 0 {name=p12 sig_type=std_logic lab=VP}
C {devices/code_shown.sym} 1330 -950 0 0 {name=NGSPICE only_toplevel=true
value=".control
  .temp 27
  op
  ac dec 100 1 100MEG
  save all

  * --- Original Logic ---
  let vd = v(vp) - v(vn)
  let Av = db( v(OUT) / vd)
  let phase = 180 + 180*cph( v(OUT) )/pi

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
C {vsource.sym} 1210 -540 0 0 {name=V5 value=5 savecurrent=false}
C {vsource.sym} 1210 -450 0 0 {name=V7 value=0 savecurrent=false}
C {lab_pin.sym} 1210 -510 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1210 -570 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {gnd.sym} 1210 -420 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 1210 -480 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 1140 -710 0 0 {name=CORNER only_toplevel=true corner=ss}
C {lab_pin.sym} 1180 -920 0 1 {name=p5 lab=IBIAS_200uA}
C {lab_pin.sym} 1180 -980 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {isource.sym} 1180 -950 0 0 {name=I4 value="200u" savecurrent=false}
C {vsource.sym} 1060 -660 0 0 {name=V1 value="ac 1m DC 0.9" savecurrent=false}
C {lab_pin.sym} 1060 -630 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1060 -690 0 0 {name=p21 sig_type=std_logic lab=VCM}
C {vsource.sym} 1060 -350 0 0 {name=V4 value="DC 5 AC 1" savecurrent=false}
C {lab_pin.sym} 1060 -320 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1060 -380 0 0 {name=p31 sig_type=std_logic lab=VDDr}
C {lab_pin.sym} 310 -990 0 0 {name=p1 sig_type=std_logic lab=VN}
C {lab_pin.sym} 310 -930 0 0 {name=p3 sig_type=std_logic lab=VP}
C {lab_pin.sym} 840 -960 0 1 {name=p6 sig_type=std_logic lab=OUT}
C {capa-2.sym} 840 -930 0 0 {name=C2
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 330 -810 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 330 -500 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 330 -70 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 330 -780 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 330 -470 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 330 -40 0 0 {name=p20 sig_type=std_logic lab=VDDr}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/error-amplifier-module.sym} 120 -580 0 0 {name=x1}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/error-amplifier-module.sym} 120 -270 0 0 {name=x2}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/error-amplifier-module.sym} 120 160 0 0 {name=x3}
C {lab_pin.sym} 840 -860 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 310 -650 0 0 {name=p24 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 310 -250 0 0 {name=p26 sig_type=std_logic lab=VN}
C {lab_pin.sym} 310 -190 0 0 {name=p27 sig_type=std_logic lab=VP}
C {lab_pin.sym} 840 -650 0 1 {name=p28 sig_type=std_logic lab=OUT2}
C {capa-2.sym} 840 -620 0 0 {name=C1
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 840 -550 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 840 -220 0 1 {name=p32 sig_type=std_logic lab=OUT3}
C {capa-2.sym} 840 -190 0 0 {name=C3
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 840 -120 0 0 {name=p33 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1020 -920 0 1 {name=p34 lab=IBIAS_10uA}
C {lab_pin.sym} 1020 -980 0 0 {name=p35 sig_type=std_logic lab=VDD}
C {isource.sym} 1020 -950 0 0 {name=I1 value="10u" savecurrent=false}
C {lab_pin.sym} 330 -840 0 0 {name=p36 lab=IBIAS_10uA}
C {lab_pin.sym} 330 -530 0 0 {name=p37 lab=IBIAS_10uA}
C {lab_pin.sym} 330 -100 0 0 {name=p38 lab=IBIAS_10uA}
C {lab_pin.sym} 330 -130 0 0 {name=p39 lab=IBIAS_200uA}
C {lab_pin.sym} 330 -560 0 0 {name=p40 lab=IBIAS_200uA}
C {lab_pin.sym} 330 -870 0 0 {name=p41 lab=IBIAS_200uA}
C {capa.sym} 680 -360 0 0 {name=C4
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 630 -400 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 680 -330 0 0 {name=p13 sig_type=std_logic lab=VSS}
