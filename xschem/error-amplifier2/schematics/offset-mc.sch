v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 160 -610 190 -610 {lab=OUT}
N 300 -500 300 -460 {lab=VSS}
N 240 -680 270 -680 {lab=IBIAS}
N 440 -590 500 -590 {lab=OUT}
N 400 -590 440 -590 {lab=OUT}
N 320 -710 320 -680 {lab=VDD}
N 190 -430 440 -430 {lab=OUT}
N 440 -590 440 -430 {lab=OUT}
N 580 -230 580 -220 {lab=IBIAS}
N 90 -570 190 -570 {lab=VIN}
N 160 -610 160 -430 {lab=OUT}
N 160 -430 190 -430 {lab=OUT}
C {devices/code_shown.sym} 820 -1090 0 0 {name=NGSPICE only_toplevel=true
value="

.control
  set noaskquit
  set wr_vecnames
  set wr_singlescale
  
  let mc_runs = 100
  let run = 0
  let vcm_target = 1.25

  * --- INIT VECTOR (100 entries) ---
  compose vos_vec values 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

  dowhile run < mc_runs
    reset
    
    * FIX ERROR SETSEED: Hitung dulu di variabel luar
    let current_seed = run + 1
    setseed $&current_seed
    
    * Jalankan DC Sweep (V1 adalah source yang di-sweep)
    dc V1 1.247 1.252 0.001
    
    * Ekstraksi nilai Vin saat crossing
    meas dc vin_at_vcm find v(vin) when v(out)=vcm_target
    
    * Hitung Vos dalam uV dan masukkan ke vector
    let vos_val = (vcm_target - vin_at_vcm) * 1e6
    let vos_vec[run] = vos_val
    
    echo Iteration: $&run | Vos: $&vos_val uV
    let run = run + 1
  end

  * =============================================================
  * RE-FIXED CSV OUTPUT BLOCK (INDEX EVALUATION)
  * =============================================================
  shell rm -f vos_results.csv
  shell echo "run,vos_uv" > vos_results.csv

  let i = 0
  dowhile i < mc_runs
    let tmp_vos = vos_vec[i]
    echo $&i, $&tmp_vos >> vos_results.csv
    let i = i + 1
  end

  echo ==========================================================
  echo SELESAI! Cek 'vos_results.csv' di folder lo sekarang.
  print mean(vos_vec) std(vos_vec)
  echo ==========================================================
.endc

"}
C {vsource.sym} 690 -360 0 0 {name=V5 value="DC 2.5" savecurrent=false}
C {vsource.sym} 690 -260 0 0 {name=V7 value=0 savecurrent=false}
C {lab_pin.sym} 690 -330 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 690 -390 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {gnd.sym} 690 -230 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 690 -290 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 90 -570 0 0 {name=p3 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 500 -590 0 1 {name=p6 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 320 -710 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 300 -460 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 580 -220 0 0 {name=p1 sig_type=std_logic lab=IBIAS}
C {lab_pin.sym} 240 -680 0 0 {name=p7 sig_type=std_logic lab=IBIAS}
C {icdec-biomedical-pmic/xschem/error-amplifier2/schematics/1st-stage.sym} 20 -410 0 0 {name=x2}
C {isource.sym} 580 -260 0 0 {name=I0 value=200u}
C {lab_pin.sym} 580 -290 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {vsource.sym} 690 -470 0 0 {name=V1 value="DC 1.25" savecurrent=false}
C {lab_pin.sym} 690 -440 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 690 -500 0 0 {name=p9 sig_type=std_logic lab=VIN}
C {devices/code.sym} 330 -250 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.option wnflag=1
.param MC_SWITCH=1.0
.lib $::SKYWATER_MODELS/sky130.lib.spice mc

"
spice_ignore=false}
