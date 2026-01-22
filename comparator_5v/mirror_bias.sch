v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -280 -120 -210 -120 {lab=Isource}
N -250 -170 -250 -120 {lab=Isource}
N -320 -170 -250 -170 {lab=Isource}
N -320 -170 -320 -150 {lab=Isource}
N -320 -120 -320 -90 {lab=VSS}
N -170 -120 -170 -90 {lab=VSS}
N -320 -90 -320 -70 {lab=VSS}
N -320 -70 -170 -70 {lab=VSS}
N -170 -90 -170 -70 {lab=VSS}
N -340 -70 -320 -70 {lab=VSS}
N -340 -170 -320 -170 {lab=Isource}
N -170 -170 -170 -150 {lab=OUT}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -190 -120 0 0 {name=M8
W=6
L=0.75
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -300 -120 0 1 {name=M1
W=6
L=0.75
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
C {ipin.sym} -340 -70 0 0 {name=p1 lab=VSS}
C {ipin.sym} -340 -170 0 0 {name=p2 lab=Is}
C {opin.sym} -170 -170 0 0 {name=p3 lab=OUT}
