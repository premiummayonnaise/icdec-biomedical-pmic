v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 890 -510 940 -510 {lab=#net1}
N 1120 -290 1120 -260 {lab=VFBr}
N 1050 -290 1120 -290 {lab=VFBr}
N 1120 -310 1120 -290 {lab=VFBr}
N 1120 -380 1120 -370 {lab=VREG}
N 590 -630 850 -630 {lab=#net1}
N 590 -370 850 -370 {lab=#net1}
N 490 -540 670 -540 {lab=VSS}
N 670 -420 670 -280 {lab=VSS}
N 490 -280 670 -280 {lab=VSS}
N 510 -720 740 -720 {lab=VIN}
N 740 -590 740 -460 {lab=VIN}
N 510 -460 740 -460 {lab=VIN}
N 290 -650 380 -650 {lab=VREF}
N 290 -460 290 -350 {lab=VREF}
N 290 -350 380 -350 {lab=VREF}
N 330 -610 380 -610 {lab=VFBr}
N 330 -560 330 -390 {lab=VFBr}
N 330 -390 380 -390 {lab=VFBr}
N 200 -560 330 -560 {lab=VFBr}
N 200 -460 290 -460 {lab=VREF}
N 460 -760 460 -720 {lab=IBIAS_200uA}
N 460 -500 460 -460 {lab=IBIAS_10uA}
N 740 -590 810 -590 {lab=VIN}
N 670 -420 810 -420 {lab=VSS}
N 1120 -770 1120 -640 {lab=VIN}
N 850 -630 850 -510 {lab=#net1}
N 850 -510 850 -370 {lab=#net1}
N 1120 -380 1290 -380 {lab=VREG}
N 1100 -510 1170 -510 {lab=VSS}
N 1330 -380 1490 -380 {lab=VREG}
N 1860 -600 1860 -590 {lab=GND}
N 1260 -380 1260 -330 {lab=VREG}
N 1300 -380 1300 -360 {lab=VREG}
N 1300 -330 1300 -210 {lab=VSS}
N 890 -510 890 -110 {lab=#net1}
N 890 -110 910 -110 {lab=#net1}
N 970 -110 1010 -110 {lab=#net2}
N 1070 -110 1100 -110 {lab=VREG}
N 1100 -150 1100 -110 {lab=VREG}
N 960 -150 1100 -150 {lab=VREG}
N 960 -380 960 -150 {lab=VREG}
N 960 -380 1120 -380 {lab=VREG}
N 330 -610 330 -560 {lab=VFBr}
N 290 -650 290 -460 {lab=VREF}
N 740 -720 740 -590 {lab=VIN}
N 670 -540 670 -420 {lab=VSS}
N 1120 -390 1120 -380 {lab=VREG}
N 1290 -380 1330 -380 {lab=VREG}
N 850 -510 890 -510 {lab=#net1}
C {icdec-biomedical-pmic/xschem/power-fet/power-fet.sym} 800 -330 0 0 {name=x2}
C {lab_pin.sym} 1100 -340 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1050 -290 0 0 {name=p11 lab=VFBr}
C {lab_pin.sym} 1100 -230 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1120 -200 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 1120 -230 0 0 {name=R3
L=235
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 1120 -340 0 0 {name=R1
L=0.35
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 1170 -510 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1120 -770 0 0 {name=p22 sig_type=std_logic lab=VIN}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} 210 -450 0 0 {name=x3}
C {icdec-biomedical-pmic/xschem/5t-ota/schematics/5t-ota.sym} 280 -210 0 0 {name=x4}
C {lab_pin.sym} 200 -560 0 0 {name=p4 lab=VFBr}
C {lab_pin.sym} 200 -460 0 0 {name=p8 lab=VREF}
C {lab_pin.sym} 460 -500 0 0 {name=p23 lab=IBIAS_10uA}
C {lab_pin.sym} 460 -760 0 0 {name=p24 lab=IBIAS_200uA}
C {ipin.sym} 810 -590 0 1 {name=p25 lab=VIN}
C {iopin.sym} 810 -420 0 0 {name=p27 lab=VSS}
C {lab_pin.sym} 1490 -380 0 1 {name=p17 sig_type=std_logic lab=VREG}
C {lab_pin.sym} 1440 -320 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1450 -470 0 1 {name=p10 lab=IBIAS_200uA}
C {lab_pin.sym} 1450 -530 0 0 {name=p12 sig_type=std_logic lab=VIN}
C {isource.sym} 1450 -500 0 0 {name=I4 value="200u" savecurrent=false}
C {lab_pin.sym} 1330 -470 0 1 {name=p34 lab=IBIAS_10uA}
C {lab_pin.sym} 1330 -530 0 0 {name=p16 sig_type=std_logic lab=VIN}
C {isource.sym} 1440 -350 0 0 {name=I3 value="1m"
 savecurrent=false}
C {code_shown.sym} 1970 -760 0 0 {name=AC-SIM1 only_toplevel=false value=

"
.control
DC V9 0 5 0.01

* Nominal output voltage (from regulation region)
let Vout_nom = 1.25
let Vout_95  = 0.95*Vout_nom

* Find Vin where Vout crosses 95%
meas dc Vin_do find v(vin) when v(vreg)=Vout_95

* Measure Vout at that Vin (for completeness)
meas dc Vout_do find v(vreg) when v(vreg)=Vout_95

* Compute dropout voltage
let Vdo = Vin_do - Vout_do
print vdo
plot VIN VREG
.endc
"}
C {vsource.sym} 1740 -730 0 0 {name=V4 value="1.25" savecurrent=false}
C {vsource.sym} 1860 -630 0 0 {name=V5 value=0 savecurrent=false}
C {vsource.sym} 1740 -630 0 0 {name=V9 value="0" savecurrent=false}
C {lab_pin.sym} 1740 -660 0 0 {name=p42 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 1740 -760 0 0 {name=p47 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1740 -600 0 0 {name=p49 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1740 -700 0 0 {name=p50 sig_type=std_logic lab=VSS}
C {gnd.sym} 1860 -590 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1860 -660 0 0 {name=p52 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 1730 -470 0 0 {name=CORNER2 only_toplevel=true corner=ff}
C {lab_pin.sym} 1330 -470 0 1 {name=p5 lab=IBIAS_10uA}
C {isource.sym} 1330 -500 0 0 {name=I5 value="10u" savecurrent=false}
C {lab_pin.sym} 1300 -210 0 1 {name=p41 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1280 -330 0 0 {name=M2
W=20
L=0.5
nf=1
mult=128
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 940 -110 1 0 {name=C1 model=cap_mim_m3_1 W=25 L=25 MF=8 spiceprefix=X}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 1040 -90 3 0 {name=M1
W=20
L=0.5
body=VDD
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {lab_pin.sym} 1040 -70 0 0 {name=p6 sig_type=std_logic lab=VSS}
