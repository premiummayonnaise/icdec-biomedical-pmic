v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 120 -230 120 -170 {lab=VDD}
N 120 -110 120 -60 {lab=VSS}
N 170 -110 170 -60 {lab=VSS}
N 170 -230 170 -170 {lab=VIN}
N 230 -110 230 -60 {lab=GND}
N 230 -230 230 -170 {lab=VSS}
N 150 -340 190 -340 {lab=OUT}
N 150 -340 150 -280 {lab=OUT}
N 150 -280 380 -280 {lab=OUT}
N 380 -370 380 -280 {lab=OUT}
N 330 -370 380 -370 {lab=OUT}
N 230 -450 230 -430 {lab=VDD}
N 230 -310 230 -290 {lab=VSS}
N 320 -110 320 -80 {lab=IBIAS}
N 320 -210 320 -170 {lab=VDD}
N 100 -400 190 -400 {lab=VIN}
N 100 -370 190 -370 {lab=IBIAS}
C {icdec-biomedical-pmic/opamp_sementara/opamp/opamp.sym} 70 -200 0 0 {name=x1}
C {isource.sym} 320 -140 0 0 {name=I0 value=200u}
C {vsource.sym} 120 -140 0 0 {name=V1 value=2.5 savecurrent=false}
C {vsource.sym} 170 -140 0 0 {name=V2 value=3 savecurrent=false}
C {vsource.sym} 230 -140 0 0 {name=V4 value="0" savecurrent=false}
C {lab_pin.sym} 120 -230 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 170 -230 0 0 {name=p2 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 230 -230 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 170 -60 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 120 -60 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {gnd.sym} 230 -60 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 320 -210 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 230 -450 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 230 -290 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 320 -80 0 0 {name=p11 sig_type=std_logic lab=IBIAS}
C {lab_pin.sym} 100 -370 0 0 {name=p12 sig_type=std_logic lab=IBIAS}
C {lab_pin.sym} 100 -400 0 0 {name=p13 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 380 -370 0 1 {name=p15 sig_type=std_logic lab=OUT}
C {devices/code.sym} 60 -610 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice mc

"
spice_ignore=false}
C {code_shown.sym} 470 -1000 0 0 {name=s1 only_toplevel=false value=


"

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
    dc V2 1.24 1.26 0.05m
    
    * Ekstraksi nilai Vin saat crossing
    meas dc vin_at_vcm when v(out)=vcm_target
    
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
