//Maya ASCII 2018ff09 scene
//Name: ribAdvanced.ma
//Last modified: Fri, Apr 05, 2019 04:07:38 PM
//Codeset: UTF-8
requires maya "2018ff09";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "3.1.2.1";
requires -nodeType "ilrOptionsNode" -nodeType "ilrUIOptionsNode" -nodeType "ilrBakeLayerManager"
		 -nodeType "ilrBakeLayer" "Turtle" "2018.0.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201811122215-49253d42f6";
fileInfo "osv" "Linux 3.10.0-862.14.4.el7.x86_64 #1 SMP Wed Sep 26 15:12:11 UTC 2018 x86_64";
createNode transform -s -n "persp";
	rename -uid "458E4940-0000-15E4-5CA7-A63E000315F1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.46574050219557905 0.85559550464251366 1.2347337955824429 ;
	setAttr ".r" -type "double3" -32.738352729561925 -376.19999999999101 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "458E4940-0000-15E4-5CA7-A63E000315F2";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 1.7930405041934281;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.034255076190389727 0.44610402667983529 -0.23604312948791872 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "458E4940-0000-15E4-5CA7-A63E000315F3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "458E4940-0000-15E4-5CA7-A63E000315F4";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "458E4940-0000-15E4-5CA7-A63E000315F5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "458E4940-0000-15E4-5CA7-A63E000315F6";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "458E4940-0000-15E4-5CA7-A63E000315F7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "458E4940-0000-15E4-5CA7-A63E000315F8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "ribSetup";
	rename -uid "458E4940-0000-15E4-5CA7-B49F00032210";
createNode transform -n "rib_curvB" -p "ribSetup";
	rename -uid "458E4940-0000-15E4-5CA7-A86500031784";
	setAttr ".v" no;
createNode nurbsCurve -n "rib_curvBShape" -p "rib_curvB";
	rename -uid "458E4940-0000-15E4-5CA7-A86500031783";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "rib_curvA" -p "ribSetup";
	rename -uid "458E4940-0000-15E4-5CA7-A8650003177F";
	setAttr ".v" no;
createNode nurbsCurve -n "rib_curvAShape" -p "rib_curvA";
	rename -uid "458E4940-0000-15E4-5CA7-A8650003177E";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "cluster3Handle" -p "ribSetup";
	rename -uid "458E4940-0000-15E4-5CA7-A729000316A6";
	setAttr ".v" no;
createNode clusterHandle -n "cluster3HandleShape" -p "cluster3Handle";
	rename -uid "458E4940-0000-15E4-5CA7-A729000316A7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode parentConstraint -n "cluster3Handle_parentConstraint1" -p "cluster3Handle";
	rename -uid "458E4940-0000-15E4-5CA7-A78E0003170D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode scaleConstraint -n "cluster3Handle_scaleConstraint1" -p "cluster3Handle";
	rename -uid "458E4940-0000-15E4-5CA7-A8170003176C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "cluster1Handle" -p "ribSetup";
	rename -uid "458E4940-0000-15E4-5CA7-A67F00031624";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0.5 0 0 ;
	setAttr ".sp" -type "double3" 0.5 0 0 ;
createNode clusterHandle -n "cluster1HandleShape" -p "cluster1Handle";
	rename -uid "458E4940-0000-15E4-5CA7-A67F00031625";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0.5 0 0 ;
createNode parentConstraint -n "cluster1Handle_parentConstraint1" -p "cluster1Handle";
	rename -uid "458E4940-0000-15E4-5CA7-A77C000316FA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode scaleConstraint -n "cluster1Handle_scaleConstraint1" -p "cluster1Handle";
	rename -uid "458E4940-0000-15E4-5CA7-A80700031760";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "cluster2Handle" -p "ribSetup";
	rename -uid "458E4940-0000-15E4-5CA7-A68300031630";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -0.5 0 0 ;
	setAttr ".sp" -type "double3" -0.5 0 0 ;
createNode clusterHandle -n "cluster2HandleShape" -p "cluster2Handle";
	rename -uid "458E4940-0000-15E4-5CA7-A68300031631";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" -0.5 0 0 ;
createNode parentConstraint -n "cluster2Handle_parentConstraint1" -p "cluster2Handle";
	rename -uid "458E4940-0000-15E4-5CA7-A774000316F0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode scaleConstraint -n "cluster2Handle_scaleConstraint1" -p "cluster2Handle";
	rename -uid "458E4940-0000-15E4-5CA7-A7FE00031757";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "RibBase" -p "ribSetup";
	rename -uid "458E4940-0000-15E4-5CA7-A6EE0003166C";
	setAttr ".v" no;
createNode nurbsSurface -n "RibBaseShape" -p "RibBase";
	rename -uid "458E4940-0000-15E4-5CA7-A6EE0003166D";
	setAttr -k off ".v";
	setAttr -s 8 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode nurbsSurface -n "RibBaseShape1Orig" -p "RibBase";
	rename -uid "458E4940-0000-15E4-5CA7-A6EE0003166E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 0 no 
		2 0 1
		2 0 1
		
		4
		-0.5 -3.0616169978683832e-18 0.050000000000000003
		-0.5 3.0616169978683832e-18 -0.050000000000000003
		0.5 -3.0616169978683832e-18 0.050000000000000003
		0.5 3.0616169978683832e-18 -0.050000000000000003
		
		;
createNode nurbsSurface -n "RibBaseShape2Orig" -p "RibBase";
	rename -uid "458E4940-0000-15E4-5CA7-A7280003169E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 1 0 0 no 
		9 0 0 0 0.5 0.5 0.5 1 1 1
		2 0 1
		
		14
		-0.5 -3.0616169978683836e-18 0.05000000000000001
		-0.5 3.0616169978683836e-18 -0.05000000000000001
		-0.33333333333333331 -3.0616169978683836e-18 0.05000000000000001
		-0.33333333333333331 3.0616169978683836e-18 -0.05000000000000001
		-0.16666666666666666 -3.0616169978683836e-18 0.05000000000000001
		-0.16666666666666666 3.0616169978683836e-18 -0.05000000000000001
		0 -3.0616169978683836e-18 0.05000000000000001
		0 3.0616169978683836e-18 -0.05000000000000001
		0.16666666666666666 -3.0616169978683836e-18 0.05000000000000001
		0.16666666666666666 3.0616169978683836e-18 -0.05000000000000001
		0.33333333333333331 -3.0616169978683836e-18 0.05000000000000001
		0.33333333333333331 3.0616169978683836e-18 -0.05000000000000001
		0.5 -3.0616169978683836e-18 0.05000000000000001
		0.5 3.0616169978683836e-18 -0.05000000000000001
		
		;
createNode transform -n "RibDrive" -p "ribSetup";
	rename -uid "458E4940-0000-15E4-5CA7-A64500031602";
	setAttr ".v" no;
createNode nurbsSurface -n "RibDriveShape" -p "RibDrive";
	rename -uid "458E4940-0000-15E4-5CA7-A64500031601";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode nurbsSurface -n "RibDriveShape1Orig" -p "RibDrive";
	rename -uid "458E4940-0000-15E4-5CA7-A67F0003161C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode transform -n "ribOut" -p "ribSetup";
	rename -uid "458E4940-0000-15E4-5CA7-A86E0003178C";
createNode nurbsSurface -n "ribOutShape" -p "ribOut";
	rename -uid "458E4940-0000-15E4-5CA7-A86E0003178B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode transform -n "follicleGroup" -p "ribSetup";
	rename -uid "458E4940-0000-15E4-5CA7-A6DE00031651";
	setAttr ".v" no;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "follicle1" -p "follicleGroup";
	rename -uid "458E4940-0000-15E4-5CA7-A6DE00031659";
createNode follicle -n "follicleShape1" -p "follicle1";
	rename -uid "458E4940-0000-15E4-5CA7-A6DE00031658";
	setAttr -k off ".v";
	setAttr ".pu" 0.5;
	setAttr ".pv" 0.5;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode transform -n "ctrl_rib_end_offset";
	rename -uid "458E4940-0000-15E4-5CA7-A745000316C9";
	setAttr ".t" -type "double3" 0.5 0 0 ;
createNode transform -n "ctrl_rib_end" -p "ctrl_rib_end_offset";
	rename -uid "458E4940-0000-15E4-5CA7-A741000316C6";
createNode nurbsCurve -n "ctrl_rib_endShape" -p "ctrl_rib_end";
	rename -uid "458E4940-0000-15E4-5CA7-A741000316C5";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "ctrl_rib_start_offset";
	rename -uid "458E4940-0000-15E4-5CA7-A75E000316D6";
	setAttr ".t" -type "double3" -0.5 0 0 ;
createNode transform -n "ctrl_rib_start" -p "ctrl_rib_start_offset";
	rename -uid "458E4940-0000-15E4-5CA7-A75E000316D7";
createNode nurbsCurve -n "ctrl_rib_startShape" -p "ctrl_rib_start";
	rename -uid "458E4940-0000-15E4-5CA7-A75E000316D8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		4.7982373409884759e-18 0.078361162489122393 -0.078361162489122504
		-7.7417092079760399e-34 0.1108194187554388 1.2643170607829327e-17
		-4.7982373409884713e-18 0.078361162489122435 0.078361162489122435
		-6.7857323231109139e-18 3.2112695072372301e-17 0.1108194187554388
		-4.7982373409884721e-18 -0.078361162489122407 0.078361162489122449
		-2.0446735801084019e-33 -0.11081941875543883 3.3392053635905197e-17
		4.798237340988469e-18 -0.078361162489122449 -0.078361162489122393
		6.7857323231109139e-18 -5.9521325992805854e-17 -0.1108194187554388
		4.7982373409884759e-18 0.078361162489122393 -0.078361162489122504
		-7.7417092079760399e-34 0.1108194187554388 1.2643170607829327e-17
		-4.7982373409884713e-18 0.078361162489122435 0.078361162489122435
		;
createNode transform -n "ctrl_rib_mid_offset";
	rename -uid "458E4940-0000-15E4-5CA7-A781000316FF";
createNode transform -n "ctrl_rib_mid" -p "ctrl_rib_mid_offset";
	rename -uid "458E4940-0000-15E4-5CA7-A78100031700";
createNode nurbsCurve -n "ctrl_rib_midShape" -p "ctrl_rib_mid";
	rename -uid "458E4940-0000-15E4-5CA7-A78100031701";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		4.7982373409884759e-18 0.078361162489122393 -0.078361162489122504
		-7.7417092079760399e-34 0.1108194187554388 1.2643170607829327e-17
		-4.7982373409884713e-18 0.078361162489122435 0.078361162489122435
		-6.7857323231109139e-18 3.2112695072372301e-17 0.1108194187554388
		-4.7982373409884721e-18 -0.078361162489122407 0.078361162489122449
		-2.0446735801084019e-33 -0.11081941875543883 3.3392053635905197e-17
		4.798237340988469e-18 -0.078361162489122449 -0.078361162489122393
		6.7857323231109139e-18 -5.9521325992805854e-17 -0.1108194187554388
		4.7982373409884759e-18 0.078361162489122393 -0.078361162489122504
		-7.7417092079760399e-34 0.1108194187554388 1.2643170607829327e-17
		-4.7982373409884713e-18 0.078361162489122435 0.078361162489122435
		;
createNode parentConstraint -n "ctrl_rib_mid_follicle_parentConstraint" -p "ctrl_rib_mid_offset";
	rename -uid "458E4940-0000-15E4-5CA7-A78800031708";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "follicle1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tor" -type "double3" 89.999999999999986 0 0 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "458E4940-0000-15E4-5CA7-A63E000315F9";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "458E4940-0000-15E4-5CA7-A63E000315FA";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "458E4940-0000-15E4-5CA7-A63E000315FB";
createNode displayLayerManager -n "layerManager";
	rename -uid "458E4940-0000-15E4-5CA7-A63E000315FC";
	setAttr -s 2 ".dli[1]"  2;
createNode displayLayer -n "defaultLayer";
	rename -uid "458E4940-0000-15E4-5CA7-A63E000315FD";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "458E4940-0000-15E4-5CA7-A63E000315FE";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "458E4940-0000-15E4-5CA7-A63E000315FF";
	setAttr ".g" yes;
createNode makeNurbPlane -n "makeNurbPlane1";
	rename -uid "458E4940-0000-15E4-5CA7-A64500031600";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".lr" 0.1;
	setAttr ".d" 1;
createNode cluster -n "cluster1";
	rename -uid "458E4940-0000-15E4-5CA7-A67F0003161B";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".og";
	setAttr -s 2 ".gm";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".gm[1]" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode tweak -n "tweak1";
	rename -uid "458E4940-0000-15E4-5CA7-A67F0003161D";
createNode objectSet -n "cluster1Set";
	rename -uid "458E4940-0000-15E4-5CA7-A67F0003161E";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".vo" yes;
	setAttr -s 2 ".gn";
createNode groupId -n "cluster1GroupId";
	rename -uid "458E4940-0000-15E4-5CA7-A67F0003161F";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster1GroupParts";
	rename -uid "458E4940-0000-15E4-5CA7-A67F00031620";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1][0:1]";
createNode objectSet -n "tweakSet1";
	rename -uid "458E4940-0000-15E4-5CA7-A67F00031621";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "458E4940-0000-15E4-5CA7-A67F00031622";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "458E4940-0000-15E4-5CA7-A67F00031623";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode cluster -n "cluster2";
	rename -uid "458E4940-0000-15E4-5CA7-A6830003162C";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".og";
	setAttr -s 2 ".gm";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".gm[1]" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode objectSet -n "cluster2Set";
	rename -uid "458E4940-0000-15E4-5CA7-A6830003162D";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".vo" yes;
	setAttr -s 2 ".gn";
createNode groupId -n "cluster2GroupId";
	rename -uid "458E4940-0000-15E4-5CA7-A6830003162E";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster2GroupParts";
	rename -uid "458E4940-0000-15E4-5CA7-A6830003162F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0][0:1]";
createNode cluster -n "cluster3";
	rename -uid "458E4940-0000-15E4-5CA7-A7280003169D";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode tweak -n "tweak2";
	rename -uid "458E4940-0000-15E4-5CA7-A7280003169F";
createNode objectSet -n "cluster3Set";
	rename -uid "458E4940-0000-15E4-5CA7-A728000316A0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster3GroupId";
	rename -uid "458E4940-0000-15E4-5CA7-A728000316A1";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster3GroupParts";
	rename -uid "458E4940-0000-15E4-5CA7-A728000316A2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[2:4][0:1]";
createNode objectSet -n "tweakSet2";
	rename -uid "458E4940-0000-15E4-5CA7-A729000316A3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	rename -uid "458E4940-0000-15E4-5CA7-A729000316A4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "458E4940-0000-15E4-5CA7-A729000316A5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "458E4940-0000-15E4-5CA7-A741000316C4";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 0.1;
createNode groupId -n "groupId5";
	rename -uid "458E4940-0000-15E4-5CA7-A7CC00031730";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "458E4940-0000-15E4-5CA7-A7CC00031731";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[5:6][0:1]";
createNode groupId -n "groupId6";
	rename -uid "458E4940-0000-15E4-5CA7-A7DB00031738";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "458E4940-0000-15E4-5CA7-A7DB00031739";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0:1][0:1]";
createNode curveFromSurfaceIso -n "curveFromSurfaceIso1";
	rename -uid "458E4940-0000-15E4-5CA7-A8650003177D";
	setAttr ".ihi" 1;
	setAttr ".max" 0;
	setAttr ".iv" 0.25728827282252398;
createNode curveFromSurfaceIso -n "curveFromSurfaceIso2";
	rename -uid "458E4940-0000-15E4-5CA7-A86500031782";
	setAttr ".ihi" 1;
	setAttr ".max" 0;
	setAttr ".iv" 0.76500963226273;
createNode rebuildCurve -n "rebuildCurve1";
	rename -uid "458E4940-0000-15E4-5CA7-A86A00031787";
	setAttr ".s" 5;
	setAttr ".end" 1;
	setAttr ".kr" 0;
	setAttr ".kt" no;
	setAttr ".sm" 3;
createNode rebuildCurve -n "rebuildCurve2";
	rename -uid "458E4940-0000-15E4-5CA7-A86A00031788";
	setAttr ".s" 5;
	setAttr ".end" 1;
	setAttr ".kr" 0;
	setAttr ".kt" no;
	setAttr ".sm" 3;
createNode loft -n "loft1";
	rename -uid "458E4940-0000-15E4-5CA7-A86E0003178A";
	setAttr -s 2 ".ic";
	setAttr ".u" yes;
	setAttr -s 2 ".r[0:1]" no no;
	setAttr ".rsn" yes;
createNode ilrOptionsNode -s -n "TurtleRenderOptions";
	rename -uid "458E4940-0000-15E4-5CA7-AEB600031B0E";
lockNode -l 1 ;
createNode ilrUIOptionsNode -s -n "TurtleUIOptions";
	rename -uid "458E4940-0000-15E4-5CA7-AEB600031B0F";
lockNode -l 1 ;
createNode ilrBakeLayerManager -s -n "TurtleBakeLayerManager";
	rename -uid "458E4940-0000-15E4-5CA7-AEB600031B10";
lockNode -l 1 ;
createNode ilrBakeLayer -s -n "TurtleDefaultBakeLayer";
	rename -uid "458E4940-0000-15E4-5CA7-AEB600031B11";
lockNode -l 1 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "458E4940-0000-15E4-5CA7-AEB600031B12";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".ARV_options" -type "string" "Display Settings=0;Show Status Bar=1;Display Pixel Information=0;3D Manipulation=0;Show AOVs list=1;Show Cameras list=1;Show RGBA icon=1;Show Crop Region icon=1;Show 3D Manipulation icon=0;Show Debug Shading icon=0;Show Exposure icon=1;Darken Out-Of-Region=0;AOVs=Beauty;Test Resolution=100%;Log=Last Progressive Step;Camera=perspShape;Save UI Threads=1;Debug Shading=Disabled;Color Management.Gamma=1;Color Management.Exposure=0;Color Management.OCIO=0;Color Management.OCIO File=;Color Management.View Transform=sRGB;Color Management.LUT File=;Background.BG=BG Color;Background.Color=0 0 0;Background.Image=;Background.Scale=1 1;Background.Offset=0 0;Background.Apply Color Management=1;Foreground.Enable FG=0;Foreground.Image=;Foreground.Scale=1 1;Foreground.Offset=0 0;Foreground.Apply Color Management=1;Width=1710;Height=1014;";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "458E4940-0000-15E4-5CA7-AEB600031B13";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "458E4940-0000-15E4-5CA7-AEB600031B14";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "458E4940-0000-15E4-5CA7-AEB600031B15";
	setAttr ".ai_translator" -type "string" "exr";
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "458E4940-0000-15E4-5CA7-B58A000322A3";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 1000 -ast 0 -aet 1000 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "458E4940-0000-15E4-5CA7-B58A000322A4";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1276.190425479225 -902.38091652355627 ;
	setAttr ".tgi[0].vh" -type "double2" 1276.190425479225 901.19044038038567 ;
	setAttr -s 65 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 267.14285278320312;
	setAttr ".tgi[0].ni[0].y" -588.5714111328125;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -132.85714721679688;
	setAttr ".tgi[0].ni[1].y" -784.28570556640625;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 674.28570556640625;
	setAttr ".tgi[0].ni[2].y" -488.57144165039062;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 514.28570556640625;
	setAttr ".tgi[0].ni[3].y" 1095.7142333984375;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 514.28570556640625;
	setAttr ".tgi[0].ni[4].y" 201.42857360839844;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 207.14285278320312;
	setAttr ".tgi[0].ni[5].y" 504.28570556640625;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 207.14285278320312;
	setAttr ".tgi[0].ni[6].y" 311.42855834960938;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -1704.2857666015625;
	setAttr ".tgi[0].ni[7].y" 687.14288330078125;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 1170;
	setAttr ".tgi[0].ni[8].y" 938.5714111328125;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" -1362.857177734375;
	setAttr ".tgi[0].ni[9].y" 812.85711669921875;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -100;
	setAttr ".tgi[0].ni[10].y" 890;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" -100;
	setAttr ".tgi[0].ni[11].y" 427.14285278320312;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 207.14285278320312;
	setAttr ".tgi[0].ni[12].y" 921.4285888671875;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 1477.142822265625;
	setAttr ".tgi[0].ni[13].y" 615.71429443359375;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" -714.28570556640625;
	setAttr ".tgi[0].ni[14].y" 802.85711669921875;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 514.28570556640625;
	setAttr ".tgi[0].ni[15].y" 300;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 862.85711669921875;
	setAttr ".tgi[0].ni[16].y" 1017.1428833007812;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 862.85711669921875;
	setAttr ".tgi[0].ni[17].y" 88.571426391601562;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 514.28570556640625;
	setAttr ".tgi[0].ni[18].y" 827.14288330078125;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" -92.857139587402344;
	setAttr ".tgi[0].ni[19].y" 575.71429443359375;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 4544.28564453125;
	setAttr ".tgi[0].ni[20].y" -58540;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 4544.28564453125;
	setAttr ".tgi[0].ni[21].y" -58414.28515625;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 4544.28564453125;
	setAttr ".tgi[0].ni[22].y" -58288.5703125;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 4541.4287109375;
	setAttr ".tgi[0].ni[23].y" -29808.572265625;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 4544.28564453125;
	setAttr ".tgi[0].ni[24].y" -58162.85546875;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 4544.28564453125;
	setAttr ".tgi[0].ni[25].y" -58037.14453125;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 4544.28564453125;
	setAttr ".tgi[0].ni[26].y" -57911.4296875;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" -1021.4285888671875;
	setAttr ".tgi[0].ni[27].y" 707.14288330078125;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" -714.28570556640625;
	setAttr ".tgi[0].ni[28].y" 705.71429443359375;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 1477.142822265625;
	setAttr ".tgi[0].ni[29].y" 227.14285278320312;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 60;
	setAttr ".tgi[0].ni[30].y" 435.71429443359375;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" -247.14285278320312;
	setAttr ".tgi[0].ni[31].y" 834.28570556640625;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 827.14288330078125;
	setAttr ".tgi[0].ni[32].y" 352.85714721679688;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" -92.857139587402344;
	setAttr ".tgi[0].ni[33].y" -228.57142639160156;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" -100;
	setAttr ".tgi[0].ni[34].y" 792.85711669921875;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[35].y" -928.5714111328125;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" -2011.4285888671875;
	setAttr ".tgi[0].ni[36].y" 615.71429443359375;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 1170;
	setAttr ".tgi[0].ni[37].y" 35.714286804199219;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" -800;
	setAttr ".tgi[0].ni[38].y" -687.14288330078125;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 1477.142822265625;
	setAttr ".tgi[0].ni[39].y" 32.857143402099609;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 60;
	setAttr ".tgi[0].ni[40].y" 834.28570556640625;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 1477.142822265625;
	setAttr ".tgi[0].ni[41].y" -258.57144165039062;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 862.85711669921875;
	setAttr ".tgi[0].ni[42].y" 650;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 1477.142822265625;
	setAttr ".tgi[0].ni[43].y" -744.28570556640625;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 1170;
	setAttr ".tgi[0].ni[44].y" 644.28570556640625;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 574.28570556640625;
	setAttr ".tgi[0].ni[45].y" -588.5714111328125;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" -1362.857177734375;
	setAttr ".tgi[0].ni[46].y" 715.71429443359375;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[47].y" -821.4285888671875;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" -1704.2857666015625;
	setAttr ".tgi[0].ni[48].y" 421.42855834960938;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 1477.142822265625;
	setAttr ".tgi[0].ni[49].y" 907.14288330078125;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 1477.142822265625;
	setAttr ".tgi[0].ni[50].y" -1035.7142333984375;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" -1021.4285888671875;
	setAttr ".tgi[0].ni[51].y" 804.28570556640625;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 1825.7142333984375;
	setAttr ".tgi[0].ni[52].y" -802.85711669921875;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" -940;
	setAttr ".tgi[0].ni[53].y" 448.57144165039062;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" -1362.857177734375;
	setAttr ".tgi[0].ni[54].y" 568.5714111328125;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 4544.28564453125;
	setAttr ".tgi[0].ni[55].y" -57785.71484375;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" -1021.4285888671875;
	setAttr ".tgi[0].ni[56].y" 610;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 862.85711669921875;
	setAttr ".tgi[0].ni[57].y" 804.28570556640625;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" -714.28570556640625;
	setAttr ".tgi[0].ni[58].y" 538.5714111328125;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" -92.857139587402344;
	setAttr ".tgi[0].ni[59].y" 30;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" -1202.857177734375;
	setAttr ".tgi[0].ni[60].y" 30;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 207.14285278320312;
	setAttr ".tgi[0].ni[61].y" 767.14288330078125;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" -100;
	setAttr ".tgi[0].ni[62].y" 524.28570556640625;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" -1202.857177734375;
	setAttr ".tgi[0].ni[63].y" 155.71427917480469;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" -407.14285278320312;
	setAttr ".tgi[0].ni[64].y" 684.28570556640625;
	setAttr ".tgi[0].ni[64].nvs" 18304;
select -ne :time1;
	setAttr ".o" 316;
	setAttr ".unw" 316;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "/Volumes/Projects/Production/packages/projects/Locke_And_Key/bin/colorpipeline/ocio/config_cg.ocio";
	setAttr ".vtn" -type "string" "sRGB (ACES)";
	setAttr ".wsn" -type "string" "ACES - ACEScg";
	setAttr ".otn" -type "string" "sRGB (ACES)";
	setAttr ".potn" -type "string" "sRGB (ACES)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "rebuildCurve2.oc" "rib_curvBShape.cr";
connectAttr "rebuildCurve1.oc" "rib_curvAShape.cr";
connectAttr "cluster3Handle_parentConstraint1.ctx" "cluster3Handle.tx";
connectAttr "cluster3Handle_parentConstraint1.cty" "cluster3Handle.ty";
connectAttr "cluster3Handle_parentConstraint1.ctz" "cluster3Handle.tz";
connectAttr "cluster3Handle_parentConstraint1.crx" "cluster3Handle.rx";
connectAttr "cluster3Handle_parentConstraint1.cry" "cluster3Handle.ry";
connectAttr "cluster3Handle_parentConstraint1.crz" "cluster3Handle.rz";
connectAttr "cluster3Handle_scaleConstraint1.csx" "cluster3Handle.sx";
connectAttr "cluster3Handle_scaleConstraint1.csy" "cluster3Handle.sy";
connectAttr "cluster3Handle_scaleConstraint1.csz" "cluster3Handle.sz";
connectAttr "cluster3Handle.ro" "cluster3Handle_parentConstraint1.cro";
connectAttr "cluster3Handle.pim" "cluster3Handle_parentConstraint1.cpim";
connectAttr "cluster3Handle.rp" "cluster3Handle_parentConstraint1.crp";
connectAttr "cluster3Handle.rpt" "cluster3Handle_parentConstraint1.crt";
connectAttr "ctrl_rib_mid.t" "cluster3Handle_parentConstraint1.tg[0].tt";
connectAttr "ctrl_rib_mid.rp" "cluster3Handle_parentConstraint1.tg[0].trp";
connectAttr "ctrl_rib_mid.rpt" "cluster3Handle_parentConstraint1.tg[0].trt";
connectAttr "ctrl_rib_mid.r" "cluster3Handle_parentConstraint1.tg[0].tr";
connectAttr "ctrl_rib_mid.ro" "cluster3Handle_parentConstraint1.tg[0].tro";
connectAttr "ctrl_rib_mid.s" "cluster3Handle_parentConstraint1.tg[0].ts";
connectAttr "ctrl_rib_mid.pm" "cluster3Handle_parentConstraint1.tg[0].tpm";
connectAttr "cluster3Handle_parentConstraint1.w0" "cluster3Handle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster3Handle.pim" "cluster3Handle_scaleConstraint1.cpim";
connectAttr "ctrl_rib_mid.s" "cluster3Handle_scaleConstraint1.tg[0].ts";
connectAttr "ctrl_rib_mid.pm" "cluster3Handle_scaleConstraint1.tg[0].tpm";
connectAttr "cluster3Handle_scaleConstraint1.w0" "cluster3Handle_scaleConstraint1.tg[0].tw"
		;
connectAttr "cluster1Handle_parentConstraint1.ctx" "cluster1Handle.tx";
connectAttr "cluster1Handle_parentConstraint1.cty" "cluster1Handle.ty";
connectAttr "cluster1Handle_parentConstraint1.ctz" "cluster1Handle.tz";
connectAttr "cluster1Handle_parentConstraint1.crx" "cluster1Handle.rx";
connectAttr "cluster1Handle_parentConstraint1.cry" "cluster1Handle.ry";
connectAttr "cluster1Handle_parentConstraint1.crz" "cluster1Handle.rz";
connectAttr "cluster1Handle_scaleConstraint1.csx" "cluster1Handle.sx";
connectAttr "cluster1Handle_scaleConstraint1.csy" "cluster1Handle.sy";
connectAttr "cluster1Handle_scaleConstraint1.csz" "cluster1Handle.sz";
connectAttr "cluster1Handle.ro" "cluster1Handle_parentConstraint1.cro";
connectAttr "cluster1Handle.pim" "cluster1Handle_parentConstraint1.cpim";
connectAttr "cluster1Handle.rp" "cluster1Handle_parentConstraint1.crp";
connectAttr "cluster1Handle.rpt" "cluster1Handle_parentConstraint1.crt";
connectAttr "ctrl_rib_end.t" "cluster1Handle_parentConstraint1.tg[0].tt";
connectAttr "ctrl_rib_end.rp" "cluster1Handle_parentConstraint1.tg[0].trp";
connectAttr "ctrl_rib_end.rpt" "cluster1Handle_parentConstraint1.tg[0].trt";
connectAttr "ctrl_rib_end.r" "cluster1Handle_parentConstraint1.tg[0].tr";
connectAttr "ctrl_rib_end.ro" "cluster1Handle_parentConstraint1.tg[0].tro";
connectAttr "ctrl_rib_end.s" "cluster1Handle_parentConstraint1.tg[0].ts";
connectAttr "ctrl_rib_end.pm" "cluster1Handle_parentConstraint1.tg[0].tpm";
connectAttr "cluster1Handle_parentConstraint1.w0" "cluster1Handle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster1Handle.pim" "cluster1Handle_scaleConstraint1.cpim";
connectAttr "ctrl_rib_end.s" "cluster1Handle_scaleConstraint1.tg[0].ts";
connectAttr "ctrl_rib_end.pm" "cluster1Handle_scaleConstraint1.tg[0].tpm";
connectAttr "cluster1Handle_scaleConstraint1.w0" "cluster1Handle_scaleConstraint1.tg[0].tw"
		;
connectAttr "cluster2Handle_parentConstraint1.ctx" "cluster2Handle.tx";
connectAttr "cluster2Handle_parentConstraint1.cty" "cluster2Handle.ty";
connectAttr "cluster2Handle_parentConstraint1.ctz" "cluster2Handle.tz";
connectAttr "cluster2Handle_parentConstraint1.crx" "cluster2Handle.rx";
connectAttr "cluster2Handle_parentConstraint1.cry" "cluster2Handle.ry";
connectAttr "cluster2Handle_parentConstraint1.crz" "cluster2Handle.rz";
connectAttr "cluster2Handle_scaleConstraint1.csx" "cluster2Handle.sx";
connectAttr "cluster2Handle_scaleConstraint1.csy" "cluster2Handle.sy";
connectAttr "cluster2Handle_scaleConstraint1.csz" "cluster2Handle.sz";
connectAttr "cluster2Handle.ro" "cluster2Handle_parentConstraint1.cro";
connectAttr "cluster2Handle.pim" "cluster2Handle_parentConstraint1.cpim";
connectAttr "cluster2Handle.rp" "cluster2Handle_parentConstraint1.crp";
connectAttr "cluster2Handle.rpt" "cluster2Handle_parentConstraint1.crt";
connectAttr "ctrl_rib_start.t" "cluster2Handle_parentConstraint1.tg[0].tt";
connectAttr "ctrl_rib_start.rp" "cluster2Handle_parentConstraint1.tg[0].trp";
connectAttr "ctrl_rib_start.rpt" "cluster2Handle_parentConstraint1.tg[0].trt";
connectAttr "ctrl_rib_start.r" "cluster2Handle_parentConstraint1.tg[0].tr";
connectAttr "ctrl_rib_start.ro" "cluster2Handle_parentConstraint1.tg[0].tro";
connectAttr "ctrl_rib_start.s" "cluster2Handle_parentConstraint1.tg[0].ts";
connectAttr "ctrl_rib_start.pm" "cluster2Handle_parentConstraint1.tg[0].tpm";
connectAttr "cluster2Handle_parentConstraint1.w0" "cluster2Handle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2Handle.pim" "cluster2Handle_scaleConstraint1.cpim";
connectAttr "ctrl_rib_start.s" "cluster2Handle_scaleConstraint1.tg[0].ts";
connectAttr "ctrl_rib_start.pm" "cluster2Handle_scaleConstraint1.tg[0].tpm";
connectAttr "cluster2Handle_scaleConstraint1.w0" "cluster2Handle_scaleConstraint1.tg[0].tw"
		;
connectAttr "cluster3GroupId.id" "RibBaseShape.iog.og[3].gid";
connectAttr "cluster3Set.mwc" "RibBaseShape.iog.og[3].gco";
connectAttr "groupId4.id" "RibBaseShape.iog.og[4].gid";
connectAttr "tweakSet2.mwc" "RibBaseShape.iog.og[4].gco";
connectAttr "groupId5.id" "RibBaseShape.iog.og[7].gid";
connectAttr "cluster1Set.mwc" "RibBaseShape.iog.og[7].gco";
connectAttr "groupId6.id" "RibBaseShape.iog.og[8].gid";
connectAttr "cluster2Set.mwc" "RibBaseShape.iog.og[8].gco";
connectAttr "cluster2.og[1]" "RibBaseShape.cr";
connectAttr "tweak2.pl[0].cp[0]" "RibBaseShape.twl";
connectAttr "cluster1GroupId.id" "RibDriveShape.iog.og[0].gid";
connectAttr "cluster1Set.mwc" "RibDriveShape.iog.og[0].gco";
connectAttr "groupId2.id" "RibDriveShape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "RibDriveShape.iog.og[1].gco";
connectAttr "cluster2GroupId.id" "RibDriveShape.iog.og[2].gid";
connectAttr "cluster2Set.mwc" "RibDriveShape.iog.og[2].gco";
connectAttr "cluster2.og[0]" "RibDriveShape.cr";
connectAttr "tweak1.pl[0].cp[0]" "RibDriveShape.twl";
connectAttr "makeNurbPlane1.os" "RibDriveShape1Orig.cr";
connectAttr "loft1.os" "ribOutShape.cr";
connectAttr "follicleShape1.ot" "follicle1.t";
connectAttr "follicleShape1.or" "follicle1.r";
connectAttr "RibDriveShape.l" "follicleShape1.is";
connectAttr "RibDriveShape.wm" "follicleShape1.iwm";
connectAttr "makeNurbCircle1.oc" "ctrl_rib_endShape.cr";
connectAttr "ctrl_rib_mid_follicle_parentConstraint.ctx" "ctrl_rib_mid_offset.tx"
		;
connectAttr "ctrl_rib_mid_follicle_parentConstraint.cty" "ctrl_rib_mid_offset.ty"
		;
connectAttr "ctrl_rib_mid_follicle_parentConstraint.ctz" "ctrl_rib_mid_offset.tz"
		;
connectAttr "ctrl_rib_mid_follicle_parentConstraint.crx" "ctrl_rib_mid_offset.rx"
		;
connectAttr "ctrl_rib_mid_follicle_parentConstraint.cry" "ctrl_rib_mid_offset.ry"
		;
connectAttr "ctrl_rib_mid_follicle_parentConstraint.crz" "ctrl_rib_mid_offset.rz"
		;
connectAttr "ctrl_rib_mid_offset.ro" "ctrl_rib_mid_follicle_parentConstraint.cro"
		;
connectAttr "ctrl_rib_mid_offset.pim" "ctrl_rib_mid_follicle_parentConstraint.cpim"
		;
connectAttr "ctrl_rib_mid_offset.rp" "ctrl_rib_mid_follicle_parentConstraint.crp"
		;
connectAttr "ctrl_rib_mid_offset.rpt" "ctrl_rib_mid_follicle_parentConstraint.crt"
		;
connectAttr "follicle1.t" "ctrl_rib_mid_follicle_parentConstraint.tg[0].tt";
connectAttr "follicle1.rp" "ctrl_rib_mid_follicle_parentConstraint.tg[0].trp";
connectAttr "follicle1.rpt" "ctrl_rib_mid_follicle_parentConstraint.tg[0].trt";
connectAttr "follicle1.r" "ctrl_rib_mid_follicle_parentConstraint.tg[0].tr";
connectAttr "follicle1.ro" "ctrl_rib_mid_follicle_parentConstraint.tg[0].tro";
connectAttr "follicle1.s" "ctrl_rib_mid_follicle_parentConstraint.tg[0].ts";
connectAttr "follicle1.pm" "ctrl_rib_mid_follicle_parentConstraint.tg[0].tpm";
connectAttr "ctrl_rib_mid_follicle_parentConstraint.w0" "ctrl_rib_mid_follicle_parentConstraint.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "cluster1GroupParts.og" "cluster1.ip[0].ig";
connectAttr "cluster1GroupId.id" "cluster1.ip[0].gi";
connectAttr "groupParts5.og" "cluster1.ip[1].ig";
connectAttr "groupId5.id" "cluster1.ip[1].gi";
connectAttr "cluster1Handle.wm" "cluster1.ma";
connectAttr "cluster1HandleShape.x" "cluster1.x";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "cluster1GroupId.msg" "cluster1Set.gn" -na;
connectAttr "groupId5.msg" "cluster1Set.gn" -na;
connectAttr "RibDriveShape.iog.og[0]" "cluster1Set.dsm" -na;
connectAttr "RibBaseShape.iog.og[7]" "cluster1Set.dsm" -na;
connectAttr "cluster1.msg" "cluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "cluster1GroupParts.ig";
connectAttr "cluster1GroupId.id" "cluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "RibDriveShape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "RibDriveShape1Orig.ws" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "cluster2GroupParts.og" "cluster2.ip[0].ig";
connectAttr "cluster2GroupId.id" "cluster2.ip[0].gi";
connectAttr "groupParts6.og" "cluster2.ip[1].ig";
connectAttr "groupId6.id" "cluster2.ip[1].gi";
connectAttr "cluster2Handle.wm" "cluster2.ma";
connectAttr "cluster2HandleShape.x" "cluster2.x";
connectAttr "cluster2GroupId.msg" "cluster2Set.gn" -na;
connectAttr "groupId6.msg" "cluster2Set.gn" -na;
connectAttr "RibDriveShape.iog.og[2]" "cluster2Set.dsm" -na;
connectAttr "RibBaseShape.iog.og[8]" "cluster2Set.dsm" -na;
connectAttr "cluster2.msg" "cluster2Set.ub[0]";
connectAttr "cluster1.og[0]" "cluster2GroupParts.ig";
connectAttr "cluster2GroupId.id" "cluster2GroupParts.gi";
connectAttr "cluster3GroupParts.og" "cluster3.ip[0].ig";
connectAttr "cluster3GroupId.id" "cluster3.ip[0].gi";
connectAttr "cluster3Handle.wm" "cluster3.ma";
connectAttr "cluster3HandleShape.x" "cluster3.x";
connectAttr "groupParts4.og" "tweak2.ip[0].ig";
connectAttr "groupId4.id" "tweak2.ip[0].gi";
connectAttr "cluster3GroupId.msg" "cluster3Set.gn" -na;
connectAttr "RibBaseShape.iog.og[3]" "cluster3Set.dsm" -na;
connectAttr "cluster3.msg" "cluster3Set.ub[0]";
connectAttr "tweak2.og[0]" "cluster3GroupParts.ig";
connectAttr "cluster3GroupId.id" "cluster3GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet2.gn" -na;
connectAttr "RibBaseShape.iog.og[4]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "RibBaseShape2Orig.ws" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "cluster3.og[0]" "groupParts5.ig";
connectAttr "groupId5.id" "groupParts5.gi";
connectAttr "cluster1.og[1]" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "RibBaseShape.ws" "curveFromSurfaceIso1.is";
connectAttr "RibBaseShape.ws" "curveFromSurfaceIso2.is";
connectAttr "curveFromSurfaceIso1.oc" "rebuildCurve1.ic";
connectAttr "curveFromSurfaceIso2.oc" "rebuildCurve2.ic";
connectAttr "rib_curvAShape.ws" "loft1.ic[0]";
connectAttr "rib_curvBShape.ws" "loft1.ic[1]";
connectAttr "makeNurbPlane1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "RibBaseShape2Orig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "follicleGroup.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "follicleShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "rib_curvBShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "rebuildCurve1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "rebuildCurve2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "cluster1Handle_scaleConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "ctrl_rib_mid_follicle_parentConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "cluster1HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "tweak1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn";
connectAttr "curveFromSurfaceIso2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "RibDriveShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn";
connectAttr "cluster3Set.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn";
connectAttr "cluster1Set.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn";
connectAttr "rib_curvAShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn";
connectAttr "follicle1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn";
connectAttr "loft1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn";
connectAttr "cluster3Handle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "RibBaseShape1Orig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr ":TurtleUIOptions.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr ":TurtleBakeLayerManager.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr ":TurtleDefaultBakeLayer.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr ":defaultArnoldRenderOptions.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr ":defaultArnoldFilter.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr ":defaultArnoldDriver.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr ":defaultArnoldDisplayDriver.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "cluster2HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "cluster2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn";
connectAttr "tweakSet1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn";
connectAttr "RibDrive.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn";
connectAttr "makeNurbCircle1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "ctrl_rib_end_offset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "ribSetup.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn";
connectAttr "cluster2Set.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn";
connectAttr "rib_curvB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn";
connectAttr "ctrl_rib_end.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn";
connectAttr "ribOutShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn";
connectAttr "ctrl_rib_midShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "cluster3Handle_scaleConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "ctrl_rib_endShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "tweakSet2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn";
connectAttr "cluster3Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn";
connectAttr "cluster1Handle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "cluster3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn";
connectAttr "RibDriveShape1Orig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "cluster1Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn";
connectAttr "ribOut.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn";
connectAttr "ctrl_rib_start.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn";
connectAttr "ctrl_rib_mid_offset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "cluster2Handle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "cluster1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn";
connectAttr "rib_curvA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn";
connectAttr "RibBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn";
connectAttr "cluster2Handle_scaleConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr ":TurtleRenderOptions.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "cluster2Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn";
connectAttr "cluster3HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "tweak2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn";
connectAttr "defaultRenderLayer.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "ctrl_rib_startShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "ctrl_rib_mid.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn";
connectAttr "curveFromSurfaceIso1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "ctrl_rib_start_offset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "RibBaseShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "RibDriveShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RibBaseShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ribOutShape.iog" ":initialShadingGroup.dsm" -na;
// End of ribAdvanced.ma
