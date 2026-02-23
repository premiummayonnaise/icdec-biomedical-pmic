v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -710 -370 -710 -290 {lab=#net1}
N -770 -330 -710 -330 {lab=#net1}
N -810 -440 -810 -360 {lab=VDD}
N -710 -440 -710 -430 {lab=VDD}
N -710 -330 -630 -330 {lab=#net1}
N -630 -400 -630 -330 {lab=#net1}
N -630 -400 -590 -400 {lab=#net1}
N -670 -400 -630 -400 {lab=#net1}
N -550 -440 -550 -430 {lab=VDD}
N -810 -440 -550 -440 {lab=VDD}
N -430 -440 -430 -430 {lab=VDD}
N -550 -440 -430 -440 {lab=VDD}
N -280 -440 -280 -430 {lab=VDD}
N -430 -440 -280 -440 {lab=VDD}
N -390 -400 -320 -400 {lab=#net2}
N -280 -330 -210 -330 {lab=#net2}
N -280 -370 -280 -330 {lab=#net2}
N -350 -350 -280 -350 {lab=#net2}
N -350 -400 -350 -350 {lab=#net2}
N -170 -440 -170 -360 {lab=VDD}
N -280 -440 -170 -440 {lab=VDD}
N -280 -330 -280 -290 {lab=#net2}
N -710 -310 -500 -310 {lab=#net1}
N -500 -310 -430 -310 {lab=#net1}
N -430 -370 -430 -310 {lab=#net1}
N -550 -370 -550 -330 {lab=#net2}
N -550 -330 -550 -300 {lab=#net2}
N -550 -300 -280 -300 {lab=#net2}
N -710 -230 -710 -210 {lab=#net3}
N -710 -210 -280 -210 {lab=#net3}
N -280 -230 -280 -210 {lab=#net3}
N -490 -210 -490 -200 {lab=#net3}
N -170 -300 -170 -150 {lab=OUT}
N -810 -300 -810 -150 {lab=#net4}
N -770 -120 -210 -120 {lab=B2}
N -810 -70 -170 -70 {lab=VSS}
N -170 -90 -170 -70 {lab=VSS}
N -490 -140 -490 -70 {lab=VSS}
N -170 -440 -150 -440 {lab=VDD}
N -170 -70 -160 -70 {lab=VSS}
N -240 -260 -230 -260 {lab=IN}
N -760 -260 -750 -260 {lab=REF}
N -690 -140 -670 -140 {lab=B2}
N -690 -140 -690 -120 {lab=B2}
N -540 -170 -530 -170 {lab=B1}
N -170 -240 -160 -240 {lab=OUT}
N -810 -360 -810 -330 {lab=VDD}
N -710 -430 -710 -400 {lab=VDD}
N -550 -430 -550 -400 {lab=VDD}
N -430 -430 -430 -400 {lab=VDD}
N -280 -430 -280 -400 {lab=VDD}
N -170 -360 -170 -330 {lab=VDD}
N -170 -120 -170 -90 {lab=VSS}
N -490 -170 -490 -140 {lab=VSS}
N -810 -90 -810 -70 {lab=VSS}
N -810 -120 -810 -90 {lab=VSS}
N -710 -260 -600 -260 {lab=VSS}
N -600 -260 -600 -70 {lab=VSS}
N -390 -260 -280 -260 {lab=VSS}
N -390 -260 -390 -70 {lab=VSS}
C {iopin.sym} -150 -440 0 0 {name=p1 lab=VDD}
C {iopin.sym} -160 -70 0 0 {name=p2 lab=VSS}
C {opin.sym} -160 -240 0 0 {name=p7 lab=OUT}
C {ipin.sym} -240 -260 0 1 {name=p3 lab=IN}
C {ipin.sym} -760 -260 0 0 {name=p4 lab=REF}
C {ipin.sym} -540 -170 0 0 {name=p6 lab=B1}
C {ipin.sym} -670 -140 0 1 {name=p5 lab=B2}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -690 -400 0 1 {name=M12
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -570 -400 0 0 {name=M1
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -410 -400 0 1 {name=M3
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -300 -400 0 0 {name=M5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -190 -330 0 0 {name=M6
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -730 -260 0 0 {name=M2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -260 -260 0 1 {name=M7
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -510 -170 0 0 {name=M8
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -790 -120 0 1 {name=M9
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -190 -120 0 0 {name=M10
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -790 -330 0 1 {name=M4
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
