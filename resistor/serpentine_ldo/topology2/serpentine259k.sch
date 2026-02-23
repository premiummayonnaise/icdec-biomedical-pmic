v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -1610 -1090 -1600 -1090 {lab=VSS}
N -1580 -1130 -1580 -1120 {lab=A}
N -1580 -1060 -1580 -1050 {lab=B}
C {sky130_fd_pr/res_xhigh_po.sym} -1580 -1090 0 0 {name=R1
W=5
L=643.6
model=res_xhigh_po
spiceprefix=X
mult=1}
C {ipin.sym} -1610 -1090 0 0 {name=p1 lab=VSS}
C {ipin.sym} -1580 -1130 0 0 {name=p2 lab=A}
C {ipin.sym} -1580 -1050 0 0 {name=p3 lab=B}
