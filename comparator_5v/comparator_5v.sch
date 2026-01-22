v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -730 -340 -730 -260 {lab=#net1}
N -790 -300 -730 -300 {lab=#net1}
N -830 -410 -830 -330 {lab=VDD}
N -730 -410 -730 -400 {lab=VDD}
N -730 -300 -650 -300 {lab=#net1}
N -650 -370 -650 -300 {lab=#net1}
N -650 -370 -610 -370 {lab=#net1}
N -690 -370 -650 -370 {lab=#net1}
N -570 -410 -570 -400 {lab=VDD}
N -830 -410 -570 -410 {lab=VDD}
N -450 -410 -450 -400 {lab=VDD}
N -570 -410 -450 -410 {lab=VDD}
N -300 -410 -300 -400 {lab=VDD}
N -450 -410 -300 -410 {lab=VDD}
N -410 -370 -340 -370 {lab=#net2}
N -300 -300 -230 -300 {lab=#net2}
N -300 -340 -300 -300 {lab=#net2}
N -370 -320 -300 -320 {lab=#net2}
N -370 -370 -370 -320 {lab=#net2}
N -190 -410 -190 -330 {lab=VDD}
N -300 -410 -190 -410 {lab=VDD}
N -300 -300 -300 -260 {lab=#net2}
N -730 -280 -520 -280 {lab=#net1}
N -520 -280 -450 -280 {lab=#net1}
N -450 -340 -450 -280 {lab=#net1}
N -570 -340 -570 -300 {lab=#net2}
N -570 -300 -570 -270 {lab=#net2}
N -570 -270 -300 -270 {lab=#net2}
N -730 -200 -730 -180 {lab=#net3}
N -730 -180 -300 -180 {lab=#net3}
N -300 -200 -300 -180 {lab=#net3}
N -510 -180 -510 -170 {lab=#net3}
N -190 -270 -190 -120 {lab=OUT}
N -830 -270 -830 -120 {lab=#net4}
N -790 -90 -230 -90 {lab=B2}
N -830 -40 -190 -40 {lab=VSS}
N -190 -60 -190 -40 {lab=VSS}
N -510 -110 -510 -40 {lab=VSS}
N -190 -410 -170 -410 {lab=VDD}
N -190 -40 -180 -40 {lab=VSS}
N -260 -230 -250 -230 {lab=IN}
N -780 -230 -770 -230 {lab=REF}
N -710 -110 -690 -110 {lab=B2}
N -710 -110 -710 -90 {lab=B2}
N -560 -140 -550 -140 {lab=B1}
N -190 -210 -180 -210 {lab=OUT}
N -830 -330 -830 -300 {lab=VDD}
N -730 -400 -730 -370 {lab=VDD}
N -570 -400 -570 -370 {lab=VDD}
N -450 -400 -450 -370 {lab=VDD}
N -300 -400 -300 -370 {lab=VDD}
N -190 -330 -190 -300 {lab=VDD}
N -300 -230 -300 -200 {lab=#net3}
N -190 -90 -190 -60 {lab=VSS}
N -510 -140 -510 -110 {lab=VSS}
N -730 -230 -730 -200 {lab=#net3}
N -830 -60 -830 -40 {lab=VSS}
N -830 -90 -830 -60 {lab=VSS}
C {iopin.sym} -170 -410 0 0 {name=p1 lab=VDD}
C {iopin.sym} -180 -40 0 0 {name=p2 lab=VSS}
C {opin.sym} -180 -210 0 0 {name=p7 lab=OUT}
C {ipin.sym} -260 -230 0 1 {name=p3 lab=IN}
C {ipin.sym} -780 -230 0 0 {name=p4 lab=REF}
C {ipin.sym} -560 -140 0 0 {name=p6 lab=B1}
C {ipin.sym} -690 -110 0 1 {name=p5 lab=B2}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -710 -370 0 1 {name=M12
W=7.5
L=0.75
nf=2
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -590 -370 0 0 {name=M1
W=7.5
L=0.75
nf=2
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -430 -370 0 1 {name=M3
W=7.5
L=0.75
nf=2
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -320 -370 0 0 {name=M5
W=7.5
L=0.75
nf=2
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -210 -300 0 0 {name=M6
W=7.5
L=0.75
nf=2
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -750 -230 0 0 {name=M2
W=4.16
L=0.5
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -280 -230 0 1 {name=M7
W=4.16
L=0.5
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -530 -140 0 0 {name=M8
W=6
L=0.75
nf=2
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -810 -90 0 1 {name=M9
W=6
L=0.75
nf=2
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -210 -90 0 0 {name=M10
W=6
L=0.75
nf=2
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -810 -300 0 1 {name=M4
W=7.5
L=0.75
nf=2
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
