v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1740 -330 1740 -320 {lab=GND}
N 780 -490 870 -490 {lab=#net1}
N 1050 -290 1050 -270 {lab=VFB}
N 1050 -370 1050 -350 {lab=VREGac}
N 520 -610 550 -610 {lab=#net1}
N 440 -700 670 -700 {lab=VINr}
N 220 -630 310 -630 {lab=VREF}
N 260 -590 310 -590 {lab=VFB}
N 130 -590 260 -590 {lab=VFB}
N 130 -630 220 -630 {lab=VREF}
N 390 -740 390 -700 {lab=IBIAS_200uA}
N 670 -700 740 -700 {lab=VINr}
N 1050 -750 1050 -620 {lab=VINr}
N 550 -610 780 -610 {lab=#net1}
N 780 -610 780 -510 {lab=#net1}
N 1050 -360 1190 -360 {lab=VREGac}
N 1030 -490 1100 -490 {lab=VSS}
N 1190 -360 1420 -360 {lab=VREGac}
N 1050 -270 1050 -250 {lab=VFB}
N 980 -270 1050 -270 {lab=VFB}
N 1050 -250 1050 -240 {lab=VFB}
N 1050 -270 1090 -270 {lab=VFB}
N 580 -90 600 -90 {lab=#net1}
N 820 -490 820 -360 {lab=#net1}
N 1250 -210 1250 -190 {lab=VSS}
N 1210 -360 1210 -310 {lab=VREGac}
N 1250 -360 1250 -340 {lab=VREGac}
N 1250 -310 1250 -280 {lab=VSS}
N 1250 -280 1250 -270 {lab=VSS}
N 1250 -270 1250 -210 {lab=VSS}
N 660 -90 700 -90 {lab=#net2}
N 1000 -360 1050 -360 {lab=VREGac}
N 820 -360 820 -330 {lab=#net1}
N 630 -330 820 -330 {lab=#net1}
N 630 -330 630 -230 {lab=#net1}
N 560 -230 630 -230 {lab=#net1}
N 560 -230 560 -90 {lab=#net1}
N 560 -90 580 -90 {lab=#net1}
N 760 -90 820 -90 {lab=VREGac}
N 820 -300 820 -90 {lab=VREGac}
N 820 -300 970 -300 {lab=VREGac}
N 970 -360 970 -300 {lab=VREGac}
N 970 -360 1000 -360 {lab=VREGac}
N 780 -500 780 -490 {lab=#net1}
N 780 -510 780 -500 {lab=#net1}
C {code_shown.sym} 1850 -970 0 0 {name="AC-SIM" only_toplevel=false value="
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
C {vsource.sym} 1620 -510 0 0 {name=V2 value="1.25" savecurrent=false}
C {vsource.sym} 1740 -360 0 0 {name=V7 value=0 savecurrent=false}
C {vsource.sym} 1620 -360 0 0 {name=V8 value="DC 5 AC 1" savecurrent=false}
C {lab_pin.sym} 1620 -390 0 0 {name=p5 sig_type=std_logic lab=VINr}
C {lab_pin.sym} 1620 -540 0 0 {name=p19 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1620 -330 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1620 -480 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {gnd.sym} 1740 -320 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/corner.sym} 1620 -270 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {lab_pin.sym} 1740 -390 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1740 -580 0 1 {name=p10 lab=IBIAS_200uA}
C {lab_pin.sym} 1740 -640 0 0 {name=p12 sig_type=std_logic lab=VINr}
C {isource.sym} 1740 -610 0 0 {name=I4 value="200u" savecurrent=false}
C {lab_pin.sym} 1620 -580 0 1 {name=p34 lab=IBIAS_10uA}
C {lab_pin.sym} 1620 -640 0 0 {name=p16 sig_type=std_logic lab=VINr}
C {isource.sym} 1620 -610 0 0 {name=I1 value="10u" savecurrent=false}
C {icdec-biomedical-pmic/xschem/power-fet/power-fet.sym} 730 -310 0 0 {name=x1}
C {lab_pin.sym} 1030 -320 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_2p85.sym} 1050 -320 0 0 {name=R4
L=0.35
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {lab_pin.sym} 1100 -490 0 1 {name=p26 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1050 -750 0 0 {name=p28 sig_type=std_logic lab=VINr}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} 140 -430 0 0 {name=x5}
C {ipin.sym} 130 -590 0 0 {name=p29 lab=VFB}
C {ipin.sym} 130 -630 0 0 {name=p30 lab=VREF}
C {ipin.sym} 390 -740 0 0 {name=p32 lab=IBIAS_200uA}
C {ipin.sym} 740 -700 0 1 {name=p33 lab=VINr}
C {iopin.sym} 420 -520 0 0 {name=p35 lab=VSS}
C {lab_pin.sym} 1420 -360 0 1 {name=p36 sig_type=std_logic lab=VREGac}
C {isource.sym} 1420 -330 0 0 {name=I3 value="5m" savecurrent=false}
C {lab_pin.sym} 1420 -300 0 0 {name=p37 sig_type=std_logic lab=VSS}
C {vsource.sym} 1740 -510 0 0 {name=V1 value="DC 5" savecurrent=false}
C {lab_pin.sym} 1740 -540 0 0 {name=p14 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 1740 -480 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {ipin.sym} 980 -270 0 0 {name=p20 lab=VFB}
C {lab_pin.sym} 1030 -210 0 0 {name=p43 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1050 -180 0 0 {name=p44 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 1050 -210 0 0 {name=R2
L=210
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 1090 -270 0 1 {name=p46 sig_type=std_logic lab=PROBE}
C {vsource.sym} 1620 -730 0 0 {name=V3 value="DC 1.25 AC 1" savecurrent=false}
C {lab_pin.sym} 1620 -760 0 0 {name=p38 sig_type=std_logic lab=VREFac}
C {lab_pin.sym} 1620 -700 0 0 {name=p39 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} 630 -90 1 0 {name=C3 model=cap_mim_m3_1 W=25 L=25 MF=8 spiceprefix=X}
C {lab_pin.sym} 1250 -190 0 1 {name=p41 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1230 -310 0 0 {name=M2
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
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 730 -70 3 0 {name=M1
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
C {lab_pin.sym} 730 -50 0 0 {name=p1 sig_type=std_logic lab=VSS}
