v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 500 -450 530 -450 {lab=EA_OUT}
N 500 -190 530 -190 {lab=xxx}
N 400 -360 580 -360 {lab=VSS}
N 580 -360 580 -100 {lab=VSS}
N 400 -100 580 -100 {lab=VSS}
N 420 -540 650 -540 {lab=VIN}
N 650 -540 650 -280 {lab=VIN}
N 420 -280 650 -280 {lab=VIN}
N 200 -470 290 -470 {lab=VREF}
N 200 -470 200 -170 {lab=VREF}
N 200 -170 290 -170 {lab=VREF}
N 240 -430 290 -430 {lab=VFB}
N 240 -430 240 -210 {lab=VFB}
N 240 -210 290 -210 {lab=VFB}
N 110 -380 240 -380 {lab=VFB}
N 110 -280 200 -280 {lab=VREF}
N 370 -580 370 -540 {lab=IBIAS_200uA}
N 370 -320 370 -280 {lab=IBIAS_10uA}
N 650 -410 720 -410 {lab=VIN}
N 580 -240 720 -240 {lab=VSS}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} 120 -270 0 0 {name=x3}
C {icdec-biomedical-pmic/xschem/5t-ota/schematics/5t-ota.sym} 190 -30 0 0 {name=x4}
C {ipin.sym} 110 -380 0 0 {name=p4 lab=VFB}
C {ipin.sym} 110 -280 0 0 {name=p8 lab=VREF}
C {ipin.sym} 370 -320 0 0 {name=p23 lab=IBIAS_10uA}
C {ipin.sym} 370 -580 0 0 {name=p24 lab=IBIAS_200uA}
C {ipin.sym} 720 -410 0 1 {name=p25 lab=VIN}
C {iopin.sym} 720 -240 0 0 {name=p27 lab=VSS}
C {opin.sym} 530 -450 0 0 {name=p1 lab=EA_OUT}
C {opin.sym} 530 -190 0 0 {name=p2 lab=BUFFER_OUT}
