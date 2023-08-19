# Inverter_design_transfer_and_transient_characterstics_using_opensource_tools

I am an Enthusiastic wants to make realtime projects on design of system on chip. First I thanks to KUNAL GHOSH and VIKAS SACHDEVA for providing theoritical and practical knowledge on these opensource tools and also provide core fundamentals knowledge of physical design.

I started these analysis with getting core working principle knowledge of transistors, gates and logic circuits. I trying to do analysis on transfer and transient characterstics of cmos invertor by using opensource tools like MAGIC, NGSPICE, ALIGN, XSCHEM, NETGEN and OpenPdks.
I performed these analysis to change various parameters of nmos and pmos. With change in width and length (W/L) ratio of nmos and pmos i found many changes in their characterstics. I used ngspice for simulation purposes. I found gain, noise margin, rise and fall delay are changed with chnage in their parameters, still i will trying to keep updating it with new results.

1. INSTALLATION OF OPENSOURCE SOURCE TOOLS:

1.1 Magic:
Magic is an open-source VLSI layout tool. Install magic and its dependencies using the following link http://opencircuitdesign.com/magic/install.html

1.2 NGSPICE:
Ngspice is an open-source spice simulator tool. Install ngspice and its dependencies using the following link  https://ngspice.sourceforge.io/ngspice-tutorial.html

1.3 NETGEN:
Netgen is a tool for comparing netlists, a process known as LVS, which stands for "Layout vs Schematic". Install netgen and all its dependicies using the following link http://opencircuitdesign.com/netgen/

1.4 XSCHEM:
Xschem is a schematic capture program, it allows creation of hierarchical representation of circuits with a top down approach. Install xschem and all its dependicies using the following link https://xschem.sourceforge.io/stefan/xschem_man/install_xschem.html

1.5 OPEN_PDKS:
A process design kit (PDK) is a set of files used within the semiconductor industry to model a fabrication process for the design tools used to design an integrated circuit. The PDK is created by the foundry defining a certain technology variation for their processes. It is then passed to their customers to use in the design process. The PDK we are going to use for this BGR is Google Skywater-130 (130 nm) PDK. Download PDK - Open the terminal and type the following to download sky130 PDK.
$  git clone https://github.com/RTimothyEdwards/open_pdks.git
$  cd open_pdks
$  ./configure [options]
$  make
$  [sudo] make install


2. SIMULATION OF INVERTOR:

2.1 BEGIN WITH LAYOUT USING XSCHEM
By using xschem first i need to create a layout of invertor in which we assign various components like pmos, nmos, vdd, vss, input and output by using xschem library. Xschem library also providing sky130 pdk library from which i can use all components i need to make layout of  Invertor.<img width="1440" alt="Invertor_sch" src="https://github.com/paramsaini/Invertor_design_analysis/assets/86552866/2fee83ef-f0bc-4a1e-a2be-953d3dfd922c">

after making this schematic i use spice simulator to simulate this schematic and trying to get netlist of my schematic.
<img width="1440" alt="spice_netlist" src="https://github.com/paramsaini/Invertor_design_analysis/assets/86552866/8cd75da2-99b5-4551-ae9e-b0eb6f4b8ac5">

Now after getting spice netlist then i will go to get dc transfer charaterstics by using ngspice.<img width="1440" alt="dc_transfer_characterstics" src="https://github.com/paramsaini/Invertor_design_analysis/assets/86552866/786e95d9-6480-4908-8577-713260739bda">

from this dc characterstics i found switching threshold which i can also call 'gain' where both nmos and pmos are in saturation region.
Now transient characterstics where i found rise and fall delay.<img width="1440" alt="transient_characterstics" src="https://github.com/paramsaini/Invertor_design_analysis/assets/86552866/4001d310-0fed-4461-a825-752ef3d05720">

Rise and Fall delay.<img width="1440" alt="risedelay_falldelay" src="https://github.com/paramsaini/Invertor_design_analysis/assets/86552866/845fadd7-8d17-4d0d-9bee-4192ba506655">

now i can make layout of this invertor by using its spice file with Align tool. The Align tool can create files with .gds and .lef which i can use to open with magic layout tool to analysis and extract all features from this invertor.<img width="1440" alt="layout" src="https://github.com/paramsaini/Invertor_design_analysis/assets/86552866/0c927cd6-f44c-4b33-981a-6b304f56165c">

after got layout now i will perform extract to spice by using thses commands.<img width="1440" alt="extract2spice" src="https://github.com/paramsaini/Invertor_design_analysis/assets/86552866/94b53af7-ca8d-4342-8b92-4caa4a351dd3">

Agian I got spice file from magic tools and i can simulate this spice file with ngspice and will get dc1 and tran1 again and then i can also compare pre layout and postlayout designs together to find out the difference in delays. It's an iteration process in which i can edit invetors parameters many times and find out which one will have least delay and higher gain.   
