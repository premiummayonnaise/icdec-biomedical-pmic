v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1720 -330 1720 -320 {lab=GND}
N 660 -600 750 -600 {lab=#net1}
N 930 -380 930 -360 {lab=VFBr}
N 860 -380 930 -380 {lab=VFBr}
N 930 -400 930 -380 {lab=VFBr}
N 930 -360 930 -350 {lab=VFBr}
N 930 -480 930 -460 {lab=VREGac}
N 320 -730 320 -690 {lab=IBIAS_200uA}
N 930 -860 930 -730 {lab=VINr}
N 930 -470 1070 -470 {lab=VREGac}
N 910 -600 980 -600 {lab=VSS}
N 1070 -470 1300 -470 {lab=VREGac}
N 1140 -320 1140 -300 {lab=VSS}
N 1100 -470 1100 -420 {lab=VREGac}
N 1140 -470 1140 -450 {lab=VREGac}
N 1140 -420 1140 -390 {lab=VSS}
N 1140 -390 1140 -380 {lab=VSS}
N 1140 -380 1140 -320 {lab=VSS}
N 500 -470 520 -470 {lab=#net1}
N 580 -470 620 -470 {lab=#net2}
N 680 -470 710 -470 {lab=VREGac}
N 780 -470 930 -470 {lab=VREGac}
N 1240 -380 1240 -360 {lab=VSS}
N 1240 -410 1240 -380 {lab=VSS}
N 1240 -360 1240 -300 {lab=VSS}
N 370 -730 370 -690 {lab=VINr}
N 350 -510 350 -470 {lab=VSS}
N 450 -600 660 -600 {lab=#net1}
N 710 -470 780 -470 {lab=VREGac}
N 500 -600 500 -470 {lab=#net1}
N 200 -310 200 -250 {lab=#net3}
N 200 -190 200 -140 {lab=#net4}
N 370 -400 370 -330 {lab=VDD}
N 200 -400 370 -400 {lab=VDD}
N 200 -320 200 -310 {lab=#net3}
N 200 -400 200 -380 {lab=VDD}
N 200 -280 320 -280 {lab=#net3}
N 200 -160 310 -160 {lab=#net4}
N 310 -160 320 -160 {lab=#net4}
N 320 -160 320 -140 {lab=#net4}
N 360 -110 470 -110 {lab=UVLO}
N 470 -260 470 -110 {lab=UVLO}
N 320 -110 320 -80 {lab=VSS}
N 430 -260 470 -260 {lab=UVLO}
C {code_shown.sym} 1870 -930 0 0 {name="AC-SIM" only_toplevel=false value="
.temp 27
.control
    * Lakukan simulasi AC
    AC DEC 100 1 100G
    
    * 1. Menghitung PSRR yang Benar
    * PSRR = Gain dari Supply ke Output (VREG). 
    * Biasanya kita ingin melihat penolakan (rejection), jadi kita hitung 1/Gain.
    * Jika input AC supply (Vripple) = 1V, maka PSRR_db = -db(v(VREGac))
    let psrr_plot = -db(v(VREGac))

    * 2. Menghitung Loop Gain & Phase Margin
    * Pastikan v(PROBE) adalah node setelah injeksi AC (Tian Method / Middlebrook)
    let loop_gain_complex = v(PROBE)
    let lg_db = db(loop_gain_complex)
    * ph(x) di ngspice hasilnya dalam radian, kita ubah ke derajat
    let lg_ph = ph(loop_gain_complex) * 180 / PI
    
    * Phase Margin biasanya diukur dari jarak fase ke -180 derajat
    let phase_margin_plot = lg_ph + 180

    * 3. Pengukuran Otomatis (MEAS)
    * Cari Unity Gain Frequency (UGF)
    meas ac f_unity when lg_db=0
    
    * Cari Phase Margin pada frekuensi f_unity tersebut
    * Gunakan 'at' dengan variabel yang sudah didapat dari f_unity
    meas ac PM_value find phase_margin_plot at=f_unity
    
    * 4. Menghitung PSRR pada Berbagai Band
    * Ingat: Gunakan let psrr_plot yang sudah didefinisikan agar tidak redundan
    meas ac psrr_dc find psrr_plot at=1
    meas ac psrr_100k find psrr_plot at=100k
    meas ac psrr_1M find psrr_plot at=1meg

    * 5. Cetak Hasil ke Terminal
    echo "======================================"
    echo Unity Gain Frequency: $&f_unity Hz
    echo Phase Margin: $&PM_value degrees
    echo PSRR at DC: $&psrr_dc dB
    echo PSRR at 100kHz: $&psrr_100k dB
    echo PSRR at 1MHz: $&psrr_1M dB
    echo "======================================"

    * 6. Plotting
    plot lg_db phase_margin_plot ylimit -50 100 title 'Loop Gain and Phase'
    plot psrr_plot title 'Power Supply Rejection Ratio (dB)'

.endc
"}
C {vsource.sym} 1600 -510 0 0 {name=V2 value="1.25" savecurrent=false}
C {vsource.sym} 1720 -360 0 0 {name=V7 value=0 savecurrent=false}
C {vsource.sym} 1600 -360 0 0 {name=V8 value="DC 5.5 AC 1" savecurrent=false}
C {lab_pin.sym} 1600 -390 0 0 {name=p5 sig_type=std_logic lab=VINr}
C {lab_pin.sym} 1600 -540 0 0 {name=p19 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1600 -330 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1600 -480 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {gnd.sym} 1720 -320 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/corner.sym} 1580 -230 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {lab_pin.sym} 1720 -390 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1720 -580 0 1 {name=p10 lab=IBIAS_200uA}
C {lab_pin.sym} 1720 -640 0 0 {name=p12 sig_type=std_logic lab=VINr}
C {isource.sym} 1720 -610 0 0 {name=I4 value="200u" savecurrent=false}
C {lab_pin.sym} 1600 -580 0 1 {name=p34 lab=IBIAS_10uA}
C {lab_pin.sym} 1600 -640 0 0 {name=p16 sig_type=std_logic lab=VINr}
C {isource.sym} 1600 -610 0 0 {name=I1 value="10u" savecurrent=false}
C {vsource.sym} 1720 -510 0 0 {name=V1 value="DC 3.9" savecurrent=false}
C {lab_pin.sym} 1720 -540 0 0 {name=p14 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 1720 -480 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {vsource.sym} 1600 -730 0 0 {name=V3 value="DC 1.25 AC 1" savecurrent=false}
C {lab_pin.sym} 1600 -760 0 0 {name=p38 sig_type=std_logic lab=VREFac}
C {lab_pin.sym} 1600 -700 0 0 {name=p39 sig_type=std_logic lab=VSS}
C {icdec-biomedical-pmic/xschem/power-fet/power-fet.sym} 610 -420 0 0 {name=x2}
C {lab_pin.sym} 910 -430 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 860 -380 0 0 {name=p11 lab=VFBr}
C {lab_pin.sym} 910 -320 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 930 -290 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 930 -320 0 0 {name=R3
L=235
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 930 -430 0 0 {name=R1
L=0.35
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 980 -600 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 930 -860 0 0 {name=p22 sig_type=std_logic lab=VINr}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} 70 -420 0 0 {name=x3}
C {lab_pin.sym} 240 -580 0 0 {name=p8 lab=VFBr}
C {lab_pin.sym} 240 -620 0 0 {name=p17 lab=VREF}
C {lab_pin.sym} 320 -730 0 0 {name=p24 lab=IBIAS_200uA}
C {ipin.sym} 370 -730 0 1 {name=p25 lab=VINr}
C {iopin.sym} 350 -470 0 0 {name=p27 lab=VSS}
C {lab_pin.sym} 1300 -470 0 1 {name=p18 sig_type=std_logic lab=VREGac}
C {isource.sym} 1240 -440 0 0 {name=ILOAD value="50m"
 savecurrent=false}
C {lab_pin.sym} 1140 -300 0 1 {name=p23 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1120 -420 0 0 {name=M3
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 550 -470 1 0 {name=C1 model=cap_mim_m3_1 W=25 L=25 MF=8 spiceprefix=X}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 650 -450 3 0 {name=M4
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
C {lab_pin.sym} 650 -430 0 0 {name=p40 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1240 -300 0 0 {name=p42 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 280 -210 0 0 {name=p1 sig_type=std_logic lab=B2}
C {lab_pin.sym} 280 -300 0 0 {name=p7 sig_type=std_logic lab=B1}
C {lab_pin.sym} 370 -180 0 1 {name=p26 sig_type=std_logic lab=VSS}
C {res.sym} 200 -350 0 0 {name=R2
value=68
footprint=1206
device=resistor
m=1}
C {res.sym} 200 -220 0 0 {name=R4
value=100
footprint=1206
device=resistor
m=1}
C {res.sym} 200 -110 0 0 {name=R5
value=1600
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 370 -400 0 1 {name=p28 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 340 -110 0 1 {name=M1
W=40
L=0.5
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 470 -260 0 1 {name=p29 sig_type=std_logic lab=UVLO}
C {lab_pin.sym} 200 -80 0 1 {name=p30 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 320 -80 0 1 {name=p31 sig_type=std_logic lab=VSS}
C {icdec-biomedical-pmic/cmos_comparator/komparator_histeris.sym} 600 -120 0 0 {name=x1}
C {lab_pin.sym} 320 -240 0 0 {name=p20 lab=VREF}
