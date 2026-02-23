v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -710 -340 -710 -260 {lab=#net1}
N -770 -300 -710 -300 {lab=#net1}
N -810 -410 -810 -330 {lab=VDD}
N -710 -410 -710 -400 {lab=VDD}
N -710 -300 -630 -300 {lab=#net1}
N -630 -370 -630 -300 {lab=#net1}
N -630 -370 -590 -370 {lab=#net1}
N -670 -370 -630 -370 {lab=#net1}
N -550 -410 -550 -400 {lab=VDD}
N -810 -410 -550 -410 {lab=VDD}
N -430 -410 -430 -400 {lab=VDD}
N -550 -410 -430 -410 {lab=VDD}
N -280 -410 -280 -400 {lab=VDD}
N -430 -410 -280 -410 {lab=VDD}
N -390 -370 -320 -370 {lab=#net2}
N -280 -300 -210 -300 {lab=#net2}
N -280 -340 -280 -300 {lab=#net2}
N -350 -320 -280 -320 {lab=#net2}
N -350 -370 -350 -320 {lab=#net2}
N -170 -410 -170 -330 {lab=VDD}
N -280 -410 -170 -410 {lab=VDD}
N -280 -300 -280 -260 {lab=#net2}
N -710 -280 -500 -280 {lab=#net1}
N -500 -280 -430 -280 {lab=#net1}
N -430 -340 -430 -280 {lab=#net1}
N -550 -340 -550 -300 {lab=#net2}
N -550 -300 -550 -270 {lab=#net2}
N -550 -270 -280 -270 {lab=#net2}
N -710 -200 -710 -180 {lab=#net3}
N -710 -180 -280 -180 {lab=#net3}
N -280 -200 -280 -180 {lab=#net3}
N -490 -180 -490 -170 {lab=#net3}
N -170 -270 -170 -120 {lab=OUT}
N -810 -270 -810 -120 {lab=#net4}
N -770 -90 -210 -90 {lab=B2}
N -810 -40 -170 -40 {lab=VSS}
N -170 -60 -170 -40 {lab=VSS}
N -490 -110 -490 -40 {lab=VSS}
N -170 -410 -150 -410 {lab=VDD}
N -170 -40 -160 -40 {lab=VSS}
N -240 -230 -230 -230 {lab=IN}
N -760 -230 -750 -230 {lab=REF}
N -690 -110 -670 -110 {lab=B2}
N -690 -110 -690 -90 {lab=B2}
N -540 -140 -530 -140 {lab=B1}
N -170 -210 -160 -210 {lab=OUT}
N -810 -330 -810 -300 {lab=VDD}
N -710 -400 -710 -370 {lab=VDD}
N -550 -400 -550 -370 {lab=VDD}
N -430 -400 -430 -370 {lab=VDD}
N -280 -400 -280 -370 {lab=VDD}
N -170 -330 -170 -300 {lab=VDD}
N -280 -230 -280 -200 {lab=#net3}
N -170 -90 -170 -60 {lab=VSS}
N -490 -140 -490 -110 {lab=VSS}
N -710 -230 -710 -200 {lab=#net3}
N -810 -60 -810 -40 {lab=VSS}
N -810 -90 -810 -60 {lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} -690 -370 0 1 {name=M1
W=3.9
L=0.75
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -730 -230 0 0 {name=M2
W=3.4
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
C {sky130_fd_pr/pfet_01v8.sym} -570 -370 0 0 {name=M3
W=3.9
L=0.75
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -790 -300 0 1 {name=M4
W=3.9
L=0.75
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -410 -370 0 1 {name=M5
W=3.9
L=0.75
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -300 -370 0 0 {name=M6
W=3.9
L=0.75
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -190 -300 0 0 {name=M7
W=3.9
L=0.75
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -260 -230 0 1 {name=M8
W=3.4
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
C {sky130_fd_pr/nfet_01v8.sym} -510 -140 0 0 {name=M9
W=2.1
L=0.75
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
C {sky130_fd_pr/nfet_01v8.sym} -190 -90 0 0 {name=M10
W=2.1
L=0.75
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
C {sky130_fd_pr/nfet_01v8.sym} -790 -90 0 1 {name=M11
W=2.1
L=0.75
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
C {iopin.sym} -150 -410 0 0 {name=p1 lab=VDD}
C {iopin.sym} -160 -40 0 0 {name=p2 lab=VSS}
C {ipin.sym} -230 -230 0 0 {name=p3 lab=IN}
C {ipin.sym} -760 -230 0 1 {name=p4 lab=REF}
C {ipin.sym} -670 -110 0 0 {name=p5 lab=B2}
C {ipin.sym} -540 -140 0 1 {name=p6 lab=B1}
C {opin.sym} -160 -210 0 0 {name=p14 lab=OUT}
