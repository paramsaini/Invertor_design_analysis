.subckt invertor_test VDD VSS vin vout

XM1 vout vin VSS VSS sky130_fd_pr__nfet_01v8 L=150e-9 W=21e-7 nf=2
XM2 vout vin VDD VDD sky130_fd_pr__pfet_01v8 L=150e-9 W=21e-7 nf=2
.ends
