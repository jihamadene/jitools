//Maya ASCII 2017ff04 scene
//Name: DynFeatherControler.ma
//Last modified: Thu, Apr 26, 2018 09:12:52 AM
//Codeset: 1252
requires maya "2017ff04";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l meter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201702071345-1015190";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -n "ctrl_hair_A_root";
	rename -uid "7AB32DE0-4B06-8D03-AE21-48B097A8E600";
createNode transform -n "ctrl_hair_A_base_offset" -p "ctrl_hair_A_root";
	rename -uid "6C1479AC-46D6-A8D9-D5E0-5AA62BF30108";
createNode hikEffector -n "ctrl_hair_A_base" -p "ctrl_hair_A_base_offset";
	rename -uid "7C1177A9-42BD-3054-83BC-62933499A613";
	setAttr ".radi" 1.43;
	setAttr ".mkl" 0;
createNode joint -n "jnr_hair_A_base" -p "ctrl_hair_A_base";
	rename -uid "E28B1DF6-44A2-8217-C3BC-97A8A99D703E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode transform -n "ctrl_hair_A_mid_offset" -p "ctrl_hair_A_root";
	rename -uid "6CAE46D0-4123-D15D-84E7-A8A139505972";
createNode hikEffector -n "ctrl_hair_A_mid" -p "ctrl_hair_A_mid_offset";
	rename -uid "2C96D0EA-4C17-1CDF-0F2D-E3B3D0004663";
	setAttr ".s" -type "double3" 0.99999999999999056 0.99999999999999056 0.99999999999999056 ;
	setAttr ".radi" 1.6099999999999999;
createNode joint -n "jnr_hair_A_mid" -p "ctrl_hair_A_mid";
	rename -uid "C060C93E-42D2-AAF3-FDEB-FA825F6B038D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999999999999056 0 0 0 0 0.99999999999999056 0 0
		 0 0 0.99999999999999056 0 0 3.5143921781108052 1.7763568394002505e-015 1;
createNode parentConstraint -n "ctrl_hair_A_mid_offset_parentConstraint" -p "ctrl_hair_A_mid_offset";
	rename -uid "04BA27B5-4074-642A-B0BC-EBABA11AA9E1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_hair_A_baseW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0.25 0 ;
	setAttr ".rst" -type "double3" 0 0.25 0 ;
	setAttr -k on ".w0";
createNode transform -n "ctrl_hair_A_tip_offset" -p "ctrl_hair_A_root";
	rename -uid "A8C3DACC-4DA3-4331-5639-E7A6D6E20C11";
createNode hikEffector -n "ctrl_hair_A_tip" -p "ctrl_hair_A_tip_offset";
	rename -uid "58EBFD5E-4E4D-7458-9F20-9ABA63CB358E";
	setAttr ".radi" 1.25;
	setAttr ".mkl" 1;
createNode joint -n "jnr_hair_A_tip_offset" -p "ctrl_hair_A_tip";
	rename -uid "4D98A6A4-4A28-F4E5-29FB-81A79DBDF803";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 7.0287843562215748 3.5527136788004844e-015 1;
createNode parentConstraint -n "ctrl_hair_A_tip_offset_parentConstraint" -p "ctrl_hair_A_tip_offset";
	rename -uid "CE3B0EE7-4805-4AC1-49A2-AF9D57D4D709";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_hair_A_midW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.8817841970013403e-017 0.25000000000000222 
		0 ;
	setAttr ".rst" -type "double3" 8.8817841970012577e-017 0.49999999999999989 0 ;
	setAttr -k on ".w0";
createNode joint -n "jnt_hair_A_00" -p "ctrl_hair_A_root";
	rename -uid "5206065F-45B6-C1D3-6C44-2A82957C3A0F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".r" -type "double3" -179.99999999999997 4.4472597270973978e-014 89.999999999999986 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".it" no;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" -0.39102845476914228 0.78291641512103582 -0.48387873945326743 0
		 -0.10017370432975917 0.48641256385602316 0.8679677682286735 0 0.91491091179508355 0.38787202097732731 -0.11177351574166794 0
		 -3.7630486488342294 178.93885803222656 23.187597274780281 1;
createNode joint -n "jnt_hair_A_01" -p "jnt_hair_A_00";
	rename -uid "D0D650D2-4941-E41B-0CA1-4DA75BBE0CCE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.091541988597333493 -1.4988010832439614e-017 -7.1054273576010032e-017 ;
	setAttr ".r" -type "double3" -1.2074182697257333e-006 1.9768850652245859e-022 9.371899079498826e-022 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" -0.37646564130251547 0.72000873654164221 -0.5829760202807609 0
		 -0.14564217931964249 0.57545001055406375 0.80476433877027198 0 0.91491091179508355 0.38787202097732731 -0.11177351574166794 0
		 -6.8912762869873152 185.20218935319488 19.316567359154135 1;
createNode joint -n "jnt_hair_A_02" -p "jnt_hair_A_01";
	rename -uid "98C58767-4266-B431-9058-F880D82C4627";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.091541988597333493 -1.4988010832439614e-017 -7.1054273576010032e-017 ;
	setAttr ".r" -type "double3" 1.7075472925031877e-006 -2.795737333343246e-022 -1.3253866854536783e-021 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" -0.30441620160528104 0.48115515395255165 -0.82208302137017131 0
		 -0.26508259973549564 0.78615839575518742 0.55828862795251466 0 0.91491091999040219 0.38787200802394445 -0.11177349361002048 0
		 -9.9030014174073866 190.96225924552803 14.652759196908042 1;
createNode joint -n "jnt_hair_A_03" -p "jnt_hair_A_02";
	rename -uid "34882A1E-4B3F-37AA-D361-379DC8EC3FA1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.091541988597333493 -1.4988010832439614e-017 -7.1054273576010032e-017 ;
	setAttr ".r" -type "double3" -1.2074182697257333e-006 1.9768850652245876e-022 9.3718990794988392e-022 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" -0.22121817959978743 0.25018175591205011 -0.94258771794635643 0
		 -0.33763973465876429 0.88711011113753147 0.31469836398862355 0 0.91491088450958746 0.38787206618461256 -0.11177358220780152 0
		 -12.338331030249583 194.81150047714846 8.076095025946664 1;
createNode joint -n "jnt_hair_A_04" -p "jnt_hair_A_03";
	rename -uid "FDF8436E-45C6-8BC3-FC30-65AFDED977C8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.091541988597333493 -1.4988010832439614e-017 -7.1054273576010032e-017 ;
	setAttr ".r" -type "double3" 1.7075472925031877e-006 -2.7957373333432469e-022 -1.3253866854536779e-021 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" -0.1746897122654465 0.13083306360091485 -0.97589252169355967 0
		 -0.36389776857349743 0.91238038512370578 0.18745785357980616 0 0.91491088006201182 0.38787206951560438 -0.11177360705389006 0
		 -14.10807646704783 196.81295452444488 0.5353932823758063 1;
createNode joint -n "jnt_hair_A_05" -p "jnt_hair_A_04";
	rename -uid "DD2E17CC-4CB8-1BBC-EF5E-F887AB11FE3E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.091541988597333493 -1.4988010832439614e-017 -7.1054273576010032e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" -0.1746897122654465 0.13083306360091485 -0.97589252169355967 0
		 -0.36389776857349743 0.91238038512370578 0.18745785357980616 0 0.91491088006201182 0.38787206951560438 -0.11177360705389006 0
		 -15.505594165171351 197.85961903325222 -7.2717468911726773 1;
createNode ikEffector -n "effector3" -p "jnt_hair_A_04";
	rename -uid "154AA3CA-4320-E710-ABAE-BC961A170DD9";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "fol_hair_A" -p "ctrl_hair_A_root";
	rename -uid "047B8430-43C3-8A35-AC26-2C9DBBB60FCC";
	setAttr ".it" no;
createNode follicle -n "fol_hair_AShape" -p "fol_hair_A";
	rename -uid "704D91A4-435C-E583-7357-F49C9B957F69";
	setAttr -k off ".v";
	setAttr ".rsp" 1;
	setAttr ".sdr" 1;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
	setAttr ".sgl" 0.07;
	setAttr ".dgr" 3;
createNode ikHandle -n "ik_hair_A" -p "ctrl_hair_A_root";
	rename -uid "7851803B-4EAC-2071-A681-E8B458FE2C92";
	setAttr ".t" -type "double3" 2.6691968784723653e-017 0.45770994298666751 3.5527136777166807e-016 ;
	setAttr ".r" -type "double3" -179.99999899974193 0 89.999999999999986 ;
	setAttr ".it" no;
	setAttr ".roc" yes;
	setAttr ".dwut" 4;
	setAttr ".dwuv" -type "double3" 1 0 0 ;
	setAttr ".dwve" -type "double3" 1 0 0 ;
	setAttr ".dtce" yes;
createNode transform -n "dyn_hair_A" -p "ctrl_hair_A_root";
	rename -uid "88B813BC-464F-15AC-54CE-77B87BBB7F15";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".it" no;
createNode nurbsCurve -n "dyn_hair_AShape" -p "dyn_hair_A";
	rename -uid "4B88AB80-4392-490A-CDF7-A1B8C6430558";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
createNode transform -n "crv_hair_A" -p "ctrl_hair_A_root";
	rename -uid "F8704693-402E-5BF6-3714-EFAF5B928DF3";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode bezierCurve -n "crv_hair_AShape2Orig" -p "crv_hair_A";
	rename -uid "0ABEB203-4B58-7609-DB8B-2AB5F7619EF7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		0 0 0
		0 0 0
		0 0.125 3.0176212907351285e-005
		0 0.25 0
		0 0.375 -3.0176212907351285e-005
		0 0.5 0
		0 0.5 0
		;
createNode nurbsCurve -n "crv_hair_AShape" -p "crv_hair_A";
	rename -uid "5E433D8C-4EB4-377A-7705-3FB90D172D8D";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode ikSplineSolver -n "ikSplineSolver";
	rename -uid "B192D220-4649-DC59-6164-1BBC67F51CFE";
createNode bezierCurveToNurbs -n "bezierCurveToNurbs5";
	rename -uid "2C781D00-4E70-75D5-1202-348E822125F0";
createNode skinCluster -n "skinCluster6";
	rename -uid "94E982F3-496F-72D4-DEEE-63B31996211B";
	setAttr -s 7 ".wl";
	setAttr ".wl[0].w[2]"  1;
	setAttr ".wl[1].w[2]"  1;
	setAttr ".wl[2].w[1]"  1;
	setAttr ".wl[3].w[1]"  1;
	setAttr ".wl[4].w[1]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr -s 3 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.8817841970012571e-015 -49.999999999999986 0 1;
	setAttr ".pm[1]" -type "matrix" 1.0000000000000095 0 0 0 0 1.0000000000000095 0 0
		 0 0 1.0000000000000095 0 0 -25.000000000000242 0 1;
	setAttr ".pm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 3 ".ma";
	setAttr -s 3 ".dpf[0:2]"  4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode dagPose -n "bindPose8";
	rename -uid "4E65BC80-48B4-C4F4-6395-798DFB674B1A";
	setAttr -s 10 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.8817841970012571e-015 49.999999999999986 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.8817841970012571e-015 49.999999999999986 0 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.8817841970012571e-015 49.999999999999986 0 1;
	setAttr ".wm[4]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 25 0 1;
	setAttr ".wm[5]" -type "matrix" 0.99999999999999056 0 0 0 0 0.99999999999999056 0 0
		 0 0 0.99999999999999056 0 0 25 0 1;
	setAttr ".wm[6]" -type "matrix" 0.99999999999999056 0 0 0 0 0.99999999999999056 0 0
		 0 0 0.99999999999999056 0 0 25 0 1;
	setAttr ".wm[7]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[8]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[9]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 10 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.8817841970012571e-015
		 49.999999999999986 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 25 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 0.99999999999999056 0.99999999999999056 0.99999999999999056 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 10 ".m";
	setAttr -s 10 ".p";
	setAttr -s 10 ".g[0:9]" yes yes yes no yes yes no yes yes no;
	setAttr ".bp" yes;
createNode objectSet -n "skinCluster6Set";
	rename -uid "A2C890DD-4FBD-C827-910F-05B22D8A35E4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster6GroupId";
	rename -uid "B8D9BB00-4DC5-B969-62C9-F184E9C8E441";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster6GroupParts";
	rename -uid "17F2600C-47A4-A926-4568-A4A10BE555ED";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak8";
	rename -uid "4BBD541B-4B3F-ACAA-5769-A396C8EC7AC8";
	setAttr -s 2 ".pl[0].cp";
	setAttr ".pl[0].cp[2]" -type "double3" 0 0.024999999999999929 -3.0176212907351285e-005 ;
	setAttr ".pl[0].cp[4]" -type "double3" 0 -0.024999999999999929 3.0176212907351285e-005 ;
createNode objectSet -n "tweakSet8";
	rename -uid "3150B1BD-4A9E-0F8A-A481-D6BEC1E88B2A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId13";
	rename -uid "BC0F96AF-4276-D933-F1D4-ACBFF055BB04";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "C74A89C2-4C0C-5E93-3AF6-488E28955D77";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
connectAttr "ctrl_hair_A_mid_offset_parentConstraint.ctx" "ctrl_hair_A_mid_offset.tx"
		;
connectAttr "ctrl_hair_A_mid_offset_parentConstraint.cty" "ctrl_hair_A_mid_offset.ty"
		;
connectAttr "ctrl_hair_A_mid_offset_parentConstraint.ctz" "ctrl_hair_A_mid_offset.tz"
		;
connectAttr "ctrl_hair_A_mid_offset_parentConstraint.crx" "ctrl_hair_A_mid_offset.rx"
		;
connectAttr "ctrl_hair_A_mid_offset_parentConstraint.cry" "ctrl_hair_A_mid_offset.ry"
		;
connectAttr "ctrl_hair_A_mid_offset_parentConstraint.crz" "ctrl_hair_A_mid_offset.rz"
		;
connectAttr "ctrl_hair_A_mid_offset.ro" "ctrl_hair_A_mid_offset_parentConstraint.cro"
		;
connectAttr "ctrl_hair_A_mid_offset.pim" "ctrl_hair_A_mid_offset_parentConstraint.cpim"
		;
connectAttr "ctrl_hair_A_mid_offset.rp" "ctrl_hair_A_mid_offset_parentConstraint.crp"
		;
connectAttr "ctrl_hair_A_mid_offset.rpt" "ctrl_hair_A_mid_offset_parentConstraint.crt"
		;
connectAttr "ctrl_hair_A_base.t" "ctrl_hair_A_mid_offset_parentConstraint.tg[0].tt"
		;
connectAttr "ctrl_hair_A_base.rp" "ctrl_hair_A_mid_offset_parentConstraint.tg[0].trp"
		;
connectAttr "ctrl_hair_A_base.rpt" "ctrl_hair_A_mid_offset_parentConstraint.tg[0].trt"
		;
connectAttr "ctrl_hair_A_base.r" "ctrl_hair_A_mid_offset_parentConstraint.tg[0].tr"
		;
connectAttr "ctrl_hair_A_base.ro" "ctrl_hair_A_mid_offset_parentConstraint.tg[0].tro"
		;
connectAttr "ctrl_hair_A_base.s" "ctrl_hair_A_mid_offset_parentConstraint.tg[0].ts"
		;
connectAttr "ctrl_hair_A_base.pm" "ctrl_hair_A_mid_offset_parentConstraint.tg[0].tpm"
		;
connectAttr "ctrl_hair_A_base.pr" "ctrl_hair_A_mid_offset_parentConstraint.tg[0].tjo"
		;
connectAttr "ctrl_hair_A_mid_offset_parentConstraint.w0" "ctrl_hair_A_mid_offset_parentConstraint.tg[0].tw"
		;
connectAttr "ctrl_hair_A_tip_offset_parentConstraint.ctx" "ctrl_hair_A_tip_offset.tx"
		;
connectAttr "ctrl_hair_A_tip_offset_parentConstraint.cty" "ctrl_hair_A_tip_offset.ty"
		;
connectAttr "ctrl_hair_A_tip_offset_parentConstraint.ctz" "ctrl_hair_A_tip_offset.tz"
		;
connectAttr "ctrl_hair_A_tip_offset_parentConstraint.crx" "ctrl_hair_A_tip_offset.rx"
		;
connectAttr "ctrl_hair_A_tip_offset_parentConstraint.cry" "ctrl_hair_A_tip_offset.ry"
		;
connectAttr "ctrl_hair_A_tip_offset_parentConstraint.crz" "ctrl_hair_A_tip_offset.rz"
		;
connectAttr "ctrl_hair_A_tip_offset.ro" "ctrl_hair_A_tip_offset_parentConstraint.cro"
		;
connectAttr "ctrl_hair_A_tip_offset.pim" "ctrl_hair_A_tip_offset_parentConstraint.cpim"
		;
connectAttr "ctrl_hair_A_tip_offset.rp" "ctrl_hair_A_tip_offset_parentConstraint.crp"
		;
connectAttr "ctrl_hair_A_tip_offset.rpt" "ctrl_hair_A_tip_offset_parentConstraint.crt"
		;
connectAttr "ctrl_hair_A_mid.t" "ctrl_hair_A_tip_offset_parentConstraint.tg[0].tt"
		;
connectAttr "ctrl_hair_A_mid.rp" "ctrl_hair_A_tip_offset_parentConstraint.tg[0].trp"
		;
connectAttr "ctrl_hair_A_mid.rpt" "ctrl_hair_A_tip_offset_parentConstraint.tg[0].trt"
		;
connectAttr "ctrl_hair_A_mid.r" "ctrl_hair_A_tip_offset_parentConstraint.tg[0].tr"
		;
connectAttr "ctrl_hair_A_mid.ro" "ctrl_hair_A_tip_offset_parentConstraint.tg[0].tro"
		;
connectAttr "ctrl_hair_A_mid.s" "ctrl_hair_A_tip_offset_parentConstraint.tg[0].ts"
		;
connectAttr "ctrl_hair_A_mid.pm" "ctrl_hair_A_tip_offset_parentConstraint.tg[0].tpm"
		;
connectAttr "ctrl_hair_A_mid.pr" "ctrl_hair_A_tip_offset_parentConstraint.tg[0].tjo"
		;
connectAttr "ctrl_hair_A_tip_offset_parentConstraint.w0" "ctrl_hair_A_tip_offset_parentConstraint.tg[0].tw"
		;
connectAttr "jnt_hair_A_00.s" "jnt_hair_A_01.is";
connectAttr "jnt_hair_A_01.s" "jnt_hair_A_02.is";
connectAttr "jnt_hair_A_02.s" "jnt_hair_A_03.is";
connectAttr "jnt_hair_A_03.s" "jnt_hair_A_04.is";
connectAttr "jnt_hair_A_04.s" "jnt_hair_A_05.is";
connectAttr "jnt_hair_A_05.tx" "effector3.tx";
connectAttr "jnt_hair_A_05.ty" "effector3.ty";
connectAttr "jnt_hair_A_05.tz" "effector3.tz";
connectAttr "crv_hair_AShape.ws" "fol_hair_AShape.sp";
connectAttr "crv_hair_AShape.wm" "fol_hair_AShape.spm";
connectAttr "jnt_hair_A_00.msg" "ik_hair_A.hsj";
connectAttr "effector3.hp" "ik_hair_A.hee";
connectAttr "ikSplineSolver.msg" "ik_hair_A.hsv";
connectAttr "dyn_hair_AShape.ws" "ik_hair_A.ic";
connectAttr "ctrl_hair_A_base.wm" "ik_hair_A.dwum";
connectAttr "ctrl_hair_A_tip.wm" "ik_hair_A.dwue";
connectAttr "fol_hair_AShape.ocr" "dyn_hair_AShape.cr";
connectAttr "bezierCurveToNurbs5.oc" "crv_hair_AShape.cr";
connectAttr "skinCluster6.og[0]" "bezierCurveToNurbs5.ic";
connectAttr "skinCluster6GroupParts.og" "skinCluster6.ip[0].ig";
connectAttr "skinCluster6GroupId.id" "skinCluster6.ip[0].gi";
connectAttr "bindPose8.msg" "skinCluster6.bp";
connectAttr "jnr_hair_A_tip_offset.wm" "skinCluster6.ma[0]";
connectAttr "jnr_hair_A_mid.wm" "skinCluster6.ma[1]";
connectAttr "jnr_hair_A_base.wm" "skinCluster6.ma[2]";
connectAttr "jnr_hair_A_tip_offset.liw" "skinCluster6.lw[0]";
connectAttr "jnr_hair_A_mid.liw" "skinCluster6.lw[1]";
connectAttr "jnr_hair_A_base.liw" "skinCluster6.lw[2]";
connectAttr "jnr_hair_A_tip_offset.obcc" "skinCluster6.ifcl[0]";
connectAttr "jnr_hair_A_mid.obcc" "skinCluster6.ifcl[1]";
connectAttr "jnr_hair_A_base.obcc" "skinCluster6.ifcl[2]";
connectAttr "ctrl_hair_A_root.msg" "bindPose8.m[0]";
connectAttr "ctrl_hair_A_tip_offset.msg" "bindPose8.m[1]";
connectAttr "ctrl_hair_A_tip.msg" "bindPose8.m[2]";
connectAttr "jnr_hair_A_tip_offset.msg" "bindPose8.m[3]";
connectAttr "ctrl_hair_A_mid_offset.msg" "bindPose8.m[4]";
connectAttr "ctrl_hair_A_mid.msg" "bindPose8.m[5]";
connectAttr "jnr_hair_A_mid.msg" "bindPose8.m[6]";
connectAttr "ctrl_hair_A_base_offset.msg" "bindPose8.m[7]";
connectAttr "ctrl_hair_A_base.msg" "bindPose8.m[8]";
connectAttr "jnr_hair_A_base.msg" "bindPose8.m[9]";
connectAttr "bindPose8.w" "bindPose8.p[0]";
connectAttr "bindPose8.m[0]" "bindPose8.p[1]";
connectAttr "bindPose8.m[1]" "bindPose8.p[2]";
connectAttr "bindPose8.m[2]" "bindPose8.p[3]";
connectAttr "bindPose8.m[0]" "bindPose8.p[4]";
connectAttr "bindPose8.m[4]" "bindPose8.p[5]";
connectAttr "bindPose8.m[5]" "bindPose8.p[6]";
connectAttr "bindPose8.m[0]" "bindPose8.p[7]";
connectAttr "bindPose8.m[7]" "bindPose8.p[8]";
connectAttr "bindPose8.m[8]" "bindPose8.p[9]";
connectAttr "skinCluster6GroupId.msg" "skinCluster6Set.gn" -na;
connectAttr "skinCluster6.msg" "skinCluster6Set.ub[0]";
connectAttr "tweak8.og[0]" "skinCluster6GroupParts.ig";
connectAttr "skinCluster6GroupId.id" "skinCluster6GroupParts.gi";
connectAttr "groupParts13.og" "tweak8.ip[0].ig";
connectAttr "groupId13.id" "tweak8.ip[0].gi";
connectAttr "groupId13.msg" "tweakSet8.gn" -na;
connectAttr "tweak8.msg" "tweakSet8.ub[0]";
connectAttr "crv_hair_AShape2Orig.ws" "groupParts13.ig";
connectAttr "groupId13.id" "groupParts13.gi";
connectAttr "ikSplineSolver.msg" ":ikSystem.sol" -na;
// End of DynFeatherControler.ma
