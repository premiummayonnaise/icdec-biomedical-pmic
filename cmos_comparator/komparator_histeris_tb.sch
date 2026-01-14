v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 340 -350 340 -270 {lab=#net1}
N 280 -310 340 -310 {lab=#net1}
N 240 -420 240 -340 {lab=VDD}
N 340 -420 340 -410 {lab=VDD}
N 340 -310 420 -310 {lab=#net1}
N 420 -380 420 -310 {lab=#net1}
N 420 -380 460 -380 {lab=#net1}
N 380 -380 420 -380 {lab=#net1}
N 500 -420 500 -410 {lab=VDD}
N 240 -420 500 -420 {lab=VDD}
N 620 -420 620 -410 {lab=VDD}
N 500 -420 620 -420 {lab=VDD}
N 770 -420 770 -410 {lab=VDD}
N 620 -420 770 -420 {lab=VDD}
N 660 -380 730 -380 {lab=#net2}
N 770 -310 840 -310 {lab=#net2}
N 770 -350 770 -310 {lab=#net2}
N 700 -330 770 -330 {lab=#net2}
N 700 -380 700 -330 {lab=#net2}
N 880 -420 880 -340 {lab=VDD}
N 770 -420 880 -420 {lab=VDD}
N 770 -310 770 -270 {lab=#net2}
N 340 -290 550 -290 {lab=#net1}
N 550 -290 620 -290 {lab=#net1}
N 620 -350 620 -290 {lab=#net1}
N 500 -350 500 -310 {lab=#net2}
N 500 -310 500 -280 {lab=#net2}
N 500 -280 770 -280 {lab=#net2}
N 340 -210 340 -190 {lab=#net3}
N 340 -190 770 -190 {lab=#net3}
N 770 -210 770 -190 {lab=#net3}
N 560 -190 560 -180 {lab=#net3}
N 880 -280 880 -130 {lab=OUT}
N 240 -280 240 -130 {lab=#net4}
N 280 -100 840 -100 {lab=B2}
N 240 -50 880 -50 {lab=VSS}
N 880 -70 880 -50 {lab=VSS}
N 560 -120 560 -50 {lab=VSS}
N 880 -420 900 -420 {lab=VDD}
N 880 -50 890 -50 {lab=VSS}
N 810 -240 820 -240 {lab=IN}
N 290 -240 300 -240 {lab=REF}
N 360 -120 380 -120 {lab=B2}
N 360 -120 360 -100 {lab=B2}
N 510 -150 520 -150 {lab=B1}
N 880 -220 890 -220 {lab=OUT}
N 240 -340 240 -310 {lab=VDD}
N 340 -410 340 -380 {lab=VDD}
N 500 -410 500 -380 {lab=VDD}
N 620 -410 620 -380 {lab=VDD}
N 770 -410 770 -380 {lab=VDD}
N 880 -340 880 -310 {lab=VDD}
N 770 -240 770 -210 {lab=#net3}
N 880 -100 880 -70 {lab=VSS}
N 560 -150 560 -120 {lab=VSS}
N 340 -240 340 -210 {lab=#net3}
N 240 -70 240 -50 {lab=VSS}
N 240 -100 240 -70 {lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 360 -380 0 1 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 320 -240 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} 480 -380 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 260 -310 0 1 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} 640 -380 0 1 {name=M5
W=1
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} 750 -380 0 0 {name=M6
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
C {sky130_fd_pr/pfet_01v8.sym} 860 -310 0 0 {name=M7
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
C {sky130_fd_pr/nfet_01v8.sym} 790 -240 0 1 {name=M8
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
C {sky130_fd_pr/nfet_01v8.sym} 540 -150 0 0 {name=M9
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
C {sky130_fd_pr/nfet_01v8.sym} 860 -100 0 0 {name=M10
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
C {sky130_fd_pr/nfet_01v8.sym} 260 -100 0 1 {name=M11
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
C {iopin.sym} 900 -420 0 0 {name=p1 lab=VDD}
C {iopin.sym} 890 -50 0 0 {name=p2 lab=VSS}
C {iopin.sym} 820 -240 0 0 {name=p3 lab=IN}
C {iopin.sym} 290 -240 0 1 {name=p4 lab=REF}
C {iopin.sym} 380 -120 0 0 {name=p5 lab=B2}
C {iopin.sym} 510 -150 0 1 {name=p6 lab=B1}
C {sky130_fd_pr/corner.sym} 1030 -410 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code_shown.sym} 1040 -250 0 0 {name=s1 only_toplevel=false value="
.control
  save all
  dc v4 0 3 0.01
  plot v(IN) v(REF) v(OUT)
.endc
"}
C {vsource.sym} 70 -340 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 70 -230 0 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} 70 -110 0 0 {name=V3 value=1.25 savecurrent=false}
C {vsource.sym} 980 -80 0 0 {name=V4 value=1  savecurrent=false}
C {iopin.sym} 70 -370 0 0 {name=p7 lab=VDD}
C {iopin.sym} 70 -310 0 0 {name=p8 lab=VSS}
C {iopin.sym} 70 -260 0 0 {name=p9 lab=VSS}
C {gnd.sym} 70 -200 0 0 {name=l1 lab=GND}
C {iopin.sym} 70 -140 0 0 {name=p10 lab=REF}
C {iopin.sym} 70 -80 0 0 {name=p11 lab=VSS}
C {iopin.sym} 980 -110 0 0 {name=p12 lab=IN}
C {iopin.sym} 980 -50 0 0 {name=p13 lab=VSS}
C {iopin.sym} 890 -220 0 0 {name=p14 lab=OUT}
C {capa.sym} 960 -220 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {iopin.sym} 960 -250 0 0 {name=p15 lab=OUT}
C {iopin.sym} 960 -190 0 0 {name=p16 lab=VSS}
C {vsource.sym} 250 60 0 0 {name=V5 value=1.5 savecurrent=false}
C {iopin.sym} 250 30 0 0 {name=p17 lab=B1}
C {iopin.sym} 250 90 0 0 {name=p18 lab=VSS}
C {vsource.sym} 360 60 0 0 {name=V6 value=0.5 savecurrent=false}
C {iopin.sym} 360 30 0 0 {name=p19 lab=B2}
C {iopin.sym} 360 90 0 0 {name=p20 lab=VSS}
