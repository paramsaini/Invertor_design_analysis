v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2990 -1390 2990 -1350 {
lab=vout}
N 2990 -1370 3100 -1370 {
lab=vout}
N 2920 -1420 2950 -1420 {
lab=vin}
N 2920 -1420 2920 -1320 {
lab=vin}
N 2920 -1320 2950 -1320 {
lab=vin}
N 2990 -1450 2990 -1420 {
lab=VDD}
N 2990 -1320 2990 -1290 {
lab=VSS}
N 2900 -1370 2920 -1370 {
lab=vin}
N 2990 -1470 2990 -1450 {
lab=VDD}
N 2990 -1290 2990 -1280 {
lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 2970 -1320 0 0 {name=M1
L=0.15
W=2.1
nf=2 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 2970 -1420 0 0 {name=M2
L=0.15
W=2.1
nf=2
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} 2860 -1260 0 0 {name=vin value="pulse(0 1.8 1ns 1ns 1ns 4ns 10ns)"}
C {devices/vsource.sym} 2770 -1260 0 0 {name=VDD value=1.8}
C {devices/code_shown.sym} 2600 -1450 0 0 {name=Spice only_toplevel=false value=".control
save all
dc vin 0 1.8 0.01
tran 0.01n 30n
.endc"}
C {devices/code_shown.sym} 2690 -1520 0 0 {name=Library only_toplevel=false value=".lib /home/param/all/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {devices/gnd.sym} 2860 -1230 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 2770 -1230 0 0 {name=l1 lab=GND}
C {devices/iopin.sym} 2990 -1470 0 0 {name=p4 lab=VDD}
C {devices/iopin.sym} 2990 -1280 0 0 {name=p5 lab=VSS}
C {devices/ipin.sym} 2900 -1370 0 0 {name=p2 lab=vin}
C {devices/opin.sym} 3100 -1370 0 0 {name=p3 lab=vout}
C {devices/lab_pin.sym} 2770 -1290 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2860 -1290 1 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/vsource.sym} 2660 -1270 0 0 {name=VSS value=0}
C {devices/gnd.sym} 2660 -1240 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 2660 -1300 1 0 {name=p7 sig_type=std_logic lab=VSS}
