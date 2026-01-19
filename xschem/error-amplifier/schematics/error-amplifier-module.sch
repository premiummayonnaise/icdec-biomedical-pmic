v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 480 -400 510 -400 {lab=V_GATE}
N 510 -400 510 -140 {lab=V_GATE}
N 480 -140 510 -140 {lab=V_GATE}
N 380 -310 560 -310 {lab=VSS}
N 560 -310 560 -50 {lab=VSS}
N 380 -50 560 -50 {lab=VSS}
N 400 -490 630 -490 {lab=VIN}
N 630 -490 630 -230 {lab=VIN}
N 400 -230 630 -230 {lab=VIN}
N 180 -420 270 -420 {lab=VREF}
N 180 -420 180 -120 {lab=VREF}
N 180 -120 270 -120 {lab=VREF}
N 220 -380 270 -380 {lab=VFB}
N 220 -380 220 -160 {lab=VFB}
N 220 -160 270 -160 {lab=VFB}
N 90 -330 220 -330 {lab=VFB}
N 90 -230 180 -230 {lab=VREF}
N 350 -530 350 -490 {lab=IBIAS_100uA}
N 350 -270 350 -230 {lab=IBIAS_10uA}
N 630 -360 700 -360 {lab=VIN}
N 510 -280 790 -280 {lab=V_GATE}
N 560 -190 700 -190 {lab=VSS}
C {icdec-biomedical-pmic/xschem/error-amplifier/schematics/two-stage-miller.sym} 100 -220 0 0 {name=x1}
C {icdec-biomedical-pmic/xschem/5t-ota/schematics/5t-ota.sym} 170 20 0 0 {name=x2}
C {ipin.sym} 90 -330 0 0 {name=p1 lab=VFB}
C {ipin.sym} 90 -230 0 0 {name=p2 lab=VREF}
C {ipin.sym} 350 -270 0 0 {name=p3 lab=IBIAS_10uA}
C {ipin.sym} 350 -530 0 0 {name=p4 lab=IBIAS_200uA}
C {ipin.sym} 700 -360 0 1 {name=p5 lab=VIN}
C {opin.sym} 790 -280 0 0 {name=p6 lab=V_GATE}
C {iopin.sym} 700 -190 0 0 {name=p7 lab=VSS}
