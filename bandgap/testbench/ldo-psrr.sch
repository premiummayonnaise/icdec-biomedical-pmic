v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1720 -330 1720 -320 {lab=GND}
N 760 -490 850 -490 {lab=#net1}
N 1030 -290 1030 -270 {lab=VFB}
N 1030 -370 1030 -350 {lab=VREGac}
N 500 -610 530 -610 {lab=#net1}
N 500 -350 530 -350 {lab=#net1}
N 400 -520 580 -520 {lab=VSS}
N 580 -520 580 -260 {lab=VSS}
N 400 -260 580 -260 {lab=VSS}
N 420 -700 650 -700 {lab=VINr}
N 650 -700 650 -440 {lab=VINr}
N 420 -440 650 -440 {lab=VINr}
N 200 -630 290 -630 {lab=VREF}
N 200 -630 200 -330 {lab=VREF}
N 200 -330 290 -330 {lab=VREF}
N 240 -590 290 -590 {lab=VFB}
N 240 -590 240 -370 {lab=VFB}
N 240 -370 290 -370 {lab=VFB}
N 110 -540 240 -540 {lab=VFB}
N 110 -440 200 -440 {lab=VREF}
N 370 -740 370 -700 {lab=IBIAS_200uA}
N 370 -480 370 -440 {lab=IBIAS_10uA}
N 650 -570 720 -570 {lab=VINr}
N 580 -400 720 -400 {lab=VSS}
N 1030 -750 1030 -620 {lab=VINr}
N 530 -610 760 -610 {lab=#net1}
N 760 -610 760 -510 {lab=#net1}
N 530 -350 760 -350 {lab=#net1}
N 760 -510 760 -350 {lab=#net1}
N 1030 -360 1170 -360 {lab=VREGac}
N 1010 -490 1080 -490 {lab=VSS}
N 1170 -360 1400 -360 {lab=VREGac}
N 1030 -270 1030 -250 {lab=VFB}
N 960 -270 1030 -270 {lab=VFB}
N 1030 -250 1030 -240 {lab=VFB}
N 1030 -270 1070 -270 {lab=VFB}
N 560 -90 580 -90 {lab=#net1}
N 800 -490 800 -360 {lab=#net1}
N 1230 -210 1230 -190 {lab=VSS}
N 1190 -360 1190 -310 {lab=VREGac}
N 1230 -360 1230 -340 {lab=VREGac}
N 1230 -310 1230 -280 {lab=VSS}
N 1230 -280 1230 -270 {lab=VSS}
N 1230 -270 1230 -210 {lab=VSS}
N 640 -90 680 -90 {lab=#net2}
N 980 -360 1030 -360 {lab=VREGac}
N 800 -360 800 -330 {lab=#net1}
N 610 -330 800 -330 {lab=#net1}
N 610 -330 610 -230 {lab=#net1}
N 540 -230 610 -230 {lab=#net1}
N 540 -230 540 -90 {lab=#net1}
N 540 -90 560 -90 {lab=#net1}
N 740 -90 800 -90 {lab=VREGac}
N 800 -300 800 -90 {lab=VREGac}
N 800 -300 950 -300 {lab=VREGac}
N 950 -360 950 -300 {lab=VREGac}
N 950 -360 980 -360 {lab=VREGac}
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
C {vsource.sym} 1600 -360 0 0 {name=V8 value="DC 5 AC 1" savecurrent=false}
C {lab_pin.sym} 1600 -390 0 0 {name=p5 sig_type=std_logic lab=VINr}
C {lab_pin.sym} 1600 -540 0 0 {name=p19 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1600 -330 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1600 -480 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {gnd.sym} 1720 -320 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/corner.sym} 1600 -270 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {lab_pin.sym} 1720 -390 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1720 -580 0 1 {name=p10 lab=IBIAS_200uA}
C {lab_pin.sym} 1720 -640 0 0 {name=p12 sig_type=std_logic lab=VINr}
C {isource.sym} 1720 -610 0 0 {name=I4 value="200u" savecurrent=false}
C {lab_pin.sym} 1600 -580 0 1 {name=p34 lab=IBIAS_10uA}
C {lab_pin.sym} 1600 -640 0 0 {name=p16 sig_type=std_logic lab=VINr}
C {isource.sym} 1600 -610 0 0 {name=I1 value="10u" savecurrent=false}
C {lab_pin.sym} 1010 -320 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_2p85.sym} 1030 -320 0 0 {name=R4
L=0.35
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 1080 -490 0 1 {name=p26 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1030 -750 0 0 {name=p28 sig_type=std_logic lab=VINr}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} 120 -430 0 0 {name=x5}
C {icdec-biomedical-pmic/xschem/5t-ota/schematics/5t-ota.sym} 190 -190 0 0 {name=x6}
C {ipin.sym} 110 -540 0 0 {name=p29 lab=VFB}
C {ipin.sym} 110 -440 0 0 {name=p30 lab=VREF}
C {ipin.sym} 370 -480 0 0 {name=p31 lab=IBIAS_10uA}
C {ipin.sym} 370 -740 0 0 {name=p32 lab=IBIAS_200uA}
C {ipin.sym} 720 -570 0 1 {name=p33 lab=VINr}
C {iopin.sym} 720 -400 0 0 {name=p35 lab=VSS}
C {lab_pin.sym} 1400 -360 0 1 {name=p36 sig_type=std_logic lab=VREGac}
C {isource.sym} 1400 -330 0 0 {name=I3 value="5m" savecurrent=false}
C {lab_pin.sym} 1400 -300 0 0 {name=p37 sig_type=std_logic lab=VSS}
C {vsource.sym} 1720 -510 0 0 {name=V1 value="DC 3" savecurrent=false}
C {lab_pin.sym} 1720 -540 0 0 {name=p14 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 1720 -480 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {ipin.sym} 960 -270 0 0 {name=p20 lab=VFB}
C {lab_pin.sym} 1010 -210 0 0 {name=p43 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1030 -180 0 0 {name=p44 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 1030 -210 0 0 {name=R2
L=210
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 1070 -270 0 1 {name=p46 sig_type=std_logic lab=PROBE}
C {vsource.sym} 1600 -730 0 0 {name=V3 value="DC 1.25 AC 1" savecurrent=false}
C {lab_pin.sym} 1600 -760 0 0 {name=p38 sig_type=std_logic lab=VREFac}
C {lab_pin.sym} 1600 -700 0 0 {name=p39 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} 610 -90 1 0 {name=C3 model=cap_mim_m3_1 W=25 L=25 MF=8 spiceprefix=X}
C {lab_pin.sym} 1230 -190 0 1 {name=p41 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1210 -310 0 0 {name=M2
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
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 710 -70 3 0 {name=M1
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
C {lab_pin.sym} 710 -50 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {icdec-biomedical-pmic/xschem/power-fet/power-fet.sym} 710 -310 0 0 {name=x1}
