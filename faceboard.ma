//Maya ASCII 2015 scene
//Name: faceboard.ma
//Last modified: Wed, Mar 29, 2017 04:29:49 PM
//Codeset: UTF-8
requires maya "2015";
requires -nodeType "ilrOptionsNode" -nodeType "ilrUIOptionsNode" -nodeType "ilrBakeLayerManager"
		 -nodeType "ilrBakeLayer" "Turtle" "2015.0.0";
requires -nodeType "delightRenderGlobals" "plugin_3delight_for_maya" "8.0.46";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201503261530-955654";
fileInfo "osv" "Linux 3.10.0-327.el7.x86_64 #1 SMP Thu Nov 19 22:10:57 UTC 2015 x86_64";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.9997075161076503 30.390802930719904 113.1185659207103 ;
	setAttr ".r" -type "double3" -2.7052663843809328 -3.7999999999999252 -2.4902833117159579e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 114.96078851276975;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 8.2984256278424038 22.18326916122065 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 150.6748866044006 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 150.6748866044006;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 150.6748866044006 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 150.6748866044006;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 150.6748866044006 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 150.6748866044006;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "ctrl_faceboard_facial";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 24.564146963560564 149.24884315662524 -0.002140337942994508 ;
	setAttr ".s" -type "double3" 100 100 100 ;
	setAttr ".rp" -type "double3" -24.564146963560564 -149.24884315662524 0.002140337942994508 ;
	setAttr ".sp" -type "double3" -24.564146963560564 -149.24884315662524 0.002140337942994508 ;
createNode transform -n "cam_faceboard" -p "ctrl_faceboard_facial";
	setAttr -k off ".v" no;
	setAttr ".t" -type "double3" -24.546615060790376 -149.01656583136992 0.63445061816069748 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.17985254782162738 0.17985254782162741 0.17985254782162741 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 3.1948230340650846e-16 -7.9870575851627115e-17 ;
	setAttr ".rpt" -type "double3" 9.7319479661066569e-22 0 2.7879864008413703e-19 ;
	setAttr ".sp" -type "double3" 6.2172489379008766e-15 1.0658141036401503e-13 -4.4408920985006262e-16 ;
	setAttr ".spt" -type "double3" -5.0990608759780971e-15 -8.7412472159624515e-14 3.642186339984355e-16 ;
createNode camera -n "cam_faceboardShape" -p "cam_faceboard";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".fl" 50;
	setAttr ".coi" 28.415050272278066;
	setAttr ".ow" 29.999999999999993;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".tp" -type "double3" 0.26951883245513331 -0.42048645019531228 -0.0093154944479465485 ;
createNode transform -n "cam_lipsync" -p "ctrl_faceboard_facial";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -24.721 -149.009 0.8 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.17985254782162738 0.17985254782162741 0.17985254782162741 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode camera -n "cam_lipsyncShape" -p "cam_lipsync";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".fl" 50;
	setAttr ".coi" 5.3607698988521504;
	setAttr ".ow" 29.999999999999993;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
createNode transform -n "grp_faceboard_lips_frame" -p "ctrl_faceboard_facial";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 -8.0341854021380037 0 ;
	setAttr ".rp" -type "double3" -24.562505213874843 -141.01820329586096 0 ;
	setAttr ".sp" -type "double3" -24.562505213874843 -141.01820329586096 0 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF3.5527136788005009e-15\nsS'translateY'\np6\nF-11\nsS'translateZ'\np7\nF0\nsS'scaleX'\np8\nF1\nsS'scaleY'\np9\nF1\nsS'scaleZ'\np10\nF1\nsS'rotateX'\np11\nF0\nsS'rotateY'\np12\nF0\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF3.5527136788005009e-15\nsg6\nF-11\nsg7\nF0\nsg8\nF1\nsg9\nF1\nsg10\nF1\nsg11\nF0\nsg12\nF0\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode nurbsCurve -n "grp_faceboard_lips_frameShape" -p "grp_faceboard_lips_frame";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-24.503521477509025 -140.97483148895483 0
		-24.503521477509025 -141.06157510276708 0
		-24.621488950240661 -141.06157510276708 0
		-24.621488950240661 -140.97483148895483 0
		-24.503521477509025 -140.97483148895483 0
		;
createNode transform -n "grp_faceboard_lipUpp_offset" -p "grp_faceboard_lips_frame";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -3.5527136788004997e-15 2.5 0 ;
	setAttr ".rp" -type "double3" -24.562505213874839 -143.49070329586095 0 ;
	setAttr ".sp" -type "double3" -24.562505213874839 -143.49070329586095 0 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nsS'translateY'\np6\nF-8.5\nsS'translateZ'\np7\nF0\nsS'scaleX'\np8\nF1\nsS'scaleY'\np9\nF1\nsS'scaleZ'\np10\nF1\nsS'rotateX'\np11\nF0\nsS'rotateY'\np12\nF0\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF0\nsg6\nF-8.5\nsg7\nF0\nsg8\nF1\nsg9\nF1\nsg10\nF1\nsg11\nF0\nsg12\nF0\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode transform -n "ctrl_faceboard_lipUpp" -p "grp_faceboard_lipUpp_offset";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -24.562505213874839 -143.49070329586095 0 ;
	setAttr ".sp" -type "double3" -24.562505213874839 -143.49070329586095 0 ;
	setAttr ".mntl" -type "double3" -0.01 -0.01 -1 ;
	setAttr ".mxtl" -type "double3" 0.01 0.01 1 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nsS'translateY'\np6\nF0\nssS'neutralPose'\np7\n(dp8\ng5\nF0\nsg6\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" -1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
createNode nurbsCurve -n "ctrl_faceboard_lipUppShape1" -p "ctrl_faceboard_lipUpp";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		-24.560096268477793 -143.48829434937286 3.165451414451956e-10
		-24.560096268477793 -143.48829434937286 3.165451414451956e-10
		-24.564914161704969 -143.48829434937286 3.165451414451956e-10
		-24.564914161704969 -143.48829434937286 3.165451414451956e-10
		-24.564914161704969 -143.49311224260003 3.1654514221997189e-10
		-24.564914161704969 -143.49311224260003 3.1654514221997189e-10
		-24.560096268477793 -143.49311224260003 3.1654514221997189e-10
		-24.560096268477793 -143.49311224260003 3.1654514221997189e-10
		-24.560096268477793 -143.48829434937286 3.165451414451956e-10
		-24.560096268477793 -143.48829434937286 3.165451414451956e-10
		-24.564914161704969 -143.48829434937286 3.165451414451956e-10
		;
createNode nurbsCurve -n "grp_faceboard_lipUpp_offsetShape" -p "grp_faceboard_lipUpp_offset";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-24.55161521387484 -143.47970329586096 0
		-24.55161521387484 -143.50170329586095 0
		-24.573395213874839 -143.50170329586095 0
		-24.573395213874839 -143.47970329586096 0
		-24.55161521387484 -143.47970329586096 0
		;
createNode transform -n "grp_faceboard_lipLow_offset" -p "grp_faceboard_lips_frame";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -3.5527136788004997e-15 -2.5 0 ;
	setAttr ".rp" -type "double3" -24.562505213874839 -138.54570329586096 0 ;
	setAttr ".sp" -type "double3" -24.562505213874839 -138.54570329586096 0 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nsS'translateY'\np6\nF-13.5\nsS'translateZ'\np7\nF0\nsS'scaleX'\np8\nF1\nsS'scaleY'\np9\nF1\nsS'scaleZ'\np10\nF1\nsS'rotateX'\np11\nF0\nsS'rotateY'\np12\nF0\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF0\nsg6\nF-13.5\nsg7\nF0\nsg8\nF1\nsg9\nF1\nsg10\nF1\nsg11\nF0\nsg12\nF0\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode transform -n "ctrl_faceboard_lipLow" -p "grp_faceboard_lipLow_offset";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -24.562505213874839 -138.54570329586096 0 ;
	setAttr ".sp" -type "double3" -24.562505213874839 -138.54570329586096 0 ;
	setAttr ".mntl" -type "double3" -0.01 -0.01 -1 ;
	setAttr ".mxtl" -type "double3" 0.01 0.01 1 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nsS'translateY'\np6\nF0\nssS'neutralPose'\np7\n(dp8\ng5\nF0\nsg6\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" -1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
createNode nurbsCurve -n "ctrl_faceboard_lipLowShape1" -p "ctrl_faceboard_lipLow";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		-24.560096268477793 -138.54329434937287 3.165451414451956e-10
		-24.560096268477793 -138.54329434937287 3.165451414451956e-10
		-24.564914161704969 -138.54329434937287 3.165451414451956e-10
		-24.564914161704969 -138.54329434937287 3.165451414451956e-10
		-24.564914161704969 -138.54811224260004 3.1654514221997189e-10
		-24.564914161704969 -138.54811224260004 3.1654514221997189e-10
		-24.560096268477793 -138.54811224260004 3.1654514221997189e-10
		-24.560096268477793 -138.54811224260004 3.1654514221997189e-10
		-24.560096268477793 -138.54329434937287 3.165451414451956e-10
		-24.560096268477793 -138.54329434937287 3.165451414451956e-10
		-24.564914161704969 -138.54329434937287 3.165451414451956e-10
		;
createNode nurbsCurve -n "grp_faceboard_lipLow_offsetShape" -p "grp_faceboard_lipLow_offset";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-24.55161521387484 -138.53470329586096 0
		-24.55161521387484 -138.55670329586096 0
		-24.573395213874839 -138.55670329586096 0
		-24.573395213874839 -138.53470329586096 0
		-24.55161521387484 -138.53470329586096 0
		;
createNode transform -n "grp_faceboard_lipCorner_r_offset" -p "grp_faceboard_lips_frame";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -2.499999999999996 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 22.090005213874846 -141.01820329586096 -2.7052454178320173e-15 ;
	setAttr ".rpt" -type "double3" -44.180010427749693 0 2.7052454178320173e-15 ;
	setAttr ".sp" -type "double3" 22.090005213874846 -141.01820329586096 -2.7052454178320173e-15 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF-2.4999999999999929\nsS'translateY'\np6\nF-11\nsS'translateZ'\np7\nF0\nsS'scaleX'\np8\nF1\nsS'scaleY'\np9\nF1\nsS'scaleZ'\np10\nF-1\nsS'rotateX'\np11\nF0\nsS'rotateY'\np12\nF180\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF-2.4999999999999929\nsg6\nF-11\nsg7\nF0\nsg8\nF1\nsg9\nF1\nsg10\nF-1\nsg11\nF0\nsg12\nF180\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode nurbsCurve -n "grp_faceboard_lipCorner_r_offsetShape" -p "grp_faceboard_lipCorner_r_offset";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		22.100895213874846 -141.00720329586096 -2.7052454178320173e-15
		22.100895213874846 -141.02920329586095 -2.7052454178320173e-15
		22.079115213874847 -141.02920329586095 -2.7052454178320173e-15
		22.079115213874847 -141.00720329586096 -2.7052454178320173e-15
		22.100895213874846 -141.00720329586096 -2.7052454178320173e-15
		;
createNode transform -n "ctrl_faceboard_lipCorner_r" -p "grp_faceboard_lipCorner_r_offset";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "roundShape" -ln "roundShape" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Up" -ln "Up" -min -1 -max 1 -at "double";
	addAttr -ci true -sn "Bot" -ln "Bot" -min -1 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 22.090005213874846 -141.01820329586096 -2.7052454178320173e-15 ;
	setAttr ".sp" -type "double3" 22.090005213874846 -141.01820329586096 -2.7052454178320173e-15 ;
	setAttr ".mntl" -type "double3" -0.01 -0.01 -1 ;
	setAttr ".mxtl" -type "double3" 0.01 0.01 1 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'Bot'\np5\nF0\nsS'Up'\np6\nF0\nsS'translateX'\np7\nF0\nsS'translateY'\np8\nF0\nsS'roundShape'\np9\nF0\nssS'neutralPose'\np10\n(dp11\ng5\nF0\nsg6\nF0\nsg7\nF0\nsg8\nF0\nsg9\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" 1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
	setAttr -l on -k on ".roundShape";
	setAttr -k on ".Up";
	setAttr -k on ".Bot";
createNode nurbsCurve -n "ctrl_faceboard_lipCorner_rShape1" -p "ctrl_faceboard_lipCorner_r";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		22.092414159271893 -141.01579434937287 -3.1654784669061342e-10
		22.092414159271893 -141.01579434937287 -3.1654784669061342e-10
		22.087596266044716 -141.01579434937287 -3.1654784669061342e-10
		22.087596266044716 -141.01579434937287 -3.1654784669061342e-10
		22.087596266044716 -141.02061224260004 -3.1654784746538971e-10
		22.087596266044716 -141.02061224260004 -3.1654784746538971e-10
		22.092414159271893 -141.02061224260004 -3.1654784746538971e-10
		22.092414159271893 -141.02061224260004 -3.1654784746538971e-10
		22.092414159271893 -141.01579434937287 -3.1654784669061342e-10
		22.092414159271893 -141.01579434937287 -3.1654784669061342e-10
		22.087596266044716 -141.01579434937287 -3.1654784669061342e-10
		;
createNode transform -n "grp_faceboard_lipCorner_l_offset" -p "grp_faceboard_lips_frame";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 2.5000000000000036 0 0 ;
	setAttr ".rp" -type "double3" -27.035005213874847 -141.01820329586096 0 ;
	setAttr ".sp" -type "double3" -27.035005213874847 -141.01820329586096 0 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF2.5000000000000071\nsS'translateY'\np6\nF-11\nsS'translateZ'\np7\nF0\nsS'scaleX'\np8\nF1\nsS'scaleY'\np9\nF1\nsS'scaleZ'\np10\nF1\nsS'rotateX'\np11\nF0\nsS'rotateY'\np12\nF0\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF2.5000000000000071\nsg6\nF-11\nsg7\nF0\nsg8\nF1\nsg9\nF1\nsg10\nF1\nsg11\nF0\nsg12\nF0\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode nurbsCurve -n "grp_faceboard_lipCorner_l_offsetShape" -p "grp_faceboard_lipCorner_l_offset";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-27.024115213874847 -141.00720329586096 0
		-27.024115213874847 -141.02920329586095 0
		-27.045895213874847 -141.02920329586095 0
		-27.045895213874847 -141.00720329586096 0
		-27.024115213874847 -141.00720329586096 0
		;
createNode transform -n "ctrl_faceboard_lipCorner_l" -p "grp_faceboard_lipCorner_l_offset";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "roundShape" -ln "roundShape" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Up" -ln "Up" -min -1 -max 1 -at "double";
	addAttr -ci true -sn "Bot" -ln "Bot" -min -1 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -27.035005213874847 -141.01820329586096 0 ;
	setAttr ".sp" -type "double3" -27.035005213874847 -141.01820329586096 0 ;
	setAttr ".mntl" -type "double3" -0.01 -0.01 -1 ;
	setAttr ".mxtl" -type "double3" 0.01 0.01 1 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'Bot'\np5\nF0\nsS'Up'\np6\nF0\nsS'translateX'\np7\nF0\nsS'translateY'\np8\nF0\nsS'roundShape'\np9\nF0\nssS'neutralPose'\np10\n(dp11\ng5\nF0\nsg6\nF0\nsg7\nF0\nsg8\nF0\nsg9\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" 1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
	setAttr -l on -k on ".roundShape";
	setAttr -k on ".Up";
	setAttr -k on ".Bot";
createNode nurbsCurve -n "ctrl_faceboard_lipCorner_lShape1" -p "ctrl_faceboard_lipCorner_l";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		-27.0325962684778 -141.01579434937287 3.165451414451956e-10
		-27.0325962684778 -141.01579434937287 3.165451414451956e-10
		-27.037414161704977 -141.01579434937287 3.165451414451956e-10
		-27.037414161704977 -141.01579434937287 3.165451414451956e-10
		-27.037414161704977 -141.02061224260004 3.1654514221997189e-10
		-27.037414161704977 -141.02061224260004 3.1654514221997189e-10
		-27.0325962684778 -141.02061224260004 3.1654514221997189e-10
		-27.0325962684778 -141.02061224260004 3.1654514221997189e-10
		-27.0325962684778 -141.01579434937287 3.165451414451956e-10
		-27.0325962684778 -141.01579434937287 3.165451414451956e-10
		-27.037414161704977 -141.01579434937287 3.165451414451956e-10
		;
createNode transform -n "grp_faceboard_jaw_offset" -p "grp_faceboard_lips_frame";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -3.5527136788004997e-15 0 0 ;
	setAttr ".rp" -type "double3" -24.562505213874839 -141.01820329586096 0 ;
	setAttr ".sp" -type "double3" -24.562505213874839 -141.01820329586096 0 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nsS'translateY'\np6\nF-11\nsS'translateZ'\np7\nF0\nsS'scaleX'\np8\nF1\nsS'scaleY'\np9\nF1\nsS'scaleZ'\np10\nF1\nsS'rotateX'\np11\nF0\nsS'rotateY'\np12\nF0\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF0\nsg6\nF-11\nsg7\nF0\nsg8\nF1\nsg9\nF1\nsg10\nF1\nsg11\nF0\nsg12\nF0\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode transform -n "ctrl_faceboard_jaw" -p "grp_faceboard_jaw_offset";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -24.562505213874839 -141.01820329586096 0 ;
	setAttr ".sp" -type "double3" -24.562505213874839 -141.01820329586096 0 ;
	setAttr ".mntl" -type "double3" -0.01 -0.01 -1 ;
	setAttr ".mxtl" -type "double3" 0.01 0.01 1 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nsS'translateY'\np6\nF0\nssS'neutralPose'\np7\n(dp8\ng5\nF0\nsg6\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" -1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
createNode nurbsCurve -n "ctrl_faceboard_jawShape1" -p "ctrl_faceboard_jaw";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		-24.560096268477793 -141.01579434937287 3.165451414451956e-10
		-24.560096268477793 -141.01579434937287 3.165451414451956e-10
		-24.564914161704969 -141.01579434937287 3.165451414451956e-10
		-24.564914161704969 -141.01579434937287 3.165451414451956e-10
		-24.564914161704969 -141.02061224260004 3.1654514221997189e-10
		-24.564914161704969 -141.02061224260004 3.1654514221997189e-10
		-24.560096268477793 -141.02061224260004 3.1654514221997189e-10
		-24.560096268477793 -141.02061224260004 3.1654514221997189e-10
		-24.560096268477793 -141.01579434937287 3.165451414451956e-10
		-24.560096268477793 -141.01579434937287 3.165451414451956e-10
		-24.564914161704969 -141.01579434937287 3.165451414451956e-10
		;
createNode nurbsCurve -n "grp_faceboard_jaw_offsetShape" -p "grp_faceboard_jaw_offset";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-24.55161521387484 -141.00720329586096 0
		-24.55161521387484 -141.02920329586095 0
		-24.573395213874839 -141.02920329586095 0
		-24.573395213874839 -141.00720329586096 0
		-24.55161521387484 -141.00720329586096 0
		;
createNode transform -n "ctrl_faceboard_muzzle" -p "grp_faceboard_jaw_offset";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -24.562505213874839 -141.01820329586096 0 ;
	setAttr ".sp" -type "double3" -24.562505213874839 -141.01820329586096 0 ;
	setAttr ".mntl" -type "double3" -0.01 -0.01 -1 ;
	setAttr ".mxtl" -type "double3" 0.01 0.01 1 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nsS'translateY'\np6\nF0\nssS'neutralPose'\np7\n(dp8\ng5\nF0\nsg6\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" -1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
createNode nurbsCurve -n "ctrl_faceboard_muzzleShape1" -p "ctrl_faceboard_muzzle";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		-24.553578690951404 -141.0230487419893 3.165451414451956e-10
		-24.553578690951404 -141.0230487419893 3.165451414451956e-10
		-24.571431662406827 -141.0230487419893 3.165451414451956e-10
		-24.571431662406827 -141.0230487419893 3.165451414451956e-10
		-24.571431662406827 -141.0278666352165 3.1654514221997189e-10
		-24.571431662406827 -141.0278666352165 3.1654514221997189e-10
		-24.553578690951404 -141.0278666352165 3.1654514221997189e-10
		-24.553578690951404 -141.0278666352165 3.1654514221997189e-10
		-24.553578690951404 -141.0230487419893 3.165451414451956e-10
		-24.553578690951404 -141.0230487419893 3.165451414451956e-10
		-24.571431662406827 -141.0230487419893 3.165451414451956e-10
		;
createNode transform -n "atts_faceboard_lips" -p "grp_faceboard_lips_frame";
	addAttr -ci true -sn "LipUpp_UD" -ln "LipUpp_UD" -at "double";
	addAttr -ci true -sn "LipUpp_LR" -ln "LipUpp_LR" -at "double";
	addAttr -ci true -sn "LipLow_UD" -ln "LipLow_UD" -at "double";
	addAttr -ci true -sn "LipLow_LR" -ln "LipLow_LR" -at "double";
	addAttr -ci true -sn "LipCornerMid_L_UD" -ln "LipCornerMid_L_UD" -at "double";
	addAttr -ci true -sn "LipCornerMid_L_LR" -ln "LipCornerMid_L_LR" -at "double";
	addAttr -ci true -sn "LipCornerMid_R_UD" -ln "LipCornerMid_R_UD" -at "double";
	addAttr -ci true -sn "LipCornerMid_R_LR" -ln "LipCornerMid_R_LR" -at "double";
	addAttr -ci true -sn "LipUpp_L_UD" -ln "LipUpp_L_UD" -at "double";
	addAttr -ci true -sn "LipUpp_L_LR" -ln "LipUpp_L_LR" -at "double";
	addAttr -ci true -sn "LipUpp_R_UD" -ln "LipUpp_R_UD" -at "double";
	addAttr -ci true -sn "LipUpp_R_LR" -ln "LipUpp_R_LR" -at "double";
	addAttr -ci true -sn "LipLow_L_UD" -ln "LipLow_L_UD" -at "double";
	addAttr -ci true -sn "LipLow_L_LR" -ln "LipLow_L_LR" -at "double";
	addAttr -ci true -sn "LipLow_R_UD" -ln "LipLow_R_UD" -at "double";
	addAttr -ci true -sn "LipLow_R_LR" -ln "LipLow_R_LR" -at "double";
	addAttr -ci true -sn "Jaw_PT" -ln "Jaw_PT" -at "double";
	addAttr -ci true -sn "AutoLipsSquash" -ln "AutoLipsSquash" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "HeadLow_PT" -ln "HeadLow_PT" -nn "Head Low PT" -at "double";
	addAttr -ci true -sn "HeadLow_TW" -ln "HeadLow_TW" -nn "Head Low  TW" -at "double";
	addAttr -ci true -sn "LipCornerMid_L_FB" -ln "LipCornerMid_L_FB" -at "double";
	addAttr -ci true -sn "LipCornerMid_R_FB" -ln "LipCornerMid_R_FB" -at "double";
	addAttr -ci true -sn "LipLow_L_FB" -ln "LipLow_L_FB" -at "double";
	addAttr -ci true -sn "LipLow_R_FB" -ln "LipLow_R_FB" -at "double";
	addAttr -ci true -sn "LipUpp_L_FB" -ln "LipUpp_L_FB" -at "double";
	addAttr -ci true -sn "LipUpp_R_FB" -ln "LipUpp_R_FB" -at "double";
	addAttr -ci true -sn "LipLowInn_L_UD" -ln "LipLowInn_L_UD" -at "double";
	addAttr -ci true -sn "LipLowInn_L_LR" -ln "LipLowInn_L_LR" -at "double";
	addAttr -ci true -sn "LipLowInn_L_FB" -ln "LipLowInn_L_FB" -at "double";
	addAttr -ci true -sn "LipLowInn_R_UD" -ln "LipLowInn_R_UD" -at "double";
	addAttr -ci true -sn "LipLowInn_R_LR" -ln "LipLowInn_R_LR" -at "double";
	addAttr -ci true -sn "LipLowInn_R_FB" -ln "LipLowInn_R_FB" -at "double";
	addAttr -ci true -sn "LipUppInn_L_UD" -ln "LipUppInn_L_UD" -at "double";
	addAttr -ci true -sn "LipUppInn_L_LR" -ln "LipUppInn_L_LR" -at "double";
	addAttr -ci true -sn "LipUppInn_L_FB" -ln "LipUppInn_L_FB" -at "double";
	addAttr -ci true -sn "LipUppInn_R_UD" -ln "LipUppInn_R_UD" -at "double";
	addAttr -ci true -sn "LipUppInn_R_LR" -ln "LipUppInn_R_LR" -at "double";
	addAttr -ci true -sn "LipUppInn_R_FB" -ln "LipUppInn_R_FB" -at "double";
	addAttr -ci true -sn "LipUpp_FB" -ln "LipUpp_FB" -at "double";
	addAttr -ci true -sn "LipLow_FB" -ln "LipLow_FB" -at "double";
	addAttr -ci true -sn "LipCornerMidUpp_L_UD" -ln "LipCornerMidUpp_L_UD" -at "double";
	addAttr -ci true -sn "LipCornerMidUpp_R_UD" -ln "LipCornerMidUpp_R_UD" -at "double";
	addAttr -ci true -sn "LipCornerMidLow_L_UD" -ln "LipCornerMidLow_L_UD" -at "double";
	addAttr -ci true -sn "LipCornerMidLow_R_UD" -ln "LipCornerMidLow_R_UD" -at "double";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -24.787349805232321 -142.5748866044006 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rq" -type "double4" 0 0 0 6.953865086824836e-309 ;
	setAttr -k on ".LipUpp_UD";
	setAttr -k on ".LipUpp_LR";
	setAttr -k on ".LipLow_UD";
	setAttr -k on ".LipLow_LR";
	setAttr -k on ".LipCornerMid_L_UD";
	setAttr -k on ".LipCornerMid_L_LR";
	setAttr -k on ".LipCornerMid_R_UD";
	setAttr -k on ".LipCornerMid_R_LR";
	setAttr -k on ".LipUpp_L_UD";
	setAttr -k on ".LipUpp_L_LR";
	setAttr -k on ".LipUpp_R_UD";
	setAttr -k on ".LipUpp_R_LR";
	setAttr -k on ".LipLow_L_UD";
	setAttr -k on ".LipLow_L_LR";
	setAttr -k on ".LipLow_R_UD";
	setAttr -k on ".LipLow_R_LR";
	setAttr -k on ".Jaw_PT";
	setAttr -k on ".AutoLipsSquash";
	setAttr -k on ".HeadLow_PT";
	setAttr -k on ".HeadLow_TW";
	setAttr -k on ".LipCornerMid_L_FB";
	setAttr -k on ".LipCornerMid_R_FB";
	setAttr -k on ".LipLow_L_FB";
	setAttr -k on ".LipLow_R_FB";
	setAttr -k on ".LipUpp_L_FB";
	setAttr -k on ".LipUpp_R_FB";
	setAttr -k on ".LipLowInn_L_UD";
	setAttr -k on ".LipLowInn_L_LR";
	setAttr -k on ".LipLowInn_L_FB";
	setAttr -k on ".LipLowInn_R_UD";
	setAttr -k on ".LipLowInn_R_LR";
	setAttr -k on ".LipLowInn_R_FB";
	setAttr -k on ".LipUppInn_L_UD";
	setAttr -k on ".LipUppInn_L_LR";
	setAttr -k on ".LipUppInn_L_FB";
	setAttr -k on ".LipUppInn_R_UD";
	setAttr -k on ".LipUppInn_R_LR";
	setAttr -k on ".LipUppInn_R_FB";
	setAttr -k on ".LipUpp_FB";
	setAttr -k on ".LipLow_FB";
	setAttr -k on ".LipCornerMidUpp_L_UD";
	setAttr -k on ".LipCornerMidUpp_R_UD";
	setAttr -k on ".LipCornerMidLow_L_UD";
	setAttr -k on ".LipCornerMidLow_R_UD";
createNode transform -n "atts_faceboard_cheeks" -p "grp_faceboard_lips_frame";
	addAttr -ci true -sn "CheeksMid_L_UD" -ln "CheeksMid_L_UD" -at "double";
	addAttr -ci true -sn "CheeksMid_L_LR" -ln "CheeksMid_L_LR" -at "double";
	addAttr -ci true -sn "CheeksMid_L_FB" -ln "CheeksMid_L_FB" -at "double";
	addAttr -ci true -sn "CheeksMid_R_UD" -ln "CheeksMid_R_UD" -at "double";
	addAttr -ci true -sn "CheeksMid_R_LR" -ln "CheeksMid_R_LR" -at "double";
	addAttr -ci true -sn "CheeksMid_R_FB" -ln "CheeksMid_R_FB" -at "double";
	addAttr -ci true -sn "CheeksInn_L_UD" -ln "CheeksInn_L_UD" -at "double";
	addAttr -ci true -sn "CheeksInn_L_LR" -ln "CheeksInn_L_LR" -at "double";
	addAttr -ci true -sn "CheeksInn_L_FB" -ln "CheeksInn_L_FB" -at "double";
	addAttr -ci true -sn "CheeksInn_R_UD" -ln "CheeksInn_R_UD" -at "double";
	addAttr -ci true -sn "CheeksInn_R_LR" -ln "CheeksInn_R_LR" -at "double";
	addAttr -ci true -sn "CheeksInn_R_FB" -ln "CheeksInn_R_FB" -at "double";
	addAttr -ci true -sn "CheeksOut_L_UD" -ln "CheeksOut_L_UD" -at "double";
	addAttr -ci true -sn "CheeksOut_L_LR" -ln "CheeksOut_L_LR" -at "double";
	addAttr -ci true -sn "CheeksOut_L_FB" -ln "CheeksOut_L_FB" -at "double";
	addAttr -ci true -sn "CheeksOut_R_UD" -ln "CheeksOut_R_UD" -at "double";
	addAttr -ci true -sn "CheeksOut_R_LR" -ln "CheeksOut_R_LR" -at "double";
	addAttr -ci true -sn "CheeksOut_R_FB" -ln "CheeksOut_R_FB" -at "double";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -24.787349805232321 -142.5748866044006 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".CheeksMid_L_UD";
	setAttr -k on ".CheeksMid_L_LR";
	setAttr -k on ".CheeksMid_L_FB";
	setAttr -k on ".CheeksMid_R_UD";
	setAttr -k on ".CheeksMid_R_LR";
	setAttr -k on ".CheeksMid_R_FB";
	setAttr -k on ".CheeksInn_L_UD";
	setAttr -k on ".CheeksInn_L_LR";
	setAttr -k on ".CheeksInn_L_FB";
	setAttr -k on ".CheeksInn_R_UD";
	setAttr -k on ".CheeksInn_R_LR";
	setAttr -k on ".CheeksInn_R_FB";
	setAttr -k on ".CheeksOut_L_UD";
	setAttr -k on ".CheeksOut_L_LR";
	setAttr -k on ".CheeksOut_L_FB";
	setAttr -k on ".CheeksOut_R_UD";
	setAttr -k on ".CheeksOut_R_LR";
	setAttr -k on ".CheeksOut_R_FB";
createNode transform -n "atts_faceboard_jaw" -p "grp_faceboard_lips_frame";
	addAttr -ci true -sn "RawUD" -ln "RawUD" -at "double";
	addAttr -ci true -sn "RawLR" -ln "RawLR" -at "double";
	addAttr -ci true -sn "RawFB" -ln "RawFB" -at "double";
	addAttr -ci true -sn "RawTW" -ln "RawTW" -at "double";
	addAttr -ci true -sn "RawYW" -ln "RawYW" -at "double";
	addAttr -ci true -sn "RawPT" -ln "RawPT" -at "double";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -24.787349805232321 -142.5407012022626 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".RawUD";
	setAttr -k on ".RawLR";
	setAttr -k on ".RawFB";
	setAttr -k on ".RawTW";
	setAttr -k on ".RawYW";
	setAttr -k on ".RawPT";
createNode transform -n "lips" -p "grp_faceboard_lips_frame";
	setAttr ".tmp" yes;
	setAttr ".t" -type "double3" -24.489582707282139 -140.99538506287502 0.002140337942994508 ;
	setAttr ".s" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "curve346" -p "lips";
createNode nurbsCurve -n "curveShape346" -p "curve346";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 34 1 no 3
		39 0 0 0 0.0092195444572928942 0.0092195444572928942 0.0092195444572928942 0.21400723940012875 0.21400723940012875 0.21400723940012875 0.2500072394001287 0.2500072394001287
		 0.2500072394001287 0.28551780120925813 0.28551780120925813 0.28551780120925813 1.2855178012092581 1.2855178012092581 1.2855178012092581 1.8195178012092581 1.8195178012092581 1.8195178012092581 2.8195178012092583 2.8195178012092583
		 2.8195178012092583 2.8575178012092581 2.8575178012092581 2.8575178012092581 3.1385178012092583 3.1385178012092583 3.1385178012092583 3.1765178012092581 3.1765178012092581 3.1765178012092581 4.1765178012092576 4.1765178012092576
		 4.1765178012092576 4.8255178012092577 4.8255178012092577 4.8255178012092577
		37
		0.23500000000000001 0.7360000000000001 0
		0.23266666666666669 0.73799999999999999 0
		0.23033333333333336 0.73999999999999988 0
		0.22800000000000001 0.74199999999999999 0
		0.16033333333333336 0.73299999999999998 0
		0.092666666666666675 0.72399999999999987 0
		0.025000000000000005 0.71499999999999997 0
		0.025000000000000005 0.70299999999999996 0
		0.025000000000000005 0.69100000000000017 0
		0.025000000000000005 0.67899999999999994 0
		0.036666666666666667 0.67700000000000005 0
		0.048333333333333332 0.67500000000000016 0
		0.059999999999999998 0.67300000000000004 0
		0.075999999999999998 0.67000000000000004 0
		0.084000000000000005 0.66100000000000003 0
		0.084000000000000005 0.621 0
		0.084000000000000005 0.44300000000000006 0
		0.084000000000000005 0.26499999999999996 0
		0.084000000000000005 0.087000000000000008 0
		0.084000000000000005 0.044999999999999998 0
		0.075999999999999998 0.041000000000000002 0
		0.019 0.037999999999999999 0
		0.019 0.025333333333333333 0
		0.019 0.012666666666666666 0
		0.019 0 0
		0.11266666666666665 0 0
		0.20633333333333334 0 0
		0.29999999999999999 0 0
		0.29999999999999999 0.012666666666666666 0
		0.29999999999999999 0.025333333333333333 0
		0.29999999999999999 0.037999999999999999 0
		0.24299999999999999 0.041000000000000002 0
		0.23500000000000001 0.044999999999999998 0
		0.23500000000000001 0.087000000000000008 0
		0.23500000000000001 0.30333333333333329 0
		0.23500000000000001 0.51966666666666661 0
		0.23500000000000001 0.7360000000000001 0
		;
createNode transform -n "curve347" -p "lips";
	setAttr ".t" -type "double3" 0.309 0 0 ;
createNode nurbsCurve -n "curveShape347" -p "curve347";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 34 1 no 3
		39 0 0 0 1 1 1 1.038 1.038 1.038 1.319 1.319
		 1.319 1.357 1.357 1.357 2.3570000000000002 2.3570000000000002 2.3570000000000002 2.766 2.766 2.766 2.7752195444572929 2.7752195444572929
		 2.7752195444572929 2.9802805110013919 2.9802805110013919 2.9802805110013919 3.0162805110013919 3.0162805110013919 3.0162805110013919 3.0516358500607192 3.0516358500607192 3.0516358500607192 4.0516358500607197 4.0516358500607197
		 4.0516358500607197 4.3456358500607193 4.3456358500607193 4.3456358500607193
		37
		0.090999999999999998 0.087000000000000008 0
		0.090999999999999998 0.044999999999999998 0
		0.083000000000000004 0.041000000000000002 0
		0.026000000000000002 0.037999999999999999 0
		0.026000000000000006 0.025333333333333333 0
		0.026000000000000006 0.012666666666666666 0
		0.026000000000000006 0 0
		0.11966666666666666 0 0
		0.21333333333333335 0 0
		0.307 0 0
		0.307 0.012666666666666666 0
		0.307 0.025333333333333333 0
		0.307 0.037999999999999999 0
		0.25 0.041000000000000002 0
		0.24199999999999999 0.044999999999999998 0
		0.24199999999999999 0.087000000000000008 0
		0.24199999999999999 0.2233333333333333 0
		0.24199999999999999 0.35966666666666663 0
		0.24199999999999999 0.496 0
		0.23966666666666661 0.49800000000000005 0
		0.23733333333333331 0.5 0
		0.23500000000000001 0.502 0
		0.16733333333333333 0.49233333333333329 0
		0.099666666666666681 0.48266666666666674 0
		0.032000000000000001 0.47300000000000003 0
		0.032000000000000001 0.46100000000000002 0
		0.032000000000000001 0.44900000000000001 0
		0.032000000000000001 0.437 0
		0.043666666666666666 0.43533333333333335 0
		0.055333333333333339 0.43366666666666664 0
		0.067000000000000004 0.432 0
		0.083000000000000004 0.42999999999999999 0
		0.090999999999999998 0.42099999999999999 0
		0.090999999999999998 0.38100000000000001 0
		0.091000000000000011 0.28299999999999997 0
		0.091000000000000011 0.18499999999999997 0
		0.091000000000000011 0.087000000000000008 0
		;
createNode transform -n "curve348" -p "lips";
	setAttr ".t" -type "double3" 0.309 0 0 ;
createNode nurbsCurve -n "curveShape348" -p "curve348";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.161 0.54500000000000004 0
		0.216 0.54500000000000004 0
		0.253 0.58499999999999996 0
		0.253 0.63300000000000001 0
		0.253 0.68000000000000005 0
		0.218 0.71999999999999997 0
		0.161 0.71999999999999997 0
		0.105 0.71999999999999997 0
		0.070000000000000007 0.68000000000000005 0
		0.070000000000000007 0.63300000000000001 0
		0.070000000000000007 0.58499999999999996 0
		0.105 0.54500000000000004 0
		0.161 0.54500000000000004 0
		;
createNode transform -n "curve349" -p "lips";
	setAttr ".t" -type "double3" 0.625 0 0 ;
createNode nurbsCurve -n "curveShape349" -p "curve349";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 46 1 no 3
		51 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 4.0713091859440285 4.0713091859440285 4.0713091859440285 4.2654869395616863 4.2654869395616863 4.2654869395616863 4.3014869395616859 4.3014869395616859
		 4.3014869395616859 4.3368422786210132 4.3368422786210132 4.3368422786210132 5.3368422786210132 5.3368422786210132 5.3368422786210132 5.8608422786210133 5.8608422786210133 5.8608422786210133 6.8608422786210133 6.8608422786210133
		 6.8608422786210133 6.8988422786210135 6.8988422786210135 6.8988422786210135 7.1978422786210139 7.1978422786210139 7.1978422786210139 7.2358422786210141 7.2358422786210141 7.2358422786210141 8.2358422786210141 8.2358422786210141
		 8.2358422786210141 8.3788422786210148 8.3788422786210148 8.3788422786210148
		49
		0.23500000000000001 0 0
		0.252 -0.0070000000000000001 0
		0.28700000000000003 -0.012 0
		0.314 -0.012 0
		0.46200000000000002 -0.012 0
		0.58099999999999996 0.040000000000000008 0
		0.58099999999999996 0.25900000000000001 0
		0.58099999999999996 0.42499999999999999 0
		0.49399999999999999 0.502 0
		0.40000000000000002 0.502 0
		0.33000000000000002 0.502 0
		0.28400000000000003 0.47000000000000003 0
		0.23500000000000001 0.433 0
		0.22899999999999998 0.45599999999999996 0
		0.223 0.47899999999999993 0
		0.217 0.502 0
		0.153 0.49233333333333335 0
		0.08900000000000001 0.48266666666666663 0
		0.025000000000000005 0.47300000000000003 0
		0.025000000000000005 0.46100000000000002 0
		0.025000000000000005 0.44900000000000001 0
		0.025000000000000005 0.437 0
		0.036666666666666667 0.43533333333333335 0
		0.048333333333333332 0.43366666666666664 0
		0.059999999999999998 0.432 0
		0.075999999999999998 0.42999999999999999 0
		0.084000000000000005 0.42099999999999999 0
		0.084000000000000005 0.38100000000000001 0
		0.084000000000000005 0.20633333333333334 0
		0.084000000000000005 0.031666666666666655 0
		0.084000000000000005 -0.14300000000000002 0
		0.084000000000000005 -0.185 0
		0.075999999999999998 -0.189 0
		0.019 -0.192 0
		0.019 -0.20466666666666669 0
		0.019 -0.21733333333333335 0
		0.019 -0.23000000000000001 0
		0.11866666666666666 -0.23000000000000001 0
		0.21833333333333335 -0.23000000000000001 0
		0.318 -0.23000000000000001 0
		0.318 -0.21733333333333338 0
		0.318 -0.20466666666666669 0
		0.318 -0.19200000000000003 0
		0.245 -0.189 0
		0.23500000000000001 -0.185 0
		0.23500000000000001 -0.14300000000000002 0
		0.23499999999999999 -0.095333333333333339 0
		0.23499999999999999 -0.04766666666666667 0
		0.23499999999999999 0 0
		;
createNode transform -n "curve350" -p "lips";
	setAttr ".t" -type "double3" 0.625 0 0 ;
createNode nurbsCurve -n "curveShape350" -p "curve350";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 19 1 no 3
		24 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 5 5 5 6 6 6 6.1580000000000004 6.1580000000000004
		 6.1580000000000004
		22
		0.23500000000000001 0.31 0
		0.23500000000000001 0.33100000000000002 0
		0.23700000000000002 0.35100000000000003 0
		0.24199999999999999 0.36499999999999999 0
		0.255 0.40200000000000002 0
		0.28000000000000003 0.42499999999999999 0
		0.32200000000000001 0.42499999999999999 0
		0.36899999999999999 0.42499999999999999 0
		0.42199999999999999 0.39900000000000002 0
		0.42199999999999999 0.23700000000000002 0
		0.42199999999999999 0.113 0
		0.39500000000000002 0.034000000000000002 0
		0.318 0.034000000000000002 0
		0.27400000000000002 0.034000000000000002 0
		0.248 0.057000000000000009 0
		0.23900000000000002 0.10100000000000001 0
		0.23600000000000002 0.11600000000000001 0
		0.23500000000000001 0.13300000000000001 0
		0.23500000000000001 0.152 0
		0.23500000000000001 0.20466666666666666 0
		0.23500000000000001 0.25733333333333336 0
		0.23500000000000001 0.31 0
		;
createNode transform -n "curve351" -p "lips";
	setAttr ".t" -type "double3" 1.24 0 0 ;
createNode nurbsCurve -n "curveShape351" -p "curve351";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 46 1 no 3
		51 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 5 5 5 6 6 6 6.0369999999999999 6.0369999999999999
		 6.0369999999999999 6.1699999999999999 6.1699999999999999 6.1699999999999999 7.1699999999999999 7.1699999999999999 7.1699999999999999 8.1699999999999999 8.1699999999999999 8.1699999999999999 9.1699999999999999 9.1699999999999999
		 9.1699999999999999 10.17 10.17 10.17 11.17 11.17 11.17 12.17 12.17 12.17 12.208 12.208
		 12.208 12.357482440440341 12.357482440440341 12.357482440440341
		49
		0.050000000000000003 0.036000000000000004 0
		0.087999999999999995 0.0010000000000000009 0
		0.16300000000000001 -0.012 0
		0.219 -0.012 0
		0.34100000000000003 -0.012 0
		0.42499999999999999 0.04300000000000001 0
		0.42499999999999999 0.151 0
		0.42499999999999999 0.23700000000000002 0
		0.371 0.27800000000000002 0
		0.27900000000000003 0.313 0
		0.221 0.33400000000000002 0
		0.17799999999999999 0.35799999999999998 0
		0.17799999999999999 0.39800000000000002 0
		0.17799999999999999 0.42899999999999999 0
		0.20000000000000001 0.45600000000000002 0
		0.24099999999999999 0.45600000000000002 0
		0.29199999999999998 0.45600000000000002 0
		0.33500000000000002 0.41000000000000003 0
		0.35399999999999998 0.33400000000000002 0
		0.36633333333333334 0.33400000000000002 0
		0.37866666666666671 0.33400000000000002 0
		0.39100000000000001 0.33400000000000002 0
		0.39100000000000001 0.37833333333333335 0
		0.39100000000000001 0.42266666666666669 0
		0.39100000000000001 0.46700000000000003 0
		0.35000000000000003 0.49199999999999999 0
		0.29299999999999998 0.502 0
		0.24099999999999999 0.502 0
		0.11900000000000002 0.502 0
		0.043000000000000003 0.44500000000000001 0
		0.043000000000000003 0.34400000000000003 0
		0.043000000000000003 0.27100000000000002 0
		0.10200000000000001 0.223 0
		0.19 0.19 0
		0.24099999999999999 0.17200000000000001 0
		0.28999999999999998 0.14300000000000002 0
		0.28999999999999998 0.095000000000000001 0
		0.28999999999999998 0.057000000000000009 0
		0.26500000000000001 0.034000000000000002 0
		0.221 0.034000000000000002 0
		0.155 0.034000000000000002 0
		0.10200000000000001 0.10300000000000001 0
		0.075999999999999998 0.185 0
		0.063333333333333339 0.18499999999999997 0
		0.050666666666666665 0.18499999999999997 0
		0.037999999999999999 0.18499999999999997 0
		0.042000000000000003 0.13533333333333333 0
		0.046000000000000006 0.085666666666666669 0
		0.05000000000000001 0.036000000000000004 0
		;
createNode transform -n "grp_faceboard_eyelids_frame" -p "ctrl_faceboard_facial";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 2.4658145978619928 0 ;
	setAttr ".rp" -type "double3" -24.562505213874843 -151.40270329586096 0 ;
	setAttr ".sp" -type "double3" -24.562505213874843 -151.40270329586096 0 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nsS'translateY'\np6\nF0\nsS'translateZ'\np7\nF0\nsS'scaleX'\np8\nF0.66000000000000003\nsS'scaleY'\np9\nF1\nsS'scaleZ'\np10\nF1\nsS'rotateX'\np11\nF0\nsS'rotateY'\np12\nF0\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF0\nsg6\nF0\nsg7\nF0\nsg8\nF0.66000000000000003\nsg9\nF1\nsg10\nF1\nsg11\nF0\nsg12\nF0\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode transform -n "grp_faceboard_eyelidUp_r_offset" -p "grp_faceboard_eyelids_frame";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -1.9999999800000001 1.2500000000000568 -8.8817841970012494e-16 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 22.584505233654845 -152.638953295861 -3.6442126615556286e-15 ;
	setAttr ".rpt" -type "double3" -45.16901046730969 0 4.5226211186390523e-15 ;
	setAttr ".sp" -type "double3" 22.584505233654845 -152.638953295861 -3.6442126615556286e-15 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF-3.0303030303030241\nsS'translateY'\np6\nF1.2500000000000568\nsS'translateZ'\np7\nF-8.8817841970012523e-16\nsS'scaleX'\np8\nF1.5151515151515151\nsS'scaleY'\np9\nF1.0000000000000002\nsS'scaleZ'\np10\nF-1.0000000000000002\nsS'rotateX'\np11\nF0\nsS'rotateY'\np12\nF180\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF-3.0303030303030241\nsg6\nF1.2500000000000568\nsg7\nF-8.8817841970012523e-16\nsg8\nF1.5151515151515151\nsg9\nF1.0000000000000002\nsg10\nF-1.0000000000000002\nsg11\nF0\nsg12\nF180\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode transform -n "ctrl_faceboard_eyelidUp_r" -p "grp_faceboard_eyelidUp_r_offset";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 22.584505233654845 -152.638953295861 -3.6442126615556286e-15 ;
	setAttr ".sp" -type "double3" 22.584505233654845 -152.638953295861 -3.6442126615556286e-15 ;
	setAttr ".mntl" -type "double3" -0.01 -0.01 -0.99999999999999967 ;
	setAttr ".mxtl" -type "double3" 0.01 0.01 0.99999999999999967 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nsS'translateY'\np6\nF0\nssS'neutralPose'\np7\n(dp8\ng5\nF0\nsg6\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" 1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
createNode nurbsCurve -n "ctrl_faceboard_eyelidUp_rShape1" -p "ctrl_faceboard_eyelidUp_r";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		22.586914179051888 -152.63654434937294 -3.1654878565785723e-10
		22.586914179051888 -152.63654434937294 -3.1654878565785723e-10
		22.582096285824711 -152.63654434937294 -3.1654878565785723e-10
		22.582096285824711 -152.63654434937294 -3.1654878565785723e-10
		22.582096285824711 -152.64136224260011 -3.1654878643263352e-10
		22.582096285824711 -152.64136224260011 -3.1654878643263352e-10
		22.586914179051888 -152.64136224260011 -3.1654878643263352e-10
		22.586914179051888 -152.64136224260011 -3.1654878643263352e-10
		22.586914179051888 -152.63654434937294 -3.1654878565785723e-10
		22.586914179051888 -152.63654434937294 -3.1654878565785723e-10
		22.582096285824711 -152.63654434937294 -3.1654878565785723e-10
		;
createNode nurbsCurve -n "grp_faceboard_eyelidUp_r_offsetShape" -p "grp_faceboard_eyelidUp_r_offset";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		22.595395233654841 -152.62795329586103 -3.6442126615556286e-15
		22.595395233654841 -152.64995329586102 -3.6442126615556286e-15
		22.573615233654841 -152.64995329586102 -3.6442126615556286e-15
		22.573615233654841 -152.62795329586103 -3.6442126615556286e-15
		22.595395233654841 -152.62795329586103 -3.6442126615556286e-15
		;
createNode transform -n "grp_faceboard_eyelidLo_r_offset" -p "grp_faceboard_eyelids_frame";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -1.9999999800000001 -1.2499999999999432 -8.8817841970012494e-16 ;
	setAttr ".r" -type "double3" 0 0 180 ;
	setAttr ".rp" -type "double3" 22.584505233654827 150.166453295861 8.7840845708342355e-16 ;
	setAttr ".rpt" -type "double3" -45.169010467309668 -300.33290659172201 0 ;
	setAttr ".sp" -type "double3" 22.584505233654827 150.166453295861 8.7840845708342355e-16 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF-3.0303030303030241\nsS'translateY'\np6\nF-1.2499999999999432\nsS'translateZ'\np7\nF-8.8817841970012523e-16\nsS'scaleX'\np8\nF1.5151515151515151\nsS'scaleY'\np9\nF1.0000000000000002\nsS'scaleZ'\np10\nF1.0000000000000002\nsS'rotateX'\np11\nF0\nsS'rotateY'\np12\nF0\nsS'rotateZ'\np13\nF180\nssS'neutralPose'\np14\n(dp15\ng5\nF-3.0303030303030241\nsg6\nF-1.2499999999999432\nsg7\nF-8.8817841970012523e-16\nsg8\nF1.5151515151515151\nsg9\nF1.0000000000000002\nsg10\nF1.0000000000000002\nsg11\nF0\nsg12\nF0\nsg13\nF180\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode transform -n "ctrl_faceboard_eyelidLo_r" -p "grp_faceboard_eyelidLo_r_offset";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 22.584505233654827 150.166453295861 8.7840845708342355e-16 ;
	setAttr ".sp" -type "double3" 22.584505233654827 150.166453295861 8.7840845708342355e-16 ;
	setAttr ".mntl" -type "double3" -0.01 -0.01 -0.99999999999999967 ;
	setAttr ".mxtl" -type "double3" 0.01 0.01 0.99999999999999967 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nsS'translateY'\np6\nF0\nssS'neutralPose'\np7\n(dp8\ng5\nF0\nsg6\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" 1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
createNode nurbsCurve -n "ctrl_faceboard_eyelidLo_rShape1" -p "ctrl_faceboard_eyelidLo_r";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		22.58691417905187 150.16886224234912 3.1654601985365274e-10
		22.58691417905187 150.16886224234912 3.1654601985365274e-10
		22.582096285824694 150.16886224234912 3.1654601985365274e-10
		22.582096285824694 150.16886224234912 3.1654601985365274e-10
		22.582096285824694 150.16404434912195 3.1654602062842903e-10
		22.582096285824694 150.16404434912195 3.1654602062842903e-10
		22.58691417905187 150.16404434912195 3.1654602062842903e-10
		22.58691417905187 150.16404434912195 3.1654602062842903e-10
		22.58691417905187 150.16886224234912 3.1654601985365274e-10
		22.58691417905187 150.16886224234912 3.1654601985365274e-10
		22.582096285824694 150.16886224234912 3.1654601985365274e-10
		;
createNode nurbsCurve -n "grp_faceboard_eyelidLo_r_offsetShape" -p "grp_faceboard_eyelidLo_r_offset";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		22.595395233654823 150.17745329586103 8.7840845708342345e-16
		22.595395233654823 150.15545329586104 8.7840845708342345e-16
		22.573615233654824 150.15545329586104 8.7840845708342345e-16
		22.573615233654824 150.17745329586103 8.7840845708342345e-16
		22.595395233654823 150.17745329586103 8.7840845708342345e-16
		;
createNode transform -n "grp_faceboard_eyelidUp_l_offset" -p "grp_faceboard_eyelids_frame";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 1.9999999800000001 1.2500000000000568 0 ;
	setAttr ".rp" -type "double3" -26.540505194094841 -152.638953295861 0 ;
	setAttr ".sp" -type "double3" -26.540505194094841 -152.638953295861 0 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF3.0303030303030312\nsS'translateY'\np6\nF1.2500000000000568\nsS'translateZ'\np7\nF0\nsS'scaleX'\np8\nF1.5151515151515151\nsS'scaleY'\np9\nF1.0000000000000002\nsS'scaleZ'\np10\nF1.0000000000000002\nsS'rotateX'\np11\nF0\nsS'rotateY'\np12\nF0\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF3.0303030303030312\nsg6\nF1.2500000000000568\nsg7\nF0\nsg8\nF1.5151515151515151\nsg9\nF1.0000000000000002\nsg10\nF1.0000000000000002\nsg11\nF0\nsg12\nF0\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode transform -n "ctrl_faceboard_eyelidUp_l" -p "grp_faceboard_eyelidUp_l_offset";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -26.540505194094841 -152.638953295861 0 ;
	setAttr ".sp" -type "double3" -26.540505194094841 -152.638953295861 0 ;
	setAttr ".mntl" -type "double3" -0.01 -0.01 -0.99999999999999967 ;
	setAttr ".mxtl" -type "double3" 0.01 0.01 0.99999999999999967 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nsS'translateY'\np6\nF0\nssS'neutralPose'\np7\n(dp8\ng5\nF0\nsg6\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" 1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
createNode nurbsCurve -n "ctrl_faceboard_eyelidUp_lShape1" -p "ctrl_faceboard_eyelidUp_l";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		-26.538096248697798 -152.63654434937294 3.1654514144519565e-10
		-26.538096248697798 -152.63654434937294 3.1654514144519565e-10
		-26.542914141924975 -152.63654434937294 3.1654514144519565e-10
		-26.542914141924975 -152.63654434937294 3.1654514144519565e-10
		-26.542914141924975 -152.64136224260011 3.1654514221997194e-10
		-26.542914141924975 -152.64136224260011 3.1654514221997194e-10
		-26.538096248697798 -152.64136224260011 3.1654514221997194e-10
		-26.538096248697798 -152.64136224260011 3.1654514221997194e-10
		-26.538096248697798 -152.63654434937294 3.1654514144519565e-10
		-26.538096248697798 -152.63654434937294 3.1654514144519565e-10
		-26.542914141924975 -152.63654434937294 3.1654514144519565e-10
		;
createNode nurbsCurve -n "grp_faceboard_eyelidUp_l_offsetShape" -p "grp_faceboard_eyelidUp_l_offset";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-26.529615194094845 -152.62795329586103 0
		-26.529615194094845 -152.64995329586102 0
		-26.551395194094844 -152.64995329586102 0
		-26.551395194094844 -152.62795329586103 0
		-26.529615194094845 -152.62795329586103 0
		;
createNode transform -n "grp_faceboard_eyelidLo_l_offset" -p "grp_faceboard_eyelids_frame";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 1.9999999800000001 -1.2499999999999432 0 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr ".rp" -type "double3" -26.540505194094841 150.166453295861 -1.8390086636808668e-14 ;
	setAttr ".rpt" -type "double3" 0 -300.33290659172201 1.8390086636808668e-14 ;
	setAttr ".sp" -type "double3" -26.540505194094841 150.166453295861 -1.8390086636808668e-14 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF3.0303030303030312\nsS'translateY'\np6\nF-1.2499999999999432\nsS'translateZ'\np7\nF0\nsS'scaleX'\np8\nF1.5151515151515151\nsS'scaleY'\np9\nF1.0000000000000002\nsS'scaleZ'\np10\nF-1.0000000000000002\nsS'rotateX'\np11\nF-180\nsS'rotateY'\np12\nF0\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF3.0303030303030312\nsg6\nF-1.2499999999999432\nsg7\nF0\nsg8\nF1.5151515151515151\nsg9\nF1.0000000000000002\nsg10\nF-1.0000000000000002\nsg11\nF-180\nsg12\nF0\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode transform -n "ctrl_faceboard_eyelidLo_l" -p "grp_faceboard_eyelidLo_l_offset";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -26.540505194094841 150.166453295861 -1.8390086636808668e-14 ;
	setAttr ".sp" -type "double3" -26.540505194094841 150.166453295861 -1.8390086636808668e-14 ;
	setAttr ".mntl" -type "double3" -0.01 -0.01 -0.99999999999999967 ;
	setAttr ".mxtl" -type "double3" 0.01 0.01 0.99999999999999967 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nsS'translateY'\np6\nF0\nssS'neutralPose'\np7\n(dp8\ng5\nF0\nsg6\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" 1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
createNode nurbsCurve -n "ctrl_faceboard_eyelidLo_lShape1" -p "ctrl_faceboard_eyelidLo_l";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		-26.538096248697798 150.16886224234909 -3.1656353153183246e-10
		-26.538096248697798 150.16886224234909 -3.1656353153183246e-10
		-26.542914141924975 150.16886224234909 -3.1656353153183246e-10
		-26.542914141924975 150.16886224234909 -3.1656353153183246e-10
		-26.542914141924975 150.16404434912192 -3.1656353230660875e-10
		-26.542914141924975 150.16404434912192 -3.1656353230660875e-10
		-26.538096248697798 150.16404434912192 -3.1656353230660875e-10
		-26.538096248697798 150.16404434912192 -3.1656353230660875e-10
		-26.538096248697798 150.16886224234909 -3.1656353153183246e-10
		-26.538096248697798 150.16886224234909 -3.1656353153183246e-10
		-26.542914141924975 150.16886224234909 -3.1656353153183246e-10
		;
createNode nurbsCurve -n "grp_faceboard_eyelidLo_l_offsetShape" -p "grp_faceboard_eyelidLo_l_offset";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-26.529615194094845 150.177453295861 -1.8390086636808668e-14
		-26.529615194094845 150.15545329586101 -1.8390086636808668e-14
		-26.551395194094844 150.15545329586101 -1.8390086636808668e-14
		-26.551395194094844 150.177453295861 -1.8390086636808668e-14
		-26.529615194094845 150.177453295861 -1.8390086636808668e-14
		;
createNode nurbsCurve -n "grp_faceboard_eyelids_frameShape" -p "grp_faceboard_eyelids_frame";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-24.503209163874843 -151.37245329586096 0
		-24.503209163874843 -151.43295329586095 0
		-24.621801263874843 -151.43295329586095 0
		-24.621801263874843 -151.37245329586096 0
		-24.503209163874843 -151.37245329586096 0
		;
createNode transform -n "atts_faceboard_eyelids" -p "grp_faceboard_eyelids_frame";
	addAttr -ci true -sn "EyelidsDesc" -ln "EyelidsDesc" -nn "Eyelids" -at "double";
	addAttr -ci true -sn "SquintOut_L_UD" -ln "SquintOut_L_UD" -nn "Squint Out L UD" 
		-min -1 -max 1 -at "double";
	addAttr -ci true -sn "SquintOut_R_UD" -ln "SquintOut_R_UD" -nn "Squint Out R UD" 
		-min 0 -max 1 -at "double";
	addAttr -ci true -sn "SquintOutEyelidThreshold" -ln "SquintOutEyelidThreshold" -min 
		0 -max 1 -at "double";
	addAttr -ci true -sn "EyelidUppInn_L_UD" -ln "EyelidUppInn_L_UD" -nn "Eyelid Upp Inn L UD" 
		-min -1 -max 1 -at "double";
	addAttr -ci true -sn "EyelidUppMid_L_UD" -ln "EyelidUppMid_L_UD" -nn "Eyelid Upp Mid L UD" 
		-min -1 -max 1 -at "double";
	addAttr -ci true -sn "EyelidUppOut_L_UD" -ln "EyelidUppOut_L_UD" -nn "Eyelid Upp Out L UD" 
		-min -1 -max 1 -at "double";
	addAttr -ci true -sn "EyelidUppInn_R_UD" -ln "EyelidUppInn_R_UD" -nn "Eyelid Upp Inn R UD" 
		-min -1 -max 1 -at "double";
	addAttr -ci true -sn "EyelidUppMid_R_UD" -ln "EyelidUppMid_R_UD" -min -1 -max 1 
		-at "double";
	addAttr -ci true -sn "EyelidUppOut_R_UD" -ln "EyelidUppOut_R_UD" -nn "Eyelid Upp Out R UD" 
		-min -1 -max 1 -at "double";
	addAttr -ci true -sn "EyelidLowInn_L_UD" -ln "EyelidLowInn_L_UD" -nn "Eyelid Low Inn L UD" 
		-min -1 -max 1 -at "double";
	addAttr -ci true -sn "EyelidLowMid_L_UD" -ln "EyelidLowMid_L_UD" -nn "Eyelid Low Mid L UD" 
		-min -1 -max 1 -at "double";
	addAttr -ci true -sn "EyelidLowOut_L_UD" -ln "EyelidLowOut_L_UD" -nn "Eyelid Low Out L UD" 
		-min -1 -max 1 -at "double";
	addAttr -ci true -sn "EyelidLowInn_R_UD" -ln "EyelidLowInn_R_UD" -nn "Eyelid Low Inn R UD" 
		-min -1 -max 1 -at "double";
	addAttr -ci true -sn "EyelidLowMid_R_UD" -ln "EyelidLowMid_R_UD" -nn "Eyelid Low Mid R UD" 
		-min -1 -max 1 -at "double";
	addAttr -ci true -sn "EyelidLowOut_R_UD" -ln "EyelidLowOut_R_UD" -nn "Eyelid Low Out R UD" 
		-min -1 -max 1 -at "double";
	addAttr -ci true -sn "EyelidUppInn_L_FB" -ln "EyelidUppInn_L_FB" -at "double";
	addAttr -ci true -sn "EyelidUppMid_L_FB" -ln "EyelidUppMid_L_FB" -at "double";
	addAttr -ci true -sn "EyelidUppOut_L_FB" -ln "EyelidUppOut_L_FB" -at "double";
	addAttr -ci true -sn "EyelidUppInn_R_FB" -ln "EyelidUppInn_R_FB" -at "double";
	addAttr -ci true -sn "EyelidUppMid_R_FB" -ln "EyelidUppMid_R_FB" -at "double";
	addAttr -ci true -sn "EyelidUppOut_R_FB" -ln "EyelidUppOut_R_FB" -at "double";
	addAttr -ci true -sn "EyelidLowInn_L_FB" -ln "EyelidLowInn_L_FB" -at "double";
	addAttr -ci true -sn "EyelidLowMid_L_FB" -ln "EyelidLowMid_L_FB" -at "double";
	addAttr -ci true -sn "EyelidLowOut_L_FB" -ln "EyelidLowOut_L_FB" -at "double";
	addAttr -ci true -sn "EyelidLowInn_R_FB" -ln "EyelidLowInn_R_FB" -at "double";
	addAttr -ci true -sn "EyelidLowMid_R_FB" -ln "EyelidLowMid_R_FB" -at "double";
	addAttr -ci true -sn "EyelidLowOut_R_FB" -ln "EyelidLowOut_R_FB" -at "double";
	addAttr -ci true -sn "EyelidOut_L_UD" -ln "EyelidOut_L_UD" -at "double";
	addAttr -ci true -sn "EyelidOut_L_FB" -ln "EyelidOut_L_FB" -at "double";
	addAttr -ci true -sn "EyelidIn_L_UD" -ln "EyelidIn_L_UD" -at "double";
	addAttr -ci true -sn "EyelidIn_L_FB" -ln "EyelidIn_L_FB" -at "double";
	addAttr -ci true -sn "EyelidOut_R_UD" -ln "EyelidOut_R_UD" -at "double";
	addAttr -ci true -sn "EyelidOut_R_FB" -ln "EyelidOut_R_FB" -at "double";
	addAttr -ci true -sn "EyelidIn_R_UD" -ln "EyelidIn_R_UD" -at "double";
	addAttr -ci true -sn "EyelidIn_R_FB" -ln "EyelidIn_R_FB" -at "double";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -24.787349805232321 -153.0748866044006 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rq" -type "double4" 0 0 0 6.953865086824836e-309 ;
	setAttr -l on -cb on ".EyelidsDesc";
	setAttr -k on ".SquintOut_L_UD";
	setAttr -k on ".SquintOut_R_UD";
	setAttr -k on ".SquintOutEyelidThreshold" 0.33;
	setAttr -k on ".EyelidUppInn_L_UD";
	setAttr -k on ".EyelidUppMid_L_UD";
	setAttr -k on ".EyelidUppOut_L_UD";
	setAttr -k on ".EyelidUppInn_R_UD";
	setAttr -k on ".EyelidUppMid_R_UD";
	setAttr -k on ".EyelidUppOut_R_UD";
	setAttr -k on ".EyelidLowInn_L_UD";
	setAttr -k on ".EyelidLowMid_L_UD";
	setAttr -k on ".EyelidLowOut_L_UD";
	setAttr -k on ".EyelidLowInn_R_UD";
	setAttr -k on ".EyelidLowMid_R_UD";
	setAttr -k on ".EyelidLowOut_R_UD";
	setAttr -k on ".EyelidUppInn_L_FB";
	setAttr -k on ".EyelidUppMid_L_FB";
	setAttr -k on ".EyelidUppOut_L_FB";
	setAttr -k on ".EyelidUppInn_R_FB";
	setAttr -k on ".EyelidUppMid_R_FB";
	setAttr -k on ".EyelidUppOut_R_FB";
	setAttr -k on ".EyelidLowInn_L_FB";
	setAttr -k on ".EyelidLowMid_L_FB";
	setAttr -k on ".EyelidLowOut_L_FB";
	setAttr -k on ".EyelidLowInn_R_FB";
	setAttr -k on ".EyelidLowMid_R_FB";
	setAttr -k on ".EyelidLowOut_R_FB";
	setAttr -k on ".EyelidOut_L_UD";
	setAttr -k on ".EyelidOut_L_FB";
	setAttr -k on ".EyelidIn_L_UD";
	setAttr -k on ".EyelidIn_L_FB";
	setAttr -k on ".EyelidOut_R_UD";
	setAttr -k on ".EyelidOut_R_FB";
	setAttr -k on ".EyelidIn_R_UD";
	setAttr -k on ".EyelidIn_R_FB";
createNode transform -n "grp_faceboard_squint_l_offset" -p "grp_faceboard_eyelids_frame";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 3.9999999999999987 -1.25 1.7763568394002499e-15 ;
	setAttr ".rp" -type "double3" -28.518505213874842 -150.16645329586095 -1.7568169141668471e-15 ;
	setAttr ".sp" -type "double3" -28.518505213874842 -150.16645329586095 -1.7568169141668471e-15 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF4.0000000000000071\nsS'translateY'\np6\nF0\nsS'translateZ'\np7\nF1.7763568394002505e-15\nsS'scaleX'\np8\nF1\nsS'scaleY'\np9\nF1\nsS'scaleZ'\np10\nF1\nsS'rotateX'\np11\nF0\nsS'rotateY'\np12\nF0\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF4.0000000000000071\nsg6\nF0\nsg7\nF1.7763568394002505e-15\nsg8\nF1\nsg9\nF1\nsg10\nF1\nsg11\nF0\nsg12\nF0\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode transform -n "ctrl_faceboard_squint_l" -p "grp_faceboard_squint_l_offset";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -28.518505213874842 -150.16645329586095 -1.7568169141668471e-15 ;
	setAttr ".sp" -type "double3" -28.518505213874842 -150.16645329586095 -1.7568169141668471e-15 ;
	setAttr ".mntl" -type "double3" 0 -0.01 -0.99999999999999967 ;
	setAttr ".mxtl" -type "double3" 0 0.01 0.99999999999999967 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateY'\np5\nF0\nssS'neutralPose'\np6\n(dp7\ng5\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" 1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
createNode nurbsCurve -n "ctrl_faceboard_squint_lShape1" -p "ctrl_faceboard_squint_l";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		-28.516096268477792 -150.16404434937286 3.1654338462828143e-10
		-28.516096268477792 -150.16404434937286 3.1654338462828143e-10
		-28.520914161704969 -150.16404434937286 3.1654338462828143e-10
		-28.520914161704969 -150.16404434937286 3.1654338462828143e-10
		-28.520914161704969 -150.16886224260003 3.1654338540305772e-10
		-28.520914161704969 -150.16886224260003 3.1654338540305772e-10
		-28.516096268477792 -150.16886224260003 3.1654338540305772e-10
		-28.516096268477792 -150.16886224260003 3.1654338540305772e-10
		-28.516096268477792 -150.16404434937286 3.1654338462828143e-10
		-28.516096268477792 -150.16404434937286 3.1654338462828143e-10
		-28.520914161704969 -150.16404434937286 3.1654338462828143e-10
		;
createNode nurbsCurve -n "grp_faceboard_squint_l_offsetShape" -p "grp_faceboard_squint_l_offset";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-28.513060213874837 -150.15545329586095 -1.7568169141668469e-15
		-28.513060213874837 -150.17745329586094 -1.7568169141668469e-15
		-28.523950213874841 -150.17745329586094 -1.7568169141668469e-15
		-28.523950213874841 -150.15545329586095 -1.7568169141668469e-15
		-28.513060213874837 -150.15545329586095 -1.7568169141668469e-15
		;
createNode transform -n "grp_faceboard_squint_r_offset" -p "grp_faceboard_eyelids_frame";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -3.9999999999999987 -1.25 1.7763568394002499e-15 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 20.60650521387484 -150.16645329586095 -7.6675215101165987e-16 ;
	setAttr ".rpt" -type "double3" -41.21301042774968 0 -9.9006476315518733e-16 ;
	setAttr ".sp" -type "double3" 20.60650521387484 -150.16645329586095 -7.6675215101165987e-16 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF-3.9999999999999929\nsS'translateY'\np6\nF0\nsS'translateZ'\np7\nF1.7763568394002505e-15\nsS'scaleX'\np8\nF1\nsS'scaleY'\np9\nF1\nsS'scaleZ'\np10\nF-1\nsS'rotateX'\np11\nF0\nsS'rotateY'\np12\nF180\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF-3.9999999999999929\nsg6\nF0\nsg7\nF1.7763568394002505e-15\nsg8\nF1\nsg9\nF1\nsg10\nF-1\nsg11\nF0\nsg12\nF180\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode transform -n "ctrl_faceboard_squint_r" -p "grp_faceboard_squint_r_offset";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 20.60650521387484 -150.16645329586095 -7.6675215101166007e-16 ;
	setAttr ".sp" -type "double3" 20.60650521387484 -150.16645329586095 -7.6675215101166007e-16 ;
	setAttr ".mntl" -type "double3" 0 -0.01 -0.99999999999999967 ;
	setAttr ".mxtl" -type "double3" 0 0.01 0.99999999999999967 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateY'\np5\nF0\nssS'neutralPose'\np6\n(dp7\ng5\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" 1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
createNode nurbsCurve -n "ctrl_faceboard_squint_rShape1" -p "ctrl_faceboard_squint_r";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		20.608914159271894 -150.16404434937286 -3.1654590819734663e-10
		20.608914159271894 -150.16404434937286 -3.1654590819734663e-10
		20.604096266044717 -150.16404434937286 -3.1654590819734663e-10
		20.604096266044717 -150.16404434937286 -3.1654590819734663e-10
		20.604096266044717 -150.16886224260003 -3.1654590897212292e-10
		20.604096266044717 -150.16886224260003 -3.1654590897212292e-10
		20.608914159271894 -150.16886224260003 -3.1654590897212292e-10
		20.608914159271894 -150.16886224260003 -3.1654590897212292e-10
		20.608914159271894 -150.16404434937286 -3.1654590819734663e-10
		20.608914159271894 -150.16404434937286 -3.1654590819734663e-10
		20.604096266044717 -150.16404434937286 -3.1654590819734663e-10
		;
createNode nurbsCurve -n "grp_faceboard_squint_r_offsetShape" -p "grp_faceboard_squint_r_offset";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		20.611950213874849 -150.15545329586095 -7.6675215101166095e-16
		20.611950213874849 -150.17745329586094 -7.6675215101166095e-16
		20.601060213874845 -150.17745329586094 -7.6675215101166095e-16
		20.601060213874845 -150.15545329586095 -7.6675215101166095e-16
		20.611950213874849 -150.15545329586095 -7.6675215101166095e-16
		;
createNode transform -n "grp_faceboard_eyelidBlink_l_offset" -p "grp_faceboard_eyelids_frame";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -1.934144454135259 1.2500000000000568 -8.8011344380448139e-16 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 22.584505233654845 -152.638953295861 -3.6442126615556286e-15 ;
	setAttr ".rpt" -type "double3" -45.16901046730969 0 4.5226211186390523e-15 ;
	setAttr ".sp" -type "double3" 22.584505233654845 -152.638953295861 -3.6442126615556286e-15 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF-3.0303030303030241\nsS'translateY'\np6\nF1.2500000000000568\nsS'translateZ'\np7\nF-8.8817841970012523e-16\nsS'scaleX'\np8\nF1.5151515151515151\nsS'scaleY'\np9\nF1.0000000000000002\nsS'scaleZ'\np10\nF-1.0000000000000002\nsS'rotateX'\np11\nF0\nsS'rotateY'\np12\nF180\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF-3.0303030303030241\nsg6\nF1.2500000000000568\nsg7\nF-8.8817841970012523e-16\nsg8\nF1.5151515151515151\nsg9\nF1.0000000000000002\nsg10\nF-1.0000000000000002\nsg11\nF0\nsg12\nF180\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode transform -n "ctrl_faceboard_eyelidBlink_l" -p "grp_faceboard_eyelidBlink_l_offset";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 22.584505233654845 -152.638953295861 -3.6442126615556286e-15 ;
	setAttr ".sp" -type "double3" 22.584505233654845 -152.638953295861 -3.6442126615556286e-15 ;
	setAttr ".mntl" -type "double3" -0.01 -0.01 -0.99999999999999967 ;
	setAttr ".mxtl" -type "double3" 0.01 0.01 0.99999999999999967 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateY'\np5\nF0\nssS'neutralPose'\np6\n(dp7\ng5\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" 1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
createNode nurbsCurve -n "ctrl_faceboard_eyelidBlink_lShape1" -p "ctrl_faceboard_eyelidBlink_l";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		22.586914179051888 -152.63654434937294 -3.1654878565785723e-10
		22.586914179051888 -152.63654434937294 -3.1654878565785723e-10
		22.582096285824711 -152.63654434937294 -3.1654878565785723e-10
		22.582096285824711 -152.63654434937294 -3.1654878565785723e-10
		22.582096285824711 -152.64136224260011 -3.1654878643263352e-10
		22.582096285824711 -152.64136224260011 -3.1654878643263352e-10
		22.586914179051888 -152.64136224260011 -3.1654878643263352e-10
		22.586914179051888 -152.64136224260011 -3.1654878643263352e-10
		22.586914179051888 -152.63654434937294 -3.1654878565785723e-10
		22.586914179051888 -152.63654434937294 -3.1654878565785723e-10
		22.582096285824711 -152.63654434937294 -3.1654878565785723e-10
		;
createNode nurbsCurve -n "grp_faceboard_eyelidBlink_l_offsetShape" -p "grp_faceboard_eyelidBlink_l_offset";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		22.589535426371814 -152.62795329586103 -3.6442126615556286e-15
		22.589535426371814 -152.64995329586102 -3.6442126615556286e-15
		22.579475040937886 -152.64995329586102 -3.6442126615556286e-15
		22.579475040937886 -152.62795329586103 -3.6442126615556286e-15
		22.589535426371814 -152.62795329586103 -3.6442126615556286e-15
		;
createNode transform -n "grp_faceboard_eyelidBlink_r_offset" -p "grp_faceboard_eyelids_frame";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -2.0219810747076554 1.2500000000000568 -8.9087032742767266e-16 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 22.584505233654845 -152.638953295861 -3.6442126615556286e-15 ;
	setAttr ".rpt" -type "double3" -45.16901046730969 0 4.5226211186390523e-15 ;
	setAttr ".sp" -type "double3" 22.584505233654845 -152.638953295861 -3.6442126615556286e-15 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF-3.0303030303030241\nsS'translateY'\np6\nF1.2500000000000568\nsS'translateZ'\np7\nF-8.8817841970012523e-16\nsS'scaleX'\np8\nF1.5151515151515151\nsS'scaleY'\np9\nF1.0000000000000002\nsS'scaleZ'\np10\nF-1.0000000000000002\nsS'rotateX'\np11\nF0\nsS'rotateY'\np12\nF180\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF-3.0303030303030241\nsg6\nF1.2500000000000568\nsg7\nF-8.8817841970012523e-16\nsg8\nF1.5151515151515151\nsg9\nF1.0000000000000002\nsg10\nF-1.0000000000000002\nsg11\nF0\nsg12\nF180\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode transform -n "ctrl_faceboard_eyelidBlink_r" -p "grp_faceboard_eyelidBlink_r_offset";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 22.584505233654845 -152.638953295861 -3.6442126615556286e-15 ;
	setAttr ".sp" -type "double3" 22.584505233654845 -152.638953295861 -3.6442126615556286e-15 ;
	setAttr ".mntl" -type "double3" -0.01 -0.01 -0.99999999999999967 ;
	setAttr ".mxtl" -type "double3" 0.01 0.01 0.99999999999999967 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateY'\np5\nF0\nssS'neutralPose'\np6\n(dp7\ng5\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" 1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
createNode nurbsCurve -n "ctrl_faceboard_eyelidBlink_rShape1" -p "ctrl_faceboard_eyelidBlink_r";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		22.586914179051888 -152.63654434937294 -3.1654878565785723e-10
		22.586914179051888 -152.63654434937294 -3.1654878565785723e-10
		22.582096285824711 -152.63654434937294 -3.1654878565785723e-10
		22.582096285824711 -152.63654434937294 -3.1654878565785723e-10
		22.582096285824711 -152.64136224260011 -3.1654878643263352e-10
		22.582096285824711 -152.64136224260011 -3.1654878643263352e-10
		22.586914179051888 -152.64136224260011 -3.1654878643263352e-10
		22.586914179051888 -152.64136224260011 -3.1654878643263352e-10
		22.586914179051888 -152.63654434937294 -3.1654878565785723e-10
		22.586914179051888 -152.63654434937294 -3.1654878565785723e-10
		22.582096285824711 -152.63654434937294 -3.1654878565785723e-10
		;
createNode nurbsCurve -n "grp_faceboard_eyelidBlink_r_offsetShape" -p "grp_faceboard_eyelidBlink_r_offset";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		22.589908593836142 -152.62795329586103 -3.6442126615556294e-15
		22.589908593836142 -152.64995329586102 -3.6442126615556294e-15
		22.579116467265528 -152.64995329586102 -3.6442126615556294e-15
		22.579116467265528 -152.62795329586103 -3.6442126615556294e-15
		22.589908593836142 -152.62795329586103 -3.6442126615556294e-15
		;
createNode transform -n "atts_secondFaceboard_eyelids" -p "grp_faceboard_eyelids_frame";
	addAttr -ci true -sn "EyelidsDesc" -ln "EyelidsDesc" -nn "Eyelids" -at "double";
	addAttr -ci true -sn "EyelidUppInn_L_UD" -ln "EyelidUppInn_L_UD" -nn "Eyelid Upp Inn L UD" 
		-min -1 -max 1 -at "double";
	addAttr -ci true -sn "EyelidUppMid_L_UD" -ln "EyelidUppMid_L_UD" -nn "Eyelid Upp Mid L UD" 
		-min -1 -max 1 -at "double";
	addAttr -ci true -sn "EyelidUppOut_L_UD" -ln "EyelidUppOut_L_UD" -nn "Eyelid Upp Out L UD" 
		-min -1 -max 1 -at "double";
	addAttr -ci true -sn "EyelidUppInn_R_UD" -ln "EyelidUppInn_R_UD" -nn "Eyelid Upp Inn R UD" 
		-min -1 -max 1 -at "double";
	addAttr -ci true -sn "EyelidUppMid_R_UD" -ln "EyelidUppMid_R_UD" -min -1 -max 1 
		-at "double";
	addAttr -ci true -sn "EyelidUppOut_R_UD" -ln "EyelidUppOut_R_UD" -nn "Eyelid Upp Out R UD" 
		-min -1 -max 1 -at "double";
	addAttr -ci true -sn "EyelidLowInn_L_UD" -ln "EyelidLowInn_L_UD" -nn "Eyelid Low Inn L UD" 
		-min -1 -max 1 -at "double";
	addAttr -ci true -sn "EyelidLowMid_L_UD" -ln "EyelidLowMid_L_UD" -nn "Eyelid Low Mid L UD" 
		-min -1 -max 1 -at "double";
	addAttr -ci true -sn "EyelidLowOut_L_UD" -ln "EyelidLowOut_L_UD" -nn "Eyelid Low Out L UD" 
		-min -1 -max 1 -at "double";
	addAttr -ci true -sn "EyelidLowInn_R_UD" -ln "EyelidLowInn_R_UD" -nn "Eyelid Low Inn R UD" 
		-min -1 -max 1 -at "double";
	addAttr -ci true -sn "EyelidLowMid_R_UD" -ln "EyelidLowMid_R_UD" -nn "Eyelid Low Mid R UD" 
		-min -1 -max 1 -at "double";
	addAttr -ci true -sn "EyelidLowOut_R_UD" -ln "EyelidLowOut_R_UD" -nn "Eyelid Low Out R UD" 
		-min -1 -max 1 -at "double";
	addAttr -ci true -sn "EyelidUppInn_L_FB" -ln "EyelidUppInn_L_FB" -at "double";
	addAttr -ci true -sn "EyelidUppMid_L_FB" -ln "EyelidUppMid_L_FB" -at "double";
	addAttr -ci true -sn "EyelidUppOut_L_FB" -ln "EyelidUppOut_L_FB" -at "double";
	addAttr -ci true -sn "EyelidUppInn_R_FB" -ln "EyelidUppInn_R_FB" -at "double";
	addAttr -ci true -sn "EyelidUppMid_R_FB" -ln "EyelidUppMid_R_FB" -at "double";
	addAttr -ci true -sn "EyelidUppOut_R_FB" -ln "EyelidUppOut_R_FB" -at "double";
	addAttr -ci true -sn "EyelidLowInn_L_FB" -ln "EyelidLowInn_L_FB" -at "double";
	addAttr -ci true -sn "EyelidLowMid_L_FB" -ln "EyelidLowMid_L_FB" -at "double";
	addAttr -ci true -sn "EyelidLowOut_L_FB" -ln "EyelidLowOut_L_FB" -at "double";
	addAttr -ci true -sn "EyelidLowInn_R_FB" -ln "EyelidLowInn_R_FB" -at "double";
	addAttr -ci true -sn "EyelidLowMid_R_FB" -ln "EyelidLowMid_R_FB" -at "double";
	addAttr -ci true -sn "EyelidLowOut_R_FB" -ln "EyelidLowOut_R_FB" -at "double";
	addAttr -ci true -sn "EyelidOut_L_UD" -ln "EyelidOut_L_UD" -at "double";
	addAttr -ci true -sn "EyelidOut_L_FB" -ln "EyelidOut_L_FB" -at "double";
	addAttr -ci true -sn "EyelidIn_L_UD" -ln "EyelidIn_L_UD" -at "double";
	addAttr -ci true -sn "EyelidIn_L_FB" -ln "EyelidIn_L_FB" -at "double";
	addAttr -ci true -sn "EyelidOut_R_UD" -ln "EyelidOut_R_UD" -at "double";
	addAttr -ci true -sn "EyelidOut_R_FB" -ln "EyelidOut_R_FB" -at "double";
	addAttr -ci true -sn "EyelidIn_R_UD" -ln "EyelidIn_R_UD" -at "double";
	addAttr -ci true -sn "EyelidIn_R_FB" -ln "EyelidIn_R_FB" -at "double";
	addAttr -ci true -sn "EyelidUppInn_L_LR" -ln "EyelidUppInn_L_LR" -at "double";
	addAttr -ci true -sn "EyelidUppMid_L_LR" -ln "EyelidUppMid_L_LR" -at "double";
	addAttr -ci true -sn "EyelidUppOut_L_LR" -ln "EyelidUppOut_L_LR" -at "double";
	addAttr -ci true -sn "EyelidUppInn_R_LR" -ln "EyelidUppInn_R_LR" -at "double";
	addAttr -ci true -sn "EyelidUppMid_R_LR" -ln "EyelidUppMid_R_LR" -at "double";
	addAttr -ci true -sn "EyelidUppOut_R_LR" -ln "EyelidUppOut_R_LR" -at "double";
	addAttr -ci true -sn "EyelidLowInn_L_LR" -ln "EyelidLowInn_L_LR" -at "double";
	addAttr -ci true -sn "EyelidLowMid_L_LR" -ln "EyelidLowMid_L_LR" -at "double";
	addAttr -ci true -sn "EyelidLowOut_L_LR" -ln "EyelidLowOut_L_LR" -at "double";
	addAttr -ci true -sn "EyelidLowInn_R_LR" -ln "EyelidLowInn_R_LR" -at "double";
	addAttr -ci true -sn "EyelidLowMid_R_LR" -ln "EyelidLowMid_R_LR" -at "double";
	addAttr -ci true -sn "EyelidLowOut_R_LR" -ln "EyelidLowOut_R_LR" -at "double";
	addAttr -ci true -sn "EyelidOut_L_LR" -ln "EyelidOut_L_LR" -at "double";
	addAttr -ci true -sn "EyelidIn_L_LR" -ln "EyelidIn_L_LR" -at "double";
	addAttr -ci true -sn "EyelidIn_R_LR" -ln "EyelidIn_R_LR" -at "double";
	addAttr -ci true -sn "EyelidOut_R_LR" -ln "EyelidOut_R_LR" -at "double";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -24.787349805232321 -153.0748866044006 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rq" -type "double4" 0 0 0 6.953865086824836e-309 ;
	setAttr -l on -cb on ".EyelidsDesc";
	setAttr -k on ".EyelidUppInn_L_UD";
	setAttr -k on ".EyelidUppMid_L_UD";
	setAttr -k on ".EyelidUppOut_L_UD";
	setAttr -k on ".EyelidUppInn_R_UD";
	setAttr -k on ".EyelidUppMid_R_UD";
	setAttr -k on ".EyelidUppOut_R_UD";
	setAttr -k on ".EyelidLowInn_L_UD";
	setAttr -k on ".EyelidLowMid_L_UD";
	setAttr -k on ".EyelidLowOut_L_UD";
	setAttr -k on ".EyelidLowInn_R_UD";
	setAttr -k on ".EyelidLowMid_R_UD";
	setAttr -k on ".EyelidLowOut_R_UD";
	setAttr -k on ".EyelidUppInn_L_FB";
	setAttr -k on ".EyelidUppMid_L_FB";
	setAttr -k on ".EyelidUppOut_L_FB";
	setAttr -k on ".EyelidUppInn_R_FB";
	setAttr -k on ".EyelidUppMid_R_FB";
	setAttr -k on ".EyelidUppOut_R_FB";
	setAttr -k on ".EyelidLowInn_L_FB";
	setAttr -k on ".EyelidLowMid_L_FB";
	setAttr -k on ".EyelidLowOut_L_FB";
	setAttr -k on ".EyelidLowInn_R_FB";
	setAttr -k on ".EyelidLowMid_R_FB";
	setAttr -k on ".EyelidLowOut_R_FB";
	setAttr -k on ".EyelidOut_L_UD";
	setAttr -k on ".EyelidOut_L_FB";
	setAttr -k on ".EyelidIn_L_UD";
	setAttr -k on ".EyelidIn_L_FB";
	setAttr -k on ".EyelidOut_R_UD";
	setAttr -k on ".EyelidOut_R_FB";
	setAttr -k on ".EyelidIn_R_UD";
	setAttr -k on ".EyelidIn_R_FB";
	setAttr -k on ".EyelidUppInn_L_LR";
	setAttr -k on ".EyelidUppMid_L_LR";
	setAttr -k on ".EyelidUppOut_L_LR";
	setAttr -k on ".EyelidUppInn_R_LR";
	setAttr -k on ".EyelidUppMid_R_LR";
	setAttr -k on ".EyelidUppOut_R_LR";
	setAttr -k on ".EyelidLowInn_L_LR";
	setAttr -k on ".EyelidLowMid_L_LR";
	setAttr -k on ".EyelidLowOut_L_LR";
	setAttr -k on ".EyelidLowInn_R_LR";
	setAttr -k on ".EyelidLowMid_R_LR";
	setAttr -k on ".EyelidLowOut_R_LR";
	setAttr -k on ".EyelidOut_L_LR";
	setAttr -k on ".EyelidIn_L_LR";
	setAttr -k on ".EyelidIn_R_LR";
	setAttr -k on ".EyelidOut_R_LR";
createNode transform -n "lids" -p "grp_faceboard_eyelids_frame";
	setAttr ".tmp" yes;
	setAttr ".t" -type "double3" -24.489582707282139 -151.39331051913737 0.002140337942994508 ;
	setAttr ".s" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "curve340" -p "lids";
createNode nurbsCurve -n "curveShape340" -p "curve340";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 34 1 no 3
		39 0 0 0 0.0092195444572928942 0.0092195444572928942 0.0092195444572928942 0.21400723940012875 0.21400723940012875 0.21400723940012875 0.2500072394001287 0.2500072394001287
		 0.2500072394001287 0.28551780120925813 0.28551780120925813 0.28551780120925813 1.2855178012092581 1.2855178012092581 1.2855178012092581 1.8195178012092581 1.8195178012092581 1.8195178012092581 2.8195178012092583 2.8195178012092583
		 2.8195178012092583 2.8575178012092581 2.8575178012092581 2.8575178012092581 3.1385178012092583 3.1385178012092583 3.1385178012092583 3.1765178012092581 3.1765178012092581 3.1765178012092581 4.1765178012092576 4.1765178012092576
		 4.1765178012092576 4.8255178012092577 4.8255178012092577 4.8255178012092577
		37
		0.23500000000000001 0.7360000000000001 0
		0.23266666666666669 0.73799999999999999 0
		0.23033333333333336 0.73999999999999988 0
		0.22800000000000001 0.74199999999999999 0
		0.16033333333333336 0.73299999999999998 0
		0.092666666666666675 0.72399999999999987 0
		0.025000000000000005 0.71499999999999997 0
		0.025000000000000005 0.70299999999999996 0
		0.025000000000000005 0.69100000000000017 0
		0.025000000000000005 0.67899999999999994 0
		0.036666666666666667 0.67700000000000005 0
		0.048333333333333332 0.67500000000000016 0
		0.059999999999999998 0.67300000000000004 0
		0.075999999999999998 0.67000000000000004 0
		0.084000000000000005 0.66100000000000003 0
		0.084000000000000005 0.621 0
		0.084000000000000005 0.44300000000000006 0
		0.084000000000000005 0.26499999999999996 0
		0.084000000000000005 0.087000000000000008 0
		0.084000000000000005 0.044999999999999998 0
		0.075999999999999998 0.041000000000000002 0
		0.019 0.037999999999999999 0
		0.019 0.025333333333333333 0
		0.019 0.012666666666666666 0
		0.019 0 0
		0.11266666666666665 0 0
		0.20633333333333334 0 0
		0.29999999999999999 0 0
		0.29999999999999999 0.012666666666666666 0
		0.29999999999999999 0.025333333333333333 0
		0.29999999999999999 0.037999999999999999 0
		0.24299999999999999 0.041000000000000002 0
		0.23500000000000001 0.044999999999999998 0
		0.23500000000000001 0.087000000000000008 0
		0.23500000000000001 0.30333333333333329 0
		0.23500000000000001 0.51966666666666661 0
		0.23500000000000001 0.7360000000000001 0
		;
createNode transform -n "curve341" -p "lids";
	setAttr ".t" -type "double3" 0.309 0 0 ;
createNode nurbsCurve -n "curveShape341" -p "curve341";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 34 1 no 3
		39 0 0 0 1 1 1 1.038 1.038 1.038 1.319 1.319
		 1.319 1.357 1.357 1.357 2.3570000000000002 2.3570000000000002 2.3570000000000002 2.766 2.766 2.766 2.7752195444572929 2.7752195444572929
		 2.7752195444572929 2.9802805110013919 2.9802805110013919 2.9802805110013919 3.0162805110013919 3.0162805110013919 3.0162805110013919 3.0516358500607192 3.0516358500607192 3.0516358500607192 4.0516358500607197 4.0516358500607197
		 4.0516358500607197 4.3456358500607193 4.3456358500607193 4.3456358500607193
		37
		0.090999999999999998 0.087000000000000008 0
		0.090999999999999998 0.044999999999999998 0
		0.083000000000000004 0.041000000000000002 0
		0.026000000000000002 0.037999999999999999 0
		0.026000000000000006 0.025333333333333333 0
		0.026000000000000006 0.012666666666666666 0
		0.026000000000000006 0 0
		0.11966666666666666 0 0
		0.21333333333333335 0 0
		0.307 0 0
		0.307 0.012666666666666666 0
		0.307 0.025333333333333333 0
		0.307 0.037999999999999999 0
		0.25 0.041000000000000002 0
		0.24199999999999999 0.044999999999999998 0
		0.24199999999999999 0.087000000000000008 0
		0.24199999999999999 0.2233333333333333 0
		0.24199999999999999 0.35966666666666663 0
		0.24199999999999999 0.496 0
		0.23966666666666661 0.49800000000000005 0
		0.23733333333333331 0.5 0
		0.23500000000000001 0.502 0
		0.16733333333333333 0.49233333333333329 0
		0.099666666666666681 0.48266666666666674 0
		0.032000000000000001 0.47300000000000003 0
		0.032000000000000001 0.46100000000000002 0
		0.032000000000000001 0.44900000000000001 0
		0.032000000000000001 0.437 0
		0.043666666666666666 0.43533333333333335 0
		0.055333333333333339 0.43366666666666664 0
		0.067000000000000004 0.432 0
		0.083000000000000004 0.42999999999999999 0
		0.090999999999999998 0.42099999999999999 0
		0.090999999999999998 0.38100000000000001 0
		0.091000000000000011 0.28299999999999997 0
		0.091000000000000011 0.18499999999999997 0
		0.091000000000000011 0.087000000000000008 0
		;
createNode transform -n "curve342" -p "lids";
	setAttr ".t" -type "double3" 0.309 0 0 ;
createNode nurbsCurve -n "curveShape342" -p "curve342";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.161 0.54500000000000004 0
		0.216 0.54500000000000004 0
		0.253 0.58499999999999996 0
		0.253 0.63300000000000001 0
		0.253 0.68000000000000005 0
		0.218 0.71999999999999997 0
		0.161 0.71999999999999997 0
		0.105 0.71999999999999997 0
		0.070000000000000007 0.68000000000000005 0
		0.070000000000000007 0.63300000000000001 0
		0.070000000000000007 0.58499999999999996 0
		0.105 0.54500000000000004 0
		0.161 0.54500000000000004 0
		;
createNode transform -n "curve343" -p "lids";
	setAttr ".t" -type "double3" 0.625 0 0 ;
createNode nurbsCurve -n "curveShape343" -p "curve343";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 46 1 no 3
		51 0 0 0 0.0092195444572928942 0.0092195444572928942 0.0092195444572928942 0.21400723940012875 0.21400723940012875 0.21400723940012875 0.2500072394001287 0.2500072394001287
		 0.2500072394001287 0.28551780120925807 0.28551780120925807 0.28551780120925807 1.2855178012092581 1.2855178012092581 1.2855178012092581 1.4175178012092582 1.4175178012092582 1.4175178012092582 2.4175178012092582 2.4175178012092582
		 2.4175178012092582 3.4175178012092582 3.4175178012092582 3.4175178012092582 4.4175178012092582 4.4175178012092582 4.4175178012092582 5.4175178012092582 5.4175178012092582 5.4175178012092582 6.4175178012092582 6.4175178012092582
		 6.4175178012092582 6.467517801209258 6.467517801209258 6.467517801209258 6.6835178012092582 6.6835178012092582 6.6835178012092582 6.7215178012092585 6.7215178012092585 6.7215178012092585 7.7215178012092585 7.7215178012092585
		 7.7215178012092585 8.3705178012092585 8.3705178012092585 8.3705178012092585
		49
		0.53100000000000003 0.7360000000000001 0
		0.52866666666666673 0.73799999999999999 0
		0.52633333333333343 0.73999999999999988 0
		0.52400000000000002 0.74199999999999999 0
		0.45633333333333331 0.73299999999999998 0
		0.38866666666666666 0.72399999999999987 0
		0.32100000000000001 0.71499999999999997 0
		0.32100000000000001 0.70299999999999996 0
		0.32100000000000001 0.69100000000000017 0
		0.32100000000000001 0.67899999999999994 0
		0.33266666666666667 0.67700000000000005 0
		0.34433333333333332 0.67500000000000016 0
		0.35600000000000004 0.67300000000000004 0
		0.372 0.67000000000000004 0
		0.38 0.66100000000000003 0
		0.38 0.621 0
		0.38000000000000006 0.57700000000000007 0
		0.38000000000000006 0.53300000000000003 0
		0.38000000000000006 0.48900000000000005 0
		0.35799999999999998 0.498 0
		0.33000000000000002 0.502 0
		0.29599999999999999 0.502 0
		0.221 0.502 0
		0.155 0.47999999999999998 0
		0.109 0.437 0
		0.062 0.39300000000000002 0
		0.034000000000000002 0.32600000000000001 0
		0.034000000000000002 0.23600000000000002 0
		0.034000000000000002 0.089999999999999997 0
		0.10800000000000001 -0.012 0
		0.23500000000000001 -0.012 0
		0.27200000000000002 -0.012 0
		0.32600000000000001 0.0070000000000000062 0
		0.38 0.050000000000000003 0
		0.38000000000000006 0.03333333333333334 0
		0.38000000000000006 0.01666666666666667 0
		0.38000000000000006 0 0
		0.45200000000000012 0 0
		0.52400000000000013 0 0
		0.59600000000000009 0 0
		0.59599999999999997 0.012666666666666666 0
		0.59599999999999997 0.025333333333333333 0
		0.59599999999999997 0.037999999999999999 0
		0.53900000000000003 0.041000000000000002 0
		0.53100000000000003 0.044999999999999998 0
		0.53100000000000003 0.087000000000000008 0
		0.53100000000000003 0.30333333333333329 0
		0.53100000000000003 0.51966666666666661 0
		0.53100000000000003 0.7360000000000001 0
		;
createNode transform -n "curve344" -p "lids";
	setAttr ".t" -type "double3" 0.625 0 0 ;
createNode nurbsCurve -n "curveShape344" -p "curve344";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 16 1 no 3
		21 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 5 5 5 5.2060000000000004 5.2060000000000004 5.2060000000000004
		19
		0.38 0.152 0
		0.38 0.112 0
		0.36599999999999999 0.065000000000000002 0
		0.30199999999999999 0.065000000000000002 0
		0.23700000000000002 0.065000000000000002 0
		0.193 0.128 0
		0.193 0.25600000000000001 0
		0.193 0.40300000000000002 0
		0.248 0.45600000000000002 0
		0.30399999999999999 0.45600000000000002 0
		0.34200000000000003 0.45600000000000002 0
		0.36199999999999999 0.437 0
		0.372 0.41699999999999998 0
		0.38 0.40200000000000002 0
		0.38 0.379 0
		0.38 0.35799999999999998 0
		0.38000000000000006 0.28933333333333333 0
		0.38000000000000006 0.22066666666666668 0
		0.38000000000000006 0.152 0
		;
createNode transform -n "curve345" -p "lids";
	setAttr ".t" -type "double3" 1.23 0 0 ;
createNode nurbsCurve -n "curveShape345" -p "curve345";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 46 1 no 3
		51 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 5 5 5 6 6 6 6.0369999999999999 6.0369999999999999
		 6.0369999999999999 6.1699999999999999 6.1699999999999999 6.1699999999999999 7.1699999999999999 7.1699999999999999 7.1699999999999999 8.1699999999999999 8.1699999999999999 8.1699999999999999 9.1699999999999999 9.1699999999999999
		 9.1699999999999999 10.17 10.17 10.17 11.17 11.17 11.17 12.17 12.17 12.17 12.208 12.208
		 12.208 12.357482440440341 12.357482440440341 12.357482440440341
		49
		0.050000000000000003 0.036000000000000004 0
		0.087999999999999995 0.0010000000000000009 0
		0.16300000000000001 -0.012 0
		0.219 -0.012 0
		0.34100000000000003 -0.012 0
		0.42499999999999999 0.04300000000000001 0
		0.42499999999999999 0.151 0
		0.42499999999999999 0.23700000000000002 0
		0.371 0.27800000000000002 0
		0.27900000000000003 0.313 0
		0.221 0.33400000000000002 0
		0.17799999999999999 0.35799999999999998 0
		0.17799999999999999 0.39800000000000002 0
		0.17799999999999999 0.42899999999999999 0
		0.20000000000000001 0.45600000000000002 0
		0.24099999999999999 0.45600000000000002 0
		0.29199999999999998 0.45600000000000002 0
		0.33500000000000002 0.41000000000000003 0
		0.35399999999999998 0.33400000000000002 0
		0.36633333333333334 0.33400000000000002 0
		0.37866666666666671 0.33400000000000002 0
		0.39100000000000001 0.33400000000000002 0
		0.39100000000000001 0.37833333333333335 0
		0.39100000000000001 0.42266666666666669 0
		0.39100000000000001 0.46700000000000003 0
		0.35000000000000003 0.49199999999999999 0
		0.29299999999999998 0.502 0
		0.24099999999999999 0.502 0
		0.11900000000000002 0.502 0
		0.043000000000000003 0.44500000000000001 0
		0.043000000000000003 0.34400000000000003 0
		0.043000000000000003 0.27100000000000002 0
		0.10200000000000001 0.223 0
		0.19 0.19 0
		0.24099999999999999 0.17200000000000001 0
		0.28999999999999998 0.14300000000000002 0
		0.28999999999999998 0.095000000000000001 0
		0.28999999999999998 0.057000000000000009 0
		0.26500000000000001 0.034000000000000002 0
		0.221 0.034000000000000002 0
		0.155 0.034000000000000002 0
		0.10200000000000001 0.10300000000000001 0
		0.075999999999999998 0.185 0
		0.063333333333333339 0.18499999999999997 0
		0.050666666666666665 0.18499999999999997 0
		0.037999999999999999 0.18499999999999997 0
		0.042000000000000003 0.13533333333333333 0
		0.046000000000000006 0.085666666666666669 0
		0.05000000000000001 0.036000000000000004 0
		;
createNode transform -n "grp_faceboard_eyebrows_frame" -p "ctrl_faceboard_facial";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 6.9658145978619928 0 ;
	setAttr ".rp" -type "double3" -24.562505213874843 -155.85320329586096 0 ;
	setAttr ".sp" -type "double3" -24.562505213874843 -155.85320329586096 0 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nsS'translateY'\np6\nF5\nsS'translateZ'\np7\nF0\nsS'scaleX'\np8\nF1\nsS'scaleY'\np9\nF1\nsS'scaleZ'\np10\nF1\nsS'rotateX'\np11\nF0\nsS'rotateY'\np12\nF0\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF0\nsg6\nF5\nsg7\nF0\nsg8\nF1\nsg9\nF1\nsg10\nF1\nsg11\nF0\nsg12\nF0\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode transform -n "grp_faceboard_eyebrow_r_offset" -p "grp_faceboard_eyebrows_frame";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -3.9999999999999885 -0.003 8.8817841970012494e-16 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 20.606505213874851 -155.85320329586096 -1.6451606080950847e-15 ;
	setAttr ".rpt" -type "double3" -41.213010427749701 0 7.6675215101166095e-16 ;
	setAttr ".sp" -type "double3" 20.606505213874851 -155.85320329586096 -1.6451606080950847e-15 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF-3.9999999999999893\nsS'translateY'\np6\nF0\nsS'translateZ'\np7\nF8.8817841970012523e-16\nsS'scaleX'\np8\nF1\nsS'scaleY'\np9\nF1\nsS'scaleZ'\np10\nF-1\nsS'rotateX'\np11\nF0\nsS'rotateY'\np12\nF180\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF-3.9999999999999893\nsg6\nF0\nsg7\nF8.8817841970012523e-16\nsg8\nF1\nsg9\nF1\nsg10\nF-1\nsg11\nF0\nsg12\nF180\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode transform -n "ctrl_faceboard_eyebrow_r" -p "grp_faceboard_eyebrow_r_offset";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 20.606505213874851 -155.85013357049087 -1.6451606080950851e-15 ;
	setAttr ".sp" -type "double3" 20.606505213874851 -155.85013357049087 -1.6451606080950851e-15 ;
	setAttr ".mntl" -type "double3" -0.01 -0.01 -1 ;
	setAttr ".mxtl" -type "double3" 0.01 0.01 1 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nsS'translateY'\np6\nF0\nssS'neutralPose'\np7\n(dp8\ng5\nF0\nsg6\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" 1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
createNode nurbsCurve -n "ctrl_faceboard_eyebrow_rShape1" -p "ctrl_faceboard_eyebrow_r";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		20.608914159271901 -155.84772462400281 -3.1654678660580371e-10
		20.608914159271901 -155.84772462400281 -3.1654678660580371e-10
		20.604096266044724 -155.84772462400281 -3.1654678660580371e-10
		20.604096266044724 -155.84772462400281 -3.1654678660580371e-10
		20.604096266044724 -155.85254251722998 -3.1654678738058e-10
		20.604096266044724 -155.85254251722998 -3.1654678738058e-10
		20.608914159271901 -155.85254251722998 -3.1654678738058e-10
		20.608914159271901 -155.85254251722998 -3.1654678738058e-10
		20.608914159271901 -155.84772462400281 -3.1654678660580371e-10
		20.608914159271901 -155.84772462400281 -3.1654678660580371e-10
		20.604096266044724 -155.84772462400281 -3.1654678660580371e-10
		;
createNode nurbsCurve -n "grp_faceboard_eyebrow_r_offsetShape" -p "grp_faceboard_eyebrow_r_offset";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		20.617395213874858 -155.83948861965524 -1.6451606080950851e-15
		20.617395213874858 -155.86148861965523 -1.6451606080950851e-15
		20.595615213874858 -155.86148861965523 -1.6451606080950851e-15
		20.595615213874858 -155.83948861965524 -1.6451606080950851e-15
		20.617395213874858 -155.83948861965524 -1.6451606080950851e-15
		;
createNode transform -n "grp_faceboard_eyebrow_l_offset" -p "grp_faceboard_eyebrows_frame";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 4.0000000000000107 -0.003 8.8817841970012494e-16 ;
	setAttr ".rp" -type "double3" -28.518505213874853 -155.85320329586096 -8.7840845708342355e-16 ;
	setAttr ".sp" -type "double3" -28.518505213874853 -155.85320329586096 -8.7840845708342355e-16 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF4.0000000000000107\nsS'translateY'\np6\nF0\nsS'translateZ'\np7\nF8.8817841970012523e-16\nsS'scaleX'\np8\nF1\nsS'scaleY'\np9\nF1\nsS'scaleZ'\np10\nF1\nsS'rotateX'\np11\nF0\nsS'rotateY'\np12\nF0\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF4.0000000000000107\nsg6\nF0\nsg7\nF8.8817841970012523e-16\nsg8\nF1\nsg9\nF1\nsg10\nF1\nsg11\nF0\nsg12\nF0\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode transform -n "ctrl_faceboard_eyebrow_l" -p "grp_faceboard_eyebrow_l_offset";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -28.518505213874853 -155.85013357049087 -8.7840845708342355e-16 ;
	setAttr ".sp" -type "double3" -28.518505213874853 -155.85013357049087 -8.7840845708342355e-16 ;
	setAttr ".mntl" -type "double3" -0.01 -0.01 -1 ;
	setAttr ".mxtl" -type "double3" 0.01 0.01 1 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nsS'translateY'\np6\nF0\nssS'neutralPose'\np7\n(dp8\ng5\nF0\nsg6\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" 1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
createNode nurbsCurve -n "ctrl_faceboard_eyebrow_lShape1" -p "ctrl_faceboard_eyebrow_l";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		-28.516096268477806 -155.84772462400281 3.1654426303673851e-10
		-28.516096268477806 -155.84772462400281 3.1654426303673851e-10
		-28.520914161704983 -155.84772462400281 3.1654426303673851e-10
		-28.520914161704983 -155.84772462400281 3.1654426303673851e-10
		-28.520914161704983 -155.85254251722998 3.1654426381151481e-10
		-28.520914161704983 -155.85254251722998 3.1654426381151481e-10
		-28.516096268477806 -155.85254251722998 3.1654426381151481e-10
		-28.516096268477806 -155.85254251722998 3.1654426381151481e-10
		-28.516096268477806 -155.84772462400281 3.1654426303673851e-10
		-28.516096268477806 -155.84772462400281 3.1654426303673851e-10
		-28.520914161704983 -155.84772462400281 3.1654426303673851e-10
		;
createNode nurbsCurve -n "grp_faceboard_eyebrow_l_offsetShape" -p "grp_faceboard_eyebrow_l_offset";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-28.50761521387486 -155.83906691750454 -8.7840845708342355e-16
		-28.50761521387486 -155.86106691750453 -8.7840845708342355e-16
		-28.52939521387486 -155.86106691750453 -8.7840845708342355e-16
		-28.52939521387486 -155.83906691750454 -8.7840845708342355e-16
		-28.50761521387486 -155.83906691750454 -8.7840845708342355e-16
		;
createNode nurbsCurve -n "grp_faceboard_eyebrows_frameShape" -p "grp_faceboard_eyebrows_frame";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-24.503521477509025 -155.83820289512306 0
		-24.503521477509025 -155.86820369659887 0
		-24.621488950240661 -155.86820369659887 0
		-24.621488950240661 -155.83820289512306 0
		-24.503521477509025 -155.83820289512306 0
		;
createNode transform -n "atts_faceboard_eyebrow" -p "grp_faceboard_eyebrows_frame";
	addAttr -ci true -sn "EyebrowsDesc" -ln "EyebrowsDesc" -nn "Eyebrows" -at "double";
	addAttr -ci true -sn "EyebrowInn_L_UD" -ln "EyebrowInn_L_UD" -at "double";
	addAttr -ci true -sn "EyebrowMid_L_UD" -ln "EyebrowMid_L_UD" -at "double";
	addAttr -ci true -sn "EyebrowOut_L_UD" -ln "EyebrowOut_L_UD" -at "double";
	addAttr -ci true -sn "EyebrowInn_R_UD" -ln "EyebrowInn_R_UD" -at "double";
	addAttr -ci true -sn "EyebrowMid_R_UD" -ln "EyebrowMid_R_UD" -at "double";
	addAttr -ci true -sn "EyebrowOut_R_UD" -ln "EyebrowOut_R_UD" -at "double";
	addAttr -ci true -sn "EyebrowMidInn_L_UD" -ln "EyebrowMidInn_L_UD" -at "double";
	addAttr -ci true -sn "EyebrowMidOut_L_UD" -ln "EyebrowMidOut_L_UD" -at "double";
	addAttr -ci true -sn "EyebrowMidInn_R_UD" -ln "EyebrowMidInn_R_UD" -at "double";
	addAttr -ci true -sn "EyebrowMidOut_R_UD" -ln "EyebrowMidOut_R_UD" -at "double";
	addAttr -ci true -sn "EyebrowInn_L_LR" -ln "EyebrowInn_L_LR" -at "double";
	addAttr -ci true -sn "EyebrowMid_L_LR" -ln "EyebrowMid_L_LR" -at "double";
	addAttr -ci true -sn "EyebrowOut_L_LR" -ln "EyebrowOut_L_LR" -at "double";
	addAttr -ci true -sn "EyebrowInn_R_LR" -ln "EyebrowInn_R_LR" -at "double";
	addAttr -ci true -sn "EyebrowMid_R_LR" -ln "EyebrowMid_R_LR" -at "double";
	addAttr -ci true -sn "EyebrowOut_R_LR" -ln "EyebrowOut_R_LR" -at "double";
	addAttr -ci true -sn "EyebrowMidInn_L_LR" -ln "EyebrowMidInn_L_LR" -at "double";
	addAttr -ci true -sn "EyebrowMidOut_L_LR" -ln "EyebrowMidOut_L_LR" -at "double";
	addAttr -ci true -sn "EyebrowMidInn_R_LR" -ln "EyebrowMidInn_R_LR" -at "double";
	addAttr -ci true -sn "EyebrowMidOut_R_LR" -ln "EyebrowMidOut_R_LR" -at "double";
	addAttr -ci true -sn "EyebrowInn_L_FB" -ln "EyebrowInn_L_FB" -at "double";
	addAttr -ci true -sn "EyebrowMid_L_FB" -ln "EyebrowMid_L_FB" -at "double";
	addAttr -ci true -sn "EyebrowOut_L_FB" -ln "EyebrowOut_L_FB" -at "double";
	addAttr -ci true -sn "EyebrowInn_R_FB" -ln "EyebrowInn_R_FB" -at "double";
	addAttr -ci true -sn "EyebrowMid_R_FB" -ln "EyebrowMid_R_FB" -at "double";
	addAttr -ci true -sn "EyebrowOut_R_FB" -ln "EyebrowOut_R_FB" -at "double";
	addAttr -ci true -sn "EyebrowMidInn_L_FB" -ln "EyebrowMidInn_L_FB" -at "double";
	addAttr -ci true -sn "EyebrowMidOut_L_FB" -ln "EyebrowMidOut_L_FB" -at "double";
	addAttr -ci true -sn "EyebrowMidInn_R_FB" -ln "EyebrowMidInn_R_FB" -at "double";
	addAttr -ci true -sn "EyebrowMidOut_R_FB" -ln "EyebrowMidOut_R_FB" -at "double";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -24.787349805232321 -157.5748866044006 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -cb on ".EyebrowsDesc";
	setAttr -k on ".EyebrowInn_L_UD";
	setAttr -k on ".EyebrowMid_L_UD";
	setAttr -k on ".EyebrowOut_L_UD";
	setAttr -k on ".EyebrowInn_R_UD";
	setAttr -k on ".EyebrowMid_R_UD";
	setAttr -k on ".EyebrowOut_R_UD";
	setAttr -k on ".EyebrowMidInn_L_UD";
	setAttr -k on ".EyebrowMidOut_L_UD";
	setAttr -k on ".EyebrowMidInn_R_UD";
	setAttr -k on ".EyebrowMidOut_R_UD";
	setAttr -k on ".EyebrowInn_L_LR";
	setAttr -k on ".EyebrowMid_L_LR";
	setAttr -k on ".EyebrowOut_L_LR";
	setAttr -k on ".EyebrowInn_R_LR";
	setAttr -k on ".EyebrowMid_R_LR";
	setAttr -k on ".EyebrowOut_R_LR";
	setAttr -k on ".EyebrowMidInn_L_LR";
	setAttr -k on ".EyebrowMidOut_L_LR";
	setAttr -k on ".EyebrowMidInn_R_LR";
	setAttr -k on ".EyebrowMidOut_R_LR";
	setAttr -k on ".EyebrowInn_L_FB";
	setAttr -k on ".EyebrowMid_L_FB";
	setAttr -k on ".EyebrowOut_L_FB";
	setAttr -k on ".EyebrowInn_R_FB";
	setAttr -k on ".EyebrowMid_R_FB";
	setAttr -k on ".EyebrowOut_R_FB";
	setAttr -k on ".EyebrowMidInn_L_FB";
	setAttr -k on ".EyebrowMidOut_L_FB";
	setAttr -k on ".EyebrowMidInn_R_FB";
	setAttr -k on ".EyebrowMidOut_R_FB";
createNode transform -n "brows" -p "grp_faceboard_eyebrows_frame";
	setAttr ".tmp" yes;
	setAttr ".t" -type "double3" -24.489582707282139 -155.85468519545589 0.0021403379429945084 ;
	setAttr ".s" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "curve358" -p "brows";
createNode nurbsCurve -n "curveShape358" -p "curve358";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 37 1 no 3
		42 0 0 0 0.0092195444572928942 0.0092195444572928942 0.0092195444572928942 0.21400723940012875 0.21400723940012875 0.21400723940012875 0.2500072394001287 0.2500072394001287
		 0.2500072394001287 0.28551780120925813 0.28551780120925813 0.28551780120925813 1.2855178012092581 1.2855178012092581 1.2855178012092581 1.9005178012092581 1.9005178012092581 1.9005178012092581 1.9372329207106298 1.9372329207106298
		 1.9372329207106298 2.001045145244805 2.001045145244805 2.001045145244805 3.001045145244805 3.001045145244805 3.001045145244805 4.001045145244805 4.001045145244805 4.001045145244805 5.001045145244805 5.001045145244805
		 5.001045145244805 6.001045145244805 6.001045145244805 6.001045145244805 6.304045145244805 6.304045145244805 6.304045145244805
		40
		0.22500000000000001 0.7360000000000001 0
		0.22266666666666668 0.73799999999999999 0
		0.22033333333333335 0.73999999999999988 0
		0.218 0.74199999999999999 0
		0.15033333333333335 0.73299999999999998 0
		0.082666666666666666 0.72399999999999987 0
		0.014999999999999999 0.71499999999999997 0
		0.015000000000000001 0.70299999999999996 0
		0.015000000000000001 0.69100000000000017 0
		0.015000000000000001 0.67899999999999994 0
		0.026666666666666668 0.67700000000000005 0
		0.038333333333333337 0.67500000000000016 0
		0.05000000000000001 0.67300000000000004 0
		0.066000000000000003 0.67000000000000004 0
		0.073999999999999996 0.66100000000000003 0
		0.073999999999999996 0.621 0
		0.073999999999999996 0.41599999999999998 0
		0.073999999999999996 0.21099999999999999 0
		0.073999999999999996 0.006000000000000001 0
		0.084666666666666668 0 0
		0.095333333333333325 -0.006000000000000001 0
		0.106 -0.012000000000000002 0
		0.124 -0.00066666666666666729 0
		0.14200000000000002 0.010666666666666666 0
		0.16 0.022000000000000002 0
		0.19600000000000001 0.0030000000000000027 0
		0.24399999999999999 -0.012 0
		0.309 -0.012 0
		0.45200000000000001 -0.012 0
		0.57100000000000006 0.036000000000000004 0
		0.57100000000000006 0.26200000000000001 0
		0.57100000000000006 0.42499999999999999 0
		0.48399999999999999 0.502 0
		0.38400000000000001 0.502 0
		0.32100000000000001 0.502 0
		0.27200000000000002 0.46900000000000003 0
		0.22500000000000001 0.433 0
		0.22500000000000001 0.53400000000000003 0
		0.22500000000000001 0.63500000000000001 0
		0.22500000000000001 0.7360000000000001 0
		;
createNode transform -n "curve359" -p "brows";
createNode nurbsCurve -n "curveShape359" -p "curve359";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 19 1 no 3
		24 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 5 5 5 6 6 6 6.1580000000000004 6.1580000000000004
		 6.1580000000000004
		22
		0.22500000000000001 0.312 0
		0.22500000000000001 0.33300000000000002 0
		0.22600000000000001 0.35399999999999998 0
		0.23100000000000001 0.36799999999999999 0
		0.24399999999999999 0.40200000000000002 0
		0.26700000000000002 0.42499999999999999 0
		0.312 0.42499999999999999 0
		0.36099999999999999 0.42499999999999999 0
		0.41200000000000003 0.40000000000000002 0
		0.41200000000000003 0.23700000000000002 0
		0.41200000000000003 0.11100000000000002 0
		0.38600000000000001 0.034000000000000002 0
		0.311 0.034000000000000002 0
		0.26200000000000001 0.034000000000000002 0
		0.23600000000000002 0.060999999999999999 0
		0.22900000000000001 0.098000000000000004 0
		0.22600000000000001 0.113 0
		0.22500000000000001 0.13500000000000001 0
		0.22500000000000001 0.154 0
		0.22499999999999998 0.20666666666666667 0
		0.22499999999999998 0.25933333333333336 0
		0.22499999999999998 0.312 0
		;
createNode transform -n "curve360" -p "brows";
	setAttr ".t" -type "double3" 0.605 0 0 ;
createNode nurbsCurve -n "curveShape360" -p "curve360";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 55 1 no 3
		60 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 5 5 5 6 6 6 7 7
		 7 7.0888144132446982 7.0888144132446982 7.0888144132446982 7.2859590302140695 7.2859590302140695 7.2859590302140695 7.3219590302140691 7.3219590302140691 7.3219590302140691 7.3573143692733964 7.3573143692733964
		 7.3573143692733964 8.3573143692733964 8.3573143692733964 8.3573143692733964 8.6513143692733969 8.6513143692733969 8.6513143692733969 9.6513143692733969 9.6513143692733969 9.6513143692733969 9.6893143692733972 9.6893143692733972
		 9.6893143692733972 9.9913143692733968 9.9913143692733968 9.9913143692733968 10.029314369273397 10.029314369273397 10.029314369273397 11.029314369273397 11.029314369273397 11.029314369273397 11.253314369273397 11.253314369273397
		 11.253314369273397
		58
		0.24199999999999999 0.311 0
		0.24199999999999999 0.36299999999999999 0
		0.252 0.38600000000000001 0
		0.27600000000000002 0.38600000000000001 0
		0.29199999999999998 0.38600000000000001 0
		0.307 0.378 0
		0.32900000000000001 0.36499999999999999 0
		0.34200000000000003 0.35699999999999998 0
		0.35599999999999998 0.34900000000000003 0
		0.375 0.34900000000000003 0
		0.39500000000000002 0.34900000000000003 0
		0.41500000000000004 0.35999999999999999 0
		0.42599999999999999 0.375 0
		0.437 0.39000000000000001 0
		0.442 0.41000000000000003 0
		0.442 0.432 0
		0.442 0.47500000000000003 0
		0.41400000000000003 0.502 0
		0.372 0.502 0
		0.33000000000000002 0.502 0
		0.29699999999999999 0.47500000000000003 0
		0.23900000000000002 0.41400000000000003 0
		0.23500000000000001 0.4433333333333333 0
		0.23100000000000001 0.47266666666666662 0
		0.22700000000000001 0.502 0
		0.16200000000000001 0.49233333333333335 0
		0.097000000000000017 0.48266666666666674 0
		0.032000000000000001 0.47300000000000003 0
		0.032000000000000001 0.46100000000000002 0
		0.032000000000000001 0.44900000000000001 0
		0.032000000000000001 0.437 0
		0.043666666666666666 0.43533333333333335 0
		0.055333333333333339 0.43366666666666664 0
		0.067000000000000004 0.432 0
		0.083000000000000004 0.42999999999999999 0
		0.090999999999999998 0.42099999999999999 0
		0.090999999999999998 0.38100000000000001 0
		0.091000000000000011 0.28299999999999997 0
		0.091000000000000011 0.18499999999999997 0
		0.091000000000000011 0.087000000000000008 0
		0.090999999999999998 0.044999999999999998 0
		0.083000000000000004 0.041000000000000002 0
		0.026000000000000002 0.037999999999999999 0
		0.026000000000000006 0.025333333333333333 0
		0.026000000000000006 0.012666666666666666 0
		0.026000000000000006 0 0
		0.12666666666666668 0 0
		0.22733333333333336 0 0
		0.32800000000000001 0 0
		0.32800000000000001 0.012666666666666666 0
		0.32800000000000001 0.025333333333333333 0
		0.32800000000000001 0.037999999999999999 0
		0.251 0.042000000000000003 0
		0.24199999999999999 0.044999999999999998 0
		0.24199999999999999 0.087000000000000008 0
		0.24199999999999999 0.16166666666666668 0
		0.24199999999999999 0.23633333333333337 0
		0.24199999999999999 0.311 0
		;
createNode transform -n "curve361" -p "brows";
	setAttr ".t" -type "double3" 1.045 0 0 ;
createNode nurbsCurve -n "curveShape361" -p "curve361";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.29299999999999998 0.502 0
		0.11099999999999999 0.502 0
		0.034000000000000002 0.40500000000000003 0
		0.034000000000000002 0.245 0
		0.034000000000000002 0.08500000000000002 0
		0.11099999999999999 -0.012 0
		0.29299999999999998 -0.012 0
		0.47400000000000003 -0.012 0
		0.55100000000000005 0.08500000000000002 0
		0.55100000000000005 0.245 0
		0.55100000000000005 0.40500000000000003 0
		0.47400000000000003 0.502 0
		0.29299999999999998 0.502 0
		;
createNode transform -n "curve362" -p "brows";
	setAttr ".t" -type "double3" 1.045 0 0 ;
createNode nurbsCurve -n "curveShape362" -p "curve362";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.193 0.245 0
		0.193 0.379 0
		0.222 0.45600000000000002 0
		0.29299999999999998 0.45600000000000002 0
		0.36299999999999999 0.45600000000000002 0
		0.39200000000000002 0.379 0
		0.39200000000000002 0.245 0
		0.39200000000000002 0.11099999999999999 0
		0.36299999999999999 0.034000000000000002 0
		0.29299999999999998 0.034000000000000002 0
		0.222 0.034000000000000002 0
		0.193 0.11099999999999999 0
		0.193 0.245 0
		;
createNode transform -n "curve363" -p "brows";
	setAttr ".t" -type "double3" 1.63 0 0 ;
createNode nurbsCurve -n "curveShape363" -p "curve363";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 82 1 no 3
		87 0 0 0 0.037999999999999978 0.037999999999999978 0.037999999999999978 1.038 1.038 1.038 2.0380000000000003 2.0380000000000003
		 2.0380000000000003 2.3159946042641839 2.3159946042641839 2.3159946042641839 2.4259946042641838 2.4259946042641838 2.4259946042641838 2.7461976648366897 2.7461976648366897 2.7461976648366897 2.7501976648366897 2.7501976648366897
		 2.7501976648366897 3.073073802078202 3.073073802078202 3.073073802078202 3.1830738020782019 3.1830738020782019 3.1830738020782019 3.4279002712354401 3.4279002712354401 3.4279002712354401 4.4279002712354405 4.4279002712354405
		 4.4279002712354405 5.4279002712354405 5.4279002712354405 5.4279002712354405 5.4659002712354408 5.4659002712354408 5.4659002712354408 5.6729002712354406 5.6729002712354406 5.6729002712354406 5.7109002712354409 5.7109002712354409
		 5.7109002712354409 5.754316857927626 5.754316857927626 5.754316857927626 6.754316857927626 6.754316857927626 6.754316857927626 7.754316857927626 7.754316857927626 7.754316857927626 7.7583168579276265 7.7583168579276265
		 7.7583168579276265 8.121239714744334 8.121239714744334 8.121239714744334 8.2262397147443345 8.2262397147443345 8.2262397147443345 8.5864521520643144 8.5864521520643144 8.5864521520643144 8.5894521520643146 8.5894521520643146
		 8.5894521520643146 8.8747607569117672 8.8747607569117672 8.8747607569117672 9.8747607569117672 9.8747607569117672 9.8747607569117672 9.9029210125924241 9.9029210125924241 9.9029210125924241 9.9409210125924243 9.9409210125924243
		 9.9409210125924243 10.200921012592424 10.200921012592424 10.200921012592424
		85
		-0.01 0.49000000000000005 0
		-0.01 0.47733333333333339 0
		-0.01 0.46466666666666673 0
		-0.01 0.45200000000000001 0
		0.029999999999999992 0.44800000000000001 0
		0.041000000000000002 0.443 0
		0.052999999999999999 0.40900000000000003 0
		0.074999999999999997 0.34800000000000003 0
		0.081000000000000003 0.32800000000000001 0
		0.10100000000000001 0.26500000000000001 0
		0.12900000000000003 0.17666666666666667 0
		0.157 0.088333333333333333 0
		0.18499999999999997 0 0
		0.22166666666666668 0 0
		0.2583333333333333 0 0
		0.29499999999999998 0 0
		0.32533333333333331 0.10233333333333333 0
		0.35566666666666674 0.20466666666666666 0
		0.38599999999999995 0.307 0
		0.38733333333333331 0.307 0
		0.38866666666666666 0.307 0
		0.38999999999999996 0.307 0
		0.42333333333333334 0.20466666666666666 0
		0.45666666666666661 0.10233333333333333 0
		0.48999999999999999 0 0
		0.52666666666666662 0 0
		0.56333333333333335 0 0
		0.59999999999999998 0 0
		0.624 0.078 0
		0.64800000000000002 0.156 0
		0.67200000000000004 0.23400000000000001 0
		0.69300000000000006 0.30299999999999999 0
		0.71399999999999997 0.36599999999999999 0
		0.72899999999999998 0.40200000000000002 0
		0.74399999999999999 0.441 0
		0.751 0.44800000000000001 0
		0.80200000000000005 0.45200000000000001 0
		0.80200000000000005 0.46466666666666673 0
		0.80200000000000005 0.47733333333333339 0
		0.80200000000000005 0.49000000000000005 0
		0.7330000000000001 0.48999999999999999 0
		0.66400000000000003 0.48999999999999999 0
		0.59499999999999997 0.48999999999999999 0
		0.59499999999999997 0.47733333333333339 0
		0.59499999999999997 0.46466666666666673 0
		0.59499999999999997 0.45200000000000001 0
		0.60933333333333339 0.45000000000000012 0
		0.6236666666666667 0.44800000000000012 0
		0.63800000000000001 0.44600000000000001 0
		0.65600000000000003 0.443 0
		0.65800000000000003 0.432 0
		0.65500000000000003 0.41300000000000003 0
		0.64600000000000002 0.36299999999999999 0
		0.61299999999999999 0.23600000000000002 0
		0.58799999999999997 0.14200000000000002 0
		0.58666666666666656 0.14200000000000002 0
		0.58533333333333326 0.14200000000000002 0
		0.58399999999999996 0.14200000000000002 0
		0.54966666666666664 0.25800000000000001 0
		0.51533333333333331 0.37399999999999994 0
		0.48100000000000004 0.48999999999999999 0
		0.44600000000000001 0.48999999999999999 0
		0.41100000000000003 0.48999999999999999 0
		0.37600000000000006 0.48999999999999999 0
		0.34499999999999997 0.37399999999999994 0
		0.314 0.25800000000000001 0
		0.28300000000000003 0.14200000000000002 0
		0.28200000000000003 0.14200000000000002 0
		0.28100000000000003 0.14200000000000002 0
		0.28000000000000003 0.14200000000000002 0
		0.25466666666666665 0.23366666666666666 0
		0.22933333333333339 0.32533333333333331 0
		0.20400000000000004 0.41699999999999998 0
		0.19800000000000001 0.439 0
		0.20200000000000001 0.44700000000000001 0
		0.222 0.44900000000000001 0
		0.23133333333333336 0.45000000000000001 0
		0.24066666666666667 0.45100000000000001 0
		0.25 0.45200000000000001 0
		0.25 0.46466666666666673 0
		0.25 0.47733333333333339 0
		0.25 0.49000000000000005 0
		0.16333333333333333 0.49000000000000005 0
		0.076666666666666661 0.49000000000000005 0
		-0.01 0.49000000000000005 0
		;
createNode transform -n "curve364" -p "brows";
	setAttr ".t" -type "double3" 2.404 0 0 ;
createNode nurbsCurve -n "curveShape364" -p "curve364";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 46 1 no 3
		51 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 5 5 5 6 6 6 6.0369999999999999 6.0369999999999999
		 6.0369999999999999 6.1699999999999999 6.1699999999999999 6.1699999999999999 7.1699999999999999 7.1699999999999999 7.1699999999999999 8.1699999999999999 8.1699999999999999 8.1699999999999999 9.1699999999999999 9.1699999999999999
		 9.1699999999999999 10.17 10.17 10.17 11.17 11.17 11.17 12.17 12.17 12.17 12.208 12.208
		 12.208 12.357482440440341 12.357482440440341 12.357482440440341
		49
		0.050000000000000003 0.036000000000000004 0
		0.087999999999999995 0.0010000000000000009 0
		0.16300000000000001 -0.012 0
		0.219 -0.012 0
		0.34100000000000003 -0.012 0
		0.42499999999999999 0.04300000000000001 0
		0.42499999999999999 0.151 0
		0.42499999999999999 0.23700000000000002 0
		0.371 0.27800000000000002 0
		0.27900000000000003 0.313 0
		0.221 0.33400000000000002 0
		0.17799999999999999 0.35799999999999998 0
		0.17799999999999999 0.39800000000000002 0
		0.17799999999999999 0.42899999999999999 0
		0.20000000000000001 0.45600000000000002 0
		0.24099999999999999 0.45600000000000002 0
		0.29199999999999998 0.45600000000000002 0
		0.33500000000000002 0.41000000000000003 0
		0.35399999999999998 0.33400000000000002 0
		0.36633333333333334 0.33400000000000002 0
		0.37866666666666671 0.33400000000000002 0
		0.39100000000000001 0.33400000000000002 0
		0.39100000000000001 0.37833333333333335 0
		0.39100000000000001 0.42266666666666669 0
		0.39100000000000001 0.46700000000000003 0
		0.35000000000000003 0.49199999999999999 0
		0.29299999999999998 0.502 0
		0.24099999999999999 0.502 0
		0.11900000000000002 0.502 0
		0.043000000000000003 0.44500000000000001 0
		0.043000000000000003 0.34400000000000003 0
		0.043000000000000003 0.27100000000000002 0
		0.10200000000000001 0.223 0
		0.19 0.19 0
		0.24099999999999999 0.17200000000000001 0
		0.28999999999999998 0.14300000000000002 0
		0.28999999999999998 0.095000000000000001 0
		0.28999999999999998 0.057000000000000009 0
		0.26500000000000001 0.034000000000000002 0
		0.221 0.034000000000000002 0
		0.155 0.034000000000000002 0
		0.10200000000000001 0.10300000000000001 0
		0.075999999999999998 0.185 0
		0.063333333333333339 0.18499999999999997 0
		0.050666666666666665 0.18499999999999997 0
		0.037999999999999999 0.18499999999999997 0
		0.042000000000000003 0.13533333333333333 0
		0.046000000000000006 0.085666666666666669 0
		0.05000000000000001 0.036000000000000004 0
		;
createNode transform -n "grp_faceboard_nose" -p "ctrl_faceboard_facial";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -2.0341854021380072 0 ;
	setAttr ".rp" -type "double3" -24.562505213874839 -146.95220329586095 0 ;
	setAttr ".sp" -type "double3" -24.562505213874839 -146.95220329586095 0 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nsS'translateY'\np6\nF5\nsS'translateZ'\np7\nF0\nsS'scaleX'\np8\nF1\nsS'scaleY'\np9\nF1\nsS'scaleZ'\np10\nF1\nsS'rotateX'\np11\nF0\nsS'rotateY'\np12\nF0\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF0\nsg6\nF5\nsg7\nF0\nsg8\nF1\nsg9\nF1\nsg10\nF1\nsg11\nF0\nsg12\nF0\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode nurbsCurve -n "grp_faceboard_noseShape" -p "grp_faceboard_nose";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-24.503521477509022 -146.93720289512305 0
		-24.503521477509022 -146.96720369659886 0
		-24.621488950240657 -146.96720369659886 0
		-24.621488950240657 -146.93720289512305 0
		-24.503521477509022 -146.93720289512305 0
		;
createNode transform -n "atts_faceboard_nose" -p "grp_faceboard_nose";
	addAttr -ci true -sn "Snear_L_UD" -ln "Snear_L_UD" -min -1 -at "double";
	addAttr -ci true -sn "Snear_R_UD" -ln "Snear_R_UD" -at "double";
	addAttr -ci true -sn "Nose_UD" -ln "Nose_UD" -at "double";
	addAttr -ci true -sn "Nose_LR" -ln "Nose_LR" -at "double";
	addAttr -ci true -sn "bridgeUD" -ln "bridgeUD" -at "double";
	addAttr -ci true -sn "bridgeLR" -ln "bridgeLR" -at "double";
	addAttr -ci true -sn "Snear_l_LR" -ln "Snear_l_LR" -at "double";
	addAttr -ci true -sn "Snear_r_LR" -ln "Snear_r_LR" -at "double";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -24.787349805232317 -148.5748866044006 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Snear_L_UD";
	setAttr -k on ".Snear_R_UD";
	setAttr -k on ".Nose_UD";
	setAttr -k on ".Nose_LR";
	setAttr -k on ".bridgeUD";
	setAttr -k on ".bridgeLR";
	setAttr -k on ".Snear_l_LR";
	setAttr -k on ".Snear_r_LR";
createNode transform -n "grp_faceboard_snear_r_offset" -p "grp_faceboard_nose";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -3.9999999999999893 0 1.7763568394002499e-15 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 20.606505213874847 -146.95220329586095 -7.6675215101166066e-16 ;
	setAttr ".rpt" -type "double3" -41.213010427749694 0 -9.9006476315518654e-16 ;
	setAttr ".sp" -type "double3" 20.606505213874847 -146.95220329586095 -7.6675215101166066e-16 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF-3.9999999999999929\nsS'translateY'\np6\nF0\nsS'translateZ'\np7\nF1.7763568394002505e-15\nsS'scaleX'\np8\nF1\nsS'scaleY'\np9\nF1\nsS'scaleZ'\np10\nF-1\nsS'rotateX'\np11\nF0\nsS'rotateY'\np12\nF180\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF-3.9999999999999929\nsg6\nF0\nsg7\nF1.7763568394002505e-15\nsg8\nF1\nsg9\nF1\nsg10\nF-1\nsg11\nF0\nsg12\nF180\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode transform -n "ctrl_faceboard_snear_r" -p "grp_faceboard_snear_r_offset";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 20.606505213874847 -146.95220329586095 -7.6675215101166086e-16 ;
	setAttr ".sp" -type "double3" 20.606505213874847 -146.95220329586095 -7.6675215101166086e-16 ;
	setAttr ".mntl" -type "double3" 0 -0.01 -0.99999999999999967 ;
	setAttr ".mxtl" -type "double3" 0 0.01 0.99999999999999967 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nsS'translateY'\np6\nF0\nssS'neutralPose'\np7\n(dp8\ng5\nF0\nsg6\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" 1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
createNode nurbsCurve -n "ctrl_faceboard_snear_rShape1" -p "ctrl_faceboard_snear_r";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		20.608914159271897 -146.94979434937287 -3.1654590819734663e-10
		20.608914159271897 -146.94979434937287 -3.1654590819734663e-10
		20.604096266044721 -146.94979434937287 -3.1654590819734663e-10
		20.604096266044721 -146.94979434937287 -3.1654590819734663e-10
		20.604096266044721 -146.95461224260004 -3.1654590897212292e-10
		20.604096266044721 -146.95461224260004 -3.1654590897212292e-10
		20.608914159271897 -146.95461224260004 -3.1654590897212292e-10
		20.608914159271897 -146.95461224260004 -3.1654590897212292e-10
		20.608914159271897 -146.94979434937287 -3.1654590819734663e-10
		20.608914159271897 -146.94979434937287 -3.1654590819734663e-10
		20.604096266044721 -146.94979434937287 -3.1654590819734663e-10
		;
createNode nurbsCurve -n "grp_faceboard_snear_r_offsetShape" -p "grp_faceboard_snear_r_offset";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		20.611950213874852 -146.94120329586096 -7.6675215101166135e-16
		20.611950213874852 -146.96320329586095 -7.6675215101166135e-16
		20.601060213874849 -146.96320329586095 -7.6675215101166135e-16
		20.601060213874849 -146.94120329586096 -7.6675215101166135e-16
		20.611950213874852 -146.94120329586096 -7.6675215101166135e-16
		;
createNode transform -n "grp_faceboard_snear_l" -p "grp_faceboard_nose";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 4.0000000000000107 0 1.7763568394002499e-15 ;
	setAttr ".rp" -type "double3" -28.51850521387485 -146.95220329586095 -1.7568169141668471e-15 ;
	setAttr ".sp" -type "double3" -28.51850521387485 -146.95220329586095 -1.7568169141668471e-15 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF4.0000000000000071\nsS'translateY'\np6\nF0\nsS'translateZ'\np7\nF1.7763568394002505e-15\nsS'scaleX'\np8\nF1\nsS'scaleY'\np9\nF1\nsS'scaleZ'\np10\nF1\nsS'rotateX'\np11\nF0\nsS'rotateY'\np12\nF0\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF4.0000000000000071\nsg6\nF0\nsg7\nF1.7763568394002505e-15\nsg8\nF1\nsg9\nF1\nsg10\nF1\nsg11\nF0\nsg12\nF0\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode transform -n "ctrl_faceboard_snear_l" -p "grp_faceboard_snear_l";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -28.51850521387485 -146.95220329586095 -1.7568169141668471e-15 ;
	setAttr ".sp" -type "double3" -28.51850521387485 -146.95220329586095 -1.7568169141668471e-15 ;
	setAttr ".mntl" -type "double3" 0 -0.01 -0.99999999999999967 ;
	setAttr ".mxtl" -type "double3" 0 0.01 0.99999999999999967 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nsS'translateY'\np6\nF0\nssS'neutralPose'\np7\n(dp8\ng5\nF0\nsg6\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" 1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
createNode nurbsCurve -n "ctrl_faceboard_snear_lShape1" -p "ctrl_faceboard_snear_l";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		-28.516096268477803 -146.94979434937287 3.1654338462828143e-10
		-28.516096268477803 -146.94979434937287 3.1654338462828143e-10
		-28.52091416170498 -146.94979434937287 3.1654338462828143e-10
		-28.52091416170498 -146.94979434937287 3.1654338462828143e-10
		-28.52091416170498 -146.95461224260004 3.1654338540305772e-10
		-28.52091416170498 -146.95461224260004 3.1654338540305772e-10
		-28.516096268477803 -146.95461224260004 3.1654338540305772e-10
		-28.516096268477803 -146.95461224260004 3.1654338540305772e-10
		-28.516096268477803 -146.94979434937287 3.1654338462828143e-10
		-28.516096268477803 -146.94979434937287 3.1654338462828143e-10
		-28.52091416170498 -146.94979434937287 3.1654338462828143e-10
		;
createNode nurbsCurve -n "grp_faceboard_snear_lShape" -p "grp_faceboard_snear_l";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-28.513060213874848 -146.94120329586096 -1.7568169141668471e-15
		-28.513060213874848 -146.96320329586095 -1.7568169141668471e-15
		-28.523950213874851 -146.96320329586095 -1.7568169141668471e-15
		-28.523950213874851 -146.94120329586096 -1.7568169141668471e-15
		-28.513060213874848 -146.94120329586096 -1.7568169141668471e-15
		;
createNode transform -n "grp_faceboard_nose_offset" -p "grp_faceboard_nose";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".rp" -type "double3" -24.562505213874839 -146.95220329586095 0 ;
	setAttr ".sp" -type "double3" -24.562505213874839 -146.95220329586095 0 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF3.0303030303030312\nsS'translateY'\np6\nF-1.2499999999999432\nsS'translateZ'\np7\nF0\nsS'scaleX'\np8\nF1.5151515151515151\nsS'scaleY'\np9\nF1.0000000000000002\nsS'scaleZ'\np10\nF-1.0000000000000002\nsS'rotateX'\np11\nF-180\nsS'rotateY'\np12\nF0\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF3.0303030303030312\nsg6\nF-1.2499999999999432\nsg7\nF0\nsg8\nF1.5151515151515151\nsg9\nF1.0000000000000002\nsg10\nF-1.0000000000000002\nsg11\nF-180\nsg12\nF0\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode transform -n "ctrl_faceboard_nose" -p "grp_faceboard_nose_offset";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -24.562505213874839 -146.95220329586095 0 ;
	setAttr ".sp" -type "double3" -24.562505213874839 -146.95220329586095 0 ;
	setAttr ".mntl" -type "double3" -0.01 -0.01 -0.99999999999999967 ;
	setAttr ".mxtl" -type "double3" 0.01 0.01 0.99999999999999967 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nsS'translateY'\np6\nF0\nssS'neutralPose'\np7\n(dp8\ng5\nF0\nsg6\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" -1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
createNode nurbsCurve -n "ctrl_faceboard_noseShape1" -p "ctrl_faceboard_nose";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		-24.560096268477793 -146.94979434937287 -3.1654514144519565e-10
		-24.560096268477793 -146.94979434937287 -3.1654514144519565e-10
		-24.564914161704969 -146.94979434937287 -3.1654514144519565e-10
		-24.564914161704969 -146.94979434937287 -3.1654514144519565e-10
		-24.564914161704969 -146.95461224260004 -3.1654514221997194e-10
		-24.564914161704969 -146.95461224260004 -3.1654514221997194e-10
		-24.560096268477793 -146.95461224260004 -3.1654514221997194e-10
		-24.560096268477793 -146.95461224260004 -3.1654514221997194e-10
		-24.560096268477793 -146.94979434937287 -3.1654514144519565e-10
		-24.560096268477793 -146.94979434937287 -3.1654514144519565e-10
		-24.564914161704969 -146.94979434937287 -3.1654514144519565e-10
		;
createNode nurbsCurve -n "grp_faceboard_nose_offsetShape" -p "grp_faceboard_nose_offset";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-24.55161521387484 -146.94120329586096 0
		-24.55161521387484 -146.96320329586095 0
		-24.573395213874839 -146.96320329586095 0
		-24.573395213874839 -146.94120329586096 0
		-24.55161521387484 -146.94120329586096 0
		;
createNode transform -n "nose" -p "grp_faceboard_nose";
	setAttr ".tmp" yes;
	setAttr ".t" -type "double3" -24.489582707282135 -146.95171142690779 0.002140337942994508 ;
	setAttr ".s" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "curve352" -p "nose";
createNode nurbsCurve -n "curveShape352" -p "curve352";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 76 1 no 3
		81 0 0 0 1 1 1 2 2 2 2.0702139587261676 2.0702139587261676
		 2.0702139587261676 2.2693370362435665 2.2693370362435665 2.2693370362435665 2.3053370362435666 2.3053370362435666 2.3053370362435666 2.3406923753028939 2.3406923753028939 2.3406923753028939 3.3406923753028939 3.3406923753028939
		 3.3406923753028939 3.6346923753028939 3.6346923753028939 3.6346923753028939 4.6346923753028939 4.6346923753028939 4.6346923753028939 4.6726923753028942 4.6726923753028942 4.6726923753028942 4.9416923753028943 4.9416923753028943
		 4.9416923753028943 4.9796923753028945 4.9796923753028945 4.9796923753028945 5.0007873984126237 5.0007873984126237 5.0007873984126237 6.0007873984126237 6.0007873984126237 6.0007873984126237 6.2377873984126238 6.2377873984126238
		 6.2377873984126238 7.2377873984126238 7.2377873984126238 7.2377873984126238 8.2377873984126246 8.2377873984126246 8.2377873984126246 9.2377873984126246 9.2377873984126246 9.2377873984126246 9.4917873984126242 9.4917873984126242
		 9.4917873984126242 10.491787398412624 10.491787398412624 10.491787398412624 10.512882421522352 10.512882421522352 10.512882421522352 10.550882421522353 10.550882421522353 10.550882421522353 10.819882421522353 10.819882421522353
		 10.819882421522353 10.857882421522353 10.857882421522353 10.857882421522353 11.857882421522353 11.857882421522353 11.857882421522353 12.118882421522352 12.118882421522352 12.118882421522352
		79
		0.56400000000000006 0.34800000000000003 0
		0.56300000000000006 0.442 0
		0.51600000000000001 0.502 0
		0.41300000000000003 0.502 0
		0.35499999999999998 0.502 0
		0.308 0.47200000000000003 0
		0.24199999999999999 0.433 0
		0.23766666666666669 0.45599999999999996 0
		0.23333333333333339 0.47899999999999993 0
		0.22900000000000001 0.502 0
		0.16333333333333336 0.49233333333333346 0
		0.097666666666666679 0.48266666666666674 0
		0.032000000000000001 0.47300000000000003 0
		0.032000000000000001 0.46100000000000002 0
		0.032000000000000001 0.44900000000000001 0
		0.032000000000000001 0.437 0
		0.043666666666666666 0.43533333333333335 0
		0.055333333333333339 0.43366666666666664 0
		0.067000000000000004 0.432 0
		0.083000000000000004 0.42999999999999999 0
		0.090999999999999998 0.42099999999999999 0
		0.090999999999999998 0.38100000000000001 0
		0.091000000000000011 0.28299999999999997 0
		0.091000000000000011 0.18499999999999997 0
		0.091000000000000011 0.087000000000000008 0
		0.090999999999999998 0.044999999999999998 0
		0.083000000000000004 0.041000000000000002 0
		0.026000000000000002 0.037999999999999999 0
		0.026000000000000006 0.025333333333333333 0
		0.026000000000000006 0.012666666666666666 0
		0.026000000000000006 0 0
		0.11566666666666665 0 0
		0.20533333333333334 0 0
		0.29499999999999998 0 0
		0.29499999999999998 0.012666666666666666 0
		0.29499999999999998 0.025333333333333333 0
		0.29499999999999998 0.037999999999999999 0
		0.28799999999999998 0.038666666666666662 0
		0.28099999999999997 0.039333333333333331 0
		0.27400000000000002 0.040000000000000001 0
		0.253 0.042000000000000003 0
		0.24199999999999999 0.047 0
		0.24199999999999999 0.080000000000000002 0
		0.24199999999999999 0.159 0
		0.24199999999999999 0.23799999999999999 0
		0.24199999999999999 0.317 0
		0.24199999999999999 0.33900000000000002 0
		0.245 0.36199999999999999 0
		0.252 0.376 0
		0.26500000000000001 0.40200000000000002 0
		0.29199999999999998 0.42499999999999999 0
		0.33400000000000002 0.42499999999999999 0
		0.38500000000000001 0.42499999999999999 0
		0.41100000000000003 0.39400000000000002 0
		0.41300000000000003 0.33400000000000002 0
		0.41300000000000003 0.24933333333333332 0
		0.41300000000000003 0.16466666666666668 0
		0.41300000000000003 0.080000000000000002 0
		0.41300000000000003 0.047 0
		0.40200000000000002 0.042000000000000003 0
		0.38100000000000001 0.040000000000000001 0
		0.37400000000000005 0.039333333333333331 0
		0.36699999999999999 0.038666666666666662 0
		0.36000000000000004 0.037999999999999999 0
		0.36000000000000004 0.025333333333333333 0
		0.36000000000000004 0.012666666666666666 0
		0.36000000000000004 0 0
		0.44966666666666666 0 0
		0.53933333333333333 0 0
		0.629 0 0
		0.629 0.012666666666666666 0
		0.629 0.025333333333333333 0
		0.629 0.037999999999999999 0
		0.57200000000000006 0.041000000000000002 0
		0.56400000000000006 0.044999999999999998 0
		0.56400000000000006 0.087000000000000008 0
		0.56400000000000006 0.17400000000000002 0
		0.56400000000000006 0.26100000000000007 0
		0.56400000000000006 0.34800000000000003 0
		;
createNode transform -n "curve353" -p "nose";
	setAttr ".t" -type "double3" 0.638 0 0 ;
createNode nurbsCurve -n "curveShape353" -p "curve353";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.29299999999999998 0.502 0
		0.11099999999999999 0.502 0
		0.034000000000000002 0.40500000000000003 0
		0.034000000000000002 0.245 0
		0.034000000000000002 0.08500000000000002 0
		0.11099999999999999 -0.012 0
		0.29299999999999998 -0.012 0
		0.47400000000000003 -0.012 0
		0.55100000000000005 0.08500000000000002 0
		0.55100000000000005 0.245 0
		0.55100000000000005 0.40500000000000003 0
		0.47400000000000003 0.502 0
		0.29299999999999998 0.502 0
		;
createNode transform -n "curve354" -p "nose";
	setAttr ".t" -type "double3" 0.638 0 0 ;
createNode nurbsCurve -n "curveShape354" -p "curve354";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.193 0.245 0
		0.193 0.379 0
		0.222 0.45600000000000002 0
		0.29299999999999998 0.45600000000000002 0
		0.36299999999999999 0.45600000000000002 0
		0.39200000000000002 0.379 0
		0.39200000000000002 0.245 0
		0.39200000000000002 0.11099999999999999 0
		0.36299999999999999 0.034000000000000002 0
		0.29299999999999998 0.034000000000000002 0
		0.222 0.034000000000000002 0
		0.193 0.11099999999999999 0
		0.193 0.245 0
		;
createNode transform -n "curve355" -p "nose";
	setAttr ".t" -type "double3" 1.2229999999999999 0 0 ;
createNode nurbsCurve -n "curveShape355" -p "curve355";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 46 1 no 3
		51 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 5 5 5 6 6 6 6.0369999999999999 6.0369999999999999
		 6.0369999999999999 6.1699999999999999 6.1699999999999999 6.1699999999999999 7.1699999999999999 7.1699999999999999 7.1699999999999999 8.1699999999999999 8.1699999999999999 8.1699999999999999 9.1699999999999999 9.1699999999999999
		 9.1699999999999999 10.17 10.17 10.17 11.17 11.17 11.17 12.17 12.17 12.17 12.208 12.208
		 12.208 12.357482440440341 12.357482440440341 12.357482440440341
		49
		0.050000000000000003 0.036000000000000004 0
		0.087999999999999995 0.0010000000000000009 0
		0.16300000000000001 -0.012 0
		0.219 -0.012 0
		0.34100000000000003 -0.012 0
		0.42499999999999999 0.04300000000000001 0
		0.42499999999999999 0.151 0
		0.42499999999999999 0.23700000000000002 0
		0.371 0.27800000000000002 0
		0.27900000000000003 0.313 0
		0.221 0.33400000000000002 0
		0.17799999999999999 0.35799999999999998 0
		0.17799999999999999 0.39800000000000002 0
		0.17799999999999999 0.42899999999999999 0
		0.20000000000000001 0.45600000000000002 0
		0.24099999999999999 0.45600000000000002 0
		0.29199999999999998 0.45600000000000002 0
		0.33500000000000002 0.41000000000000003 0
		0.35399999999999998 0.33400000000000002 0
		0.36633333333333334 0.33400000000000002 0
		0.37866666666666671 0.33400000000000002 0
		0.39100000000000001 0.33400000000000002 0
		0.39100000000000001 0.37833333333333335 0
		0.39100000000000001 0.42266666666666669 0
		0.39100000000000001 0.46700000000000003 0
		0.35000000000000003 0.49199999999999999 0
		0.29299999999999998 0.502 0
		0.24099999999999999 0.502 0
		0.11900000000000002 0.502 0
		0.043000000000000003 0.44500000000000001 0
		0.043000000000000003 0.34400000000000003 0
		0.043000000000000003 0.27100000000000002 0
		0.10200000000000001 0.223 0
		0.19 0.19 0
		0.24099999999999999 0.17200000000000001 0
		0.28999999999999998 0.14300000000000002 0
		0.28999999999999998 0.095000000000000001 0
		0.28999999999999998 0.057000000000000009 0
		0.26500000000000001 0.034000000000000002 0
		0.221 0.034000000000000002 0
		0.155 0.034000000000000002 0
		0.10200000000000001 0.10300000000000001 0
		0.075999999999999998 0.185 0
		0.063333333333333339 0.18499999999999997 0
		0.050666666666666665 0.18499999999999997 0
		0.037999999999999999 0.18499999999999997 0
		0.042000000000000003 0.13533333333333333 0
		0.046000000000000006 0.085666666666666669 0
		0.05000000000000001 0.036000000000000004 0
		;
createNode transform -n "curve356" -p "nose";
	setAttr ".t" -type "double3" 1.6689999999999998 0 0 ;
createNode nurbsCurve -n "curveShape356" -p "curve356";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 25 1 no 3
		30 0 0 0 1 1 1 2 2 2 2.258 2.258
		 2.258 3.258 3.258 3.258 4.258 4.258 4.258 5.258 5.258 5.258 6.258 6.258
		 6.258 7.258 7.258 7.258 7.2991825205639476 7.2991825205639476 7.2991825205639476
		28
		0.46100000000000002 0.154 0
		0.43099999999999999 0.097000000000000003 0
		0.38800000000000001 0.065000000000000002 0
		0.32700000000000001 0.065000000000000002 0
		0.22700000000000001 0.065000000000000002 0
		0.193 0.14699999999999999 0
		0.193 0.252 0
		0.27899999999999997 0.252 0
		0.36499999999999999 0.252 0
		0.45100000000000001 0.252 0
		0.48699999999999999 0.252 0
		0.505 0.26200000000000001 0
		0.505 0.29399999999999998 0
		0.505 0.376 0
		0.47399999999999998 0.502 0
		0.28100000000000003 0.502 0
		0.10100000000000003 0.502 0
		0.034000000000000002 0.38500000000000001 0
		0.034000000000000002 0.245 0
		0.034000000000000002 0.10899999999999999 0
		0.093000000000000027 -0.013000000000000001 0
		0.27900000000000003 -0.012 0
		0.39800000000000002 -0.012 0
		0.46300000000000002 0.046000000000000013 0
		0.497 0.13400000000000001 0
		0.48500000000000004 0.14066666666666669 0
		0.47300000000000003 0.14733333333333334 0
		0.46100000000000002 0.154 0
		;
createNode transform -n "curve357" -p "nose";
	setAttr ".t" -type "double3" 1.6689999999999998 0 0 ;
createNode nurbsCurve -n "curveShape357" -p "curve357";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 3.1240000000000001 3.1240000000000001 3.1240000000000001
		13
		0.193 0.29999999999999999 0
		0.193 0.372 0
		0.21199999999999999 0.45600000000000002 0
		0.27700000000000002 0.45600000000000002 0
		0.33800000000000002 0.45600000000000002 0
		0.34800000000000003 0.38 0
		0.34800000000000003 0.33300000000000002 0
		0.34800000000000003 0.30599999999999999 0
		0.34000000000000002 0.29999999999999999 0
		0.317 0.29999999999999999 0
		0.27566666666666667 0.29999999999999999 0
		0.23433333333333337 0.29999999999999999 0
		0.19299999999999998 0.29999999999999999 0
		;
createNode transform -n "grp_faceboard_tongue" -p "ctrl_faceboard_facial";
	setAttr ".t" -type "double3" -24.562313007088068 -149.12455902265111 0 ;
	setAttr ".s" -type "double3" 0.025733123775177329 0.025733123775177329 0.025733123775177329 ;
createNode nurbsCurve -n "grp_faceboard_tongueShape" -p "grp_faceboard_tongue";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-1 1 0
		1 1 0
		1 -1 0
		-1 -1 0
		-1 1 0
		;
createNode transform -n "ctrl_faceboard_tongue_backFront_Frame" -p "grp_faceboard_tongue";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0.41993745480729772 -0.40828799450606296 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0.41993745480729772\nsS'translateY'\np6\nF-0.40828799450606296\nsS'translateZ'\np7\nF0\nsS'rotateX'\np8\nF0\nsS'rotateY'\np9\nF0\nsS'rotateZ'\np10\nF0\nssS'neutralPose'\np11\n(dp12\ng5\nF0.41993745480729772\nsg6\nF-0.40828799450606296\nsg7\nF0\nsg8\nF0\nsg9\nF0\nsg10\nF0\nss.";
createNode nurbsCurve -n "ctrl_faceboard_tongue_backFront_FrameShape" -p "ctrl_faceboard_tongue_backFront_Frame";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.3870136947292121 0.26454217075082126 0
		0.3870136947292121 0.26454217075082126 0
		0.3870136947292121 -0.2615107868638773 0
		-0.3870136947292121 -0.2615107868638773 0
		-0.3870136947292121 0.26454217075082126 0
		;
createNode transform -n "ctrl_faceboard_tongue_backFront_bar" -p "ctrl_faceboard_tongue_backFront_Frame";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 182.64063460028171 1092.7764654769583 0 ;
	setAttr ".s" -type "double3" 7.4362954918585169 7.4362954918585169 7.4362954918585169 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -182.65404679068877 -1092.7800068876873 0 ;
	setAttr ".sp" -type "double3" -24.562505213874839 -146.95220329586095 0 ;
	setAttr ".spt" -type "double3" -158.09154157681394 -945.82780359182618 0 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF182.64063460028171\nsS'translateY'\np6\nF1092.7764654769583\nsS'translateZ'\np7\nF0\nsS'rotateX'\np8\nF0\nsS'rotateY'\np9\nF0\nsS'rotateZ'\np10\nF0\nssS'neutralPose'\np11\n(dp12\ng5\nF182.64063460028171\nsg6\nF1092.7764654769583\nsg7\nF0\nsg8\nF0\nsg9\nF0\nsg10\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
createNode nurbsCurve -n "ctrl_faceboard_tongue_backFront_barShape" -p "ctrl_faceboard_tongue_backFront_bar";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-24.514182581383004 -146.95143437536646 0
		-24.514182581383004 -146.95297221635545 0
		-24.592005975543486 -146.95297221635545 0
		-24.592005975543486 -146.95143437536646 0
		-24.514182581383004 -146.95143437536646 0
		;
createNode transform -n "ctrl_faceboard_tongue_backFront" -p "ctrl_faceboard_tongue_backFront_bar";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -24.588820126270267 -146.95220329586095 0 ;
	setAttr ".sp" -type "double3" -24.588820126270267 -146.95220329586095 0 ;
	setAttr ".mntl" -type "double3" 0 -0.01 -0.99999999999999967 ;
	setAttr ".mxtl" -type "double3" 0.07 0.01 0.99999999999999967 ;
	setAttr ".mtxe" yes;
	setAttr ".xtxe" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nssS'neutralPose'\np6\n(dp7\ng5\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" 1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
createNode nurbsCurve -n "ctrl_faceboard_tongue_backFrontShape1" -p "ctrl_faceboard_tongue_backFront";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.95461224260004 -3.1654514221997194e-10
		-24.591229074100397 -146.95461224260004 -3.1654514221997194e-10
		-24.58641118087322 -146.95461224260004 -3.1654514221997194e-10
		-24.58641118087322 -146.95461224260004 -3.1654514221997194e-10
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.94979434937287 -3.1654514144519565e-10
		;
createNode transform -n "rigs_faceboard_backxfront_txt" -p "ctrl_faceboard_tongue_backFront_Frame";
	setAttr ".tmp" yes;
	setAttr ".t" -type "double3" -0.41993745480729777 -0.41831100737315413 0 ;
	setAttr ".s" -type "double3" 0.17847109180460441 0.17847109180460441 0.17847109180460441 ;
createNode transform -n "Char_b_1" -p "rigs_faceboard_backxfront_txt";
createNode transform -n "curve311" -p "Char_b_1";
createNode nurbsCurve -n "curveShape311" -p "curve311";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 37 1 no 3
		42 0 0 0 0.055865910893853683 0.055865910893853683 0.055865910893853683 1.0558659108938537 1.0558659108938537 1.0558659108938537 2.0558659108938535 2.0558659108938535
		 2.0558659108938535 3.0558659108938535 3.0558659108938535 3.0558659108938535 4.0558659108938535 4.0558659108938535 4.0558659108938535 4.3608659108938532 4.3608659108938532 4.3608659108938532 4.3700854553511466 4.3700854553511466
		 4.3700854553511466 4.5290634412485655 4.5290634412485655 4.5290634412485655 4.5540634412485659 4.5540634412485659 4.5540634412485659 4.5922733875976514 4.5922733875976514 4.5922733875976514 5.5922733875976514 5.5922733875976514
		 5.5922733875976514 6.2382733875976513 6.2382733875976513 6.2382733875976513 6.2579711032012435 6.2579711032012435 6.2579711032012435
		40
		0.108 -0.012000000000000002 0
		0.12133333333333333 0.001 0
		0.13466666666666668 0.013999999999999999 0
		0.14799999999999999 0.027 0
		0.183 0.0070000000000000027 0
		0.22500000000000001 -0.012 0
		0.29999999999999999 -0.012 0
		0.433 -0.012 0
		0.54900000000000004 0.051999999999999991 0
		0.54900000000000004 0.25600000000000001 0
		0.54900000000000004 0.318 0
		0.53600000000000003 0.502 0
		0.35599999999999998 0.502 0
		0.28000000000000003 0.502 0
		0.221 0.45300000000000001 0
		0.184 0.43099999999999999 0
		0.18400000000000002 0.53266666666666662 0
		0.18400000000000002 0.6343333333333333 0
		0.18400000000000002 0.7360000000000001 0
		0.18166666666666664 0.73799999999999999 0
		0.17933333333333334 0.73999999999999988 0
		0.17699999999999996 0.74199999999999999 0
		0.12466666666666665 0.73366666666666669 0
		0.072333333333333319 0.72533333333333339 0
		0.02 0.71699999999999997 0
		0.02 0.70866666666666644 0
		0.02 0.70033333333333336 0
		0.02 0.69200000000000006 0
		0.03266666666666667 0.69066666666666665 0
		0.045333333333333337 0.68933333333333335 0
		0.058000000000000003 0.68800000000000006 0
		0.084000000000000005 0.68500000000000005 0
		0.089999999999999997 0.68000000000000005 0
		0.089999999999999997 0.64200000000000002 0
		0.090000000000000011 0.42666666666666669 0
		0.090000000000000011 0.21133333333333335 0
		0.090000000000000011 -0.0040000000000000001 0
		0.096000000000000016 -0.0066666666666666671 0
		0.10199999999999999 -0.0093333333333333341 0
		0.108 -0.012000000000000002 0
		;
createNode transform -n "curve312" -p "Char_b_1";
createNode nurbsCurve -n "curveShape312" -p "curve312";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 19 1 no 3
		24 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 5 5 5 6 6 6 6.1580000000000004 6.1580000000000004
		 6.1580000000000004
		22
		0.184 0.32100000000000001 0
		0.184 0.34600000000000003 0
		0.186 0.36199999999999999 0
		0.19400000000000001 0.378 0
		0.218 0.42599999999999999 0
		0.26000000000000001 0.44800000000000001 0
		0.316 0.44800000000000001 0
		0.35699999999999998 0.44800000000000001 0
		0.44500000000000001 0.42399999999999999 0
		0.44500000000000001 0.25 0
		0.44500000000000001 0.10300000000000004 0
		0.40000000000000002 0.023 0
		0.30099999999999999 0.023 0
		0.248 0.023 0
		0.20899999999999999 0.050000000000000003 0
		0.191 0.10000000000000001 0
		0.185 0.11800000000000001 0
		0.184 0.13900000000000001 0
		0.184 0.16300000000000001 0
		0.18400000000000002 0.21566666666666667 0
		0.18400000000000002 0.26833333333333331 0
		0.18400000000000002 0.32100000000000001 0
		;
createNode transform -n "Char_a_7" -p "rigs_faceboard_backxfront_txt";
	setAttr ".t" -type "double3" 0.598 0 0 ;
createNode transform -n "curve313" -p "Char_a_7";
createNode nurbsCurve -n "curveShape313" -p "curve313";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 13 1 no 3
		18 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 4.141 4.141 4.141
		16
		0.34300000000000003 0.14300000000000002 0
		0.34300000000000003 0.062 0
		0.28100000000000003 0.041000000000000002 0
		0.24199999999999999 0.041000000000000002 0
		0.17999999999999999 0.041000000000000002 0
		0.14999999999999999 0.085000000000000006 0
		0.14999999999999999 0.14400000000000002 0
		0.14999999999999999 0.191 0
		0.17200000000000001 0.215 0
		0.22800000000000001 0.23600000000000002 0
		0.26800000000000002 0.251 0
		0.32100000000000001 0.27000000000000002 0
		0.34300000000000003 0.28400000000000003 0
		0.34300000000000003 0.23700000000000002 0
		0.34300000000000003 0.19000000000000003 0
		0.34300000000000003 0.14300000000000002 0
		;
createNode transform -n "curve314" -p "Char_a_7";
createNode nurbsCurve -n "curveShape314" -p "curve314";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 49 1 no 3
		54 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 5 5 5 6 6 6 6.0419999999999998 6.0419999999999998
		 6.0419999999999998 7.0419999999999998 7.0419999999999998 7.0419999999999998 8.0419999999999998 8.0419999999999998 8.0419999999999998 9.0419999999999998 9.0419999999999998 9.0419999999999998 10.042 10.042
		 10.042 11.042 11.042 11.042 12.042 12.042 12.042 12.066738633753706 12.066738633753706 12.066738633753706 13.066738633753706 13.066738633753706
		 13.066738633753706 14.066738633753706 14.066738633753706 14.066738633753706 14.308738633753705 14.308738633753705 14.308738633753705
		52
		0.433 0.36899999999999999 0
		0.433 0.42699999999999999 0
		0.41999999999999998 0.502 0
		0.26900000000000002 0.502 0
		0.156 0.502 0
		0.067000000000000004 0.443 0
		0.067000000000000004 0.38800000000000001 0
		0.067000000000000004 0.35599999999999998 0
		0.10400000000000001 0.34100000000000003 0
		0.123 0.34100000000000003 0
		0.14400000000000002 0.34100000000000003 0
		0.14999999999999999 0.35199999999999998 0
		0.155 0.36899999999999999 0
		0.17699999999999999 0.443 0
		0.218 0.46700000000000003 0
		0.25800000000000001 0.46700000000000003 0
		0.29699999999999999 0.46700000000000003 0
		0.34300000000000003 0.44700000000000001 0
		0.34300000000000003 0.36699999999999999 0
		0.34300000000000003 0.35299999999999998 0
		0.34300000000000003 0.33899999999999997 0
		0.34300000000000003 0.32500000000000001 0
		0.318 0.29899999999999999 0
		0.221 0.27400000000000002 0
		0.14200000000000002 0.249 0
		0.070000000000000007 0.22700000000000001 0
		0.049000000000000002 0.17699999999999999 0
		0.049000000000000002 0.13 0
		0.049000000000000002 0.054999999999999993 0
		0.099000000000000005 -0.012 0
		0.193 -0.012 0
		0.255 -0.01 0
		0.31 0.027000000000000003 0
		0.34200000000000003 0.048000000000000001 0
		0.35599999999999998 0.010999999999999996 0
		0.372 -0.012 0
		0.40700000000000003 -0.012 0
		0.44400000000000001 -0.012 0
		0.48699999999999999 -0.0010000000000000009 0
		0.52500000000000002 0.018000000000000002 0
		0.52300000000000002 0.026000000000000006 0
		0.52100000000000002 0.034000000000000009 0
		0.51900000000000002 0.04200000000000001 0
		0.505 0.039 0
		0.48299999999999998 0.036999999999999998 0
		0.46800000000000003 0.041000000000000002 0
		0.45000000000000001 0.044999999999999998 0
		0.433 0.064000000000000001 0
		0.433 0.127 0
		0.433 0.20766666666666667 0
		0.433 0.28833333333333333 0
		0.433 0.36899999999999999 0
		;
createNode transform -n "Char_c_1" -p "rigs_faceboard_backxfront_txt";
	setAttr ".t" -type "double3" 1.121 0 0 ;
createNode transform -n "curve315" -p "Char_c_1";
createNode nurbsCurve -n "curveShape315" -p "curve315";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 31 1 no 3
		36 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 5 5 5 6 6 6 7 7
		 7 8 8 8 9 9 9 9.0322024843762101 9.0322024843762101 9.0322024843762101 10.03220248437621 10.03220248437621
		 10.03220248437621
		34
		0.29999999999999999 0.040000000000000001 0
		0.18099999999999999 0.040000000000000001 0
		0.153 0.16400000000000001 0
		0.153 0.25800000000000001 0
		0.153 0.40700000000000003 0
		0.21199999999999999 0.46700000000000003 0
		0.28100000000000003 0.46700000000000003 0
		0.32700000000000001 0.46700000000000003 0
		0.35599999999999998 0.434 0
		0.376 0.38 0
		0.38200000000000001 0.36399999999999999 0
		0.38800000000000001 0.35399999999999998 0
		0.40700000000000003 0.35399999999999998 0
		0.42699999999999999 0.35399999999999998 0
		0.46600000000000003 0.36699999999999999 0
		0.46600000000000003 0.40500000000000003 0
		0.46600000000000003 0.45100000000000001 0
		0.40000000000000002 0.502 0
		0.29199999999999998 0.502 0
		0.10999999999999999 0.502 0
		0.049000000000000002 0.373 0
		0.049000000000000002 0.23999999999999999 0
		0.049000000000000002 0.073000000000000037 0
		0.13100000000000001 -0.012 0
		0.28100000000000003 -0.012 0
		0.35100000000000003 -0.012 0
		0.44500000000000001 0.024999999999999994 0
		0.47300000000000003 0.13200000000000001 0
		0.46333333333333337 0.13666666666666669 0
		0.45366666666666666 0.14133333333333334 0
		0.44400000000000001 0.14599999999999999 0
		0.41300000000000003 0.076000000000000012 0
		0.373 0.040000000000000001 0
		0.29999999999999999 0.040000000000000001 0
		;
createNode transform -n "Char_k_1" -p "rigs_faceboard_backxfront_txt";
	setAttr ".t" -type "double3" 1.617 0 0 ;
createNode transform -n "curve316" -p "Char_k_1";
createNode nurbsCurve -n "curveShape316" -p "curve316";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 82 1 no 3
		87 0 0 0 1 1 1 1.0289999999999999 1.0289999999999999 1.0289999999999999 1.2729999999999999 1.2729999999999999
		 1.2729999999999999 1.3019999999999998 1.3019999999999998 1.3019999999999998 2.3019999999999996 2.3019999999999996 2.3019999999999996 2.4689999999999994 2.4689999999999994 2.4689999999999994 2.4709999999999992 2.4709999999999992
		 2.4709999999999992 3.4709999999999992 3.4709999999999992 3.4709999999999992 4.4709999999999992 4.4709999999999992 4.4709999999999992 4.5460599760191798 4.5460599760191798 4.5460599760191798 4.5740599760191794 4.5740599760191794
		 4.5740599760191794 5.5740599760191794 5.5740599760191794 5.5740599760191794 6.5740599760191794 6.5740599760191794 6.5740599760191794 7.5740599760191794 7.5740599760191794 7.5740599760191794 8.5740599760191785 8.5740599760191785
		 8.5740599760191785 9.5740599760191785 9.5740599760191785 9.5740599760191785 9.6020599760191789 9.6020599760191789 9.6020599760191789 9.7050599760191787 9.7050599760191787 9.7050599760191787 10.705059976019179 10.705059976019179
		 10.705059976019179 11.705059976019179 11.705059976019179 11.705059976019179 11.707059976019179 11.707059976019179 11.707059976019179 12.175059976019179 12.175059976019179 12.175059976019179 12.184279520476473 12.184279520476473
		 12.184279520476473 12.343257506373892 12.343257506373892 12.343257506373892 12.368257506373892 12.368257506373892 12.368257506373892 12.406467452722978 12.406467452722978 12.406467452722978 13.406467452722978 13.406467452722978
		 13.406467452722978 13.961467452722978 13.961467452722978 13.961467452722978
		85
		0.095000000000000001 0.087000000000000008 0
		0.095000000000000001 0.036000000000000004 0
		0.091999999999999985 0.034000000000000002 0
		0.02 0.029000000000000001 0
		0.02 0.019333333333333334 0
		0.02 0.0096666666666666672 0
		0.02 0 0
		0.10133333333333334 0 0
		0.18266666666666667 0 0
		0.26400000000000001 0 0
		0.26400000000000001 0.0096666666666666672 0
		0.26400000000000001 0.019333333333333334 0
		0.26400000000000001 0.029000000000000001 0
		0.193 0.034000000000000002 0
		0.189 0.036000000000000004 0
		0.189 0.087000000000000008 0
		0.18899999999999997 0.14266666666666669 0
		0.18899999999999997 0.19833333333333333 0
		0.18899999999999997 0.254 0
		0.18966666666666665 0.254 0
		0.19033333333333333 0.254 0
		0.19099999999999998 0.254 0
		0.23200000000000001 0.189 0
		0.30299999999999999 0.10200000000000001 0
		0.35499999999999998 0.049000000000000002 0
		0.39200000000000002 0.011999999999999997 0
		0.43099999999999999 0 0
		0.46300000000000002 -0.002 0
		0.48800000000000004 -0.0029999999999999996 0
		0.51300000000000001 -0.0040000000000000001 0
		0.53800000000000003 -0.0050000000000000001 0
		0.53800000000000003 0.0043333333333333323 0
		0.53800000000000003 0.013666666666666666 0
		0.53800000000000003 0.023000000000000003 0
		0.50800000000000001 0.031 0
		0.48299999999999998 0.045999999999999999 0
		0.45200000000000001 0.076999999999999999 0
		0.39000000000000001 0.13800000000000001 0
		0.312 0.23300000000000001 0
		0.27400000000000002 0.28700000000000003 0
		0.26900000000000002 0.29399999999999998 0
		0.26700000000000002 0.29899999999999999 0
		0.27700000000000002 0.31 0
		0.32500000000000001 0.36499999999999999 0
		0.35699999999999998 0.39400000000000002 0
		0.39100000000000001 0.41899999999999998 0
		0.42499999999999999 0.44400000000000001 0
		0.45000000000000001 0.45600000000000002 0
		0.50800000000000001 0.46200000000000002 0
		0.50800000000000001 0.47133333333333333 0
		0.50800000000000001 0.48066666666666658 0
		0.50800000000000001 0.48999999999999994 0
		0.47366666666666668 0.48999999999999999 0
		0.43933333333333335 0.48999999999999999 0
		0.40500000000000003 0.48999999999999999 0
		0.371 0.48999999999999999 0
		0.36199999999999999 0.48499999999999999 0
		0.34200000000000003 0.46100000000000002 0
		0.313 0.42599999999999999 0
		0.214 0.30199999999999999 0
		0.191 0.26800000000000002 0
		0.19033333333333333 0.26800000000000002 0
		0.18966666666666665 0.26800000000000002 0
		0.18899999999999997 0.26800000000000002 0
		0.18899999999999997 0.4240000000000001 0
		0.18899999999999997 0.57999999999999996 0
		0.18899999999999997 0.7360000000000001 0
		0.18666666666666668 0.73799999999999999 0
		0.18433333333333332 0.73999999999999988 0
		0.18200000000000002 0.74199999999999999 0
		0.12966666666666665 0.73366666666666669 0
		0.077333333333333323 0.72533333333333339 0
		0.025000000000000005 0.71699999999999997 0
		0.025000000000000005 0.70866666666666644 0
		0.025000000000000005 0.70033333333333336 0
		0.025000000000000005 0.69200000000000006 0
		0.037666666666666668 0.69066666666666665 0
		0.050333333333333334 0.68933333333333335 0
		0.063 0.68800000000000006 0
		0.088999999999999996 0.68500000000000005 0
		0.095000000000000001 0.68000000000000005 0
		0.095000000000000001 0.64200000000000002 0
		0.095000000000000015 0.45700000000000002 0
		0.095000000000000015 0.27199999999999996 0
		0.095000000000000015 0.087000000000000008 0
		;
createNode transform -n "Char_x_3" -p "rigs_faceboard_backxfront_txt";
	setAttr ".t" -type "double3" 2.141 0 0 ;
createNode transform -n "curve317" -p "Char_x_3";
createNode nurbsCurve -n "curveShape317" -p "curve317";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 2 no 3
		5 0 0.48400000000000004 0.54200000000000004 1.026 1.0840000000000001
		5
		0.043000000000000003 0.221 0
		0.52700000000000002 0.221 0
		0.52700000000000002 0.27900000000000003 0
		0.043000000000000003 0.27900000000000003 0
		0.043000000000000003 0.221 0
		;
createNode transform -n "Char_f_2" -p "rigs_faceboard_backxfront_txt";
	setAttr ".t" -type "double3" 2.7110000000000003 0 0 ;
createNode transform -n "curve318" -p "Char_f_2";
createNode nurbsCurve -n "curveShape318" -p "curve318";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 64 1 no 3
		69 0 0 0 0.122 0.122 0.122 0.16199999999999998 0.16199999999999998 0.16199999999999998 0.28399999999999997 0.28399999999999997
		 0.28399999999999997 0.39607140580897515 0.39607140580897515 0.39607140580897515 1.3960714058089752 1.3960714058089752 1.3960714058089752 2.3960714058089749 2.3960714058089749 2.3960714058089749 3.3960714058089749 3.3960714058089749
		 3.3960714058089749 4.3960714058089749 4.3960714058089749 4.3960714058089749 5.3960714058089749 5.3960714058089749 5.3960714058089749 6.3960714058089749 6.3960714058089749 6.3960714058089749 7.3960714058089749 7.3960714058089749
		 7.3960714058089749 7.4310714058089751 7.4310714058089751 7.4310714058089751 7.508071405808975 7.508071405808975 7.508071405808975 7.5480714058089751 7.5480714058089751 7.5480714058089751 7.625071405808975 7.625071405808975
		 7.625071405808975 7.9880714058089755 7.9880714058089755 7.9880714058089755 8.9880714058089755 8.9880714058089755 8.9880714058089755 9.0170714058089754 9.0170714058089754 9.0170714058089754 9.2810714058089747 9.2810714058089747
		 9.2810714058089747 9.3100714058089746 9.3100714058089746 9.3100714058089746 10.310071405808975 10.310071405808975 10.310071405808975 10.674071405808975 10.674071405808975 10.674071405808975
		67
		0.20099999999999998 0.45000000000000001 0
		0.2416666666666667 0.45000000000000001 0
		0.28233333333333333 0.45000000000000001 0
		0.32300000000000001 0.45000000000000001 0
		0.32300000000000001 0.46333333333333332 0
		0.32300000000000001 0.47666666666666663 0
		0.32300000000000001 0.48999999999999999 0
		0.28233333333333333 0.48999999999999999 0
		0.2416666666666667 0.48999999999999999 0
		0.20099999999999998 0.48999999999999999 0
		0.19966666666666666 0.52733333333333332 0
		0.19833333333333333 0.56466666666666665 0
		0.19699999999999998 0.60199999999999998 0
		0.19400000000000001 0.69700000000000006 0
		0.22900000000000001 0.70699999999999996 0
		0.245 0.70699999999999996 0
		0.26600000000000001 0.70699999999999996 0
		0.28800000000000003 0.69700000000000006 0
		0.313 0.63900000000000001 0
		0.318 0.629 0
		0.32500000000000001 0.622 0
		0.34000000000000002 0.622 0
		0.35999999999999999 0.622 0
		0.38900000000000001 0.63900000000000001 0
		0.38900000000000001 0.66900000000000004 0
		0.38900000000000001 0.70200000000000007 0
		0.34700000000000003 0.74199999999999999 0
		0.26700000000000002 0.74199999999999999 0
		0.21199999999999999 0.74199999999999999 0
		0.16500000000000001 0.71699999999999997 0
		0.14000000000000001 0.67900000000000005 0
		0.11700000000000001 0.64400000000000002 0
		0.107 0.59099999999999997 0
		0.107 0.52500000000000002 0
		0.107 0.51333333333333342 0
		0.107 0.50166666666666671 0
		0.107 0.49000000000000005 0
		0.081333333333333327 0.48999999999999999 0
		0.05566666666666667 0.48999999999999999 0
		0.029999999999999999 0.48999999999999999 0
		0.030000000000000002 0.47666666666666674 0
		0.030000000000000002 0.46333333333333332 0
		0.030000000000000002 0.45000000000000001 0
		0.05566666666666667 0.45000000000000001 0
		0.081333333333333327 0.45000000000000001 0
		0.107 0.45000000000000001 0
		0.107 0.32899999999999996 0
		0.107 0.20800000000000005 0
		0.107 0.087000000000000022 0
		0.107 0.036000000000000004 0
		0.10400000000000001 0.034000000000000002 0
		0.032000000000000001 0.029000000000000001 0
		0.032000000000000001 0.019333333333333334 0
		0.032000000000000001 0.0096666666666666672 0
		0.032000000000000001 0 0
		0.12 0 0
		0.20799999999999996 0 0
		0.29599999999999999 0 0
		0.29599999999999999 0.0096666666666666672 0
		0.29599999999999999 0.019333333333333334 0
		0.29599999999999999 0.029000000000000001 0
		0.20500000000000002 0.033000000000000002 0
		0.20100000000000001 0.035000000000000003 0
		0.20100000000000001 0.086000000000000007 0
		0.20099999999999998 0.20733333333333334 0
		0.20099999999999998 0.32866666666666666 0
		0.20099999999999998 0.45000000000000001 0
		;
createNode transform -n "Char_r_10" -p "rigs_faceboard_backxfront_txt";
	setAttr ".t" -type "double3" 3.0300000000000002 0 0 ;
createNode transform -n "curve319" -p "Char_r_10";
createNode nurbsCurve -n "curveShape319" -p "curve319";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 52 1 no 3
		57 0 0 0 0.154042202009709 0.154042202009709 0.154042202009709 0.17904220200970902 0.17904220200970902 0.17904220200970902 0.21736973780318264 0.21736973780318264
		 0.21736973780318264 1.2173697378031827 1.2173697378031827 1.2173697378031827 1.5323697378031826 1.5323697378031826 1.5323697378031826 2.5323697378031826 2.5323697378031826 2.5323697378031826 2.5613697378031826 2.5613697378031826
		 2.5613697378031826 2.8253697378031823 2.8253697378031823 2.8253697378031823 2.8543697378031823 2.8543697378031823 2.8543697378031823 3.8543697378031823 3.8543697378031823 3.8543697378031823 4.0883697378031822 4.0883697378031822
		 4.0883697378031822 5.0883697378031822 5.0883697378031822 5.0883697378031822 6.0883697378031822 6.0883697378031822 6.0883697378031822 7.0883697378031822 7.0883697378031822 7.0883697378031822 8.0883697378031822 8.0883697378031822
		 8.0883697378031822 9.0883697378031822 9.0883697378031822 9.0883697378031822 10.088369737803182 10.088369737803182 10.088369737803182 10.169264731467809 10.169264731467809 10.169264731467809
		55
		0.18899999999999997 0.502 0
		0.13833333333333334 0.4936666666666667 0
		0.087666666666666657 0.48533333333333334 0
		0.036999999999999998 0.47700000000000004 0
		0.036999999999999998 0.46866666666666673 0
		0.036999999999999998 0.46033333333333343 0
		0.036999999999999998 0.45200000000000001 0
		0.049666666666666658 0.45033333333333331 0
		0.062333333333333324 0.44866666666666671 0
		0.074999999999999997 0.44700000000000001 0
		0.10100000000000001 0.443 0
		0.107 0.438 0
		0.107 0.40200000000000002 0
		0.107 0.29700000000000004 0
		0.107 0.19200000000000003 0
		0.107 0.087000000000000008 0
		0.107 0.036000000000000004 0
		0.10200000000000001 0.034000000000000002 0
		0.032000000000000001 0.029000000000000001 0
		0.032000000000000001 0.019333333333333334 0
		0.032000000000000001 0.0096666666666666672 0
		0.032000000000000001 0 0
		0.12 0 0
		0.20799999999999996 0 0
		0.29599999999999999 0 0
		0.29599999999999999 0.0096666666666666672 0
		0.29599999999999999 0.019333333333333334 0
		0.29599999999999999 0.029000000000000001 0
		0.20700000000000002 0.034000000000000002 0
		0.20100000000000001 0.036000000000000004 0
		0.20100000000000001 0.087000000000000008 0
		0.20099999999999998 0.16500000000000001 0
		0.20099999999999998 0.24300000000000002 0
		0.20099999999999998 0.32100000000000001 0
		0.20100000000000001 0.39800000000000002 0
		0.23500000000000001 0.42399999999999999 0
		0.25800000000000001 0.42399999999999999 0
		0.27400000000000002 0.42399999999999999 0
		0.29099999999999998 0.41799999999999998 0
		0.32000000000000001 0.40200000000000002 0
		0.32700000000000001 0.39800000000000002 0
		0.33500000000000002 0.39700000000000002 0
		0.34000000000000002 0.39700000000000002 0
		0.36399999999999999 0.39700000000000002 0
		0.38600000000000001 0.42199999999999999 0
		0.38600000000000001 0.45300000000000001 0
		0.38600000000000001 0.47500000000000003 0
		0.372 0.502 0
		0.33300000000000002 0.502 0
		0.29699999999999999 0.502 0
		0.26700000000000002 0.47999999999999998 0
		0.20100000000000001 0.42199999999999999 0
		0.19699999999999998 0.4486666666666666 0
		0.19299999999999998 0.47533333333333333 0
		0.18899999999999997 0.502 0
		;
createNode transform -n "Char_o_12" -p "rigs_faceboard_backxfront_txt";
	setAttr ".t" -type "double3" 3.4190000000000005 0 0 ;
createNode transform -n "curve320" -p "Char_o_12";
createNode nurbsCurve -n "curveShape320" -p "curve320";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.28800000000000003 0.502 0
		0.128 0.502 0
		0.049000000000000002 0.40700000000000003 0
		0.049000000000000002 0.245 0
		0.049000000000000002 0.083000000000000018 0
		0.128 -0.012 0
		0.28800000000000003 -0.012 0
		0.45000000000000001 -0.012 0
		0.52800000000000002 0.083000000000000018 0
		0.52800000000000002 0.245 0
		0.52800000000000002 0.40700000000000003 0
		0.45000000000000001 0.502 0
		0.28800000000000003 0.502 0
		;
createNode transform -n "curve321" -p "Char_o_12";
createNode nurbsCurve -n "curveShape321" -p "curve321";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.153 0.245 0
		0.153 0.38300000000000001 0
		0.19700000000000001 0.46700000000000003 0
		0.28800000000000003 0.46700000000000003 0
		0.38100000000000001 0.46700000000000003 0
		0.42399999999999999 0.38300000000000001 0
		0.42399999999999999 0.245 0
		0.42399999999999999 0.10699999999999998 0
		0.38100000000000001 0.023 0
		0.28800000000000003 0.023 0
		0.19700000000000001 0.023 0
		0.153 0.10699999999999998 0
		0.153 0.245 0
		;
createNode transform -n "Char_n_12" -p "rigs_faceboard_backxfront_txt";
	setAttr ".t" -type "double3" 3.9960000000000004 0 0 ;
createNode transform -n "curve322" -p "Char_n_12";
createNode nurbsCurve -n "curveShape322" -p "curve322";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 70 1 no 3
		75 0 0 0 1 1 1 2 2 2 2.0772787163454467 2.0772787163454467
		 2.0772787163454467 2.2283614751235414 2.2283614751235414 2.2283614751235414 2.2533614751235413 2.2533614751235413 2.2533614751235413 2.2916890109170152 2.2916890109170152 2.2916890109170152 3.2916890109170152 3.2916890109170152
		 3.2916890109170152 3.6066890109170151 3.6066890109170151 3.6066890109170151 4.6066890109170151 4.6066890109170151 4.6066890109170151 4.635689010917015 4.635689010917015 4.635689010917015 4.8796890109170148 4.8796890109170148
		 4.8796890109170148 4.9086890109170147 4.9086890109170147 4.9086890109170147 5.9086890109170147 5.9086890109170147 5.9086890109170147 6.1426890109170147 6.1426890109170147 6.1426890109170147 7.1426890109170147 7.1426890109170147
		 7.1426890109170147 8.1426890109170138 8.1426890109170138 8.1426890109170138 9.1426890109170138 9.1426890109170138 9.1426890109170138 9.3786890109170145 9.3786890109170145 9.3786890109170145 10.378689010917014 10.378689010917014
		 10.378689010917014 10.407689010917014 10.407689010917014 10.407689010917014 10.651689010917014 10.651689010917014 10.651689010917014 10.680689010917014 10.680689010917014 10.680689010917014 11.680689010917014 11.680689010917014
		 11.680689010917014 11.936689010917014 11.936689010917014 11.936689010917014
		73
		0.52900000000000003 0.34300000000000003 0
		0.52900000000000003 0.44400000000000001 0
		0.47400000000000003 0.502 0
		0.38200000000000001 0.502 0
		0.308 0.502 0
		0.26200000000000001 0.46600000000000003 0
		0.20000000000000001 0.42599999999999999 0
		0.19533333333333336 0.45133333333333336 0
		0.19066666666666668 0.47666666666666674 0
		0.18600000000000003 0.502 0
		0.13633333333333333 0.4936666666666667 0
		0.08666666666666667 0.48533333333333339 0
		0.036999999999999998 0.47700000000000004 0
		0.036999999999999998 0.46866666666666673 0
		0.036999999999999998 0.46033333333333343 0
		0.036999999999999998 0.45200000000000001 0
		0.049666666666666665 0.45033333333333331 0
		0.062333333333333331 0.44866666666666671 0
		0.074999999999999997 0.44700000000000001 0
		0.10100000000000001 0.443 0
		0.107 0.438 0
		0.107 0.40200000000000002 0
		0.107 0.29700000000000004 0
		0.107 0.19200000000000003 0
		0.107 0.087000000000000008 0
		0.107 0.036000000000000004 0
		0.10400000000000001 0.034000000000000002 0
		0.032000000000000001 0.029000000000000001 0
		0.032000000000000001 0.019333333333333334 0
		0.032000000000000001 0.0096666666666666672 0
		0.032000000000000001 0 0
		0.11333333333333336 0 0
		0.19466666666666668 0 0
		0.27600000000000002 0 0
		0.27600000000000002 0.0096666666666666672 0
		0.27600000000000002 0.019333333333333334 0
		0.27600000000000002 0.029000000000000001 0
		0.20500000000000002 0.034000000000000002 0
		0.20100000000000001 0.036000000000000004 0
		0.20100000000000001 0.087000000000000008 0
		0.20099999999999998 0.16500000000000001 0
		0.20099999999999998 0.24300000000000002 0
		0.20099999999999998 0.32100000000000001 0
		0.20100000000000001 0.34600000000000003 0
		0.20300000000000001 0.35999999999999999 0
		0.21099999999999999 0.376 0
		0.23200000000000001 0.41500000000000004 0
		0.27700000000000002 0.44800000000000001 0
		0.33000000000000002 0.44800000000000001 0
		0.39800000000000002 0.44800000000000001 0
		0.435 0.41000000000000003 0
		0.435 0.32300000000000001 0
		0.43499999999999989 0.24433333333333337 0
		0.43499999999999989 0.16566666666666668 0
		0.43499999999999989 0.087000000000000008 0
		0.435 0.036000000000000004 0
		0.432 0.034000000000000002 0
		0.35999999999999999 0.029000000000000001 0
		0.36000000000000004 0.019333333333333334 0
		0.36000000000000004 0.0096666666666666672 0
		0.36000000000000004 0 0
		0.4413333333333333 0 0
		0.52266666666666672 0 0
		0.60399999999999998 0 0
		0.60399999999999998 0.0096666666666666672 0
		0.60399999999999998 0.019333333333333334 0
		0.60399999999999998 0.029000000000000001 0
		0.53300000000000003 0.034000000000000002 0
		0.52900000000000003 0.036000000000000004 0
		0.52900000000000003 0.087000000000000008 0
		0.52900000000000003 0.17233333333333337 0
		0.52900000000000003 0.25766666666666671 0
		0.52900000000000003 0.34300000000000003 0
		;
createNode transform -n "Char_t_8" -p "rigs_faceboard_backxfront_txt";
	setAttr ".t" -type "double3" 4.615 0 0 ;
createNode transform -n "curve323" -p "Char_t_8";
createNode nurbsCurve -n "curveShape323" -p "curve323";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 46 1 no 3
		51 0 0 0 0.03999999999999998 0.03999999999999998 0.03999999999999998 0.16899999999999998 0.16899999999999998 0.16899999999999998 0.29499999999999998 0.29499999999999998
		 0.29499999999999998 0.32399999999999995 0.32399999999999995 0.32399999999999995 0.46398928530426886 0.46398928530426886 0.46398928530426886 0.53998928530426882 0.53998928530426882 0.53998928530426882 0.57998928530426874 0.57998928530426874
		 0.57998928530426874 0.65198928530426881 0.65198928530426881 0.65198928530426881 0.99998928530426878 0.99998928530426878 0.99998928530426878 1.9999892853042689 1.9999892853042689 1.9999892853042689 2.9999892853042689 2.9999892853042689
		 2.9999892853042689 3.0224614903585132 3.0224614903585132 3.0224614903585132 4.0224614903585127 4.0224614903585127 4.0224614903585127 5.0224614903585127 5.0224614903585127 5.0224614903585127 5.3324614903585124 5.3324614903585124
		 5.3324614903585124 5.4614614903585128 5.4614614903585128 5.4614614903585128
		49
		0.32600000000000001 0.45000000000000001 0
		0.32600000000000001 0.46333333333333332 0
		0.32600000000000001 0.47666666666666663 0
		0.32600000000000001 0.48999999999999999 0
		0.28299999999999997 0.48999999999999999 0
		0.23999999999999999 0.48999999999999999 0
		0.19699999999999998 0.48999999999999999 0
		0.19699999999999998 0.53199999999999992 0
		0.19699999999999998 0.57399999999999995 0
		0.19699999999999998 0.61599999999999999 0
		0.18733333333333335 0.61599999999999999 0
		0.17766666666666667 0.61599999999999999 0
		0.16800000000000001 0.61599999999999999 0
		0.14766666666666667 0.57399999999999995 0
		0.12733333333333333 0.53199999999999992 0
		0.107 0.48999999999999999 0
		0.081666666666666665 0.49000000000000005 0
		0.056333333333333339 0.49000000000000005 0
		0.031 0.49000000000000005 0
		0.031 0.47666666666666663 0
		0.031 0.46333333333333332 0
		0.031 0.45000000000000001 0
		0.055 0.45000000000000001 0
		0.079000000000000001 0.45000000000000001 0
		0.10300000000000002 0.45000000000000001 0
		0.10300000000000002 0.33400000000000007 0
		0.10300000000000002 0.218 0
		0.10300000000000002 0.10200000000000002 0
		0.10300000000000001 0 0
		0.17899999999999999 -0.012 0
		0.214 -0.012 0
		0.26500000000000001 -0.012 0
		0.313 0.013999999999999999 0
		0.34200000000000003 0.032000000000000001 0
		0.33933333333333332 0.039 0
		0.33666666666666667 0.045999999999999992 0
		0.33400000000000002 0.052999999999999992 0
		0.31 0.043000000000000003 0
		0.28800000000000003 0.040000000000000001 0
		0.26300000000000001 0.040000000000000001 0
		0.22900000000000001 0.040000000000000001 0
		0.19700000000000001 0.064000000000000001 0
		0.19700000000000001 0.14000000000000001 0
		0.19699999999999998 0.2433333333333334 0
		0.19699999999999998 0.34666666666666668 0
		0.19699999999999998 0.45000000000000001 0
		0.23999999999999999 0.45000000000000001 0
		0.28299999999999997 0.45000000000000001 0
		0.32600000000000001 0.45000000000000001 0
		;
createNode transform -n "ctrls_faceboard_tongue_twist_offset" -p "grp_faceboard_tongue";
	setAttr ".t" -type "double3" -0.52054068443009627 -0.40828799450593745 0 ;
	setAttr ".s" -type "double3" 7.4362954918585169 7.4362954918585169 7.4362954918585169 ;
createNode transform -n "ctrl_faceboard_tongue_twist_frame" -p "ctrls_faceboard_tongue_twist_offset";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".s" -type "double3" 0.13447555992023588 0.13447555992023588 0.13447555992023588 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nsS'translateY'\np6\nF0\nsS'translateZ'\np7\nF0\nsS'rotateX'\np8\nF0\nsS'rotateY'\np9\nF0\nsS'rotateZ'\np10\nF0\nssS'neutralPose'\np11\n(dp12\ng5\nF0\nsg6\nF0\nsg7\nF0\nsg8\nF0\nsg9\nF0\nsg10\nF0\nss.";
createNode nurbsCurve -n "ctrl_faceboard_tongue_twist_frameShape" -p "ctrl_faceboard_tongue_twist_frame";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.26302647880734942 0.26454217075082126 0
		0.26302647880734942 0.26454217075082126 0
		0.26302647880734942 -0.2615107868638773 0
		-0.26302647880734942 -0.2615107868638773 0
		-0.26302647880734942 0.26454217075082126 0
		;
createNode transform -n "ctrl_faceboard_tongue_twist" -p "ctrls_faceboard_tongue_twist_offset";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -45 -45 -180 ;
	setAttr ".mxrl" -type "double3" 45 45 180 ;
	setAttr ".mrze" yes;
	setAttr ".xrze" yes;
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'rotateZ'\np5\nF0\nssS'neutralPose'\np6\n(dp7\ng5\nF0\nss.";
createNode nurbsCurve -n "ctrl_faceboard_tongue_twistShape" -p "ctrl_faceboard_tongue_twist";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 9 10 11 12 13 14 15
		7
		0.0087784971840768299 -0.011518370785120345 -3.9372537350757616e-26
		0.0074538965141893263 -0.011991346320796068 -3.9372537350757616e-26
		0.0060421608676601707 -0.0088595190536498759 -3.9372537350757616e-26
		0.0018674950564538364 -0.01631725162629415 -3.9372537350757616e-26
		0.010277367807247634 -0.018255000855088268 -3.9372537350757616e-26
		0.0088656321607184976 -0.015123173587942192 -3.9372537350757616e-26
		0.0099307461480091196 -0.014514601559402637 -3.9372537350757616e-26
		;
createNode nurbsCurve -n "polytoCurveShape1" -p "ctrl_faceboard_tongue_twist";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 0 0 0 1 2 3 4 5 6 7 8
		 8 8
		11
		-0.011146396618547669 -0.013821763746085798 -2.229616018049466e-18
		-0.012964171179270654 -0.012716698398902796 -2.7842363784151999e-18
		-0.018024405346614147 -0.0067520290299017032 -3.8934770991466422e-18
		-0.018285150784098987 0.0048429110269445309 -3.842045209769485e-18
		-0.011555386917933782 0.01488102602534104 -2.3839138685449897e-18
		-0.00069388276553242147 0.018377164667422702 2.1092438398765194e-25
		0.010181757891548231 0.015265700788912909 2.3839127886122315e-18
		0.01733140277431287 0.0060243457854811657 3.8420442704529912e-18
		0.01765292956030862 -0.0055590952705533228 3.8934770991466422e-18
		0.01304295428888802 -0.012416933308845867 2.7842366896458256e-18
		0.0099307461480091386 -0.014514601559402641 2.2296164848954134e-18
		;
createNode nurbsCurve -n "ctrl_faceboard_tongue_twistShape1" -p "ctrl_faceboard_tongue_twist";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 9 10 11 12 13 14 15
		7
		-0.011146396618547669 -0.013821763746085798 -3.9372537350757616e-26
		-0.0097595568436709881 -0.014485015414276131 -3.9372537350757616e-26
		-0.011301693946492422 -0.017554730828288165 -3.9372537350757616e-26
		-0.0028803153436377598 -0.016096652576712864 -3.9372537350757616e-26
		-0.0066752826380281401 -0.0083455845862521888 -3.9372537350757616e-26
		-0.0082174197408495658 -0.011415300000264163 -3.9372537350757616e-26
		-0.010424558541438221 -0.010373566377292427 -3.9372537350757616e-26
		;
createNode nurbsCurve -n "polytoCurveShape2" -p "ctrl_faceboard_tongue_twist";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 0 0 0 1 2 3 4 5 6 7 8
		 8 8
		11
		-0.010424558541438235 -0.010373566377292372 -1.8144944388846683e-18
		-0.011203782643593049 -0.0097892151200179248 -2.2658526778949112e-18
		-0.015153896117499609 -0.0060870159825828956 -3.1685691559153731e-18
		-0.015519523362591658 0.0044508118648652348 -3.1267131248765287e-18
		-0.0094210320565815756 0.012603271777198926 -1.9400643080412923e-18
		-0.00056714615437439741 0.015303785720685536 1.7165337828241142e-25
		0.0082836108063890322 0.012851165227182243 1.9400634291760682e-18
		0.014333671365338816 0.0052342229370549677 3.1267123604468961e-18
		0.014699943496347935 -0.0038650757339637586 3.1685691559153738e-18
		0.011289753555448975 -0.010037656049828387 2.2658529311789883e-18
		0.0087784971840768541 -0.011518370785120368 1.8144948188107946e-18
		;
createNode transform -n "ctrls_faceboard_tongue_twist_txt" -p "ctrls_faceboard_tongue_twist_offset";
	setAttr ".tmp" yes;
	setAttr ".t" -type "double3" -0.022845167138375144 -0.055871880516662926 0 ;
	setAttr ".s" -type "double3" 0.023544483069565837 0.023544483069565837 0.023544483069565837 ;
createNode transform -n "Char_t_6" -p "ctrls_faceboard_tongue_twist_txt";
createNode transform -n "curve290" -p "Char_t_6";
createNode nurbsCurve -n "curveShape290" -p "curve290";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 46 1 no 3
		51 0 0 0 0.03999999999999998 0.03999999999999998 0.03999999999999998 0.16899999999999998 0.16899999999999998 0.16899999999999998 0.29499999999999998 0.29499999999999998
		 0.29499999999999998 0.32399999999999995 0.32399999999999995 0.32399999999999995 0.46398928530426886 0.46398928530426886 0.46398928530426886 0.53998928530426882 0.53998928530426882 0.53998928530426882 0.57998928530426874 0.57998928530426874
		 0.57998928530426874 0.65198928530426881 0.65198928530426881 0.65198928530426881 0.99998928530426878 0.99998928530426878 0.99998928530426878 1.9999892853042689 1.9999892853042689 1.9999892853042689 2.9999892853042689 2.9999892853042689
		 2.9999892853042689 3.0224614903585132 3.0224614903585132 3.0224614903585132 4.0224614903585127 4.0224614903585127 4.0224614903585127 5.0224614903585127 5.0224614903585127 5.0224614903585127 5.3324614903585124 5.3324614903585124
		 5.3324614903585124 5.4614614903585128 5.4614614903585128 5.4614614903585128
		49
		0.32600000000000001 0.45000000000000001 0
		0.32600000000000001 0.46333333333333332 0
		0.32600000000000001 0.47666666666666663 0
		0.32600000000000001 0.48999999999999999 0
		0.28299999999999997 0.48999999999999999 0
		0.23999999999999999 0.48999999999999999 0
		0.19699999999999998 0.48999999999999999 0
		0.19699999999999998 0.53199999999999992 0
		0.19699999999999998 0.57399999999999995 0
		0.19699999999999998 0.61599999999999999 0
		0.18733333333333335 0.61599999999999999 0
		0.17766666666666667 0.61599999999999999 0
		0.16800000000000001 0.61599999999999999 0
		0.14766666666666667 0.57399999999999995 0
		0.12733333333333333 0.53199999999999992 0
		0.107 0.48999999999999999 0
		0.081666666666666665 0.49000000000000005 0
		0.056333333333333339 0.49000000000000005 0
		0.031 0.49000000000000005 0
		0.031 0.47666666666666663 0
		0.031 0.46333333333333332 0
		0.031 0.45000000000000001 0
		0.055 0.45000000000000001 0
		0.079000000000000001 0.45000000000000001 0
		0.10300000000000002 0.45000000000000001 0
		0.10300000000000002 0.33400000000000007 0
		0.10300000000000002 0.218 0
		0.10300000000000002 0.10200000000000002 0
		0.10300000000000001 0 0
		0.17899999999999999 -0.012 0
		0.214 -0.012 0
		0.26500000000000001 -0.012 0
		0.313 0.013999999999999999 0
		0.34200000000000003 0.032000000000000001 0
		0.33933333333333332 0.039 0
		0.33666666666666667 0.045999999999999992 0
		0.33400000000000002 0.052999999999999992 0
		0.31 0.043000000000000003 0
		0.28800000000000003 0.040000000000000001 0
		0.26300000000000001 0.040000000000000001 0
		0.22900000000000001 0.040000000000000001 0
		0.19700000000000001 0.064000000000000001 0
		0.19700000000000001 0.14000000000000001 0
		0.19699999999999998 0.2433333333333334 0
		0.19699999999999998 0.34666666666666668 0
		0.19699999999999998 0.45000000000000001 0
		0.23999999999999999 0.45000000000000001 0
		0.28299999999999997 0.45000000000000001 0
		0.32600000000000001 0.45000000000000001 0
		;
createNode transform -n "Char_w_11" -p "ctrls_faceboard_tongue_twist_txt";
	setAttr ".t" -type "double3" 0.34400000000000003 0 0 ;
createNode transform -n "curve291" -p "Char_w_11";
createNode nurbsCurve -n "curveShape291" -p "curve291";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 76 1 no 3
		81 0 0 0 0.02899999999999997 0.02899999999999997 0.02899999999999997 1.0289999999999999 1.0289999999999999 1.0289999999999999 2.0289999999999999 2.0289999999999999
		 2.0289999999999999 2.105 2.105 2.105 2.5038546101024783 2.5038546101024783 2.5038546101024783 2.5068546101024785 2.5068546101024785 2.5068546101024785 3.5068546101024785 3.5068546101024785
		 3.5068546101024785 3.5828546101024785 3.5828546101024785 3.5828546101024785 4.5828546101024781 4.5828546101024781 4.5828546101024781 5.5828546101024781 5.5828546101024781 5.5828546101024781 5.611854610102478 5.611854610102478
		 5.611854610102478 5.8088546101024781 5.8088546101024781 5.8088546101024781 5.837854610102478 5.837854610102478 5.837854610102478 5.8950734881061582 5.8950734881061582 5.8950734881061582 6.8950734881061582 6.8950734881061582
		 6.8950734881061582 7.8950734881061582 7.8950734881061582 7.8950734881061582 7.8970734881061579 7.8970734881061579 7.8970734881061579 8.8970734881061588 8.8970734881061588 8.8970734881061588 8.9730734881061593 8.9730734881061593
		 8.9730734881061593 9.3790008215046381 9.3790008215046381 9.3790008215046381 9.3810008215046388 9.3810008215046388 9.3810008215046388 10.381000821504639 10.381000821504639 10.381000821504639 11.381000821504639 11.381000821504639
		 11.381000821504639 11.416129157645139 11.416129157645139 11.416129157645139 11.445129157645139 11.445129157645139 11.445129157645139 11.65612915764514 11.65612915764514 11.65612915764514
		79
		-0.002 0.48999999999999999 0
		-0.002 0.48033333333333333 0
		-0.002 0.47066666666666673 0
		-0.002 0.46100000000000002 0
		0.038999999999999993 0.45900000000000002 0
		0.052000000000000005 0.45600000000000002 0
		0.064000000000000001 0.41799999999999998 0
		0.106 0.28600000000000003 0
		0.14999999999999999 0.15099999999999997 0
		0.192 0 0
		0.21733333333333335 0 0
		0.24266666666666667 0 0
		0.26800000000000002 0 0
		0.3073333333333334 0.12700000000000003 0
		0.34666666666666668 0.25400000000000006 0
		0.38599999999999995 0.38100000000000006 0
		0.38700000000000001 0.38100000000000001 0
		0.38800000000000007 0.38100000000000001 0
		0.38900000000000001 0.38100000000000001 0
		0.43099999999999999 0.254 0
		0.47200000000000003 0.127 0
		0.51200000000000001 0 0
		0.53733333333333333 0 0
		0.56266666666666676 0 0
		0.58799999999999997 0 0
		0.63 0.14699999999999996 0
		0.68900000000000006 0.32500000000000001 0
		0.71399999999999997 0.40300000000000002 0
		0.73099999999999998 0.45400000000000001 0
		0.74199999999999999 0.45800000000000002 0
		0.79200000000000004 0.46100000000000002 0
		0.79200000000000015 0.47066666666666673 0
		0.79200000000000015 0.48033333333333333 0
		0.79200000000000015 0.48999999999999999 0
		0.72633333333333328 0.48999999999999999 0
		0.66066666666666662 0.48999999999999999 0
		0.59499999999999997 0.48999999999999999 0
		0.59499999999999997 0.48033333333333333 0
		0.59499999999999997 0.47066666666666673 0
		0.59499999999999997 0.46100000000000002 0
		0.61399999999999999 0.45933333333333337 0
		0.63300000000000001 0.45766666666666667 0
		0.65200000000000002 0.45600000000000002 0
		0.66900000000000004 0.45400000000000001 0
		0.67000000000000004 0.441 0
		0.66600000000000004 0.42299999999999999 0
		0.65300000000000002 0.36399999999999999 0
		0.60699999999999998 0.20200000000000001 0
		0.57600000000000007 0.088999999999999996 0
		0.57533333333333347 0.08900000000000001 0
		0.57466666666666677 0.08900000000000001 0
		0.57400000000000007 0.08900000000000001 0
		0.53100000000000003 0.219 0
		0.48999999999999999 0.34800000000000003 0
		0.44900000000000001 0.47800000000000004 0
		0.42366666666666669 0.47799999999999998 0
		0.39833333333333337 0.47799999999999998 0
		0.373 0.47799999999999998 0
		0.33433333333333337 0.34833333333333338 0
		0.29566666666666669 0.21866666666666668 0
		0.25700000000000001 0.08900000000000001 0
		0.25633333333333336 0.08900000000000001 0
		0.25566666666666665 0.08900000000000001 0
		0.255 0.08900000000000001 0
		0.219 0.20400000000000001 0
		0.188 0.32000000000000001 0
		0.156 0.42799999999999999 0
		0.14999999999999999 0.44700000000000001 0
		0.156 0.45600000000000002 0
		0.17400000000000002 0.45800000000000002 0
		0.18566666666666667 0.45900000000000007 0
		0.19733333333333333 0.46000000000000002 0
		0.20899999999999999 0.46100000000000008 0
		0.20899999999999999 0.47066666666666673 0
		0.20899999999999999 0.48033333333333333 0
		0.20899999999999999 0.48999999999999999 0
		0.13866666666666666 0.48999999999999999 0
		0.068333333333333329 0.48999999999999999 0
		-0.002 0.48999999999999999 0
		;
createNode transform -n "Char_i_14" -p "ctrls_faceboard_tongue_twist_txt";
	setAttr ".t" -type "double3" 1.112 0 0 ;
createNode transform -n "curve292" -p "Char_i_14";
createNode nurbsCurve -n "curveShape292" -p "curve292";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 34 1 no 3
		39 0 0 0 0.025000000000000022 0.025000000000000022 0.025000000000000022 0.063327535793473624 0.063327535793473624 0.063327535793473624 1.0633275357934737 1.0633275357934737
		 1.0633275357934737 1.3783275357934737 1.3783275357934737 1.3783275357934737 2.3783275357934737 2.3783275357934737 2.3783275357934737 2.4073275357934736 2.4073275357934736 2.4073275357934736 2.6513275357934738 2.6513275357934738
		 2.6513275357934738 2.6803275357934737 2.6803275357934737 2.6803275357934737 3.6803275357934737 3.6803275357934737 3.6803275357934737 4.0893275357934735 4.0893275357934735 4.0893275357934735 4.098547080250766 4.098547080250766
		 4.098547080250766 4.2575250661481849 4.2575250661481849 4.2575250661481849
		37
		0.036999999999999998 0.47700000000000004 0
		0.036999999999999998 0.46866666666666673 0
		0.036999999999999998 0.46033333333333343 0
		0.036999999999999998 0.45200000000000001 0
		0.049666666666666665 0.45033333333333331 0
		0.062333333333333331 0.44866666666666671 0
		0.074999999999999997 0.44700000000000001 0
		0.10100000000000001 0.443 0
		0.107 0.438 0
		0.107 0.40200000000000002 0
		0.107 0.29700000000000004 0
		0.107 0.19200000000000003 0
		0.107 0.087000000000000008 0
		0.107 0.036000000000000004 0
		0.10400000000000001 0.034000000000000002 0
		0.032000000000000001 0.029000000000000001 0
		0.032000000000000001 0.019333333333333334 0
		0.032000000000000001 0.0096666666666666672 0
		0.032000000000000001 0 0
		0.11333333333333336 0 0
		0.19466666666666668 0 0
		0.27600000000000002 0 0
		0.27600000000000002 0.0096666666666666672 0
		0.27600000000000002 0.019333333333333334 0
		0.27600000000000002 0.029000000000000001 0
		0.20500000000000002 0.034000000000000002 0
		0.20100000000000001 0.036000000000000004 0
		0.20100000000000001 0.087000000000000008 0
		0.20099999999999998 0.2233333333333333 0
		0.20099999999999998 0.35966666666666663 0
		0.20099999999999998 0.496 0
		0.19866666666666669 0.49800000000000005 0
		0.19633333333333333 0.5 0
		0.19400000000000003 0.502 0
		0.14166666666666666 0.4936666666666667 0
		0.089333333333333334 0.48533333333333339 0
		0.036999999999999998 0.47700000000000004 0
		;
createNode transform -n "curve293" -p "Char_i_14";
createNode nurbsCurve -n "curveShape293" -p "curve293";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.153 0.71499999999999997 0
		0.11700000000000001 0.71499999999999997 0
		0.091999999999999998 0.68900000000000006 0
		0.091999999999999998 0.65300000000000002 0
		0.091999999999999998 0.61799999999999999 0
		0.11700000000000001 0.59299999999999997 0
		0.153 0.59299999999999997 0
		0.19 0.59299999999999997 0
		0.21299999999999999 0.61799999999999999 0
		0.214 0.65300000000000002 0
		0.214 0.68900000000000006 0
		0.19 0.71499999999999997 0
		0.153 0.71499999999999997 0
		;
createNode transform -n "Char_s_6" -p "ctrls_faceboard_tongue_twist_txt";
	setAttr ".t" -type "double3" 1.403 0 0 ;
createNode transform -n "curve294" -p "Char_s_6";
createNode nurbsCurve -n "curveShape294" -p "curve294";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 46 1 no 3
		51 0 0 0 0.11699999999999999 0.11699999999999999 0.11699999999999999 1.117 1.117 1.117 2.117 2.117
		 2.117 3.117 3.117 3.117 4.117 4.117 4.117 5.117 5.117 5.117 6.117 6.117
		 6.117 6.1459999999999999 6.1459999999999999 6.1459999999999999 6.2773811249761549 6.2773811249761549 6.2773811249761549 7.2773811249761549 7.2773811249761549 7.2773811249761549 8.2773811249761557 8.2773811249761557
		 8.2773811249761557 9.2773811249761557 9.2773811249761557 9.2773811249761557 10.277381124976156 10.277381124976156 10.277381124976156 11.277381124976156 11.277381124976156 11.277381124976156 12.277381124976156 12.277381124976156
		 12.277381124976156 12.306381124976156 12.306381124976156 12.306381124976156
		49
		0.36699999999999999 0.35100000000000003 0
		0.36699999999999999 0.39000000000000007 0
		0.36699999999999999 0.42900000000000005 0
		0.36699999999999999 0.46800000000000003 0
		0.33400000000000002 0.49199999999999999 0
		0.28300000000000003 0.502 0
		0.23800000000000002 0.502 0
		0.13 0.502 0
		0.057000000000000002 0.45100000000000001 0
		0.056000000000000001 0.35599999999999998 0
		0.057000000000000002 0.27300000000000002 0
		0.124 0.23600000000000002 0
		0.20700000000000002 0.21099999999999999 0
		0.252 0.19700000000000001 0
		0.315 0.17400000000000002 0
		0.315 0.106 0
		0.315 0.055 0
		0.27500000000000002 0.023 0
		0.222 0.023 0
		0.14100000000000001 0.023 0
		0.096000000000000002 0.082000000000000017 0
		0.075999999999999998 0.16700000000000001 0
		0.066333333333333341 0.16700000000000001 0
		0.056666666666666664 0.16700000000000001 0
		0.047000000000000007 0.16700000000000001 0
		0.050333333333333341 0.12333333333333334 0
		0.053666666666666668 0.079666666666666677 0
		0.057000000000000002 0.036000000000000004 0
		0.092999999999999999 0.0040000000000000036 0
		0.154 -0.012 0
		0.21299999999999999 -0.012 0
		0.33200000000000002 -0.012 0
		0.40000000000000002 0.051000000000000018 0
		0.40000000000000002 0.13600000000000001 0
		0.40000000000000002 0.224 0
		0.34600000000000003 0.26400000000000001 0
		0.24299999999999999 0.29599999999999999 0
		0.20200000000000001 0.309 0
		0.13600000000000001 0.33000000000000002 0
		0.13600000000000001 0.38600000000000001 0
		0.13700000000000001 0.438 0
		0.17599999999999999 0.46700000000000003 0
		0.22600000000000001 0.46700000000000003 0
		0.29699999999999999 0.46700000000000003 0
		0.33100000000000002 0.41200000000000003 0
		0.33800000000000002 0.35100000000000003 0
		0.34766666666666673 0.35100000000000003 0
		0.35733333333333334 0.35100000000000003 0
		0.36699999999999999 0.35100000000000003 0
		;
createNode transform -n "Char_t_7" -p "ctrls_faceboard_tongue_twist_txt";
	setAttr ".t" -type "double3" 1.839 0 0 ;
createNode transform -n "curve295" -p "Char_t_7";
createNode nurbsCurve -n "curveShape295" -p "curve295";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 46 1 no 3
		51 0 0 0 0.03999999999999998 0.03999999999999998 0.03999999999999998 0.16899999999999998 0.16899999999999998 0.16899999999999998 0.29499999999999998 0.29499999999999998
		 0.29499999999999998 0.32399999999999995 0.32399999999999995 0.32399999999999995 0.46398928530426886 0.46398928530426886 0.46398928530426886 0.53998928530426882 0.53998928530426882 0.53998928530426882 0.57998928530426874 0.57998928530426874
		 0.57998928530426874 0.65198928530426881 0.65198928530426881 0.65198928530426881 0.99998928530426878 0.99998928530426878 0.99998928530426878 1.9999892853042689 1.9999892853042689 1.9999892853042689 2.9999892853042689 2.9999892853042689
		 2.9999892853042689 3.0224614903585132 3.0224614903585132 3.0224614903585132 4.0224614903585127 4.0224614903585127 4.0224614903585127 5.0224614903585127 5.0224614903585127 5.0224614903585127 5.3324614903585124 5.3324614903585124
		 5.3324614903585124 5.4614614903585128 5.4614614903585128 5.4614614903585128
		49
		0.32600000000000001 0.45000000000000001 0
		0.32600000000000001 0.46333333333333332 0
		0.32600000000000001 0.47666666666666663 0
		0.32600000000000001 0.48999999999999999 0
		0.28299999999999997 0.48999999999999999 0
		0.23999999999999999 0.48999999999999999 0
		0.19699999999999998 0.48999999999999999 0
		0.19699999999999998 0.53199999999999992 0
		0.19699999999999998 0.57399999999999995 0
		0.19699999999999998 0.61599999999999999 0
		0.18733333333333335 0.61599999999999999 0
		0.17766666666666667 0.61599999999999999 0
		0.16800000000000001 0.61599999999999999 0
		0.14766666666666667 0.57399999999999995 0
		0.12733333333333333 0.53199999999999992 0
		0.107 0.48999999999999999 0
		0.081666666666666665 0.49000000000000005 0
		0.056333333333333339 0.49000000000000005 0
		0.031 0.49000000000000005 0
		0.031 0.47666666666666663 0
		0.031 0.46333333333333332 0
		0.031 0.45000000000000001 0
		0.055 0.45000000000000001 0
		0.079000000000000001 0.45000000000000001 0
		0.10300000000000002 0.45000000000000001 0
		0.10300000000000002 0.33400000000000007 0
		0.10300000000000002 0.218 0
		0.10300000000000002 0.10200000000000002 0
		0.10300000000000001 0 0
		0.17899999999999999 -0.012 0
		0.214 -0.012 0
		0.26500000000000001 -0.012 0
		0.313 0.013999999999999999 0
		0.34200000000000003 0.032000000000000001 0
		0.33933333333333332 0.039 0
		0.33666666666666667 0.045999999999999992 0
		0.33400000000000002 0.052999999999999992 0
		0.31 0.043000000000000003 0
		0.28800000000000003 0.040000000000000001 0
		0.26300000000000001 0.040000000000000001 0
		0.22900000000000001 0.040000000000000001 0
		0.19700000000000001 0.064000000000000001 0
		0.19700000000000001 0.14000000000000001 0
		0.19699999999999998 0.2433333333333334 0
		0.19699999999999998 0.34666666666666668 0
		0.19699999999999998 0.45000000000000001 0
		0.23999999999999999 0.45000000000000001 0
		0.28299999999999997 0.45000000000000001 0
		0.32600000000000001 0.45000000000000001 0
		;
createNode transform -n "ctrls_faceboard_tongue_sideSide_offset" -p "grp_faceboard_tongue";
	setAttr ".t" -type "double3" -0.52054068443009627 0.52823653886164124 0 ;
	setAttr ".s" -type "double3" 7.4362954918585169 7.4362954918585169 7.4362954918585169 ;
createNode transform -n "ctrls_faceboard_tongue_sideSide_frame" -p "ctrls_faceboard_tongue_sideSide_offset";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".s" -type "double3" 0.13447555992023588 0.13447555992023588 0.13447555992023588 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 1.1102230246251565e-16 -0.034176928801243484 0 ;
	setAttr ".sp" -type "double3" 3.0959799273665922e-16 -0.25414974157025494 0 ;
	setAttr ".spt" -type "double3" -1.9857569027414356e-16 0.21997281276901126 0 ;
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nsS'translateY'\np6\nF0\nsS'translateZ'\np7\nF0\nsS'scaleX'\np8\nF0.13447555992023588\nsS'scaleY'\np9\nF0.13447555992023588\nsS'scaleZ'\np10\nF0.13447555992023588\nsS'rotateX'\np11\nF0\nsS'rotateY'\np12\nF0\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF0\nsg6\nF0\nsg7\nF0\nsg8\nF0.13447555992023588\nsg9\nF0.13447555992023588\nsg10\nF0.13447555992023588\nsg11\nF0\nsg12\nF0\nsg13\nF0\nss.";
createNode nurbsCurve -n "ctrls_faceboard_tongue_sideSide_frameShape" -p "ctrls_faceboard_tongue_sideSide_frame";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.26302647880734953 0.26995420652220431 0
		0.26302647880734931 0.26995420652220431 0
		0.26302647880734931 -0.2560987510924943 0
		-0.26302647880734953 -0.2560987510924943 0
		-0.26302647880734953 0.26995420652220431 0
		;
createNode transform -n "ctrl_faceboard_tongue_sideSide" -p "ctrls_faceboard_tongue_sideSide_offset";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -45 -45 -70 ;
	setAttr ".mxrl" -type "double3" 45 45 70 ;
	setAttr ".mrze" yes;
	setAttr ".xrze" yes;
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'rotateZ'\np5\nF0\nssS'neutralPose'\np6\n(dp7\ng5\nF0\nss.";
createNode nurbsCurve -n "ctrl_faceboard_tongue_sideSideShape" -p "ctrl_faceboard_tongue_sideSide";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 9 10 11 12 13 14 15
		7
		-0.0094107184078671968 0.011640534597454779 -3.9372537350757616e-26
		-0.0080861177379796985 0.012113510133130506 -3.9372537350757616e-26
		-0.0066743820914505463 0.0089816828659843185 -3.9372537350757616e-26
		-0.0024997162802442041 0.01643941543862858 -3.9372537350757616e-26
		-0.010909589031038005 0.018377164667422702 -3.9372537350757616e-26
		-0.0094978533845088663 0.01524533740027662 -3.9372537350757616e-26
		-0.01056296737179949 0.014636765371737071 -3.9372537350757616e-26
		;
createNode nurbsCurve -n "polyToCurveShape1" -p "ctrl_faceboard_tongue_sideSide";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 0 0 0 1 2 3 4 5 6 7 8
		 8 8
		11
		0.01051417539475729 0.013943927558420235 -2.229616018049466e-18
		0.012331949955480277 0.012838862211237229 -2.7842363784151999e-18
		0.017392184122823767 0.0068741928422361379 -3.8934770991466422e-18
		0.017652929560308606 -0.0047207472146100927 -3.842045209769485e-18
		0.010923165694143403 -0.014758862213006601 -2.3839138685449897e-18
		6.1661541742051058e-05 -0.018255000855088275 2.1092438398765194e-25
		-0.010813979115338608 -0.01514353697657848 2.3839127886122315e-18
		-0.017963623998103251 -0.0059021819731467241 3.8420442704529912e-18
		-0.018285150784099001 0.0056812590828877567 3.8934770991466422e-18
		-0.013675175512678391 0.012539097121180306 2.7842366896458256e-18
		-0.010562967371799506 0.014636765371737075 2.2296164848954134e-18
		;
createNode nurbsCurve -n "ctrl_faceboard_tongue_sideSideShape1" -p "ctrl_faceboard_tongue_sideSide";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 9 10 11 12 13 14 15
		7
		0.01051417539475729 0.013943927558420235 -3.9372537350757616e-26
		0.0091273356198806055 0.014607179226610565 -3.9372537350757616e-26
		0.010669472722702042 0.017676894640622592 -3.9372537350757616e-26
		0.0022480941198473876 0.016218816389047298 -3.9372537350757616e-26
		0.0060430614142377602 0.0084677483985866175 -3.9372537350757616e-26
		0.0075851985170591885 0.011537463812598594 -3.9372537350757616e-26
		0.0097923373176478489 0.010495730189626859 -3.9372537350757616e-26
		;
createNode nurbsCurve -n "polyToCurveShape2" -p "ctrl_faceboard_tongue_sideSide";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 0 0 0 1 2 3 4 5 6 7 8
		 8 8
		11
		0.0097923373176478559 0.010495730189626806 -1.8144944388846683e-18
		0.010571561419802672 0.0099113789323523552 -2.2658526778949112e-18
		0.014521674893709228 0.0062091797949173286 -3.1685691559153731e-18
		0.014887302138801291 -0.0043286480525307966 -3.1267131248765287e-18
		0.0087888108327912016 -0.012481107964864487 -1.9400643080412923e-18
		-6.5075069415975595e-05 -0.015181621908351105 1.7165337828241142e-25
		-0.0089158320301794061 -0.012729001414847804 1.9400634291760682e-18
		-0.014965892589129188 -0.0051120591247205346 3.1267123604468961e-18
		-0.015332164720138309 0.0039872395462981994 3.1685691559153738e-18
		-0.01192197477923935 0.010159819862162824 2.2658529311789883e-18
		-0.009410718407867228 0.011640534597454802 1.8144948188107946e-18
		;
createNode transform -n "rigs_faceboard_sidexside_txt" -p "ctrls_faceboard_tongue_sideSide_offset";
	setAttr ".tmp" yes;
	setAttr ".t" -type "double3" -0.04555836253274112 -0.071034904333746651 0 ;
	setAttr ".s" -type "double3" 0.023544483069565837 0.023544483069565837 0.023544483069565837 ;
createNode transform -n "Char_s_4" -p "rigs_faceboard_sidexside_txt";
createNode transform -n "curve275" -p "Char_s_4";
createNode nurbsCurve -n "curveShape275" -p "curve275";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 46 1 no 3
		51 0 0 0 0.11699999999999999 0.11699999999999999 0.11699999999999999 1.117 1.117 1.117 2.117 2.117
		 2.117 3.117 3.117 3.117 4.117 4.117 4.117 5.117 5.117 5.117 6.117 6.117
		 6.117 6.1459999999999999 6.1459999999999999 6.1459999999999999 6.2773811249761549 6.2773811249761549 6.2773811249761549 7.2773811249761549 7.2773811249761549 7.2773811249761549 8.2773811249761557 8.2773811249761557
		 8.2773811249761557 9.2773811249761557 9.2773811249761557 9.2773811249761557 10.277381124976156 10.277381124976156 10.277381124976156 11.277381124976156 11.277381124976156 11.277381124976156 12.277381124976156 12.277381124976156
		 12.277381124976156 12.306381124976156 12.306381124976156 12.306381124976156
		49
		0.36699999999999999 0.35100000000000003 0
		0.36699999999999999 0.39000000000000007 0
		0.36699999999999999 0.42900000000000005 0
		0.36699999999999999 0.46800000000000003 0
		0.33400000000000002 0.49199999999999999 0
		0.28300000000000003 0.502 0
		0.23800000000000002 0.502 0
		0.13 0.502 0
		0.057000000000000002 0.45100000000000001 0
		0.056000000000000001 0.35599999999999998 0
		0.057000000000000002 0.27300000000000002 0
		0.124 0.23600000000000002 0
		0.20700000000000002 0.21099999999999999 0
		0.252 0.19700000000000001 0
		0.315 0.17400000000000002 0
		0.315 0.106 0
		0.315 0.055 0
		0.27500000000000002 0.023 0
		0.222 0.023 0
		0.14100000000000001 0.023 0
		0.096000000000000002 0.082000000000000017 0
		0.075999999999999998 0.16700000000000001 0
		0.066333333333333341 0.16700000000000001 0
		0.056666666666666664 0.16700000000000001 0
		0.047000000000000007 0.16700000000000001 0
		0.050333333333333341 0.12333333333333334 0
		0.053666666666666668 0.079666666666666677 0
		0.057000000000000002 0.036000000000000004 0
		0.092999999999999999 0.0040000000000000036 0
		0.154 -0.012 0
		0.21299999999999999 -0.012 0
		0.33200000000000002 -0.012 0
		0.40000000000000002 0.051000000000000018 0
		0.40000000000000002 0.13600000000000001 0
		0.40000000000000002 0.224 0
		0.34600000000000003 0.26400000000000001 0
		0.24299999999999999 0.29599999999999999 0
		0.20200000000000001 0.309 0
		0.13600000000000001 0.33000000000000002 0
		0.13600000000000001 0.38600000000000001 0
		0.13700000000000001 0.438 0
		0.17599999999999999 0.46700000000000003 0
		0.22600000000000001 0.46700000000000003 0
		0.29699999999999999 0.46700000000000003 0
		0.33100000000000002 0.41200000000000003 0
		0.33800000000000002 0.35100000000000003 0
		0.34766666666666673 0.35100000000000003 0
		0.35733333333333334 0.35100000000000003 0
		0.36699999999999999 0.35100000000000003 0
		;
createNode transform -n "Char_i_12" -p "rigs_faceboard_sidexside_txt";
	setAttr ".t" -type "double3" 0.436 0 0 ;
createNode transform -n "curve276" -p "Char_i_12";
createNode nurbsCurve -n "curveShape276" -p "curve276";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 34 1 no 3
		39 0 0 0 0.025000000000000022 0.025000000000000022 0.025000000000000022 0.063327535793473624 0.063327535793473624 0.063327535793473624 1.0633275357934737 1.0633275357934737
		 1.0633275357934737 1.3783275357934737 1.3783275357934737 1.3783275357934737 2.3783275357934737 2.3783275357934737 2.3783275357934737 2.4073275357934736 2.4073275357934736 2.4073275357934736 2.6513275357934738 2.6513275357934738
		 2.6513275357934738 2.6803275357934737 2.6803275357934737 2.6803275357934737 3.6803275357934737 3.6803275357934737 3.6803275357934737 4.0893275357934735 4.0893275357934735 4.0893275357934735 4.098547080250766 4.098547080250766
		 4.098547080250766 4.2575250661481849 4.2575250661481849 4.2575250661481849
		37
		0.036999999999999998 0.47700000000000004 0
		0.036999999999999998 0.46866666666666673 0
		0.036999999999999998 0.46033333333333343 0
		0.036999999999999998 0.45200000000000001 0
		0.049666666666666665 0.45033333333333331 0
		0.062333333333333331 0.44866666666666671 0
		0.074999999999999997 0.44700000000000001 0
		0.10100000000000001 0.443 0
		0.107 0.438 0
		0.107 0.40200000000000002 0
		0.107 0.29700000000000004 0
		0.107 0.19200000000000003 0
		0.107 0.087000000000000008 0
		0.107 0.036000000000000004 0
		0.10400000000000001 0.034000000000000002 0
		0.032000000000000001 0.029000000000000001 0
		0.032000000000000001 0.019333333333333334 0
		0.032000000000000001 0.0096666666666666672 0
		0.032000000000000001 0 0
		0.11333333333333336 0 0
		0.19466666666666668 0 0
		0.27600000000000002 0 0
		0.27600000000000002 0.0096666666666666672 0
		0.27600000000000002 0.019333333333333334 0
		0.27600000000000002 0.029000000000000001 0
		0.20500000000000002 0.034000000000000002 0
		0.20100000000000001 0.036000000000000004 0
		0.20100000000000001 0.087000000000000008 0
		0.20099999999999998 0.2233333333333333 0
		0.20099999999999998 0.35966666666666663 0
		0.20099999999999998 0.496 0
		0.19866666666666669 0.49800000000000005 0
		0.19633333333333333 0.5 0
		0.19400000000000003 0.502 0
		0.14166666666666666 0.4936666666666667 0
		0.089333333333333334 0.48533333333333339 0
		0.036999999999999998 0.47700000000000004 0
		;
createNode transform -n "curve277" -p "Char_i_12";
createNode nurbsCurve -n "curveShape277" -p "curve277";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.153 0.71499999999999997 0
		0.11700000000000001 0.71499999999999997 0
		0.091999999999999998 0.68900000000000006 0
		0.091999999999999998 0.65300000000000002 0
		0.091999999999999998 0.61799999999999999 0
		0.11700000000000001 0.59299999999999997 0
		0.153 0.59299999999999997 0
		0.19 0.59299999999999997 0
		0.21299999999999999 0.61799999999999999 0
		0.214 0.65300000000000002 0
		0.214 0.68900000000000006 0
		0.19 0.71499999999999997 0
		0.153 0.71499999999999997 0
		;
createNode transform -n "Char_d_6" -p "rigs_faceboard_sidexside_txt";
	setAttr ".t" -type "double3" 0.727 0 0 ;
createNode transform -n "curve278" -p "Char_d_6";
createNode nurbsCurve -n "curveShape278" -p "curve278";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 49 1 no 3
		54 0 0 0 0.029000000000000001 0.029000000000000001 0.029000000000000001 1.0289999999999999 1.0289999999999999 1.0289999999999999 1.6779999999999999 1.6779999999999999
		 1.6779999999999999 1.6872195444572928 1.6872195444572928 1.6872195444572928 1.846197530354712 1.846197530354712 1.846197530354712 1.8711975303547119 1.8711975303547119 1.8711975303547119 1.9094074767037974 1.9094074767037974
		 1.9094074767037974 2.9094074767037972 2.9094074767037972 2.9094074767037972 3.0734074767037973 3.0734074767037973 3.0734074767037973 4.0734074767037978 4.0734074767037978 4.0734074767037978 5.0734074767037978 5.0734074767037978
		 5.0734074767037978 6.0734074767037978 6.0734074767037978 6.0734074767037978 7.0734074767037978 7.0734074767037978 7.0734074767037978 8.0734074767037978 8.0734074767037978 8.0734074767037978 8.1224074767037973 8.1224074767037973
		 8.1224074767037973 8.1330376225165324 8.1330376225165324 8.1330376225165324 8.2950376225165332 8.2950376225165332 8.2950376225165332
		52
		0.58299999999999996 0 0
		0.58299999999999996 0.0096666666666666672 0
		0.58299999999999996 0.019333333333333334 0
		0.58299999999999996 0.029000000000000001 0
		0.51200000000000001 0.034000000000000002 0
		0.50800000000000001 0.036000000000000004 0
		0.50800000000000001 0.087000000000000008 0
		0.50800000000000001 0.30333333333333329 0
		0.50800000000000001 0.51966666666666661 0
		0.50800000000000001 0.7360000000000001 0
		0.5056666666666666 0.73799999999999999 0
		0.5033333333333333 0.73999999999999988 0
		0.501 0.74199999999999999 0
		0.44866666666666671 0.73366666666666669 0
		0.39633333333333337 0.72533333333333339 0
		0.34400000000000003 0.71699999999999997 0
		0.34400000000000003 0.70866666666666644 0
		0.34400000000000003 0.70033333333333336 0
		0.34400000000000003 0.69200000000000006 0
		0.35666666666666669 0.69066666666666665 0
		0.36933333333333335 0.68933333333333335 0
		0.38199999999999995 0.68800000000000006 0
		0.40800000000000003 0.68500000000000005 0
		0.41400000000000003 0.68000000000000005 0
		0.41400000000000003 0.64200000000000002 0
		0.41399999999999998 0.58733333333333337 0
		0.41399999999999998 0.53266666666666673 0
		0.41399999999999998 0.47799999999999998 0
		0.38600000000000001 0.49299999999999999 0
		0.34900000000000003 0.502 0
		0.30299999999999999 0.502 0
		0.221 0.502 0
		0.16 0.47600000000000003 0
		0.11800000000000001 0.433 0
		0.074999999999999997 0.38800000000000001 0
		0.049000000000000002 0.32200000000000001 0
		0.049000000000000002 0.23500000000000001 0
		0.049000000000000002 0.086999999999999994 0
		0.126 -0.012 0
		0.25800000000000001 -0.012 0
		0.312 -0.012 0
		0.35899999999999999 0.012000000000000004 0
		0.41300000000000003 0.056000000000000001 0
		0.41300000000000003 0.039666666666666676 0
		0.41300000000000003 0.023333333333333341 0
		0.41300000000000003 0.0070000000000000019 0
		0.41566666666666663 0.0046666666666666671 0
		0.41833333333333339 0.0023333333333333335 0
		0.42099999999999999 0 0
		0.47500000000000003 0 0
		0.52900000000000003 0 0
		0.58299999999999996 0 0
		;
createNode transform -n "curve279" -p "Char_d_6";
createNode nurbsCurve -n "curveShape279" -p "curve279";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 19 1 no 3
		24 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 5 5 5 6 6 6 6.1760000000000002 6.1760000000000002
		 6.1760000000000002
		22
		0.41400000000000003 0.17000000000000001 0
		0.41400000000000003 0.14799999999999999 0
		0.41300000000000003 0.13100000000000001 0
		0.40700000000000003 0.114 0
		0.38700000000000001 0.062 0
		0.34300000000000003 0.042000000000000003 0
		0.29099999999999998 0.042000000000000003 0
		0.19900000000000001 0.042000000000000003 0
		0.153 0.13200000000000001 0
		0.153 0.247 0
		0.153 0.377 0
		0.20000000000000001 0.46700000000000003 0
		0.30199999999999999 0.46700000000000003 0
		0.34900000000000003 0.46700000000000003 0
		0.38700000000000001 0.44500000000000001 0
		0.40500000000000003 0.40400000000000003 0
		0.41300000000000003 0.38700000000000001 0
		0.41400000000000003 0.373 0
		0.41400000000000003 0.34600000000000003 0
		0.41399999999999998 0.28733333333333338 0
		0.41399999999999998 0.22866666666666668 0
		0.41399999999999998 0.17000000000000001 0
		;
createNode transform -n "Char_e_13" -p "rigs_faceboard_sidexside_txt";
	setAttr ".t" -type "double3" 1.325 0 0 ;
createNode transform -n "curve280" -p "Char_e_13";
createNode nurbsCurve -n "curveShape280" -p "curve280";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 25 1 no 3
		30 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 5 5 5 5.0339999999999998 5.0339999999999998 5.0339999999999998 6.0339999999999998 6.0339999999999998
		 6.0339999999999998 7.0339999999999998 7.0339999999999998 7.0339999999999998 7.3220000000000001 7.3220000000000001 7.3220000000000001
		28
		0.441 0.26300000000000001 0
		0.46200000000000002 0.26300000000000001 0
		0.48099999999999998 0.26800000000000002 0
		0.48099999999999998 0.30099999999999999 0
		0.48099999999999998 0.35999999999999999 0
		0.46199999999999997 0.502 0
		0.27900000000000003 0.502 0
		0.123 0.502 0
		0.049000000000000002 0.39100000000000001 0
		0.049000000000000002 0.24099999999999999 0
		0.049000000000000002 0.083000000000000018 0
		0.11699999999999999 -0.014 0
		0.28000000000000003 -0.012 0
		0.39100000000000001 -0.010999999999999999 0
		0.44800000000000001 0.050000000000000017 0
		0.47500000000000003 0.129 0
		0.46500000000000008 0.13433333333333333 0
		0.45500000000000002 0.13966666666666669 0
		0.44500000000000001 0.14499999999999999 0
		0.41699999999999998 0.087000000000000022 0
		0.379 0.039 0
		0.29999999999999999 0.039 0
		0.17599999999999999 0.039 0
		0.151 0.159 0
		0.153 0.26300000000000001 0
		0.24899999999999997 0.26300000000000001 0
		0.34499999999999997 0.26300000000000001 0
		0.441 0.26300000000000001 0
		;
createNode transform -n "curve281" -p "Char_e_13";
createNode nurbsCurve -n "curveShape281" -p "curve281";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 3.1890000000000001 3.1890000000000001 3.1890000000000001
		13
		0.154 0.30099999999999999 0
		0.154 0.34200000000000003 0
		0.16900000000000001 0.46700000000000003 0
		0.27300000000000002 0.46700000000000003 0
		0.36599999999999999 0.46700000000000003 0
		0.377 0.372 0
		0.377 0.33300000000000002 0
		0.377 0.314 0
		0.371 0.30099999999999999 0
		0.34300000000000003 0.30099999999999999 0
		0.27999999999999997 0.30099999999999999 0
		0.217 0.30099999999999999 0
		0.154 0.30099999999999999 0
		;
createNode transform -n "Char_x_1" -p "rigs_faceboard_sidexside_txt";
	setAttr ".t" -type "double3" 1.839 0 0 ;
createNode transform -n "curve282" -p "Char_x_1";
createNode nurbsCurve -n "curveShape282" -p "curve282";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 2 no 3
		5 0 0.48400000000000004 0.54200000000000004 1.026 1.0840000000000001
		5
		0.043000000000000003 0.221 0
		0.52700000000000002 0.221 0
		0.52700000000000002 0.27900000000000003 0
		0.043000000000000003 0.27900000000000003 0
		0.043000000000000003 0.221 0
		;
createNode transform -n "Char_s_5" -p "rigs_faceboard_sidexside_txt";
	setAttr ".t" -type "double3" 2.409 0 0 ;
createNode transform -n "curve283" -p "Char_s_5";
createNode nurbsCurve -n "curveShape283" -p "curve283";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 46 1 no 3
		51 0 0 0 0.11699999999999999 0.11699999999999999 0.11699999999999999 1.117 1.117 1.117 2.117 2.117
		 2.117 3.117 3.117 3.117 4.117 4.117 4.117 5.117 5.117 5.117 6.117 6.117
		 6.117 6.1459999999999999 6.1459999999999999 6.1459999999999999 6.2773811249761549 6.2773811249761549 6.2773811249761549 7.2773811249761549 7.2773811249761549 7.2773811249761549 8.2773811249761557 8.2773811249761557
		 8.2773811249761557 9.2773811249761557 9.2773811249761557 9.2773811249761557 10.277381124976156 10.277381124976156 10.277381124976156 11.277381124976156 11.277381124976156 11.277381124976156 12.277381124976156 12.277381124976156
		 12.277381124976156 12.306381124976156 12.306381124976156 12.306381124976156
		49
		0.36699999999999999 0.35100000000000003 0
		0.36699999999999999 0.39000000000000007 0
		0.36699999999999999 0.42900000000000005 0
		0.36699999999999999 0.46800000000000003 0
		0.33400000000000002 0.49199999999999999 0
		0.28300000000000003 0.502 0
		0.23800000000000002 0.502 0
		0.13 0.502 0
		0.057000000000000002 0.45100000000000001 0
		0.056000000000000001 0.35599999999999998 0
		0.057000000000000002 0.27300000000000002 0
		0.124 0.23600000000000002 0
		0.20700000000000002 0.21099999999999999 0
		0.252 0.19700000000000001 0
		0.315 0.17400000000000002 0
		0.315 0.106 0
		0.315 0.055 0
		0.27500000000000002 0.023 0
		0.222 0.023 0
		0.14100000000000001 0.023 0
		0.096000000000000002 0.082000000000000017 0
		0.075999999999999998 0.16700000000000001 0
		0.066333333333333341 0.16700000000000001 0
		0.056666666666666664 0.16700000000000001 0
		0.047000000000000007 0.16700000000000001 0
		0.050333333333333341 0.12333333333333334 0
		0.053666666666666668 0.079666666666666677 0
		0.057000000000000002 0.036000000000000004 0
		0.092999999999999999 0.0040000000000000036 0
		0.154 -0.012 0
		0.21299999999999999 -0.012 0
		0.33200000000000002 -0.012 0
		0.40000000000000002 0.051000000000000018 0
		0.40000000000000002 0.13600000000000001 0
		0.40000000000000002 0.224 0
		0.34600000000000003 0.26400000000000001 0
		0.24299999999999999 0.29599999999999999 0
		0.20200000000000001 0.309 0
		0.13600000000000001 0.33000000000000002 0
		0.13600000000000001 0.38600000000000001 0
		0.13700000000000001 0.438 0
		0.17599999999999999 0.46700000000000003 0
		0.22600000000000001 0.46700000000000003 0
		0.29699999999999999 0.46700000000000003 0
		0.33100000000000002 0.41200000000000003 0
		0.33800000000000002 0.35100000000000003 0
		0.34766666666666673 0.35100000000000003 0
		0.35733333333333334 0.35100000000000003 0
		0.36699999999999999 0.35100000000000003 0
		;
createNode transform -n "Char_i_13" -p "rigs_faceboard_sidexside_txt";
	setAttr ".t" -type "double3" 2.8449999999999998 0 0 ;
createNode transform -n "curve284" -p "Char_i_13";
createNode nurbsCurve -n "curveShape284" -p "curve284";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 34 1 no 3
		39 0 0 0 0.025000000000000022 0.025000000000000022 0.025000000000000022 0.063327535793473624 0.063327535793473624 0.063327535793473624 1.0633275357934737 1.0633275357934737
		 1.0633275357934737 1.3783275357934737 1.3783275357934737 1.3783275357934737 2.3783275357934737 2.3783275357934737 2.3783275357934737 2.4073275357934736 2.4073275357934736 2.4073275357934736 2.6513275357934738 2.6513275357934738
		 2.6513275357934738 2.6803275357934737 2.6803275357934737 2.6803275357934737 3.6803275357934737 3.6803275357934737 3.6803275357934737 4.0893275357934735 4.0893275357934735 4.0893275357934735 4.098547080250766 4.098547080250766
		 4.098547080250766 4.2575250661481849 4.2575250661481849 4.2575250661481849
		37
		0.036999999999999998 0.47700000000000004 0
		0.036999999999999998 0.46866666666666673 0
		0.036999999999999998 0.46033333333333343 0
		0.036999999999999998 0.45200000000000001 0
		0.049666666666666665 0.45033333333333331 0
		0.062333333333333331 0.44866666666666671 0
		0.074999999999999997 0.44700000000000001 0
		0.10100000000000001 0.443 0
		0.107 0.438 0
		0.107 0.40200000000000002 0
		0.107 0.29700000000000004 0
		0.107 0.19200000000000003 0
		0.107 0.087000000000000008 0
		0.107 0.036000000000000004 0
		0.10400000000000001 0.034000000000000002 0
		0.032000000000000001 0.029000000000000001 0
		0.032000000000000001 0.019333333333333334 0
		0.032000000000000001 0.0096666666666666672 0
		0.032000000000000001 0 0
		0.11333333333333336 0 0
		0.19466666666666668 0 0
		0.27600000000000002 0 0
		0.27600000000000002 0.0096666666666666672 0
		0.27600000000000002 0.019333333333333334 0
		0.27600000000000002 0.029000000000000001 0
		0.20500000000000002 0.034000000000000002 0
		0.20100000000000001 0.036000000000000004 0
		0.20100000000000001 0.087000000000000008 0
		0.20099999999999998 0.2233333333333333 0
		0.20099999999999998 0.35966666666666663 0
		0.20099999999999998 0.496 0
		0.19866666666666669 0.49800000000000005 0
		0.19633333333333333 0.5 0
		0.19400000000000003 0.502 0
		0.14166666666666666 0.4936666666666667 0
		0.089333333333333334 0.48533333333333339 0
		0.036999999999999998 0.47700000000000004 0
		;
createNode transform -n "curve285" -p "Char_i_13";
createNode nurbsCurve -n "curveShape285" -p "curve285";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.153 0.71499999999999997 0
		0.11700000000000001 0.71499999999999997 0
		0.091999999999999998 0.68900000000000006 0
		0.091999999999999998 0.65300000000000002 0
		0.091999999999999998 0.61799999999999999 0
		0.11700000000000001 0.59299999999999997 0
		0.153 0.59299999999999997 0
		0.19 0.59299999999999997 0
		0.21299999999999999 0.61799999999999999 0
		0.214 0.65300000000000002 0
		0.214 0.68900000000000006 0
		0.19 0.71499999999999997 0
		0.153 0.71499999999999997 0
		;
createNode transform -n "Char_d_7" -p "rigs_faceboard_sidexside_txt";
	setAttr ".t" -type "double3" 3.1359999999999997 0 0 ;
createNode transform -n "curve286" -p "Char_d_7";
createNode nurbsCurve -n "curveShape286" -p "curve286";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 49 1 no 3
		54 0 0 0 0.029000000000000001 0.029000000000000001 0.029000000000000001 1.0289999999999999 1.0289999999999999 1.0289999999999999 1.6779999999999999 1.6779999999999999
		 1.6779999999999999 1.6872195444572928 1.6872195444572928 1.6872195444572928 1.846197530354712 1.846197530354712 1.846197530354712 1.8711975303547119 1.8711975303547119 1.8711975303547119 1.9094074767037974 1.9094074767037974
		 1.9094074767037974 2.9094074767037972 2.9094074767037972 2.9094074767037972 3.0734074767037973 3.0734074767037973 3.0734074767037973 4.0734074767037978 4.0734074767037978 4.0734074767037978 5.0734074767037978 5.0734074767037978
		 5.0734074767037978 6.0734074767037978 6.0734074767037978 6.0734074767037978 7.0734074767037978 7.0734074767037978 7.0734074767037978 8.0734074767037978 8.0734074767037978 8.0734074767037978 8.1224074767037973 8.1224074767037973
		 8.1224074767037973 8.1330376225165324 8.1330376225165324 8.1330376225165324 8.2950376225165332 8.2950376225165332 8.2950376225165332
		52
		0.58299999999999996 0 0
		0.58299999999999996 0.0096666666666666672 0
		0.58299999999999996 0.019333333333333334 0
		0.58299999999999996 0.029000000000000001 0
		0.51200000000000001 0.034000000000000002 0
		0.50800000000000001 0.036000000000000004 0
		0.50800000000000001 0.087000000000000008 0
		0.50800000000000001 0.30333333333333329 0
		0.50800000000000001 0.51966666666666661 0
		0.50800000000000001 0.7360000000000001 0
		0.5056666666666666 0.73799999999999999 0
		0.5033333333333333 0.73999999999999988 0
		0.501 0.74199999999999999 0
		0.44866666666666671 0.73366666666666669 0
		0.39633333333333337 0.72533333333333339 0
		0.34400000000000003 0.71699999999999997 0
		0.34400000000000003 0.70866666666666644 0
		0.34400000000000003 0.70033333333333336 0
		0.34400000000000003 0.69200000000000006 0
		0.35666666666666669 0.69066666666666665 0
		0.36933333333333335 0.68933333333333335 0
		0.38199999999999995 0.68800000000000006 0
		0.40800000000000003 0.68500000000000005 0
		0.41400000000000003 0.68000000000000005 0
		0.41400000000000003 0.64200000000000002 0
		0.41399999999999998 0.58733333333333337 0
		0.41399999999999998 0.53266666666666673 0
		0.41399999999999998 0.47799999999999998 0
		0.38600000000000001 0.49299999999999999 0
		0.34900000000000003 0.502 0
		0.30299999999999999 0.502 0
		0.221 0.502 0
		0.16 0.47600000000000003 0
		0.11800000000000001 0.433 0
		0.074999999999999997 0.38800000000000001 0
		0.049000000000000002 0.32200000000000001 0
		0.049000000000000002 0.23500000000000001 0
		0.049000000000000002 0.086999999999999994 0
		0.126 -0.012 0
		0.25800000000000001 -0.012 0
		0.312 -0.012 0
		0.35899999999999999 0.012000000000000004 0
		0.41300000000000003 0.056000000000000001 0
		0.41300000000000003 0.039666666666666676 0
		0.41300000000000003 0.023333333333333341 0
		0.41300000000000003 0.0070000000000000019 0
		0.41566666666666663 0.0046666666666666671 0
		0.41833333333333339 0.0023333333333333335 0
		0.42099999999999999 0 0
		0.47500000000000003 0 0
		0.52900000000000003 0 0
		0.58299999999999996 0 0
		;
createNode transform -n "curve287" -p "Char_d_7";
createNode nurbsCurve -n "curveShape287" -p "curve287";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 19 1 no 3
		24 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 5 5 5 6 6 6 6.1760000000000002 6.1760000000000002
		 6.1760000000000002
		22
		0.41400000000000003 0.17000000000000001 0
		0.41400000000000003 0.14799999999999999 0
		0.41300000000000003 0.13100000000000001 0
		0.40700000000000003 0.114 0
		0.38700000000000001 0.062 0
		0.34300000000000003 0.042000000000000003 0
		0.29099999999999998 0.042000000000000003 0
		0.19900000000000001 0.042000000000000003 0
		0.153 0.13200000000000001 0
		0.153 0.247 0
		0.153 0.377 0
		0.20000000000000001 0.46700000000000003 0
		0.30199999999999999 0.46700000000000003 0
		0.34900000000000003 0.46700000000000003 0
		0.38700000000000001 0.44500000000000001 0
		0.40500000000000003 0.40400000000000003 0
		0.41300000000000003 0.38700000000000001 0
		0.41400000000000003 0.373 0
		0.41400000000000003 0.34600000000000003 0
		0.41399999999999998 0.28733333333333338 0
		0.41399999999999998 0.22866666666666668 0
		0.41399999999999998 0.17000000000000001 0
		;
createNode transform -n "Char_e_14" -p "rigs_faceboard_sidexside_txt";
	setAttr ".t" -type "double3" 3.7339999999999995 0 0 ;
createNode transform -n "curve288" -p "Char_e_14";
createNode nurbsCurve -n "curveShape288" -p "curve288";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 25 1 no 3
		30 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 5 5 5 5.0339999999999998 5.0339999999999998 5.0339999999999998 6.0339999999999998 6.0339999999999998
		 6.0339999999999998 7.0339999999999998 7.0339999999999998 7.0339999999999998 7.3220000000000001 7.3220000000000001 7.3220000000000001
		28
		0.441 0.26300000000000001 0
		0.46200000000000002 0.26300000000000001 0
		0.48099999999999998 0.26800000000000002 0
		0.48099999999999998 0.30099999999999999 0
		0.48099999999999998 0.35999999999999999 0
		0.46199999999999997 0.502 0
		0.27900000000000003 0.502 0
		0.123 0.502 0
		0.049000000000000002 0.39100000000000001 0
		0.049000000000000002 0.24099999999999999 0
		0.049000000000000002 0.083000000000000018 0
		0.11699999999999999 -0.014 0
		0.28000000000000003 -0.012 0
		0.39100000000000001 -0.010999999999999999 0
		0.44800000000000001 0.050000000000000017 0
		0.47500000000000003 0.129 0
		0.46500000000000008 0.13433333333333333 0
		0.45500000000000002 0.13966666666666669 0
		0.44500000000000001 0.14499999999999999 0
		0.41699999999999998 0.087000000000000022 0
		0.379 0.039 0
		0.29999999999999999 0.039 0
		0.17599999999999999 0.039 0
		0.151 0.159 0
		0.153 0.26300000000000001 0
		0.24899999999999997 0.26300000000000001 0
		0.34499999999999997 0.26300000000000001 0
		0.441 0.26300000000000001 0
		;
createNode transform -n "curve289" -p "Char_e_14";
createNode nurbsCurve -n "curveShape289" -p "curve289";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 3.1890000000000001 3.1890000000000001 3.1890000000000001
		13
		0.154 0.30099999999999999 0
		0.154 0.34200000000000003 0
		0.16900000000000001 0.46700000000000003 0
		0.27300000000000002 0.46700000000000003 0
		0.36599999999999999 0.46700000000000003 0
		0.377 0.372 0
		0.377 0.33300000000000002 0
		0.377 0.314 0
		0.371 0.30099999999999999 0
		0.34300000000000003 0.30099999999999999 0
		0.27999999999999997 0.30099999999999999 0
		0.217 0.30099999999999999 0
		0.154 0.30099999999999999 0
		;
createNode transform -n "ctrls_faceboard_tongue_upDwn_offset" -p "grp_faceboard_tongue";
	setAttr ".t" -type "double3" 0.43672505141709111 0.52823653886164124 0 ;
	setAttr ".s" -type "double3" 7.4362954918585169 7.4362954918585169 7.4362954918585169 ;
createNode transform -n "ctrl_faceboard_tongue_UpDwn" -p "ctrls_faceboard_tongue_upDwn_offset";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -45 -45 -90 ;
	setAttr ".mxrl" -type "double3" 45 45 90 ;
	setAttr ".mrze" yes;
	setAttr ".xrze" yes;
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'rotateZ'\np5\nF0\nssS'neutralPose'\np6\n(dp7\ng5\nF0\nss.";
createNode nurbsCurve -n "ctrl_faceboard_tongue_UpDwnShape" -p "ctrl_faceboard_tongue_UpDwn";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 9 10 11 12 13 14 15
		7
		0.011263342079392382 0.009155689702139232 -3.9372537350757616e-26
		0.011736317615068109 0.0078310890322517302 -3.9372537350757616e-26
		0.0086044903479219163 0.0064193533857225746 -3.9372537350757616e-26
		0.016062222920566187 0.0022446875745162401 -3.9372537350757616e-26
		0.017999972149360305 0.010654560325310036 -3.9372537350757616e-26
		0.014868144882214229 0.0092428246787808997 -3.9372537350757616e-26
		0.014259572853674672 0.010307938666071523 -3.9372537350757616e-26
		;
createNode nurbsCurve -n "polyToCurveShape1" -p "ctrl_faceboard_tongue_UpDwn";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 0 0 0 1 2 3 4 5 6 7 8
		 8 8
		11
		0.013566735040357833 -0.010769204100485263 -2.229616018049466e-18
		0.012461669693174835 -0.012586978661208248 -2.7842363784151999e-18
		0.006497000324173741 -0.01764721282855174 -3.8934770991466422e-18
		-0.0050979397326724931 -0.017907958266036583 -3.842045209769485e-18
		-0.015136054731069002 -0.011178194399871378 -2.3839138685449897e-18
		-0.018632193373150665 -0.00031669024747001844 2.1092438398765194e-25
		-0.015520729494640874 0.010558950409610638 2.3839127886122315e-18
		-0.0062793744912091245 0.017708595292375274 3.8420442704529912e-18
		0.0053040665648253632 0.018030122078371028 3.8934770991466422e-18
		0.012161904603117904 0.013420146806950421 2.7842366896458256e-18
		0.014259572853674679 0.010307938666071541 2.2296164848954134e-18
		;
createNode nurbsCurve -n "ctrl_faceboard_tongue_UpDwnShape1" -p "ctrl_faceboard_tongue_UpDwn";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 9 10 11 12 13 14 15
		7
		0.013566735040357833 -0.010769204100485263 -3.9372537350757616e-26
		0.01422998670854817 -0.0093823643256085824 -3.9372537350757616e-26
		0.017299702122560202 -0.010924501428430015 -3.9372537350757616e-26
		0.015841623870984901 -0.0025031228255753542 -3.9372537350757616e-26
		0.0080905558805242257 -0.0062980901199657345 -3.9372537350757616e-26
		0.011160271294536199 -0.0078402272227871585 -3.9372537350757616e-26
		0.010118537671564462 -0.010047366023375815 -3.9372537350757616e-26
		;
createNode nurbsCurve -n "polyToCurveShape2" -p "ctrl_faceboard_tongue_UpDwn";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 0 0 0 1 2 3 4 5 6 7 8
		 8 8
		11
		0.010118537671564407 -0.010047366023375829 -1.8144944388846683e-18
		0.00953418641428996 -0.010826590125530645 -2.2658526778949112e-18
		0.0058319872768549334 -0.014776703599437203 -3.1685691559153731e-18
		-0.0047058405705931918 -0.015142330844529255 -3.1267131248765287e-18
		-0.012858300482926887 -0.0090438395385191734 -1.9400643080412923e-18
		-0.015558814426413499 -0.00018995363631199612 1.7165337828241142e-25
		-0.013106193932910204 0.0086608033244514378 1.9400634291760682e-18
		-0.0054892516427829299 0.014710863883401221 3.1267123604468961e-18
		0.0036100470282357986 0.015077136014410339 3.1685691559153738e-18
		0.0097826273441004256 0.011666946073511378 2.2658529311789883e-18
		0.011263342079392407 0.009155689702139258 1.8144948188107946e-18
		;
createNode transform -n "ctrls_faceboard_tongue_upDwn_frame" -p "ctrls_faceboard_tongue_upDwn_offset";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".s" -type "double3" 0.13447555992023588 0.13447555992023588 0.13447555992023588 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 1.1102230246251565e-16 -0.034176928801243484 0 ;
	setAttr ".sp" -type "double3" 3.0959799273665922e-16 -0.25414974157025494 0 ;
	setAttr ".spt" -type "double3" -1.9857569027414356e-16 0.21997281276901126 0 ;
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nsS'translateY'\np6\nF0\nsS'translateZ'\np7\nF0\nsS'scaleX'\np8\nF0.13447555992023588\nsS'scaleY'\np9\nF0.13447555992023588\nsS'scaleZ'\np10\nF0.13447555992023588\nsS'rotateX'\np11\nF0\nsS'rotateY'\np12\nF0\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF0\nsg6\nF0\nsg7\nF0\nsg8\nF0.13447555992023588\nsg9\nF0.13447555992023588\nsg10\nF0.13447555992023588\nsg11\nF0\nsg12\nF0\nsg13\nF0\nss.";
createNode nurbsCurve -n "ctrls_faceboard_tongue_upDwn_frameShape" -p "ctrls_faceboard_tongue_upDwn_frame";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.26302647880734953 0.26995420652220431 0
		0.26302647880734931 0.26995420652220431 0
		0.26302647880734931 -0.2560987510924943 0
		-0.26302647880734953 -0.2560987510924943 0
		-0.26302647880734953 0.26995420652220431 0
		;
createNode transform -n "rigs_faceboard_upDwn_txt" -p "ctrls_faceboard_tongue_upDwn_offset";
	setAttr ".tmp" yes;
	setAttr ".t" -type "double3" -0.049165395128142386 -0.071034904333746651 0 ;
	setAttr ".s" -type "double3" 0.024 0.024 0.024 ;
createNode transform -n "Char_u_9" -p "rigs_faceboard_upDwn_txt";
createNode transform -n "curve324" -p "Char_u_9";
createNode nurbsCurve -n "curveShape324" -p "curve324";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 67 1 no 3
		72 0 0 0 0.029000000000000001 0.029000000000000001 0.029000000000000001 1.0289999999999999 1.0289999999999999 1.0289999999999999 1.4379999999999999 1.4379999999999999
		 1.4379999999999999 1.4472195444572928 1.4472195444572928 1.4472195444572928 1.606197530354712 1.606197530354712 1.606197530354712 1.6311975303547119 1.6311975303547119 1.6311975303547119 1.6695250661481855 1.6695250661481855
		 1.6695250661481855 2.6695250661481857 2.6695250661481857 2.6695250661481857 2.8945250661481858 2.8945250661481858 2.8945250661481858 3.8945250661481858 3.8945250661481858 3.8945250661481858 4.8945250661481854 4.8945250661481854
		 4.8945250661481854 5.8945250661481854 5.8945250661481854 5.8945250661481854 6.2345250661481852 6.2345250661481852 6.2345250661481852 6.2437446106054786 6.2437446106054786 6.2437446106054786 6.4027225965028975 6.4027225965028975
		 6.4027225965028975 6.4277225965028979 6.4277225965028979 6.4277225965028979 6.4660501322963713 6.4660501322963713 6.4660501322963713 7.4660501322963713 7.4660501322963713 7.4660501322963713 7.7300501322963715 7.7300501322963715
		 7.7300501322963715 8.7300501322963715 8.7300501322963715 8.7300501322963715 9.7300501322963715 9.7300501322963715 9.7300501322963715 9.790877757599354 9.790877757599354 9.790877757599354 9.9508777575993541 9.9508777575993541
		 9.9508777575993541
		70
		0.59099999999999997 0 0
		0.59099999999999997 0.0096666666666666672 0
		0.59099999999999997 0.019333333333333334 0
		0.59099999999999997 0.029000000000000001 0
		0.52200000000000002 0.034000000000000002 0
		0.51600000000000001 0.036000000000000004 0
		0.51600000000000001 0.087000000000000008 0
		0.51600000000000001 0.2233333333333333 0
		0.51600000000000001 0.35966666666666663 0
		0.51600000000000001 0.496 0
		0.5136666666666666 0.49800000000000005 0
		0.51133333333333331 0.5 0
		0.50900000000000001 0.502 0
		0.45666666666666661 0.4936666666666667 0
		0.40433333333333327 0.48533333333333339 0
		0.35200000000000004 0.47700000000000004 0
		0.35200000000000004 0.46866666666666673 0
		0.35200000000000004 0.46033333333333343 0
		0.35200000000000004 0.45200000000000001 0
		0.36466666666666664 0.45033333333333331 0
		0.37733333333333335 0.44866666666666671 0
		0.38999999999999996 0.44700000000000006 0
		0.41600000000000004 0.443 0
		0.42199999999999999 0.438 0
		0.42199999999999999 0.40200000000000002 0
		0.42199999999999999 0.32700000000000001 0
		0.42199999999999999 0.252 0
		0.42199999999999999 0.17699999999999996 0
		0.42199999999999999 0.14899999999999999 0
		0.41899999999999998 0.127 0
		0.41400000000000003 0.11700000000000001 0
		0.39100000000000001 0.071000000000000008 0
		0.34300000000000003 0.042000000000000003 0
		0.29099999999999998 0.042000000000000003 0
		0.23300000000000001 0.042000000000000003 0
		0.19 0.078000000000000014 0
		0.19 0.156 0
		0.19000000000000003 0.26933333333333331 0
		0.19000000000000003 0.38266666666666671 0
		0.19000000000000003 0.496 0
		0.18766666666666665 0.49800000000000005 0
		0.18533333333333335 0.5 0
		0.18299999999999997 0.502 0
		0.13066666666666668 0.4936666666666667 0
		0.078333333333333338 0.48533333333333339 0
		0.026000000000000006 0.47700000000000004 0
		0.026000000000000006 0.46866666666666673 0
		0.026000000000000006 0.46033333333333343 0
		0.026000000000000006 0.45200000000000001 0
		0.038666666666666676 0.45033333333333331 0
		0.051333333333333342 0.44866666666666671 0
		0.064000000000000001 0.44700000000000001 0
		0.089999999999999997 0.443 0
		0.096000000000000002 0.438 0
		0.096000000000000002 0.40200000000000002 0
		0.096000000000000016 0.314 0
		0.096000000000000016 0.22600000000000001 0
		0.096000000000000016 0.13800000000000001 0
		0.096000000000000002 0.022999999999999993 0
		0.16400000000000001 -0.012 0
		0.23800000000000002 -0.012 0
		0.32300000000000001 -0.012 0
		0.39200000000000002 0.045999999999999999 0
		0.42099999999999999 0.059999999999999998 0
		0.42433333333333328 0.040000000000000001 0
		0.42766666666666664 0.02 0
		0.43099999999999999 0 0
		0.48433333333333334 0 0
		0.53766666666666663 0 0
		0.59099999999999997 0 0
		;
createNode transform -n "Char_p_11" -p "rigs_faceboard_upDwn_txt";
	setAttr ".t" -type "double3" 0.606 0 0 ;
createNode transform -n "curve325" -p "Char_p_11";
createNode nurbsCurve -n "curveShape325" -p "curve325";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 19 1 no 3
		24 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 5 5 5 6 6 6 6.1639999999999997 6.1639999999999997
		 6.1639999999999997
		22
		0.19400000000000001 0.32100000000000001 0
		0.19400000000000001 0.34600000000000003 0
		0.19800000000000001 0.35999999999999999 0
		0.20700000000000002 0.378 0
		0.23000000000000001 0.42399999999999999 0
		0.27300000000000002 0.44800000000000001 0
		0.32600000000000001 0.44800000000000001 0
		0.36599999999999999 0.44800000000000001 0
		0.45500000000000002 0.42199999999999999 0
		0.45500000000000002 0.25 0
		0.45500000000000002 0.10300000000000004 0
		0.40900000000000003 0.023 0
		0.309 0.023 0
		0.25700000000000001 0.023 0
		0.217 0.050000000000000003 0
		0.20100000000000001 0.096000000000000002 0
		0.19500000000000001 0.114 0
		0.19400000000000001 0.13400000000000001 0
		0.19400000000000001 0.157 0
		0.19400000000000003 0.21166666666666667 0
		0.19400000000000003 0.26633333333333331 0
		0.19400000000000003 0.32100000000000001 0
		;
createNode transform -n "curve326" -p "Char_p_11";
createNode nurbsCurve -n "curveShape326" -p "curve326";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 46 1 no 3
		51 0 0 0 0.025000000000000022 0.025000000000000022 0.025000000000000022 0.063327535793473638 0.063327535793473638 0.063327535793473638 1.0633275357934737 1.0633275357934737
		 1.0633275357934737 1.6083275357934737 1.6083275357934737 1.6083275357934737 2.6083275357934737 2.6083275357934737 2.6083275357934737 2.6373275357934736 2.6373275357934736 2.6373275357934736 2.8963275357934735 2.8963275357934735
		 2.8963275357934735 2.9253275357934734 2.9253275357934734 2.9253275357934734 3.9253275357934734 3.9253275357934734 3.9253275357934734 4.0793275357934737 4.0793275357934737 4.0793275357934737 5.0793275357934737 5.0793275357934737
		 5.0793275357934737 6.0793275357934737 6.0793275357934737 6.0793275357934737 7.0793275357934737 7.0793275357934737 7.0793275357934737 8.0793275357934746 8.0793275357934746 8.0793275357934746 8.1544607508185223 8.1544607508185223
		 8.1544607508185223 8.3075162962914 8.3075162962914 8.3075162962914
		49
		0.029999999999999999 0.47700000000000004 0
		0.029999999999999999 0.46866666666666673 0
		0.029999999999999999 0.46033333333333343 0
		0.029999999999999999 0.45200000000000001 0
		0.042666666666666665 0.45033333333333331 0
		0.055333333333333339 0.44866666666666671 0
		0.068000000000000005 0.44700000000000001 0
		0.094 0.443 0
		0.10000000000000001 0.438 0
		0.10000000000000001 0.40200000000000002 0
		0.10000000000000002 0.22033333333333335 0
		0.10000000000000002 0.038666666666666662 0
		0.10000000000000002 -0.14300000000000002 0
		0.10000000000000001 -0.19400000000000001 0
		0.095000000000000001 -0.19600000000000001 0
		0.025000000000000001 -0.20100000000000001 0
		0.025000000000000005 -0.2106666666666667 0
		0.025000000000000005 -0.22033333333333338 0
		0.025000000000000005 -0.23000000000000001 0
		0.11133333333333335 -0.23000000000000001 0
		0.19766666666666668 -0.23000000000000001 0
		0.28400000000000003 -0.23000000000000001 0
		0.28400000000000003 -0.22033333333333338 0
		0.28400000000000003 -0.2106666666666667 0
		0.28400000000000003 -0.20099999999999998 0
		0.20000000000000001 -0.19600000000000001 0
		0.19400000000000001 -0.19400000000000001 0
		0.19400000000000001 -0.14300000000000002 0
		0.19400000000000003 -0.091666666666666674 0
		0.19400000000000003 -0.040333333333333339 0
		0.19400000000000003 0.011000000000000001 0
		0.215 -0.0010000000000000009 0
		0.26200000000000001 -0.012 0
		0.308 -0.012 0
		0.443 -0.012 0
		0.55900000000000005 0.049999999999999989 0
		0.55900000000000005 0.25600000000000001 0
		0.55900000000000005 0.32700000000000001 0
		0.54600000000000004 0.502 0
		0.36399999999999999 0.502 0
		0.29099999999999998 0.502 0
		0.23300000000000001 0.45300000000000001 0
		0.19400000000000001 0.42799999999999999 0
		0.18966666666666665 0.45266666666666672 0
		0.18533333333333335 0.47733333333333339 0
		0.18099999999999997 0.502 0
		0.13066666666666668 0.4936666666666667 0
		0.08033333333333334 0.48533333333333334 0
		0.030000000000000002 0.47700000000000009 0
		;
createNode transform -n "Char_x_4" -p "rigs_faceboard_upDwn_txt";
	setAttr ".t" -type "double3" 1.214 0 0 ;
createNode transform -n "curve327" -p "Char_x_4";
createNode nurbsCurve -n "curveShape327" -p "curve327";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 2 no 3
		5 0 0.48400000000000004 0.54200000000000004 1.026 1.0840000000000001
		5
		0.043000000000000003 0.221 0
		0.52700000000000002 0.221 0
		0.52700000000000002 0.27900000000000003 0
		0.043000000000000003 0.27900000000000003 0
		0.043000000000000003 0.221 0
		;
createNode transform -n "Char_d_8" -p "rigs_faceboard_upDwn_txt";
	setAttr ".t" -type "double3" 1.784 0 0 ;
createNode transform -n "curve328" -p "Char_d_8";
createNode nurbsCurve -n "curveShape328" -p "curve328";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 49 1 no 3
		54 0 0 0 0.029000000000000001 0.029000000000000001 0.029000000000000001 1.0289999999999999 1.0289999999999999 1.0289999999999999 1.6779999999999999 1.6779999999999999
		 1.6779999999999999 1.6872195444572928 1.6872195444572928 1.6872195444572928 1.846197530354712 1.846197530354712 1.846197530354712 1.8711975303547119 1.8711975303547119 1.8711975303547119 1.9094074767037974 1.9094074767037974
		 1.9094074767037974 2.9094074767037972 2.9094074767037972 2.9094074767037972 3.0734074767037973 3.0734074767037973 3.0734074767037973 4.0734074767037978 4.0734074767037978 4.0734074767037978 5.0734074767037978 5.0734074767037978
		 5.0734074767037978 6.0734074767037978 6.0734074767037978 6.0734074767037978 7.0734074767037978 7.0734074767037978 7.0734074767037978 8.0734074767037978 8.0734074767037978 8.0734074767037978 8.1224074767037973 8.1224074767037973
		 8.1224074767037973 8.1330376225165324 8.1330376225165324 8.1330376225165324 8.2950376225165332 8.2950376225165332 8.2950376225165332
		52
		0.58299999999999996 0 0
		0.58299999999999996 0.0096666666666666672 0
		0.58299999999999996 0.019333333333333334 0
		0.58299999999999996 0.029000000000000001 0
		0.51200000000000001 0.034000000000000002 0
		0.50800000000000001 0.036000000000000004 0
		0.50800000000000001 0.087000000000000008 0
		0.50800000000000001 0.30333333333333329 0
		0.50800000000000001 0.51966666666666661 0
		0.50800000000000001 0.7360000000000001 0
		0.5056666666666666 0.73799999999999999 0
		0.5033333333333333 0.73999999999999988 0
		0.501 0.74199999999999999 0
		0.44866666666666671 0.73366666666666669 0
		0.39633333333333337 0.72533333333333339 0
		0.34400000000000003 0.71699999999999997 0
		0.34400000000000003 0.70866666666666644 0
		0.34400000000000003 0.70033333333333336 0
		0.34400000000000003 0.69200000000000006 0
		0.35666666666666669 0.69066666666666665 0
		0.36933333333333335 0.68933333333333335 0
		0.38199999999999995 0.68800000000000006 0
		0.40800000000000003 0.68500000000000005 0
		0.41400000000000003 0.68000000000000005 0
		0.41400000000000003 0.64200000000000002 0
		0.41399999999999998 0.58733333333333337 0
		0.41399999999999998 0.53266666666666673 0
		0.41399999999999998 0.47799999999999998 0
		0.38600000000000001 0.49299999999999999 0
		0.34900000000000003 0.502 0
		0.30299999999999999 0.502 0
		0.221 0.502 0
		0.16 0.47600000000000003 0
		0.11800000000000001 0.433 0
		0.074999999999999997 0.38800000000000001 0
		0.049000000000000002 0.32200000000000001 0
		0.049000000000000002 0.23500000000000001 0
		0.049000000000000002 0.086999999999999994 0
		0.126 -0.012 0
		0.25800000000000001 -0.012 0
		0.312 -0.012 0
		0.35899999999999999 0.012000000000000004 0
		0.41300000000000003 0.056000000000000001 0
		0.41300000000000003 0.039666666666666676 0
		0.41300000000000003 0.023333333333333341 0
		0.41300000000000003 0.0070000000000000019 0
		0.41566666666666663 0.0046666666666666671 0
		0.41833333333333339 0.0023333333333333335 0
		0.42099999999999999 0 0
		0.47500000000000003 0 0
		0.52900000000000003 0 0
		0.58299999999999996 0 0
		;
createNode transform -n "curve329" -p "Char_d_8";
createNode nurbsCurve -n "curveShape329" -p "curve329";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 19 1 no 3
		24 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 5 5 5 6 6 6 6.1760000000000002 6.1760000000000002
		 6.1760000000000002
		22
		0.41400000000000003 0.17000000000000001 0
		0.41400000000000003 0.14799999999999999 0
		0.41300000000000003 0.13100000000000001 0
		0.40700000000000003 0.114 0
		0.38700000000000001 0.062 0
		0.34300000000000003 0.042000000000000003 0
		0.29099999999999998 0.042000000000000003 0
		0.19900000000000001 0.042000000000000003 0
		0.153 0.13200000000000001 0
		0.153 0.247 0
		0.153 0.377 0
		0.20000000000000001 0.46700000000000003 0
		0.30199999999999999 0.46700000000000003 0
		0.34900000000000003 0.46700000000000003 0
		0.38700000000000001 0.44500000000000001 0
		0.40500000000000003 0.40400000000000003 0
		0.41300000000000003 0.38700000000000001 0
		0.41400000000000003 0.373 0
		0.41400000000000003 0.34600000000000003 0
		0.41399999999999998 0.28733333333333338 0
		0.41399999999999998 0.22866666666666668 0
		0.41399999999999998 0.17000000000000001 0
		;
createNode transform -n "Char_o_13" -p "rigs_faceboard_upDwn_txt";
	setAttr ".t" -type "double3" 2.382 0 0 ;
createNode transform -n "curve330" -p "Char_o_13";
createNode nurbsCurve -n "curveShape330" -p "curve330";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.28800000000000003 0.502 0
		0.128 0.502 0
		0.049000000000000002 0.40700000000000003 0
		0.049000000000000002 0.245 0
		0.049000000000000002 0.083000000000000018 0
		0.128 -0.012 0
		0.28800000000000003 -0.012 0
		0.45000000000000001 -0.012 0
		0.52800000000000002 0.083000000000000018 0
		0.52800000000000002 0.245 0
		0.52800000000000002 0.40700000000000003 0
		0.45000000000000001 0.502 0
		0.28800000000000003 0.502 0
		;
createNode transform -n "curve331" -p "Char_o_13";
createNode nurbsCurve -n "curveShape331" -p "curve331";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.153 0.245 0
		0.153 0.38300000000000001 0
		0.19700000000000001 0.46700000000000003 0
		0.28800000000000003 0.46700000000000003 0
		0.38100000000000001 0.46700000000000003 0
		0.42399999999999999 0.38300000000000001 0
		0.42399999999999999 0.245 0
		0.42399999999999999 0.10699999999999998 0
		0.38100000000000001 0.023 0
		0.28800000000000003 0.023 0
		0.19700000000000001 0.023 0
		0.153 0.10699999999999998 0
		0.153 0.245 0
		;
createNode transform -n "Char_w_12" -p "rigs_faceboard_upDwn_txt";
	setAttr ".t" -type "double3" 2.959 0 0 ;
createNode transform -n "curve332" -p "Char_w_12";
createNode nurbsCurve -n "curveShape332" -p "curve332";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 76 1 no 3
		81 0 0 0 0.02899999999999997 0.02899999999999997 0.02899999999999997 1.0289999999999999 1.0289999999999999 1.0289999999999999 2.0289999999999999 2.0289999999999999
		 2.0289999999999999 2.105 2.105 2.105 2.5038546101024783 2.5038546101024783 2.5038546101024783 2.5068546101024785 2.5068546101024785 2.5068546101024785 3.5068546101024785 3.5068546101024785
		 3.5068546101024785 3.5828546101024785 3.5828546101024785 3.5828546101024785 4.5828546101024781 4.5828546101024781 4.5828546101024781 5.5828546101024781 5.5828546101024781 5.5828546101024781 5.611854610102478 5.611854610102478
		 5.611854610102478 5.8088546101024781 5.8088546101024781 5.8088546101024781 5.837854610102478 5.837854610102478 5.837854610102478 5.8950734881061582 5.8950734881061582 5.8950734881061582 6.8950734881061582 6.8950734881061582
		 6.8950734881061582 7.8950734881061582 7.8950734881061582 7.8950734881061582 7.8970734881061579 7.8970734881061579 7.8970734881061579 8.8970734881061588 8.8970734881061588 8.8970734881061588 8.9730734881061593 8.9730734881061593
		 8.9730734881061593 9.3790008215046381 9.3790008215046381 9.3790008215046381 9.3810008215046388 9.3810008215046388 9.3810008215046388 10.381000821504639 10.381000821504639 10.381000821504639 11.381000821504639 11.381000821504639
		 11.381000821504639 11.416129157645139 11.416129157645139 11.416129157645139 11.445129157645139 11.445129157645139 11.445129157645139 11.65612915764514 11.65612915764514 11.65612915764514
		79
		-0.002 0.48999999999999999 0
		-0.002 0.48033333333333333 0
		-0.002 0.47066666666666673 0
		-0.002 0.46100000000000002 0
		0.038999999999999993 0.45900000000000002 0
		0.052000000000000005 0.45600000000000002 0
		0.064000000000000001 0.41799999999999998 0
		0.106 0.28600000000000003 0
		0.14999999999999999 0.15099999999999997 0
		0.192 0 0
		0.21733333333333335 0 0
		0.24266666666666667 0 0
		0.26800000000000002 0 0
		0.3073333333333334 0.12700000000000003 0
		0.34666666666666668 0.25400000000000006 0
		0.38599999999999995 0.38100000000000006 0
		0.38700000000000001 0.38100000000000001 0
		0.38800000000000007 0.38100000000000001 0
		0.38900000000000001 0.38100000000000001 0
		0.43099999999999999 0.254 0
		0.47200000000000003 0.127 0
		0.51200000000000001 0 0
		0.53733333333333333 0 0
		0.56266666666666676 0 0
		0.58799999999999997 0 0
		0.63 0.14699999999999996 0
		0.68900000000000006 0.32500000000000001 0
		0.71399999999999997 0.40300000000000002 0
		0.73099999999999998 0.45400000000000001 0
		0.74199999999999999 0.45800000000000002 0
		0.79200000000000004 0.46100000000000002 0
		0.79200000000000015 0.47066666666666673 0
		0.79200000000000015 0.48033333333333333 0
		0.79200000000000015 0.48999999999999999 0
		0.72633333333333328 0.48999999999999999 0
		0.66066666666666662 0.48999999999999999 0
		0.59499999999999997 0.48999999999999999 0
		0.59499999999999997 0.48033333333333333 0
		0.59499999999999997 0.47066666666666673 0
		0.59499999999999997 0.46100000000000002 0
		0.61399999999999999 0.45933333333333337 0
		0.63300000000000001 0.45766666666666667 0
		0.65200000000000002 0.45600000000000002 0
		0.66900000000000004 0.45400000000000001 0
		0.67000000000000004 0.441 0
		0.66600000000000004 0.42299999999999999 0
		0.65300000000000002 0.36399999999999999 0
		0.60699999999999998 0.20200000000000001 0
		0.57600000000000007 0.088999999999999996 0
		0.57533333333333347 0.08900000000000001 0
		0.57466666666666677 0.08900000000000001 0
		0.57400000000000007 0.08900000000000001 0
		0.53100000000000003 0.219 0
		0.48999999999999999 0.34800000000000003 0
		0.44900000000000001 0.47800000000000004 0
		0.42366666666666669 0.47799999999999998 0
		0.39833333333333337 0.47799999999999998 0
		0.373 0.47799999999999998 0
		0.33433333333333337 0.34833333333333338 0
		0.29566666666666669 0.21866666666666668 0
		0.25700000000000001 0.08900000000000001 0
		0.25633333333333336 0.08900000000000001 0
		0.25566666666666665 0.08900000000000001 0
		0.255 0.08900000000000001 0
		0.219 0.20400000000000001 0
		0.188 0.32000000000000001 0
		0.156 0.42799999999999999 0
		0.14999999999999999 0.44700000000000001 0
		0.156 0.45600000000000002 0
		0.17400000000000002 0.45800000000000002 0
		0.18566666666666667 0.45900000000000007 0
		0.19733333333333333 0.46000000000000002 0
		0.20899999999999999 0.46100000000000008 0
		0.20899999999999999 0.47066666666666673 0
		0.20899999999999999 0.48033333333333333 0
		0.20899999999999999 0.48999999999999999 0
		0.13866666666666666 0.48999999999999999 0
		0.068333333333333329 0.48999999999999999 0
		-0.002 0.48999999999999999 0
		;
createNode transform -n "Char_n_13" -p "rigs_faceboard_upDwn_txt";
	setAttr ".t" -type "double3" 3.7270000000000003 0 0 ;
createNode transform -n "curve333" -p "Char_n_13";
createNode nurbsCurve -n "curveShape333" -p "curve333";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 70 1 no 3
		75 0 0 0 1 1 1 2 2 2 2.0772787163454467 2.0772787163454467
		 2.0772787163454467 2.2283614751235414 2.2283614751235414 2.2283614751235414 2.2533614751235413 2.2533614751235413 2.2533614751235413 2.2916890109170152 2.2916890109170152 2.2916890109170152 3.2916890109170152 3.2916890109170152
		 3.2916890109170152 3.6066890109170151 3.6066890109170151 3.6066890109170151 4.6066890109170151 4.6066890109170151 4.6066890109170151 4.635689010917015 4.635689010917015 4.635689010917015 4.8796890109170148 4.8796890109170148
		 4.8796890109170148 4.9086890109170147 4.9086890109170147 4.9086890109170147 5.9086890109170147 5.9086890109170147 5.9086890109170147 6.1426890109170147 6.1426890109170147 6.1426890109170147 7.1426890109170147 7.1426890109170147
		 7.1426890109170147 8.1426890109170138 8.1426890109170138 8.1426890109170138 9.1426890109170138 9.1426890109170138 9.1426890109170138 9.3786890109170145 9.3786890109170145 9.3786890109170145 10.378689010917014 10.378689010917014
		 10.378689010917014 10.407689010917014 10.407689010917014 10.407689010917014 10.651689010917014 10.651689010917014 10.651689010917014 10.680689010917014 10.680689010917014 10.680689010917014 11.680689010917014 11.680689010917014
		 11.680689010917014 11.936689010917014 11.936689010917014 11.936689010917014
		73
		0.52900000000000003 0.34300000000000003 0
		0.52900000000000003 0.44400000000000001 0
		0.47400000000000003 0.502 0
		0.38200000000000001 0.502 0
		0.308 0.502 0
		0.26200000000000001 0.46600000000000003 0
		0.20000000000000001 0.42599999999999999 0
		0.19533333333333336 0.45133333333333336 0
		0.19066666666666668 0.47666666666666674 0
		0.18600000000000003 0.502 0
		0.13633333333333333 0.4936666666666667 0
		0.08666666666666667 0.48533333333333339 0
		0.036999999999999998 0.47700000000000004 0
		0.036999999999999998 0.46866666666666673 0
		0.036999999999999998 0.46033333333333343 0
		0.036999999999999998 0.45200000000000001 0
		0.049666666666666665 0.45033333333333331 0
		0.062333333333333331 0.44866666666666671 0
		0.074999999999999997 0.44700000000000001 0
		0.10100000000000001 0.443 0
		0.107 0.438 0
		0.107 0.40200000000000002 0
		0.107 0.29700000000000004 0
		0.107 0.19200000000000003 0
		0.107 0.087000000000000008 0
		0.107 0.036000000000000004 0
		0.10400000000000001 0.034000000000000002 0
		0.032000000000000001 0.029000000000000001 0
		0.032000000000000001 0.019333333333333334 0
		0.032000000000000001 0.0096666666666666672 0
		0.032000000000000001 0 0
		0.11333333333333336 0 0
		0.19466666666666668 0 0
		0.27600000000000002 0 0
		0.27600000000000002 0.0096666666666666672 0
		0.27600000000000002 0.019333333333333334 0
		0.27600000000000002 0.029000000000000001 0
		0.20500000000000002 0.034000000000000002 0
		0.20100000000000001 0.036000000000000004 0
		0.20100000000000001 0.087000000000000008 0
		0.20099999999999998 0.16500000000000001 0
		0.20099999999999998 0.24300000000000002 0
		0.20099999999999998 0.32100000000000001 0
		0.20100000000000001 0.34600000000000003 0
		0.20300000000000001 0.35999999999999999 0
		0.21099999999999999 0.376 0
		0.23200000000000001 0.41500000000000004 0
		0.27700000000000002 0.44800000000000001 0
		0.33000000000000002 0.44800000000000001 0
		0.39800000000000002 0.44800000000000001 0
		0.435 0.41000000000000003 0
		0.435 0.32300000000000001 0
		0.43499999999999989 0.24433333333333337 0
		0.43499999999999989 0.16566666666666668 0
		0.43499999999999989 0.087000000000000008 0
		0.435 0.036000000000000004 0
		0.432 0.034000000000000002 0
		0.35999999999999999 0.029000000000000001 0
		0.36000000000000004 0.019333333333333334 0
		0.36000000000000004 0.0096666666666666672 0
		0.36000000000000004 0 0
		0.4413333333333333 0 0
		0.52266666666666672 0 0
		0.60399999999999998 0 0
		0.60399999999999998 0.0096666666666666672 0
		0.60399999999999998 0.019333333333333334 0
		0.60399999999999998 0.029000000000000001 0
		0.53300000000000003 0.034000000000000002 0
		0.52900000000000003 0.036000000000000004 0
		0.52900000000000003 0.087000000000000008 0
		0.52900000000000003 0.17233333333333337 0
		0.52900000000000003 0.25766666666666671 0
		0.52900000000000003 0.34300000000000003 0
		;
createNode transform -n "atts_faceboard_tongue" -p "grp_faceboard_tongue";
	addAttr -ci true -sn "RawTW" -ln "RawTW" -at "double";
	addAttr -ci true -sn "RawYW" -ln "RawYW" -at "double";
	addAttr -ci true -sn "RawPT" -ln "RawPT" -at "double";
	addAttr -ci true -sn "FB" -ln "FB" -at "double";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -8.7450245104454503 -56.360339087495674 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".RawTW";
	setAttr -k on ".RawYW";
	setAttr -k on ".RawPT";
	setAttr -k on ".FB";
createNode transform -n "grp_faceboard_O_offset" -p "ctrl_faceboard_facial";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -14.361786945082287 -87.780663561050659 0 ;
	setAttr ".s" -type "double3" 0.41712726387126775 0.41712726387126775 0.41712726387126775 ;
	setAttr ".rp" -type "double3" -10.245690593687366 -61.297770480656787 0 ;
	setAttr ".sp" -type "double3" -24.562505213874839 -146.95220329586095 0 ;
	setAttr ".spt" -type "double3" 14.316814620187476 85.654432815204174 0 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF3.0303030303030312\nsS'translateY'\np6\nF-1.2499999999999432\nsS'translateZ'\np7\nF0\nsS'scaleX'\np8\nF1.5151515151515151\nsS'scaleY'\np9\nF1.0000000000000002\nsS'scaleZ'\np10\nF-1.0000000000000002\nsS'rotateX'\np11\nF-180\nsS'rotateY'\np12\nF0\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF3.0303030303030312\nsg6\nF-1.2499999999999432\nsg7\nF0\nsg8\nF1.5151515151515151\nsg9\nF1.0000000000000002\nsg10\nF-1.0000000000000002\nsg11\nF-180\nsg12\nF0\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode nurbsCurve -n "grp_faceboard_O_offsetShape" -p "grp_faceboard_O_offset";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-24.514182581383004 -146.95143437536646 0
		-24.514182581383004 -146.95297221635545 0
		-24.592005975543486 -146.95297221635545 0
		-24.592005975543486 -146.95143437536646 0
		-24.514182581383004 -146.95143437536646 0
		;
createNode transform -n "ctrl_faceboard_O" -p "grp_faceboard_O_offset";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -24.588820126270267 -146.95220329586095 0 ;
	setAttr ".sp" -type "double3" -24.588820126270267 -146.95220329586095 0 ;
	setAttr ".mntl" -type "double3" 0 -0.01 -0.99999999999999967 ;
	setAttr ".mxtl" -type "double3" 0.07 0.01 0.99999999999999967 ;
	setAttr ".mtxe" yes;
	setAttr ".xtxe" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nssS'neutralPose'\np6\n(dp7\ng5\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" 1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
createNode nurbsCurve -n "ctrl_faceboard_OShape1" -p "ctrl_faceboard_O";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.95461224260004 -3.1654514221997194e-10
		-24.591229074100397 -146.95461224260004 -3.1654514221997194e-10
		-24.58641118087322 -146.95461224260004 -3.1654514221997194e-10
		-24.58641118087322 -146.95461224260004 -3.1654514221997194e-10
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.94979434937287 -3.1654514144519565e-10
		;
createNode transform -n "O" -p "grp_faceboard_O_offset";
	setAttr -l on -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".t" -type "double3" -24.505115565351783 -146.95555954849837 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "OShape" -p "O";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.0049441033783984333 0.0087203083209547155 0
		0.0072539469515084604 0.0087203083209547155 0
		0.0077859895722809953 0.0063974880985575508 0
		0.007811942870855266 0.0044899206533487081 0
		0.0077859895722809953 0.0025823532081398633 0
		0.0072539469515084604 0.0002595329857426999 0
		0.0049441033783984333 0.0002595329857426999 0
		0.0026342598052884036 0.0002595329857426999 0
		0.0021022171845158687 0.0025823532081398633 0
		0.0020762638859415992 0.0044899206533487081 0
		0.0021022171845158687 0.0063974880985575508 0
		0.0026342598052884036 0.0087203083209547155 0
		0.0049441033783984333 0.0087203083209547155 0
		;
createNode nurbsCurve -n "OShape1" -p "O";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 22 1 no 3
		27 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 5 5 5 6 6 6 7 7
		 7 8 8 8
		25
		0.0049441033783984333 0.0091744910460044397 0
		0.0035166719568135831 0.0091744910460044397 0
		0.0024525867152685133 0.0087332849702418513 0
		0.0017258943551889539 0.0079157560651523448 0
		0.0010251552936836644 0.0071371571079242475 0
		0.00062287916578247966 0.0059562820227949623 0
		0.00062287916578247966 0.0044899206533487081 0
		0.00062287916578247966 0.0030365359331895885 0
		0.0010251552936836644 0.001842684198773169 0
		0.0017258943551889539 0.0010640852415450693 0
		0.0024525867152685133 0.00024655633645556489 0
		0.0035166719568135831 -0.00019464973930702489 0
		0.0049441033783984333 -0.00019464973930702489 0
		0.0063845114492704158 -0.00019464973930702489 0
		0.0074356200415283515 0.00024655633645556489 0
		0.0081623124016079098 0.0010640852415450693 0
		0.0088760281124003349 0.001842684198773169 0
		0.0092653275910143853 0.0030365359331895885 0
		0.0092653275910143853 0.0044899206533487081 0
		0.0092653275910143853 0.0059562820227949623 0
		0.0088760281124003349 0.0071371571079242475 0
		0.0081623124016079098 0.0079157560651523448 0
		0.0074356200415283515 0.0087332849702418513 0
		0.0063845114492704158 0.0091744910460044397 0
		0.0049441033783984333 0.0091744910460044397 0
		;
createNode transform -n "grp_faceboard_YU_offset" -p "ctrl_faceboard_facial";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -14.361786945082311 -87.787666707912507 0 ;
	setAttr ".s" -type "double3" 0.41712726387126775 0.41712726387126775 0.41712726387126775 ;
	setAttr ".rp" -type "double3" -10.245690593687366 -61.297770480656787 0 ;
	setAttr ".sp" -type "double3" -24.562505213874839 -146.95220329586095 0 ;
	setAttr ".spt" -type "double3" 14.316814620187476 85.654432815204174 0 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF3.0303030303030312\nsS'translateY'\np6\nF-1.2499999999999432\nsS'translateZ'\np7\nF0\nsS'scaleX'\np8\nF1.5151515151515151\nsS'scaleY'\np9\nF1.0000000000000002\nsS'scaleZ'\np10\nF-1.0000000000000002\nsS'rotateX'\np11\nF-180\nsS'rotateY'\np12\nF0\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF3.0303030303030312\nsg6\nF-1.2499999999999432\nsg7\nF0\nsg8\nF1.5151515151515151\nsg9\nF1.0000000000000002\nsg10\nF-1.0000000000000002\nsg11\nF-180\nsg12\nF0\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode nurbsCurve -n "grp_faceboard_YU_offsetShape" -p "grp_faceboard_YU_offset";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-24.514182581383004 -146.95143437536646 0
		-24.514182581383004 -146.95297221635545 0
		-24.592005975543486 -146.95297221635545 0
		-24.592005975543486 -146.95143437536646 0
		-24.514182581383004 -146.95143437536646 0
		;
createNode transform -n "ctrl_faceboard_YU" -p "grp_faceboard_YU_offset";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -24.588820126270267 -146.95220329586095 0 ;
	setAttr ".sp" -type "double3" -24.588820126270267 -146.95220329586095 0 ;
	setAttr ".mntl" -type "double3" 0 -0.01 -0.99999999999999967 ;
	setAttr ".mxtl" -type "double3" 0.07 0.01 0.99999999999999967 ;
	setAttr ".mtxe" yes;
	setAttr ".xtxe" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nssS'neutralPose'\np6\n(dp7\ng5\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" 1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
createNode nurbsCurve -n "ctrl_faceboard_YUShape1" -p "ctrl_faceboard_YU";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.95461224260004 -3.1654514221997194e-10
		-24.591229074100397 -146.95461224260004 -3.1654514221997194e-10
		-24.58641118087322 -146.95461224260004 -3.1654514221997194e-10
		-24.58641118087322 -146.95461224260004 -3.1654514221997194e-10
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.94979434937287 -3.1654514144519565e-10
		;
createNode transform -n "YU" -p "grp_faceboard_YU_offset";
	setAttr -l on -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".t" -type "double3" -24.508726079440606 -146.95587210139843 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "YUShape" -p "YU";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 76 1 no 3
		81 0 0 0 0.029000000000000001 0.029000000000000001 0.029000000000000001 1.0289999999999999 1.0289999999999999 1.0289999999999999 1.1819999999999999 1.1819999999999999
		 1.1819999999999999 2.1819999999999999 2.1819999999999999 2.1819999999999999 3.1819999999999999 3.1819999999999999 3.1819999999999999 4.1820000000000004 4.1820000000000004 4.1820000000000004 4.2110000000000003 4.2110000000000003
		 4.2110000000000003 4.4300000000000006 4.4300000000000006 4.4300000000000006 4.4590000000000005 4.4590000000000005 4.4590000000000005 4.5132309874518253 4.5132309874518253 4.5132309874518253 5.5132309874518253 5.5132309874518253
		 5.5132309874518253 6.5132309874518253 6.5132309874518253 6.5132309874518253 6.5152309874518251 6.5152309874518251 6.5152309874518251 7.5152309874518251 7.5152309874518251 7.5152309874518251 8.5152309874518259 8.5152309874518259
		 8.5152309874518259 8.5745352874645562 8.5745352874645562 8.5745352874645562 8.6035352874645561 8.6035352874645561 8.6035352874645561 8.8625352874645564 8.8625352874645564 8.8625352874645564 8.8915352874645563 8.8915352874645563
		 8.8915352874645563 9.8915352874645563 9.8915352874645563 9.8915352874645563 10.891535287464556 10.891535287464556 10.891535287464556 11.891535287464556 11.891535287464556 11.891535287464556 12.040535287464555 12.040535287464555
		 12.040535287464555 13.040535287464555 13.040535287464555 13.040535287464555 13.069535287464555 13.069535287464555 13.069535287464555 13.380535287464555 13.380535287464555 13.380535287464555
		79
		0.0059822353213692323 2.8421709430404007e-14 0
		0.0059822353213692323 0.00012544094313739329 0
		0.0059822353213692323 0.00025088188624636487 0
		0.0059822353213692323 0.00037632282935533642 0
		0.0046456404447943267 0.00045418272507814636 0
		0.0046067104969329219 0.00049311267293955128 0
		0.0046067104969329219 0.0012068283837319757 0
		0.0046067104969329219 0.0018686374973758599 0
		0.0046067104969329219 0.0025304466110197448 0
		0.0046067104969329219 0.0031922557246636288 0
		0.0046067104969329219 0.003503695307554869 0
		0.0046456404447943267 0.0036983450468618942 0
		0.0047754069376656763 0.0039578780326045932 0
		0.0054372160513095616 0.0052814962598923629 0
		0.0064104647478446857 0.0070982271600912618 0
		0.0068127408757458702 0.0077470596244480104 0
		0.0072539469515084604 0.0084607753352404346 0
		0.007331806847231271 0.0085645885295375142 0
		0.0082012423494693155 0.00860351847739892 0
		0.0082012423494693155 0.0087289594205078903 0
		0.0082012423494693155 0.0088544003636168642 0
		0.0082012423494693155 0.0089798413067258363 0
		0.0072539469515084604 0.0089798413067258363 0
		0.0063066515535476052 0.0089798413067258363 0
		0.0053593561555867518 0.0089798413067258363 0
		0.0053593561555867518 0.0088544003636168607 0
		0.0053593561555867518 0.0087289594205078903 0
		0.0053593561555867518 0.00860351847739892 0
		0.0055929358427551819 0.008581890728587031 0
		0.0058265155299236128 0.0085602629797751368 0
		0.006060095217092042 0.0085386352309632443 0
		0.0062936749042604703 0.0085126819323889744 0
		0.0063196282028347402 0.0083699387902304891 0
		0.0062158150085376614 0.0081233824537749258 0
		0.0058913987763592867 0.0073447834965468259 0
		0.0050089866248341072 0.0055669825442093319 0
		0.0043212242126159529 0.0042174110183472932 0
		0.0043125731130911971 0.0042174110183472932 0
		0.0043039220135664405 0.0042174110183472932 0
		0.0042952709140416821 0.0042174110183472932 0
		0.003542625255387853 0.0055799591934964669 0
		0.0028678394924568332 0.0068906007714971008 0
		0.0022968669238228935 0.0081363591030620599 0
		0.0021930537295258143 0.0083699387902304891 0
		0.0022449603266743541 0.0084997052831018403 0
		0.0024396100659813784 0.0085256585816761103 0
		0.0026948175019617 0.0085516118802503802 0
		0.0029500249379420208 0.0085775651788246501 0
		0.0032052323739223424 0.00860351847739892 0
		0.0032052323739223429 0.0087289594205078903 0
		0.0032052323739223429 0.0088544003636168642 0
		0.0032052323739223429 0.0089798413067258363 0
		0.002084914985466355 0.0089798413067258363 0
		0.00096459759701036756 0.0089798413067258363 0
		-0.00015571979144561992 0.0089798413067258363 0
		-0.00015571979144561992 0.0088544003636168607 0
		-0.00015571979144561992 0.0087289594205078903 0
		-0.00015571979144561992 0.00860351847739892 0
		0.00053204262077253487 0.0085775651788246501 0
		0.00071371571079242445 0.0084997052831018403 0
		0.00099920199510939432 0.0079546860130421688 0
		0.0017258943551889539 0.0066180911364672667 0
		0.0024915166631299186 0.0051776830655952824 0
		0.0031273724781995331 0.0038929947861689185 0
		0.0032701156203580181 0.003620485151139084 0
		0.0033220222175065579 0.0033998821132577889 0
		0.0033220222175065579 0.0031403491275150889 0
		0.0033220222175065579 0.0024958422129207187 0
		0.0033220222175065579 0.0018513352983263471 0
		0.0033220222175065579 0.0012068283837319762 0
		0.0033220222175065579 0.00049311267293955128 0
		0.003283092269645153 0.00045418272507814636 0
		0.0019464973930702488 0.00037632282935533642 0
		0.0019464973930702488 0.00025088188624636487 0
		0.0019464973930702488 0.00012544094313739329 0
		0.0019464973930702488 2.8421709430404007e-14 0
		0.0032917433691699092 2.8421709430404007e-14 0
		0.0046369893452695701 2.8421709430404007e-14 0
		0.0059822353213692323 2.8421709430404007e-14 0
		;
createNode nurbsCurve -n "YUShape1" -p "YU";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 64 1 no 3
		69 0 0 0 0.029000000000000026 0.029000000000000026 0.029000000000000026 1.0289999999999999 1.0289999999999999 1.0289999999999999 1.3529999999999998 1.3529999999999998
		 1.3529999999999998 2.3529999999999998 2.3529999999999998 2.3529999999999998 3.3529999999999998 3.3529999999999998 3.3529999999999998 4.3529999999999998 4.3529999999999998 4.3529999999999998 5.3529999999999998 5.3529999999999998
		 5.3529999999999998 5.6769999999999996 5.6769999999999996 5.6769999999999996 6.6769999999999996 6.6769999999999996 6.6769999999999996 6.7059999999999995 6.7059999999999995 6.7059999999999995 6.9849999999999994 6.9849999999999994
		 6.9849999999999994 7.0139999999999993 7.0139999999999993 7.0139999999999993 8.0139999999999993 8.0139999999999993 8.0139999999999993 8.3599999999999994 8.3599999999999994 8.3599999999999994 9.3599999999999994 9.3599999999999994
		 9.3599999999999994 10.359999999999999 10.359999999999999 10.359999999999999 11.359999999999999 11.359999999999999 11.359999999999999 12.359999999999999 12.359999999999999 12.359999999999999 12.703999999999999 12.703999999999999
		 12.703999999999999 13.703999999999999 13.703999999999999 13.703999999999999 13.732999999999999 13.732999999999999 13.732999999999999 14.011999999999999 14.011999999999999 14.011999999999999
		67
		0.013897991386521575 0.0089798413067258363 0
		0.013897991386521575 0.0088544003636168607 0
		0.013897991386521575 0.0087289594205078903 0
		0.013897991386521575 0.00860351847739892 0
		0.015039936523789457 0.0085256585816761103 0
		0.015065889822363726 0.0084997052831018403 0
		0.015065889822363726 0.0077730129230222803 0
		0.015065889822363726 0.0063715348000117017 0
		0.015065889822363726 0.0049700566770011232 0
		0.015065889822363726 0.0035685785539905446 0
		0.015065889822363726 0.0023357968717127196 0
		0.014871240083056703 0.0015571979144846204 0
		0.014481940604442651 0.0010381319429992211 0
		0.014079664476541465 0.00051906597151382141 0
		0.013508691907907523 0.00025953298577112156 0
		0.012756046249253696 0.00025953298577112156 0
		0.012016377239887003 0.00025953298577112156 0
		0.011445404671253061 0.00051906597151382141 0
		0.01104312854335188 0.0010381319429992211 0
		0.01065382906473783 0.0015571979144846204 0
		0.010459179325430803 0.0023357968717127196 0
		0.010459179325430803 0.0035685785539905446 0
		0.010459179325430803 0.0049700566770011232 0
		0.010459179325430803 0.0063715348000117017 0
		0.010459179325430803 0.0077730129230222803 0
		0.010459179325430803 0.0084997052831018403 0
		0.010498109273292209 0.0085256585816761103 0
		0.011627077761272952 0.00860351847739892 0
		0.011627077761272952 0.0087289594205078903 0
		0.011627077761272952 0.0088544003636168642 0
		0.011627077761272952 0.0089798413067258363 0
		0.010420249377569399 0.0089798413067258363 0
		0.0092134209938658437 0.0089798413067258363 0
		0.0080065926101622904 0.0089798413067258363 0
		0.0080065926101622904 0.0088544003636168607 0
		0.0080065926101622904 0.0087289594205078903 0
		0.0080065926101622904 0.00860351847739892 0
		0.0091485377474301698 0.0085256585816761103 0
		0.0091744910460044397 0.0084997052831018403 0
		0.0091744910460044397 0.0077730129230222803 0
		0.0091744910460044397 0.0062763727052393779 0
		0.0091744910460044397 0.0047797324874564763 0
		0.0091744910460044397 0.0032830922696735739 0
		0.0091874676952915738 0.0025174699617326098 0
		0.0093042575388757893 0.0018297075495144553 0
		0.0095248605767570826 0.0013885014737518655 0
		0.010121786443965292 0.00011678984361263653 0
		0.011484334619114467 -0.00019464973927860312 0
		0.012756046249253696 -0.00019464973927860312 0
		0.014040734528680062 -0.00019464973927860312 0
		0.015403282703829235 0.00010381319432550154 0
		0.016000208571037445 0.0013885014737518655 0
		0.01622081160891874 0.0018426841988015902 0
		0.016350578101790091 0.0025304466110197448 0
		0.016350578101790091 0.0033090455682478442 0
		0.016350578101790091 0.0047970346865059887 0
		0.016350578101790091 0.0062850238047641345 0
		0.016350578101790091 0.0077730129230222803 0
		0.016350578101790091 0.0084997052831018403 0
		0.016389508049651495 0.0085256585816761103 0
		0.017518476537632242 0.00860351847739892 0
		0.017518476537632242 0.0087289594205078903 0
		0.017518476537632242 0.0088544003636168642 0
		0.017518476537632242 0.0089798413067258363 0
		0.016311648153928687 0.0089798413067258363 0
		0.015104819770225132 0.0089798413067258363 0
		0.013897991386521575 0.0089798413067258363 0
		;
createNode transform -n "grp_faceboard_WQ_offset" -p "ctrl_faceboard_facial";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -14.361786945082308 -87.794448239738131 0 ;
	setAttr ".s" -type "double3" 0.41712726387126775 0.41712726387126775 0.41712726387126775 ;
	setAttr ".rp" -type "double3" -10.245690593687366 -61.297770480656787 0 ;
	setAttr ".sp" -type "double3" -24.562505213874839 -146.95220329586095 0 ;
	setAttr ".spt" -type "double3" 14.316814620187476 85.654432815204174 0 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF3.0303030303030312\nsS'translateY'\np6\nF-1.2499999999999432\nsS'translateZ'\np7\nF0\nsS'scaleX'\np8\nF1.5151515151515151\nsS'scaleY'\np9\nF1.0000000000000002\nsS'scaleZ'\np10\nF-1.0000000000000002\nsS'rotateX'\np11\nF-180\nsS'rotateY'\np12\nF0\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF3.0303030303030312\nsg6\nF-1.2499999999999432\nsg7\nF0\nsg8\nF1.5151515151515151\nsg9\nF1.0000000000000002\nsg10\nF-1.0000000000000002\nsg11\nF-180\nsg12\nF0\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode nurbsCurve -n "grp_faceboard_WQ_offsetShape" -p "grp_faceboard_WQ_offset";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-24.514182581383004 -146.95143437536646 0
		-24.514182581383004 -146.95297221635545 0
		-24.592005975543486 -146.95297221635545 0
		-24.592005975543486 -146.95143437536646 0
		-24.514182581383004 -146.95143437536646 0
		;
createNode transform -n "ctrl_faceboard_WQ" -p "grp_faceboard_WQ_offset";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -24.588820126270267 -146.95220329586095 0 ;
	setAttr ".sp" -type "double3" -24.588820126270267 -146.95220329586095 0 ;
	setAttr ".mntl" -type "double3" 0 -0.01 -0.99999999999999967 ;
	setAttr ".mxtl" -type "double3" 0.07 0.01 0.99999999999999967 ;
	setAttr ".mtxe" yes;
	setAttr ".xtxe" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nssS'neutralPose'\np6\n(dp7\ng5\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" 1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
createNode nurbsCurve -n "ctrl_faceboard_WQShape1" -p "ctrl_faceboard_WQ";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.95461224260004 -3.1654514221997194e-10
		-24.591229074100397 -146.95461224260004 -3.1654514221997194e-10
		-24.58641118087322 -146.95461224260004 -3.1654514221997194e-10
		-24.58641118087322 -146.95461224260004 -3.1654514221997194e-10
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.94979434937287 -3.1654514144519565e-10
		;
createNode transform -n "WQ" -p "grp_faceboard_WQ_offset";
	setAttr -l on -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".t" -type "double3" -24.509448182258378 -146.95703692079553 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "WQShape" -p "WQ";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 85 1 no 3
		90 0 0 0 0.029000000000000026 0.029000000000000026 0.029000000000000026 0.091289646009589831 0.091289646009589831 0.091289646009589831 1.0912896460095898 1.0912896460095898
		 1.0912896460095898 2.0912896460095896 2.0912896460095896 2.0912896460095896 2.3867079934425139 2.3867079934425139 2.3867079934425139 2.3897079934425136 2.3897079934425136 2.3897079934425136 3.3897079934425136 3.3897079934425136
		 3.3897079934425136 3.4647079934425138 3.4647079934425138 3.4647079934425138 4.0394470646739729 4.0394470646739729 4.0394470646739729 4.0414470646739726 4.0414470646739726 4.0414470646739726 5.0414470646739726 5.0414470646739726
		 5.0414470646739726 6.0414470646739726 6.0414470646739726 6.0414470646739726 6.0916964427795772 6.0916964427795772 6.0916964427795772 6.1206964427795771 6.1206964427795771 6.1206964427795771 6.3716964427795775 6.3716964427795775
		 6.3716964427795775 6.4006964427795774 6.4006964427795774 6.4006964427795774 7.4006964427795774 7.4006964427795774 7.4006964427795774 8.4006964427795765 8.4006964427795765 8.4006964427795765 8.7308267200944574 8.7308267200944574
		 8.7308267200944574 8.8078267200944573 8.8078267200944573 8.8078267200944573 9.3836435312418924 9.3836435312418924 9.3836435312418924 9.3856435312418931 9.3856435312418931 9.3856435312418931 10.385643531241893 10.385643531241893
		 10.385643531241893 10.461643531241894 10.461643531241894 10.461643531241894 10.832384680832817 10.832384680832817 10.832384680832817 11.832384680832817 11.832384680832817 11.832384680832817 12.832384680832817 12.832384680832817
		 12.832384680832817 12.861384680832817 12.861384680832817 12.861384680832817 13.090384680832816 13.090384680832816 13.090384680832816
		88
		0.009706533666776972 0.0089798413066974163 0
		0.009706533666776972 0.0088544003635884407 0
		0.009706533666776972 0.0087289594204794704 0
		0.009706533666776972 0.0086035184773705 0
		0.0099747177520444312 0.0085775651787962301 0
		0.010242901837311887 0.0085516118802219602 0
		0.010511085922579344 0.0085256585816476903 0
		0.010822525505470582 0.0084867286337862845 0
		0.010848478804044853 0.0083050555437663969 0
		0.010796572206896317 0.0080325459087365603 0
		0.010718712311173504 0.0075524098851125644 0
		0.010433226026856533 0.0064883246435674955 0
		0.01010880979467816 0.0052685196105768071 0
		0.0097887191122621609 0.0040314123785366047 0
		0.0094686284298461654 0.0027943051464964018 0
		0.0091485377474301698 0.0015571979144561991 0
		0.0091355610981430323 0.0015571979144561991 0
		0.0091225844488558999 0.0015571979144561991 0
		0.009109607799568771 0.0015571979144561991 0
		0.0083699387902020691 0.0039578780325761715 0
		0.0076302697808353749 0.0063585581506961459 0
		0.0069165540700429507 0.0087462616195289871 0
		0.0065921378378645768 0.0087462616195289871 0
		0.0062677216056862012 0.0087462616195289871 0
		0.0059433053735078274 0.0087462616195289871 0
		0.0052814962598639421 0.006349907051171391 0
		0.0046196871462200577 0.0039535524828137941 0
		0.0039578780325761724 0.0015571979144561991 0
		0.0039492269330514158 0.0015571979144561991 0
		0.0039405758335266591 0.0015571979144561991 0
		0.0039319247340019034 0.0015571979144561991 0
		0.0032571389710708831 0.0037891815918434171 0
		0.0026861664024369443 0.0059692586720820973 0
		0.0021671004309515439 0.0080065926101622904 0
		0.0020632872366544638 0.0084348220366377447 0
		0.0021281704830901386 0.0085126819323605545 0
		0.0024396100659813784 0.0085386352309348244 0
		0.0026558875541002952 0.0085602629797467168 0
		0.0028721650422192115 0.008581890728558611 0
		0.0030884425303381279 0.0086035184773705 0
		0.0030884425303381279 0.0087289594204794704 0
		0.0030884425303381279 0.0088544003635884442 0
		0.0030884425303381279 0.0089798413066974163 0
		0.0020027295399811674 0.0089798413066974163 0
		0.00091701654962420606 0.0089798413066974163 0
		-0.00016869644073275495 0.0089798413066974163 0
		-0.00016869644073275495 0.0088544003635884407 0
		-0.00016869644073275495 0.0087289594204794704 0
		-0.00016869644073275495 0.0086035184773705 0
		0.00059692586720820953 0.0085645885295090943 0
		0.00071371571079242445 0.0085256585816476903 0
		0.00093431874867371954 0.0077600362737067254 0
		0.0012327816822778246 0.0067348809800230605 0
		0.0016091045116047389 0.0054372160513095616 0
		0.0019594740423573842 0.0041395511225960635 0
		0.0023271457721595417 0.0027597007483973752 0
		0.0026948175019617005 0.0013798503741986876 0
		0.0030624892317638584 0 0
		0.0033955565634669902 0 0
		0.0037286238951701215 0 0
		0.004061691226873252 0 0
		0.0047408025395666506 0.0023963545683575952 0
		0.0054199138522600492 0.0047927091367151904 0
		0.0060990251649534468 0.0071890637050727856 0
		0.0061076762644782035 0.0071890637050727856 0
		0.0061163273640029592 0.0071890637050727856 0
		0.0061249784635277168 0.0071890637050727856 0
		0.0069165540700429507 0.0047105236912300015 0
		0.0076302697808353749 0.0023228202223971634 0
		0.0082920788944792611 0 0
		0.0086208206764200133 0 0
		0.0089495624583607655 0 0
		0.0092783042403015176 0 0
		0.0097108592165393547 0.0015442212651690639 0
		0.010143414192777185 0.0030884425303381279 0
		0.010575969169015018 0.0046326637955071926 0
		0.01099122194620334 0.0060990251649534468 0
		0.011289684879807443 0.0072409703022213254 0
		0.011471357969827333 0.0077340829751324546 0
		0.011730890955570032 0.0084867286337862845 0
		0.011873634097728521 0.0085516118802219602 0
		0.012678186353530886 0.0086035184773705 0
		0.012678186353530886 0.0087289594204794704 0
		0.012678186353530886 0.0088544003635884442 0
		0.012678186353530886 0.0089798413066974163 0
		0.011687635457946249 0.0089798413066974163 0
		0.010697084562361609 0.0089798413066974163 0
		0.009706533666776972 0.0089798413066974163 0
		;
createNode nurbsCurve -n "WQShape1" -p "WQ";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 40 1 no 3
		45 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 5 5 5 6 6 6 6.0162788205960993 6.0162788205960993
		 6.0162788205960993 7.0162788205960993 7.0162788205960993 7.0162788205960993 8.0162788205960993 8.0162788205960993 8.0162788205960993 9.0162788205960993 9.0162788205960993 9.0162788205960993 10.016278820596099 10.016278820596099
		 10.016278820596099 11.016278820596099 11.016278820596099 11.016278820596099 12.016278820596099 12.016278820596099 12.016278820596099 13.016278820596099 13.016278820596099 13.016278820596099
		43
		0.017142153708305328 0.0091744910460044397 0
		0.015714722286720478 0.0091744910460044397 0
		0.014650637045175408 0.0087332849702418513 0
		0.013923944685095849 0.0079157560651523448 0
		0.013223205623590559 0.0071371571079242475 0
		0.012820929495689375 0.0059562820227949623 0
		0.012820929495689375 0.0044899206533487081 0
		0.012820929495689375 0.0030365359331895885 0
		0.013223205623590559 0.001842684198773169 0
		0.013923944685095849 0.0010640852415450693 0
		0.014559800500165464 0.0003373928814655099 0
		0.015468165950264914 -9.0836545009944966e-05 0
		0.016636064386107062 -0.00016869644073275495 0
		0.01731085014903808 -0.0015571979144561991 0
		0.018517678532741635 -0.0025044933124170536 0
		0.019893203357177945 -0.0025044933124170536 0
		0.020347386082227675 -0.0025044933124170536 0
		0.020710732262267446 -0.0024266334166942434 0
		0.020983241897297285 -0.0022579369759614886 0
		0.020970265248010145 -0.0021887281797634351 0
		0.020957288598723017 -0.002119519383565382 0
		0.020944311949435877 -0.0020503105873673289 0
		0.020814545456564526 -0.0020632872366544638 0
		0.020710732262267446 -0.0020632872366544638 0
		0.020606919067970367 -0.0020632872366544638 0
		0.020282502835791996 -0.0020632872366544638 0
		0.019646647020722382 -0.0018945907959217086 0
		0.018919954660642821 -0.0011030151894064744 0
		0.01858256177917731 -0.00073966900936669458 0
		0.018310052144147472 -0.0003633461800397797 0
		0.018167309001988992 -0.00010381319429707993 0
		0.019101627750662712 5.1906597148539967e-05 0
		0.019815343461455137 0.00045418272504972471 0
		0.020360362731514807 0.0010640852415450693 0
		0.021074078442307229 0.001842684198773169 0
		0.021463377920921282 0.0030365359331895885 0
		0.021463377920921282 0.0044899206533487081 0
		0.021463377920921282 0.0059562820227949623 0
		0.021074078442307229 0.0071371571079242475 0
		0.020360362731514807 0.0079157560651523448 0
		0.019633670371435246 0.0087332849702418513 0
		0.01858256177917731 0.0091744910460044397 0
		0.017142153708305328 0.0091744910460044397 0
		;
createNode nurbsCurve -n "WQShape2" -p "WQ";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.017142153708305328 0.0087203083209547155 0
		0.019451997281415355 0.0087203083209547155 0
		0.019984039902187892 0.0063974880985575508 0
		0.020009993200762164 0.0044899206533487081 0
		0.019984039902187892 0.0025823532081398633 0
		0.019451997281415355 0.0002595329857426999 0
		0.017142153708305328 0.0002595329857426999 0
		0.014832310135195299 0.0002595329857426999 0
		0.014300267514422765 0.0025823532081398633 0
		0.014274314215848495 0.0044899206533487081 0
		0.014300267514422765 0.0063974880985575508 0
		0.014832310135195299 0.0087203083209547155 0
		0.017142153708305328 0.0087203083209547155 0
		;
createNode transform -n "grp_faceboard_upperLipRollInside_offset" -p "ctrl_faceboard_facial";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -16.885746564233692 -103.29949825290478 0 ;
	setAttr ".s" -type "double3" 0.31154353235894272 0.31154353235894272 0.31154353235894272 ;
	setAttr ".rp" -type "double3" -7.6522896379155201 -45.782008502721986 0 ;
	setAttr ".sp" -type "double3" -24.562505213874839 -146.95220329586095 0 ;
	setAttr ".spt" -type "double3" 16.91021557595932 101.17019479313896 0 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF3.0303030303030312\nsS'translateY'\np6\nF-1.2499999999999432\nsS'translateZ'\np7\nF0\nsS'scaleX'\np8\nF1.5151515151515151\nsS'scaleY'\np9\nF1.0000000000000002\nsS'scaleZ'\np10\nF-1.0000000000000002\nsS'rotateX'\np11\nF-180\nsS'rotateY'\np12\nF0\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF3.0303030303030312\nsg6\nF-1.2499999999999432\nsg7\nF0\nsg8\nF1.5151515151515151\nsg9\nF1.0000000000000002\nsg10\nF-1.0000000000000002\nsg11\nF-180\nsg12\nF0\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode nurbsCurve -n "grp_faceboard_upperLipRollInside_offsetShape" -p "grp_faceboard_upperLipRollInside_offset";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-24.514182581383004 -146.95143437536646 0
		-24.514182581383004 -146.95297221635545 0
		-24.592005975543486 -146.95297221635545 0
		-24.592005975543486 -146.95143437536646 0
		-24.514182581383004 -146.95143437536646 0
		;
createNode transform -n "ctrl_faceboard_upperLipRollInside" -p "grp_faceboard_upperLipRollInside_offset";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -24.588820126270267 -146.95220329586095 0 ;
	setAttr ".sp" -type "double3" -24.588820126270267 -146.95220329586095 0 ;
	setAttr ".mntl" -type "double3" 0 -0.01 -0.99999999999999967 ;
	setAttr ".mxtl" -type "double3" 0.07 0.01 0.99999999999999967 ;
	setAttr ".mtxe" yes;
	setAttr ".xtxe" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nssS'neutralPose'\np6\n(dp7\ng5\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" 1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
createNode nurbsCurve -n "ctrl_faceboard_upperLipRollInsideShape1" -p "ctrl_faceboard_upperLipRollInside";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.95461224260004 -3.1654514221997194e-10
		-24.591229074100397 -146.95461224260004 -3.1654514221997194e-10
		-24.58641118087322 -146.95461224260004 -3.1654514221997194e-10
		-24.58641118087322 -146.95461224260004 -3.1654514221997194e-10
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.94979434937287 -3.1654514144519565e-10
		;
createNode transform -n "grp_faceboard_uLipRollInn_txt" -p "grp_faceboard_upperLipRollInside_offset";
	setAttr ".tmp" yes;
	setAttr ".t" -type "double3" -24.507640295654625 -146.95471450966355 0 ;
	setAttr ".s" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "Char_u_2" -p "grp_faceboard_uLipRollInn_txt";
createNode transform -n "curve50" -p "Char_u_2";
createNode nurbsCurve -n "curveShape50" -p "curve50";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 67 1 no 3
		72 0 0 0 0.029000000000000001 0.029000000000000001 0.029000000000000001 1.0289999999999999 1.0289999999999999 1.0289999999999999 1.4379999999999999 1.4379999999999999
		 1.4379999999999999 1.4472195444572928 1.4472195444572928 1.4472195444572928 1.606197530354712 1.606197530354712 1.606197530354712 1.6311975303547119 1.6311975303547119 1.6311975303547119 1.6695250661481855 1.6695250661481855
		 1.6695250661481855 2.6695250661481857 2.6695250661481857 2.6695250661481857 2.8945250661481858 2.8945250661481858 2.8945250661481858 3.8945250661481858 3.8945250661481858 3.8945250661481858 4.8945250661481854 4.8945250661481854
		 4.8945250661481854 5.8945250661481854 5.8945250661481854 5.8945250661481854 6.2345250661481852 6.2345250661481852 6.2345250661481852 6.2437446106054786 6.2437446106054786 6.2437446106054786 6.4027225965028975 6.4027225965028975
		 6.4027225965028975 6.4277225965028979 6.4277225965028979 6.4277225965028979 6.4660501322963713 6.4660501322963713 6.4660501322963713 7.4660501322963713 7.4660501322963713 7.4660501322963713 7.7300501322963715 7.7300501322963715
		 7.7300501322963715 8.7300501322963715 8.7300501322963715 8.7300501322963715 9.7300501322963715 9.7300501322963715 9.7300501322963715 9.790877757599354 9.790877757599354 9.790877757599354 9.9508777575993541 9.9508777575993541
		 9.9508777575993541
		70
		0.59099999999999997 0 0
		0.59099999999999997 0.0096666666666666672 0
		0.59099999999999997 0.019333333333333334 0
		0.59099999999999997 0.029000000000000001 0
		0.52200000000000002 0.034000000000000002 0
		0.51600000000000001 0.036000000000000004 0
		0.51600000000000001 0.087000000000000008 0
		0.51600000000000001 0.2233333333333333 0
		0.51600000000000001 0.35966666666666663 0
		0.51600000000000001 0.496 0
		0.5136666666666666 0.49800000000000005 0
		0.51133333333333331 0.5 0
		0.50900000000000001 0.502 0
		0.45666666666666661 0.4936666666666667 0
		0.40433333333333327 0.48533333333333339 0
		0.35200000000000004 0.47700000000000004 0
		0.35200000000000004 0.46866666666666673 0
		0.35200000000000004 0.46033333333333343 0
		0.35200000000000004 0.45200000000000001 0
		0.36466666666666664 0.45033333333333331 0
		0.37733333333333335 0.44866666666666671 0
		0.38999999999999996 0.44700000000000006 0
		0.41600000000000004 0.443 0
		0.42199999999999999 0.438 0
		0.42199999999999999 0.40200000000000002 0
		0.42199999999999999 0.32700000000000001 0
		0.42199999999999999 0.252 0
		0.42199999999999999 0.17699999999999996 0
		0.42199999999999999 0.14899999999999999 0
		0.41899999999999998 0.127 0
		0.41400000000000003 0.11700000000000001 0
		0.39100000000000001 0.071000000000000008 0
		0.34300000000000003 0.042000000000000003 0
		0.29099999999999998 0.042000000000000003 0
		0.23300000000000001 0.042000000000000003 0
		0.19 0.078000000000000014 0
		0.19 0.156 0
		0.19000000000000003 0.26933333333333331 0
		0.19000000000000003 0.38266666666666671 0
		0.19000000000000003 0.496 0
		0.18766666666666665 0.49800000000000005 0
		0.18533333333333335 0.5 0
		0.18299999999999997 0.502 0
		0.13066666666666668 0.4936666666666667 0
		0.078333333333333338 0.48533333333333339 0
		0.026000000000000006 0.47700000000000004 0
		0.026000000000000006 0.46866666666666673 0
		0.026000000000000006 0.46033333333333343 0
		0.026000000000000006 0.45200000000000001 0
		0.038666666666666676 0.45033333333333331 0
		0.051333333333333342 0.44866666666666671 0
		0.064000000000000001 0.44700000000000001 0
		0.089999999999999997 0.443 0
		0.096000000000000002 0.438 0
		0.096000000000000002 0.40200000000000002 0
		0.096000000000000016 0.314 0
		0.096000000000000016 0.22600000000000001 0
		0.096000000000000016 0.13800000000000001 0
		0.096000000000000002 0.022999999999999993 0
		0.16400000000000001 -0.012 0
		0.23800000000000002 -0.012 0
		0.32300000000000001 -0.012 0
		0.39200000000000002 0.045999999999999999 0
		0.42099999999999999 0.059999999999999998 0
		0.42433333333333328 0.040000000000000001 0
		0.42766666666666664 0.02 0
		0.43099999999999999 0 0
		0.48433333333333334 0 0
		0.53766666666666663 0 0
		0.59099999999999997 0 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_L_2" -p "grp_faceboard_uLipRollInn_txt";
	setAttr ".t" -type "double3" 0.606 0 0 ;
createNode transform -n "curve51" -p "Char_L_2";
createNode nurbsCurve -n "curveShape51" -p "curve51";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 43 1 no 3
		48 0 0 0 1 1 1 1.0289999999999999 1.0289999999999999 1.0289999999999999 1.3140000000000001 1.3140000000000001
		 1.3140000000000001 1.343 1.343 1.343 2.343 2.343 2.343 2.8490000000000002 2.8490000000000002 2.8490000000000002 3.8490000000000002 3.8490000000000002
		 3.8490000000000002 3.8780000000000001 3.8780000000000001 3.8780000000000001 4.3970000000000002 4.3970000000000002 4.3970000000000002 4.5764017837146556 4.5764017837146556 4.5764017837146556 4.6064017837146558 4.6064017837146558
		 4.6064017837146558 5.6064017837146558 5.6064017837146558 5.6064017837146558 6.6064017837146558 6.6064017837146558 6.6064017837146558 7.6064017837146558 7.6064017837146558 7.6064017837146558 8.085401783714655 8.085401783714655
		 8.085401783714655
		46
		0.224 0.59899999999999998 0
		0.224 0.65500000000000003 0
		0.22700000000000001 0.65700000000000003 0
		0.32000000000000001 0.66300000000000003 0
		0.32000000000000001 0.67266666666666663 0
		0.32000000000000001 0.68233333333333335 0
		0.32000000000000001 0.69200000000000006 0
		0.22500000000000001 0.69200000000000006 0
		0.13 0.69200000000000006 0
		0.035000000000000003 0.69200000000000006 0
		0.035000000000000003 0.68233333333333324 0
		0.035000000000000003 0.67266666666666663 0
		0.035000000000000003 0.66300000000000003 0
		0.123 0.65700000000000003 0
		0.125 0.65500000000000003 0
		0.125 0.59899999999999998 0
		0.125 0.43033333333333329 0
		0.125 0.26166666666666666 0
		0.125 0.093000000000000013 0
		0.125 0.036999999999999998 0
		0.123 0.035000000000000003 0
		0.035000000000000003 0.029000000000000001 0
		0.035000000000000003 0.019333333333333334 0
		0.035000000000000003 0.0096666666666666672 0
		0.035000000000000003 0 0
		0.20800000000000005 0 0
		0.38100000000000006 0 0
		0.55400000000000005 0 0
		0.55800000000000005 0.059666666666666673 0
		0.56200000000000006 0.11933333333333335 0
		0.56600000000000006 0.17900000000000002 0
		0.55600000000000005 0.17899999999999996 0
		0.54600000000000004 0.17899999999999996 0
		0.53600000000000003 0.17899999999999996 0
		0.51600000000000001 0.047999999999999987 0
		0.46100000000000002 0.035000000000000003 0
		0.35599999999999998 0.035000000000000003 0
		0.30599999999999999 0.035000000000000003 0
		0.27000000000000002 0.036999999999999998 0
		0.249 0.044999999999999998 0
		0.22800000000000001 0.053999999999999999 0
		0.224 0.071000000000000008 0
		0.224 0.12 0
		0.224 0.27966666666666667 0
		0.224 0.43933333333333335 0
		0.224 0.59899999999999998 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_i_4" -p "grp_faceboard_uLipRollInn_txt";
	setAttr ".t" -type "double3" 1.174 0 0 ;
createNode transform -n "curve52" -p "Char_i_4";
createNode nurbsCurve -n "curveShape52" -p "curve52";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 34 1 no 3
		39 0 0 0 0.025000000000000022 0.025000000000000022 0.025000000000000022 0.063327535793473624 0.063327535793473624 0.063327535793473624 1.0633275357934737 1.0633275357934737
		 1.0633275357934737 1.3783275357934737 1.3783275357934737 1.3783275357934737 2.3783275357934737 2.3783275357934737 2.3783275357934737 2.4073275357934736 2.4073275357934736 2.4073275357934736 2.6513275357934738 2.6513275357934738
		 2.6513275357934738 2.6803275357934737 2.6803275357934737 2.6803275357934737 3.6803275357934737 3.6803275357934737 3.6803275357934737 4.0893275357934735 4.0893275357934735 4.0893275357934735 4.098547080250766 4.098547080250766
		 4.098547080250766 4.2575250661481849 4.2575250661481849 4.2575250661481849
		37
		0.036999999999999998 0.47700000000000004 0
		0.036999999999999998 0.46866666666666673 0
		0.036999999999999998 0.46033333333333343 0
		0.036999999999999998 0.45200000000000001 0
		0.049666666666666665 0.45033333333333331 0
		0.062333333333333331 0.44866666666666671 0
		0.074999999999999997 0.44700000000000001 0
		0.10100000000000001 0.443 0
		0.107 0.438 0
		0.107 0.40200000000000002 0
		0.107 0.29700000000000004 0
		0.107 0.19200000000000003 0
		0.107 0.087000000000000008 0
		0.107 0.036000000000000004 0
		0.10400000000000001 0.034000000000000002 0
		0.032000000000000001 0.029000000000000001 0
		0.032000000000000001 0.019333333333333334 0
		0.032000000000000001 0.0096666666666666672 0
		0.032000000000000001 0 0
		0.11333333333333336 0 0
		0.19466666666666668 0 0
		0.27600000000000002 0 0
		0.27600000000000002 0.0096666666666666672 0
		0.27600000000000002 0.019333333333333334 0
		0.27600000000000002 0.029000000000000001 0
		0.20500000000000002 0.034000000000000002 0
		0.20100000000000001 0.036000000000000004 0
		0.20100000000000001 0.087000000000000008 0
		0.20099999999999998 0.2233333333333333 0
		0.20099999999999998 0.35966666666666663 0
		0.20099999999999998 0.496 0
		0.19866666666666669 0.49800000000000005 0
		0.19633333333333333 0.5 0
		0.19400000000000003 0.502 0
		0.14166666666666666 0.4936666666666667 0
		0.089333333333333334 0.48533333333333339 0
		0.036999999999999998 0.47700000000000004 0
		;
	setAttr ".dep" yes;
createNode transform -n "curve53" -p "Char_i_4";
createNode nurbsCurve -n "curveShape53" -p "curve53";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.153 0.71499999999999997 0
		0.11700000000000001 0.71499999999999997 0
		0.091999999999999998 0.68900000000000006 0
		0.091999999999999998 0.65300000000000002 0
		0.091999999999999998 0.61799999999999999 0
		0.11700000000000001 0.59299999999999997 0
		0.153 0.59299999999999997 0
		0.19 0.59299999999999997 0
		0.21299999999999999 0.61799999999999999 0
		0.214 0.65300000000000002 0
		0.214 0.68900000000000006 0
		0.19 0.71499999999999997 0
		0.153 0.71499999999999997 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_p_4" -p "grp_faceboard_uLipRollInn_txt";
	setAttr ".t" -type "double3" 1.4649999999999999 0 0 ;
createNode transform -n "curve54" -p "Char_p_4";
createNode nurbsCurve -n "curveShape54" -p "curve54";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 19 1 no 3
		24 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 5 5 5 6 6 6 6.1639999999999997 6.1639999999999997
		 6.1639999999999997
		22
		0.19400000000000001 0.32100000000000001 0
		0.19400000000000001 0.34600000000000003 0
		0.19800000000000001 0.35999999999999999 0
		0.20700000000000002 0.378 0
		0.23000000000000001 0.42399999999999999 0
		0.27300000000000002 0.44800000000000001 0
		0.32600000000000001 0.44800000000000001 0
		0.36599999999999999 0.44800000000000001 0
		0.45500000000000002 0.42199999999999999 0
		0.45500000000000002 0.25 0
		0.45500000000000002 0.10300000000000004 0
		0.40900000000000003 0.023 0
		0.309 0.023 0
		0.25700000000000001 0.023 0
		0.217 0.050000000000000003 0
		0.20100000000000001 0.096000000000000002 0
		0.19500000000000001 0.114 0
		0.19400000000000001 0.13400000000000001 0
		0.19400000000000001 0.157 0
		0.19400000000000003 0.21166666666666667 0
		0.19400000000000003 0.26633333333333331 0
		0.19400000000000003 0.32100000000000001 0
		;
	setAttr ".dep" yes;
createNode transform -n "curve55" -p "Char_p_4";
createNode nurbsCurve -n "curveShape55" -p "curve55";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 46 1 no 3
		51 0 0 0 0.025000000000000022 0.025000000000000022 0.025000000000000022 0.063327535793473638 0.063327535793473638 0.063327535793473638 1.0633275357934737 1.0633275357934737
		 1.0633275357934737 1.6083275357934737 1.6083275357934737 1.6083275357934737 2.6083275357934737 2.6083275357934737 2.6083275357934737 2.6373275357934736 2.6373275357934736 2.6373275357934736 2.8963275357934735 2.8963275357934735
		 2.8963275357934735 2.9253275357934734 2.9253275357934734 2.9253275357934734 3.9253275357934734 3.9253275357934734 3.9253275357934734 4.0793275357934737 4.0793275357934737 4.0793275357934737 5.0793275357934737 5.0793275357934737
		 5.0793275357934737 6.0793275357934737 6.0793275357934737 6.0793275357934737 7.0793275357934737 7.0793275357934737 7.0793275357934737 8.0793275357934746 8.0793275357934746 8.0793275357934746 8.1544607508185223 8.1544607508185223
		 8.1544607508185223 8.3075162962914 8.3075162962914 8.3075162962914
		49
		0.029999999999999999 0.47700000000000004 0
		0.029999999999999999 0.46866666666666673 0
		0.029999999999999999 0.46033333333333343 0
		0.029999999999999999 0.45200000000000001 0
		0.042666666666666665 0.45033333333333331 0
		0.055333333333333339 0.44866666666666671 0
		0.068000000000000005 0.44700000000000001 0
		0.094 0.443 0
		0.10000000000000001 0.438 0
		0.10000000000000001 0.40200000000000002 0
		0.10000000000000002 0.22033333333333335 0
		0.10000000000000002 0.038666666666666662 0
		0.10000000000000002 -0.14300000000000002 0
		0.10000000000000001 -0.19400000000000001 0
		0.095000000000000001 -0.19600000000000001 0
		0.025000000000000001 -0.20100000000000001 0
		0.025000000000000005 -0.2106666666666667 0
		0.025000000000000005 -0.22033333333333338 0
		0.025000000000000005 -0.23000000000000001 0
		0.11133333333333335 -0.23000000000000001 0
		0.19766666666666668 -0.23000000000000001 0
		0.28400000000000003 -0.23000000000000001 0
		0.28400000000000003 -0.22033333333333338 0
		0.28400000000000003 -0.2106666666666667 0
		0.28400000000000003 -0.20099999999999998 0
		0.20000000000000001 -0.19600000000000001 0
		0.19400000000000001 -0.19400000000000001 0
		0.19400000000000001 -0.14300000000000002 0
		0.19400000000000003 -0.091666666666666674 0
		0.19400000000000003 -0.040333333333333339 0
		0.19400000000000003 0.011000000000000001 0
		0.215 -0.0010000000000000009 0
		0.26200000000000001 -0.012 0
		0.308 -0.012 0
		0.443 -0.012 0
		0.55900000000000005 0.049999999999999989 0
		0.55900000000000005 0.25600000000000001 0
		0.55900000000000005 0.32700000000000001 0
		0.54600000000000004 0.502 0
		0.36399999999999999 0.502 0
		0.29099999999999998 0.502 0
		0.23300000000000001 0.45300000000000001 0
		0.19400000000000001 0.42799999999999999 0
		0.18966666666666665 0.45266666666666672 0
		0.18533333333333335 0.47733333333333339 0
		0.18099999999999997 0.502 0
		0.13066666666666668 0.4936666666666667 0
		0.08033333333333334 0.48533333333333334 0
		0.030000000000000002 0.47700000000000009 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_R_1" -p "grp_faceboard_uLipRollInn_txt";
	setAttr ".t" -type "double3" 2.073 0 0 ;
createNode transform -n "curve56" -p "Char_R_1";
createNode nurbsCurve -n "curveShape56" -p "curve56";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 61 1 no 3
		66 0 0 0 1 1 1 2 2 2 3 3
		 3 3.081 3.081 3.081 3.1099999999999999 3.1099999999999999 3.1099999999999999 4.1099999999999994 4.1099999999999994 4.1099999999999994 5.1099999999999994 5.1099999999999994
		 5.1099999999999994 5.1119999999999992 5.1119999999999992 5.1119999999999992 6.1119999999999992 6.1119999999999992 6.1119999999999992 7.1119999999999992 7.1119999999999992 7.1119999999999992 7.403999999999999 7.403999999999999
		 7.403999999999999 7.4329999999999989 7.4329999999999989 7.4329999999999989 8.4329999999999998 8.4329999999999998 8.4329999999999998 8.9390000000000001 8.9390000000000001 8.9390000000000001 9.9390000000000001 9.9390000000000001
		 9.9390000000000001 9.968 9.968 9.968 10.247 10.247 10.247 10.276 10.276 10.276 11.276 11.276
		 11.276 11.509 11.509 11.509 11.578000000000001 11.578000000000001 11.578000000000001
		64
		0.29299999999999998 0.32600000000000001 0
		0.35299999999999998 0.32600000000000001 0
		0.39900000000000002 0.307 0
		0.41600000000000004 0.23900000000000002 0
		0.42299999999999999 0.21099999999999999 0
		0.434 0.13200000000000001 0
		0.44500000000000001 0.086000000000000007 0
		0.46000000000000002 0.022000000000000006 0
		0.498 0 0
		0.55700000000000005 0 0
		0.58400000000000007 0 0
		0.6110000000000001 0 0
		0.63800000000000001 0 0
		0.63800000000000001 0.0096666666666666672 0
		0.63800000000000001 0.019333333333333334 0
		0.63800000000000001 0.029000000000000001 0
		0.56000000000000005 0.036999999999999998 0
		0.54400000000000004 0.092999999999999999 0
		0.53500000000000003 0.161 0
		0.52300000000000002 0.25 0
		0.505 0.317 0
		0.39900000000000002 0.34300000000000003 0
		0.39900000000000002 0.34366666666666673 0
		0.39900000000000002 0.34433333333333338 0
		0.39900000000000002 0.34500000000000003 0
		0.49299999999999999 0.36299999999999999 0
		0.56200000000000006 0.42599999999999999 0
		0.56200000000000006 0.52100000000000002 0
		0.56200000000000006 0.61699999999999999 0
		0.502 0.69200000000000006 0
		0.32700000000000001 0.69200000000000006 0
		0.22966666666666669 0.69200000000000006 0
		0.13233333333333333 0.69200000000000006 0
		0.035000000000000003 0.69200000000000006 0
		0.035000000000000003 0.68233333333333324 0
		0.035000000000000003 0.67266666666666663 0
		0.035000000000000003 0.66300000000000003 0
		0.123 0.65700000000000003 0
		0.125 0.65500000000000003 0
		0.125 0.59899999999999998 0
		0.125 0.43033333333333329 0
		0.125 0.26166666666666666 0
		0.125 0.093000000000000013 0
		0.125 0.036999999999999998 0
		0.123 0.035000000000000003 0
		0.035000000000000003 0.029000000000000001 0
		0.035000000000000003 0.019333333333333334 0
		0.035000000000000003 0.0096666666666666672 0
		0.035000000000000003 0 0
		0.128 0 0
		0.221 0 0
		0.314 0 0
		0.314 0.0096666666666666672 0
		0.314 0.019333333333333334 0
		0.314 0.029000000000000001 0
		0.22700000000000001 0.035000000000000003 0
		0.224 0.036999999999999998 0
		0.224 0.092999999999999999 0
		0.224 0.17066666666666666 0
		0.224 0.24833333333333338 0
		0.224 0.32600000000000001 0
		0.247 0.32600000000000001 0
		0.27000000000000002 0.32600000000000001 0
		0.29299999999999998 0.32600000000000001 0
		;
	setAttr ".dep" yes;
createNode transform -n "curve57" -p "Char_R_1";
createNode nurbsCurve -n "curveShape57" -p "curve57";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 13 1 no 3
		18 0 0 0 0.246 0.246 0.246 1.246 1.246 1.246 2.246 2.246
		 2.246 3.246 3.246 3.246 3.3250000000000002 3.3250000000000002 3.3250000000000002
		16
		0.224 0.36099999999999999 0
		0.224 0.443 0
		0.224 0.52500000000000002 0
		0.224 0.60699999999999998 0
		0.224 0.64900000000000002 0
		0.23100000000000001 0.65700000000000003 0
		0.29699999999999999 0.65700000000000003 0
		0.371 0.65700000000000003 0
		0.45500000000000002 0.63 0
		0.45500000000000002 0.51200000000000001 0
		0.45500000000000002 0.40700000000000003 0
		0.40000000000000002 0.36099999999999999 0
		0.30299999999999999 0.36099999999999999 0
		0.27666666666666667 0.36099999999999999 0
		0.25033333333333335 0.36099999999999999 0
		0.224 0.36099999999999999 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_o_3" -p "grp_faceboard_uLipRollInn_txt";
	setAttr ".t" -type "double3" 2.717 0 0 ;
createNode transform -n "curve58" -p "Char_o_3";
createNode nurbsCurve -n "curveShape58" -p "curve58";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.28800000000000003 0.502 0
		0.128 0.502 0
		0.049000000000000002 0.40700000000000003 0
		0.049000000000000002 0.245 0
		0.049000000000000002 0.083000000000000018 0
		0.128 -0.012 0
		0.28800000000000003 -0.012 0
		0.45000000000000001 -0.012 0
		0.52800000000000002 0.083000000000000018 0
		0.52800000000000002 0.245 0
		0.52800000000000002 0.40700000000000003 0
		0.45000000000000001 0.502 0
		0.28800000000000003 0.502 0
		;
	setAttr ".dep" yes;
createNode transform -n "curve59" -p "Char_o_3";
createNode nurbsCurve -n "curveShape59" -p "curve59";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.153 0.245 0
		0.153 0.38300000000000001 0
		0.19700000000000001 0.46700000000000003 0
		0.28800000000000003 0.46700000000000003 0
		0.38100000000000001 0.46700000000000003 0
		0.42399999999999999 0.38300000000000001 0
		0.42399999999999999 0.245 0
		0.42399999999999999 0.10699999999999998 0
		0.38100000000000001 0.023 0
		0.28800000000000003 0.023 0
		0.19700000000000001 0.023 0
		0.153 0.10699999999999998 0
		0.153 0.245 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_l_2" -p "grp_faceboard_uLipRollInn_txt";
	setAttr ".t" -type "double3" 3.294 0 0 ;
createNode transform -n "curve60" -p "Char_l_2";
createNode nurbsCurve -n "curveShape60" -p "curve60";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 34 1 no 3
		39 0 0 0 0.0092195444572928942 0.0092195444572928942 0.0092195444572928942 0.16819753035471205 0.16819753035471205 0.16819753035471205 0.19319753035471196 0.19319753035471196
		 0.19319753035471196 0.23140747670379758 0.23140747670379758 0.23140747670379758 1.2314074767037977 1.2314074767037977 1.2314074767037977 1.7864074767037978 1.7864074767037978 1.7864074767037978 2.7864074767037978 2.7864074767037978
		 2.7864074767037978 2.8154074767037978 2.8154074767037978 2.8154074767037978 3.059407476703798 3.059407476703798 3.059407476703798 3.0884074767037979 3.0884074767037979 3.0884074767037979 4.0884074767037983 4.0884074767037983
		 4.0884074767037983 4.7374074767037984 4.7374074767037984 4.7374074767037984
		37
		0.18899999999999997 0.7360000000000001 0
		0.18666666666666668 0.73799999999999999 0
		0.18433333333333332 0.73999999999999988 0
		0.18200000000000002 0.74199999999999999 0
		0.12966666666666665 0.73366666666666669 0
		0.077333333333333323 0.72533333333333339 0
		0.025000000000000005 0.71699999999999997 0
		0.025000000000000005 0.70866666666666644 0
		0.025000000000000005 0.70033333333333336 0
		0.025000000000000005 0.69200000000000006 0
		0.037666666666666668 0.69066666666666665 0
		0.050333333333333334 0.68933333333333335 0
		0.063 0.68800000000000006 0
		0.088999999999999996 0.68500000000000005 0
		0.095000000000000001 0.68000000000000005 0
		0.095000000000000001 0.64200000000000002 0
		0.095000000000000015 0.45700000000000002 0
		0.095000000000000015 0.27199999999999996 0
		0.095000000000000015 0.087000000000000008 0
		0.095000000000000001 0.036000000000000004 0
		0.091999999999999985 0.034000000000000002 0
		0.02 0.029000000000000001 0
		0.02 0.019333333333333334 0
		0.02 0.0096666666666666672 0
		0.02 0 0
		0.10133333333333334 0 0
		0.18266666666666667 0 0
		0.26400000000000001 0 0
		0.26400000000000001 0.0096666666666666672 0
		0.26400000000000001 0.019333333333333334 0
		0.26400000000000001 0.029000000000000001 0
		0.193 0.034000000000000002 0
		0.189 0.036000000000000004 0
		0.189 0.087000000000000008 0
		0.18899999999999997 0.30333333333333329 0
		0.18899999999999997 0.51966666666666661 0
		0.18899999999999997 0.7360000000000001 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_l_3" -p "grp_faceboard_uLipRollInn_txt";
	setAttr ".t" -type "double3" 3.573 0 0 ;
createNode transform -n "curve61" -p "Char_l_3";
createNode nurbsCurve -n "curveShape61" -p "curve61";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 34 1 no 3
		39 0 0 0 0.0092195444572928942 0.0092195444572928942 0.0092195444572928942 0.16819753035471205 0.16819753035471205 0.16819753035471205 0.19319753035471196 0.19319753035471196
		 0.19319753035471196 0.23140747670379758 0.23140747670379758 0.23140747670379758 1.2314074767037977 1.2314074767037977 1.2314074767037977 1.7864074767037978 1.7864074767037978 1.7864074767037978 2.7864074767037978 2.7864074767037978
		 2.7864074767037978 2.8154074767037978 2.8154074767037978 2.8154074767037978 3.059407476703798 3.059407476703798 3.059407476703798 3.0884074767037979 3.0884074767037979 3.0884074767037979 4.0884074767037983 4.0884074767037983
		 4.0884074767037983 4.7374074767037984 4.7374074767037984 4.7374074767037984
		37
		0.18899999999999997 0.7360000000000001 0
		0.18666666666666668 0.73799999999999999 0
		0.18433333333333332 0.73999999999999988 0
		0.18200000000000002 0.74199999999999999 0
		0.12966666666666665 0.73366666666666669 0
		0.077333333333333323 0.72533333333333339 0
		0.025000000000000005 0.71699999999999997 0
		0.025000000000000005 0.70866666666666644 0
		0.025000000000000005 0.70033333333333336 0
		0.025000000000000005 0.69200000000000006 0
		0.037666666666666668 0.69066666666666665 0
		0.050333333333333334 0.68933333333333335 0
		0.063 0.68800000000000006 0
		0.088999999999999996 0.68500000000000005 0
		0.095000000000000001 0.68000000000000005 0
		0.095000000000000001 0.64200000000000002 0
		0.095000000000000015 0.45700000000000002 0
		0.095000000000000015 0.27199999999999996 0
		0.095000000000000015 0.087000000000000008 0
		0.095000000000000001 0.036000000000000004 0
		0.091999999999999985 0.034000000000000002 0
		0.02 0.029000000000000001 0
		0.02 0.019333333333333334 0
		0.02 0.0096666666666666672 0
		0.02 0 0
		0.10133333333333334 0 0
		0.18266666666666667 0 0
		0.26400000000000001 0 0
		0.26400000000000001 0.0096666666666666672 0
		0.26400000000000001 0.019333333333333334 0
		0.26400000000000001 0.029000000000000001 0
		0.193 0.034000000000000002 0
		0.189 0.036000000000000004 0
		0.189 0.087000000000000008 0
		0.18899999999999997 0.30333333333333329 0
		0.18899999999999997 0.51966666666666661 0
		0.18899999999999997 0.7360000000000001 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_I_1" -p "grp_faceboard_uLipRollInn_txt";
	setAttr ".t" -type "double3" 3.852 0 0 ;
createNode transform -n "curve62" -p "Char_I_1";
createNode nurbsCurve -n "curveShape62" -p "curve62";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 34 1 no 3
		39 0 0 0 1 1 1 1.0289999999999999 1.0289999999999999 1.0289999999999999 1.3079999999999998 1.3079999999999998
		 1.3079999999999998 1.3369999999999997 1.3369999999999997 1.3369999999999997 2.3369999999999997 2.3369999999999997 2.3369999999999997 2.843 2.843 2.843 3.843 3.843
		 3.843 3.8719999999999999 3.8719999999999999 3.8719999999999999 4.1509999999999998 4.1509999999999998 4.1509999999999998 4.1799999999999997 4.1799999999999997 4.1799999999999997 5.1799999999999997 5.1799999999999997
		 5.1799999999999997 5.6859999999999999 5.6859999999999999 5.6859999999999999
		37
		0.224 0.59899999999999998 0
		0.224 0.65500000000000003 0
		0.22700000000000001 0.65700000000000003 0
		0.314 0.66300000000000003 0
		0.314 0.67266666666666663 0
		0.314 0.68233333333333335 0
		0.314 0.69200000000000006 0
		0.221 0.69200000000000006 0
		0.128 0.69200000000000006 0
		0.035000000000000003 0.69200000000000006 0
		0.035000000000000003 0.68233333333333324 0
		0.035000000000000003 0.67266666666666663 0
		0.035000000000000003 0.66300000000000003 0
		0.123 0.65700000000000003 0
		0.125 0.65500000000000003 0
		0.125 0.59899999999999998 0
		0.125 0.43033333333333329 0
		0.125 0.26166666666666666 0
		0.125 0.093000000000000013 0
		0.125 0.036999999999999998 0
		0.123 0.035000000000000003 0
		0.035000000000000003 0.029000000000000001 0
		0.035000000000000003 0.019333333333333334 0
		0.035000000000000003 0.0096666666666666672 0
		0.035000000000000003 0 0
		0.128 0 0
		0.221 0 0
		0.314 0 0
		0.314 0.0096666666666666672 0
		0.314 0.019333333333333334 0
		0.314 0.029000000000000001 0
		0.22700000000000001 0.035000000000000003 0
		0.224 0.036999999999999998 0
		0.224 0.092999999999999999 0
		0.224 0.26166666666666666 0
		0.224 0.43033333333333329 0
		0.224 0.59899999999999998 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_n_4" -p "grp_faceboard_uLipRollInn_txt";
	setAttr ".t" -type "double3" 4.201 0 0 ;
createNode transform -n "curve63" -p "Char_n_4";
createNode nurbsCurve -n "curveShape63" -p "curve63";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 70 1 no 3
		75 0 0 0 1 1 1 2 2 2 2.0772787163454467 2.0772787163454467
		 2.0772787163454467 2.2283614751235414 2.2283614751235414 2.2283614751235414 2.2533614751235413 2.2533614751235413 2.2533614751235413 2.2916890109170152 2.2916890109170152 2.2916890109170152 3.2916890109170152 3.2916890109170152
		 3.2916890109170152 3.6066890109170151 3.6066890109170151 3.6066890109170151 4.6066890109170151 4.6066890109170151 4.6066890109170151 4.635689010917015 4.635689010917015 4.635689010917015 4.8796890109170148 4.8796890109170148
		 4.8796890109170148 4.9086890109170147 4.9086890109170147 4.9086890109170147 5.9086890109170147 5.9086890109170147 5.9086890109170147 6.1426890109170147 6.1426890109170147 6.1426890109170147 7.1426890109170147 7.1426890109170147
		 7.1426890109170147 8.1426890109170138 8.1426890109170138 8.1426890109170138 9.1426890109170138 9.1426890109170138 9.1426890109170138 9.3786890109170145 9.3786890109170145 9.3786890109170145 10.378689010917014 10.378689010917014
		 10.378689010917014 10.407689010917014 10.407689010917014 10.407689010917014 10.651689010917014 10.651689010917014 10.651689010917014 10.680689010917014 10.680689010917014 10.680689010917014 11.680689010917014 11.680689010917014
		 11.680689010917014 11.936689010917014 11.936689010917014 11.936689010917014
		73
		0.52900000000000003 0.34300000000000003 0
		0.52900000000000003 0.44400000000000001 0
		0.47400000000000003 0.502 0
		0.38200000000000001 0.502 0
		0.308 0.502 0
		0.26200000000000001 0.46600000000000003 0
		0.20000000000000001 0.42599999999999999 0
		0.19533333333333336 0.45133333333333336 0
		0.19066666666666668 0.47666666666666674 0
		0.18600000000000003 0.502 0
		0.13633333333333333 0.4936666666666667 0
		0.08666666666666667 0.48533333333333339 0
		0.036999999999999998 0.47700000000000004 0
		0.036999999999999998 0.46866666666666673 0
		0.036999999999999998 0.46033333333333343 0
		0.036999999999999998 0.45200000000000001 0
		0.049666666666666665 0.45033333333333331 0
		0.062333333333333331 0.44866666666666671 0
		0.074999999999999997 0.44700000000000001 0
		0.10100000000000001 0.443 0
		0.107 0.438 0
		0.107 0.40200000000000002 0
		0.107 0.29700000000000004 0
		0.107 0.19200000000000003 0
		0.107 0.087000000000000008 0
		0.107 0.036000000000000004 0
		0.10400000000000001 0.034000000000000002 0
		0.032000000000000001 0.029000000000000001 0
		0.032000000000000001 0.019333333333333334 0
		0.032000000000000001 0.0096666666666666672 0
		0.032000000000000001 0 0
		0.11333333333333336 0 0
		0.19466666666666668 0 0
		0.27600000000000002 0 0
		0.27600000000000002 0.0096666666666666672 0
		0.27600000000000002 0.019333333333333334 0
		0.27600000000000002 0.029000000000000001 0
		0.20500000000000002 0.034000000000000002 0
		0.20100000000000001 0.036000000000000004 0
		0.20100000000000001 0.087000000000000008 0
		0.20099999999999998 0.16500000000000001 0
		0.20099999999999998 0.24300000000000002 0
		0.20099999999999998 0.32100000000000001 0
		0.20100000000000001 0.34600000000000003 0
		0.20300000000000001 0.35999999999999999 0
		0.21099999999999999 0.376 0
		0.23200000000000001 0.41500000000000004 0
		0.27700000000000002 0.44800000000000001 0
		0.33000000000000002 0.44800000000000001 0
		0.39800000000000002 0.44800000000000001 0
		0.435 0.41000000000000003 0
		0.435 0.32300000000000001 0
		0.43499999999999989 0.24433333333333337 0
		0.43499999999999989 0.16566666666666668 0
		0.43499999999999989 0.087000000000000008 0
		0.435 0.036000000000000004 0
		0.432 0.034000000000000002 0
		0.35999999999999999 0.029000000000000001 0
		0.36000000000000004 0.019333333333333334 0
		0.36000000000000004 0.0096666666666666672 0
		0.36000000000000004 0 0
		0.4413333333333333 0 0
		0.52266666666666672 0 0
		0.60399999999999998 0 0
		0.60399999999999998 0.0096666666666666672 0
		0.60399999999999998 0.019333333333333334 0
		0.60399999999999998 0.029000000000000001 0
		0.53300000000000003 0.034000000000000002 0
		0.52900000000000003 0.036000000000000004 0
		0.52900000000000003 0.087000000000000008 0
		0.52900000000000003 0.17233333333333337 0
		0.52900000000000003 0.25766666666666671 0
		0.52900000000000003 0.34300000000000003 0
		;
	setAttr ".dep" yes;
createNode transform -n "grp_faceboard_lowerLipRollInside_offset" -p "ctrl_faceboard_facial";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -16.885746564233692 -103.30309657210145 0 ;
	setAttr ".s" -type "double3" 0.31154353235894272 0.31154353235894272 0.31154353235894272 ;
	setAttr ".rp" -type "double3" -7.6522896379155201 -45.782008502721986 0 ;
	setAttr ".sp" -type "double3" -24.562505213874839 -146.95220329586095 0 ;
	setAttr ".spt" -type "double3" 16.91021557595932 101.17019479313896 0 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF3.0303030303030312\nsS'translateY'\np6\nF-1.2499999999999432\nsS'translateZ'\np7\nF0\nsS'scaleX'\np8\nF1.5151515151515151\nsS'scaleY'\np9\nF1.0000000000000002\nsS'scaleZ'\np10\nF-1.0000000000000002\nsS'rotateX'\np11\nF-180\nsS'rotateY'\np12\nF0\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF3.0303030303030312\nsg6\nF-1.2499999999999432\nsg7\nF0\nsg8\nF1.5151515151515151\nsg9\nF1.0000000000000002\nsg10\nF-1.0000000000000002\nsg11\nF-180\nsg12\nF0\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode nurbsCurve -n "grp_faceboard_lowerLipRollInside_offsetShape" -p "grp_faceboard_lowerLipRollInside_offset";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-24.514182581383004 -146.95143437536646 0
		-24.514182581383004 -146.95297221635545 0
		-24.592005975543486 -146.95297221635545 0
		-24.592005975543486 -146.95143437536646 0
		-24.514182581383004 -146.95143437536646 0
		;
createNode transform -n "ctrl_faceboard_lowerLipRollInside" -p "grp_faceboard_lowerLipRollInside_offset";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -24.588820126270267 -146.95220329586095 0 ;
	setAttr ".sp" -type "double3" -24.588820126270267 -146.95220329586095 0 ;
	setAttr ".mntl" -type "double3" 0 -0.01 -0.99999999999999967 ;
	setAttr ".mxtl" -type "double3" 0.07 0.01 0.99999999999999967 ;
	setAttr ".mtxe" yes;
	setAttr ".xtxe" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nssS'neutralPose'\np6\n(dp7\ng5\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" 1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
createNode nurbsCurve -n "ctrl_faceboard_lowerLipRollInsideShape1" -p "ctrl_faceboard_lowerLipRollInside";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.95461224260004 -3.1654514221997194e-10
		-24.591229074100397 -146.95461224260004 -3.1654514221997194e-10
		-24.58641118087322 -146.95461224260004 -3.1654514221997194e-10
		-24.58641118087322 -146.95461224260004 -3.1654514221997194e-10
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.94979434937287 -3.1654514144519565e-10
		;
createNode transform -n "grp_faceboard_lLipRollInn_txt" -p "grp_faceboard_lowerLipRollInside_offset";
	setAttr ".tmp" yes;
	setAttr ".t" -type "double3" -24.507640295654625 -146.95565120313074 0 ;
	setAttr ".s" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "Char_l_4" -p "grp_faceboard_lLipRollInn_txt";
createNode transform -n "curve65" -p "Char_l_4";
createNode nurbsCurve -n "curveShape65" -p "curve65";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 34 1 no 3
		39 0 0 0 0.0092195444572928942 0.0092195444572928942 0.0092195444572928942 0.16819753035471205 0.16819753035471205 0.16819753035471205 0.19319753035471196 0.19319753035471196
		 0.19319753035471196 0.23140747670379758 0.23140747670379758 0.23140747670379758 1.2314074767037977 1.2314074767037977 1.2314074767037977 1.7864074767037978 1.7864074767037978 1.7864074767037978 2.7864074767037978 2.7864074767037978
		 2.7864074767037978 2.8154074767037978 2.8154074767037978 2.8154074767037978 3.059407476703798 3.059407476703798 3.059407476703798 3.0884074767037979 3.0884074767037979 3.0884074767037979 4.0884074767037983 4.0884074767037983
		 4.0884074767037983 4.7374074767037984 4.7374074767037984 4.7374074767037984
		37
		0.18899999999999997 0.7360000000000001 0
		0.18666666666666668 0.73799999999999999 0
		0.18433333333333332 0.73999999999999988 0
		0.18200000000000002 0.74199999999999999 0
		0.12966666666666665 0.73366666666666669 0
		0.077333333333333323 0.72533333333333339 0
		0.025000000000000005 0.71699999999999997 0
		0.025000000000000005 0.70866666666666644 0
		0.025000000000000005 0.70033333333333336 0
		0.025000000000000005 0.69200000000000006 0
		0.037666666666666668 0.69066666666666665 0
		0.050333333333333334 0.68933333333333335 0
		0.063 0.68800000000000006 0
		0.088999999999999996 0.68500000000000005 0
		0.095000000000000001 0.68000000000000005 0
		0.095000000000000001 0.64200000000000002 0
		0.095000000000000015 0.45700000000000002 0
		0.095000000000000015 0.27199999999999996 0
		0.095000000000000015 0.087000000000000008 0
		0.095000000000000001 0.036000000000000004 0
		0.091999999999999985 0.034000000000000002 0
		0.02 0.029000000000000001 0
		0.02 0.019333333333333334 0
		0.02 0.0096666666666666672 0
		0.02 0 0
		0.10133333333333334 0 0
		0.18266666666666667 0 0
		0.26400000000000001 0 0
		0.26400000000000001 0.0096666666666666672 0
		0.26400000000000001 0.019333333333333334 0
		0.26400000000000001 0.029000000000000001 0
		0.193 0.034000000000000002 0
		0.189 0.036000000000000004 0
		0.189 0.087000000000000008 0
		0.18899999999999997 0.30333333333333329 0
		0.18899999999999997 0.51966666666666661 0
		0.18899999999999997 0.7360000000000001 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_L_3" -p "grp_faceboard_lLipRollInn_txt";
	setAttr ".t" -type "double3" 0.279 0 0 ;
createNode transform -n "curve66" -p "Char_L_3";
createNode nurbsCurve -n "curveShape66" -p "curve66";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 43 1 no 3
		48 0 0 0 1 1 1 1.0289999999999999 1.0289999999999999 1.0289999999999999 1.3140000000000001 1.3140000000000001
		 1.3140000000000001 1.343 1.343 1.343 2.343 2.343 2.343 2.8490000000000002 2.8490000000000002 2.8490000000000002 3.8490000000000002 3.8490000000000002
		 3.8490000000000002 3.8780000000000001 3.8780000000000001 3.8780000000000001 4.3970000000000002 4.3970000000000002 4.3970000000000002 4.5764017837146556 4.5764017837146556 4.5764017837146556 4.6064017837146558 4.6064017837146558
		 4.6064017837146558 5.6064017837146558 5.6064017837146558 5.6064017837146558 6.6064017837146558 6.6064017837146558 6.6064017837146558 7.6064017837146558 7.6064017837146558 7.6064017837146558 8.085401783714655 8.085401783714655
		 8.085401783714655
		46
		0.224 0.59899999999999998 0
		0.224 0.65500000000000003 0
		0.22700000000000001 0.65700000000000003 0
		0.32000000000000001 0.66300000000000003 0
		0.32000000000000001 0.67266666666666663 0
		0.32000000000000001 0.68233333333333335 0
		0.32000000000000001 0.69200000000000006 0
		0.22500000000000001 0.69200000000000006 0
		0.13 0.69200000000000006 0
		0.035000000000000003 0.69200000000000006 0
		0.035000000000000003 0.68233333333333324 0
		0.035000000000000003 0.67266666666666663 0
		0.035000000000000003 0.66300000000000003 0
		0.123 0.65700000000000003 0
		0.125 0.65500000000000003 0
		0.125 0.59899999999999998 0
		0.125 0.43033333333333329 0
		0.125 0.26166666666666666 0
		0.125 0.093000000000000013 0
		0.125 0.036999999999999998 0
		0.123 0.035000000000000003 0
		0.035000000000000003 0.029000000000000001 0
		0.035000000000000003 0.019333333333333334 0
		0.035000000000000003 0.0096666666666666672 0
		0.035000000000000003 0 0
		0.20800000000000005 0 0
		0.38100000000000006 0 0
		0.55400000000000005 0 0
		0.55800000000000005 0.059666666666666673 0
		0.56200000000000006 0.11933333333333335 0
		0.56600000000000006 0.17900000000000002 0
		0.55600000000000005 0.17899999999999996 0
		0.54600000000000004 0.17899999999999996 0
		0.53600000000000003 0.17899999999999996 0
		0.51600000000000001 0.047999999999999987 0
		0.46100000000000002 0.035000000000000003 0
		0.35599999999999998 0.035000000000000003 0
		0.30599999999999999 0.035000000000000003 0
		0.27000000000000002 0.036999999999999998 0
		0.249 0.044999999999999998 0
		0.22800000000000001 0.053999999999999999 0
		0.224 0.071000000000000008 0
		0.224 0.12 0
		0.224 0.27966666666666667 0
		0.224 0.43933333333333335 0
		0.224 0.59899999999999998 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_i_5" -p "grp_faceboard_lLipRollInn_txt";
	setAttr ".t" -type "double3" 0.84700000000000009 0 0 ;
createNode transform -n "curve67" -p "Char_i_5";
createNode nurbsCurve -n "curveShape67" -p "curve67";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 34 1 no 3
		39 0 0 0 0.025000000000000022 0.025000000000000022 0.025000000000000022 0.063327535793473624 0.063327535793473624 0.063327535793473624 1.0633275357934737 1.0633275357934737
		 1.0633275357934737 1.3783275357934737 1.3783275357934737 1.3783275357934737 2.3783275357934737 2.3783275357934737 2.3783275357934737 2.4073275357934736 2.4073275357934736 2.4073275357934736 2.6513275357934738 2.6513275357934738
		 2.6513275357934738 2.6803275357934737 2.6803275357934737 2.6803275357934737 3.6803275357934737 3.6803275357934737 3.6803275357934737 4.0893275357934735 4.0893275357934735 4.0893275357934735 4.098547080250766 4.098547080250766
		 4.098547080250766 4.2575250661481849 4.2575250661481849 4.2575250661481849
		37
		0.036999999999999998 0.47700000000000004 0
		0.036999999999999998 0.46866666666666673 0
		0.036999999999999998 0.46033333333333343 0
		0.036999999999999998 0.45200000000000001 0
		0.049666666666666665 0.45033333333333331 0
		0.062333333333333331 0.44866666666666671 0
		0.074999999999999997 0.44700000000000001 0
		0.10100000000000001 0.443 0
		0.107 0.438 0
		0.107 0.40200000000000002 0
		0.107 0.29700000000000004 0
		0.107 0.19200000000000003 0
		0.107 0.087000000000000008 0
		0.107 0.036000000000000004 0
		0.10400000000000001 0.034000000000000002 0
		0.032000000000000001 0.029000000000000001 0
		0.032000000000000001 0.019333333333333334 0
		0.032000000000000001 0.0096666666666666672 0
		0.032000000000000001 0 0
		0.11333333333333336 0 0
		0.19466666666666668 0 0
		0.27600000000000002 0 0
		0.27600000000000002 0.0096666666666666672 0
		0.27600000000000002 0.019333333333333334 0
		0.27600000000000002 0.029000000000000001 0
		0.20500000000000002 0.034000000000000002 0
		0.20100000000000001 0.036000000000000004 0
		0.20100000000000001 0.087000000000000008 0
		0.20099999999999998 0.2233333333333333 0
		0.20099999999999998 0.35966666666666663 0
		0.20099999999999998 0.496 0
		0.19866666666666669 0.49800000000000005 0
		0.19633333333333333 0.5 0
		0.19400000000000003 0.502 0
		0.14166666666666666 0.4936666666666667 0
		0.089333333333333334 0.48533333333333339 0
		0.036999999999999998 0.47700000000000004 0
		;
	setAttr ".dep" yes;
createNode transform -n "curve68" -p "Char_i_5";
createNode nurbsCurve -n "curveShape68" -p "curve68";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.153 0.71499999999999997 0
		0.11700000000000001 0.71499999999999997 0
		0.091999999999999998 0.68900000000000006 0
		0.091999999999999998 0.65300000000000002 0
		0.091999999999999998 0.61799999999999999 0
		0.11700000000000001 0.59299999999999997 0
		0.153 0.59299999999999997 0
		0.19 0.59299999999999997 0
		0.21299999999999999 0.61799999999999999 0
		0.214 0.65300000000000002 0
		0.214 0.68900000000000006 0
		0.19 0.71499999999999997 0
		0.153 0.71499999999999997 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_p_5" -p "grp_faceboard_lLipRollInn_txt";
	setAttr ".t" -type "double3" 1.1380000000000001 0 0 ;
createNode transform -n "curve69" -p "Char_p_5";
createNode nurbsCurve -n "curveShape69" -p "curve69";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 19 1 no 3
		24 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 5 5 5 6 6 6 6.1639999999999997 6.1639999999999997
		 6.1639999999999997
		22
		0.19400000000000001 0.32100000000000001 0
		0.19400000000000001 0.34600000000000003 0
		0.19800000000000001 0.35999999999999999 0
		0.20700000000000002 0.378 0
		0.23000000000000001 0.42399999999999999 0
		0.27300000000000002 0.44800000000000001 0
		0.32600000000000001 0.44800000000000001 0
		0.36599999999999999 0.44800000000000001 0
		0.45500000000000002 0.42199999999999999 0
		0.45500000000000002 0.25 0
		0.45500000000000002 0.10300000000000004 0
		0.40900000000000003 0.023 0
		0.309 0.023 0
		0.25700000000000001 0.023 0
		0.217 0.050000000000000003 0
		0.20100000000000001 0.096000000000000002 0
		0.19500000000000001 0.114 0
		0.19400000000000001 0.13400000000000001 0
		0.19400000000000001 0.157 0
		0.19400000000000003 0.21166666666666667 0
		0.19400000000000003 0.26633333333333331 0
		0.19400000000000003 0.32100000000000001 0
		;
	setAttr ".dep" yes;
createNode transform -n "curve70" -p "Char_p_5";
createNode nurbsCurve -n "curveShape70" -p "curve70";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 46 1 no 3
		51 0 0 0 0.025000000000000022 0.025000000000000022 0.025000000000000022 0.063327535793473638 0.063327535793473638 0.063327535793473638 1.0633275357934737 1.0633275357934737
		 1.0633275357934737 1.6083275357934737 1.6083275357934737 1.6083275357934737 2.6083275357934737 2.6083275357934737 2.6083275357934737 2.6373275357934736 2.6373275357934736 2.6373275357934736 2.8963275357934735 2.8963275357934735
		 2.8963275357934735 2.9253275357934734 2.9253275357934734 2.9253275357934734 3.9253275357934734 3.9253275357934734 3.9253275357934734 4.0793275357934737 4.0793275357934737 4.0793275357934737 5.0793275357934737 5.0793275357934737
		 5.0793275357934737 6.0793275357934737 6.0793275357934737 6.0793275357934737 7.0793275357934737 7.0793275357934737 7.0793275357934737 8.0793275357934746 8.0793275357934746 8.0793275357934746 8.1544607508185223 8.1544607508185223
		 8.1544607508185223 8.3075162962914 8.3075162962914 8.3075162962914
		49
		0.029999999999999999 0.47700000000000004 0
		0.029999999999999999 0.46866666666666673 0
		0.029999999999999999 0.46033333333333343 0
		0.029999999999999999 0.45200000000000001 0
		0.042666666666666665 0.45033333333333331 0
		0.055333333333333339 0.44866666666666671 0
		0.068000000000000005 0.44700000000000001 0
		0.094 0.443 0
		0.10000000000000001 0.438 0
		0.10000000000000001 0.40200000000000002 0
		0.10000000000000002 0.22033333333333335 0
		0.10000000000000002 0.038666666666666662 0
		0.10000000000000002 -0.14300000000000002 0
		0.10000000000000001 -0.19400000000000001 0
		0.095000000000000001 -0.19600000000000001 0
		0.025000000000000001 -0.20100000000000001 0
		0.025000000000000005 -0.2106666666666667 0
		0.025000000000000005 -0.22033333333333338 0
		0.025000000000000005 -0.23000000000000001 0
		0.11133333333333335 -0.23000000000000001 0
		0.19766666666666668 -0.23000000000000001 0
		0.28400000000000003 -0.23000000000000001 0
		0.28400000000000003 -0.22033333333333338 0
		0.28400000000000003 -0.2106666666666667 0
		0.28400000000000003 -0.20099999999999998 0
		0.20000000000000001 -0.19600000000000001 0
		0.19400000000000001 -0.19400000000000001 0
		0.19400000000000001 -0.14300000000000002 0
		0.19400000000000003 -0.091666666666666674 0
		0.19400000000000003 -0.040333333333333339 0
		0.19400000000000003 0.011000000000000001 0
		0.215 -0.0010000000000000009 0
		0.26200000000000001 -0.012 0
		0.308 -0.012 0
		0.443 -0.012 0
		0.55900000000000005 0.049999999999999989 0
		0.55900000000000005 0.25600000000000001 0
		0.55900000000000005 0.32700000000000001 0
		0.54600000000000004 0.502 0
		0.36399999999999999 0.502 0
		0.29099999999999998 0.502 0
		0.23300000000000001 0.45300000000000001 0
		0.19400000000000001 0.42799999999999999 0
		0.18966666666666665 0.45266666666666672 0
		0.18533333333333335 0.47733333333333339 0
		0.18099999999999997 0.502 0
		0.13066666666666668 0.4936666666666667 0
		0.08033333333333334 0.48533333333333334 0
		0.030000000000000002 0.47700000000000009 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_R_2" -p "grp_faceboard_lLipRollInn_txt";
	setAttr ".t" -type "double3" 1.746 0 0 ;
createNode transform -n "curve71" -p "Char_R_2";
createNode nurbsCurve -n "curveShape71" -p "curve71";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 61 1 no 3
		66 0 0 0 1 1 1 2 2 2 3 3
		 3 3.081 3.081 3.081 3.1099999999999999 3.1099999999999999 3.1099999999999999 4.1099999999999994 4.1099999999999994 4.1099999999999994 5.1099999999999994 5.1099999999999994
		 5.1099999999999994 5.1119999999999992 5.1119999999999992 5.1119999999999992 6.1119999999999992 6.1119999999999992 6.1119999999999992 7.1119999999999992 7.1119999999999992 7.1119999999999992 7.403999999999999 7.403999999999999
		 7.403999999999999 7.4329999999999989 7.4329999999999989 7.4329999999999989 8.4329999999999998 8.4329999999999998 8.4329999999999998 8.9390000000000001 8.9390000000000001 8.9390000000000001 9.9390000000000001 9.9390000000000001
		 9.9390000000000001 9.968 9.968 9.968 10.247 10.247 10.247 10.276 10.276 10.276 11.276 11.276
		 11.276 11.509 11.509 11.509 11.578000000000001 11.578000000000001 11.578000000000001
		64
		0.29299999999999998 0.32600000000000001 0
		0.35299999999999998 0.32600000000000001 0
		0.39900000000000002 0.307 0
		0.41600000000000004 0.23900000000000002 0
		0.42299999999999999 0.21099999999999999 0
		0.434 0.13200000000000001 0
		0.44500000000000001 0.086000000000000007 0
		0.46000000000000002 0.022000000000000006 0
		0.498 0 0
		0.55700000000000005 0 0
		0.58400000000000007 0 0
		0.6110000000000001 0 0
		0.63800000000000001 0 0
		0.63800000000000001 0.0096666666666666672 0
		0.63800000000000001 0.019333333333333334 0
		0.63800000000000001 0.029000000000000001 0
		0.56000000000000005 0.036999999999999998 0
		0.54400000000000004 0.092999999999999999 0
		0.53500000000000003 0.161 0
		0.52300000000000002 0.25 0
		0.505 0.317 0
		0.39900000000000002 0.34300000000000003 0
		0.39900000000000002 0.34366666666666673 0
		0.39900000000000002 0.34433333333333338 0
		0.39900000000000002 0.34500000000000003 0
		0.49299999999999999 0.36299999999999999 0
		0.56200000000000006 0.42599999999999999 0
		0.56200000000000006 0.52100000000000002 0
		0.56200000000000006 0.61699999999999999 0
		0.502 0.69200000000000006 0
		0.32700000000000001 0.69200000000000006 0
		0.22966666666666669 0.69200000000000006 0
		0.13233333333333333 0.69200000000000006 0
		0.035000000000000003 0.69200000000000006 0
		0.035000000000000003 0.68233333333333324 0
		0.035000000000000003 0.67266666666666663 0
		0.035000000000000003 0.66300000000000003 0
		0.123 0.65700000000000003 0
		0.125 0.65500000000000003 0
		0.125 0.59899999999999998 0
		0.125 0.43033333333333329 0
		0.125 0.26166666666666666 0
		0.125 0.093000000000000013 0
		0.125 0.036999999999999998 0
		0.123 0.035000000000000003 0
		0.035000000000000003 0.029000000000000001 0
		0.035000000000000003 0.019333333333333334 0
		0.035000000000000003 0.0096666666666666672 0
		0.035000000000000003 0 0
		0.128 0 0
		0.221 0 0
		0.314 0 0
		0.314 0.0096666666666666672 0
		0.314 0.019333333333333334 0
		0.314 0.029000000000000001 0
		0.22700000000000001 0.035000000000000003 0
		0.224 0.036999999999999998 0
		0.224 0.092999999999999999 0
		0.224 0.17066666666666666 0
		0.224 0.24833333333333338 0
		0.224 0.32600000000000001 0
		0.247 0.32600000000000001 0
		0.27000000000000002 0.32600000000000001 0
		0.29299999999999998 0.32600000000000001 0
		;
	setAttr ".dep" yes;
createNode transform -n "curve72" -p "Char_R_2";
createNode nurbsCurve -n "curveShape72" -p "curve72";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 13 1 no 3
		18 0 0 0 0.246 0.246 0.246 1.246 1.246 1.246 2.246 2.246
		 2.246 3.246 3.246 3.246 3.3250000000000002 3.3250000000000002 3.3250000000000002
		16
		0.224 0.36099999999999999 0
		0.224 0.443 0
		0.224 0.52500000000000002 0
		0.224 0.60699999999999998 0
		0.224 0.64900000000000002 0
		0.23100000000000001 0.65700000000000003 0
		0.29699999999999999 0.65700000000000003 0
		0.371 0.65700000000000003 0
		0.45500000000000002 0.63 0
		0.45500000000000002 0.51200000000000001 0
		0.45500000000000002 0.40700000000000003 0
		0.40000000000000002 0.36099999999999999 0
		0.30299999999999999 0.36099999999999999 0
		0.27666666666666667 0.36099999999999999 0
		0.25033333333333335 0.36099999999999999 0
		0.224 0.36099999999999999 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_o_4" -p "grp_faceboard_lLipRollInn_txt";
	setAttr ".t" -type "double3" 2.39 0 0 ;
createNode transform -n "curve73" -p "Char_o_4";
createNode nurbsCurve -n "curveShape73" -p "curve73";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.28800000000000003 0.502 0
		0.128 0.502 0
		0.049000000000000002 0.40700000000000003 0
		0.049000000000000002 0.245 0
		0.049000000000000002 0.083000000000000018 0
		0.128 -0.012 0
		0.28800000000000003 -0.012 0
		0.45000000000000001 -0.012 0
		0.52800000000000002 0.083000000000000018 0
		0.52800000000000002 0.245 0
		0.52800000000000002 0.40700000000000003 0
		0.45000000000000001 0.502 0
		0.28800000000000003 0.502 0
		;
	setAttr ".dep" yes;
createNode transform -n "curve74" -p "Char_o_4";
createNode nurbsCurve -n "curveShape74" -p "curve74";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.153 0.245 0
		0.153 0.38300000000000001 0
		0.19700000000000001 0.46700000000000003 0
		0.28800000000000003 0.46700000000000003 0
		0.38100000000000001 0.46700000000000003 0
		0.42399999999999999 0.38300000000000001 0
		0.42399999999999999 0.245 0
		0.42399999999999999 0.10699999999999998 0
		0.38100000000000001 0.023 0
		0.28800000000000003 0.023 0
		0.19700000000000001 0.023 0
		0.153 0.10699999999999998 0
		0.153 0.245 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_l_5" -p "grp_faceboard_lLipRollInn_txt";
	setAttr ".t" -type "double3" 2.967 0 0 ;
createNode transform -n "curve75" -p "Char_l_5";
createNode nurbsCurve -n "curveShape75" -p "curve75";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 34 1 no 3
		39 0 0 0 0.0092195444572928942 0.0092195444572928942 0.0092195444572928942 0.16819753035471205 0.16819753035471205 0.16819753035471205 0.19319753035471196 0.19319753035471196
		 0.19319753035471196 0.23140747670379758 0.23140747670379758 0.23140747670379758 1.2314074767037977 1.2314074767037977 1.2314074767037977 1.7864074767037978 1.7864074767037978 1.7864074767037978 2.7864074767037978 2.7864074767037978
		 2.7864074767037978 2.8154074767037978 2.8154074767037978 2.8154074767037978 3.059407476703798 3.059407476703798 3.059407476703798 3.0884074767037979 3.0884074767037979 3.0884074767037979 4.0884074767037983 4.0884074767037983
		 4.0884074767037983 4.7374074767037984 4.7374074767037984 4.7374074767037984
		37
		0.18899999999999997 0.7360000000000001 0
		0.18666666666666668 0.73799999999999999 0
		0.18433333333333332 0.73999999999999988 0
		0.18200000000000002 0.74199999999999999 0
		0.12966666666666665 0.73366666666666669 0
		0.077333333333333323 0.72533333333333339 0
		0.025000000000000005 0.71699999999999997 0
		0.025000000000000005 0.70866666666666644 0
		0.025000000000000005 0.70033333333333336 0
		0.025000000000000005 0.69200000000000006 0
		0.037666666666666668 0.69066666666666665 0
		0.050333333333333334 0.68933333333333335 0
		0.063 0.68800000000000006 0
		0.088999999999999996 0.68500000000000005 0
		0.095000000000000001 0.68000000000000005 0
		0.095000000000000001 0.64200000000000002 0
		0.095000000000000015 0.45700000000000002 0
		0.095000000000000015 0.27199999999999996 0
		0.095000000000000015 0.087000000000000008 0
		0.095000000000000001 0.036000000000000004 0
		0.091999999999999985 0.034000000000000002 0
		0.02 0.029000000000000001 0
		0.02 0.019333333333333334 0
		0.02 0.0096666666666666672 0
		0.02 0 0
		0.10133333333333334 0 0
		0.18266666666666667 0 0
		0.26400000000000001 0 0
		0.26400000000000001 0.0096666666666666672 0
		0.26400000000000001 0.019333333333333334 0
		0.26400000000000001 0.029000000000000001 0
		0.193 0.034000000000000002 0
		0.189 0.036000000000000004 0
		0.189 0.087000000000000008 0
		0.18899999999999997 0.30333333333333329 0
		0.18899999999999997 0.51966666666666661 0
		0.18899999999999997 0.7360000000000001 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_l_6" -p "grp_faceboard_lLipRollInn_txt";
	setAttr ".t" -type "double3" 3.246 0 0 ;
createNode transform -n "curve76" -p "Char_l_6";
createNode nurbsCurve -n "curveShape76" -p "curve76";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 34 1 no 3
		39 0 0 0 0.0092195444572928942 0.0092195444572928942 0.0092195444572928942 0.16819753035471205 0.16819753035471205 0.16819753035471205 0.19319753035471196 0.19319753035471196
		 0.19319753035471196 0.23140747670379758 0.23140747670379758 0.23140747670379758 1.2314074767037977 1.2314074767037977 1.2314074767037977 1.7864074767037978 1.7864074767037978 1.7864074767037978 2.7864074767037978 2.7864074767037978
		 2.7864074767037978 2.8154074767037978 2.8154074767037978 2.8154074767037978 3.059407476703798 3.059407476703798 3.059407476703798 3.0884074767037979 3.0884074767037979 3.0884074767037979 4.0884074767037983 4.0884074767037983
		 4.0884074767037983 4.7374074767037984 4.7374074767037984 4.7374074767037984
		37
		0.18899999999999997 0.7360000000000001 0
		0.18666666666666668 0.73799999999999999 0
		0.18433333333333332 0.73999999999999988 0
		0.18200000000000002 0.74199999999999999 0
		0.12966666666666665 0.73366666666666669 0
		0.077333333333333323 0.72533333333333339 0
		0.025000000000000005 0.71699999999999997 0
		0.025000000000000005 0.70866666666666644 0
		0.025000000000000005 0.70033333333333336 0
		0.025000000000000005 0.69200000000000006 0
		0.037666666666666668 0.69066666666666665 0
		0.050333333333333334 0.68933333333333335 0
		0.063 0.68800000000000006 0
		0.088999999999999996 0.68500000000000005 0
		0.095000000000000001 0.68000000000000005 0
		0.095000000000000001 0.64200000000000002 0
		0.095000000000000015 0.45700000000000002 0
		0.095000000000000015 0.27199999999999996 0
		0.095000000000000015 0.087000000000000008 0
		0.095000000000000001 0.036000000000000004 0
		0.091999999999999985 0.034000000000000002 0
		0.02 0.029000000000000001 0
		0.02 0.019333333333333334 0
		0.02 0.0096666666666666672 0
		0.02 0 0
		0.10133333333333334 0 0
		0.18266666666666667 0 0
		0.26400000000000001 0 0
		0.26400000000000001 0.0096666666666666672 0
		0.26400000000000001 0.019333333333333334 0
		0.26400000000000001 0.029000000000000001 0
		0.193 0.034000000000000002 0
		0.189 0.036000000000000004 0
		0.189 0.087000000000000008 0
		0.18899999999999997 0.30333333333333329 0
		0.18899999999999997 0.51966666666666661 0
		0.18899999999999997 0.7360000000000001 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_I_2" -p "grp_faceboard_lLipRollInn_txt";
	setAttr ".t" -type "double3" 3.525 0 0 ;
createNode transform -n "curve77" -p "Char_I_2";
createNode nurbsCurve -n "curveShape77" -p "curve77";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 34 1 no 3
		39 0 0 0 1 1 1 1.0289999999999999 1.0289999999999999 1.0289999999999999 1.3079999999999998 1.3079999999999998
		 1.3079999999999998 1.3369999999999997 1.3369999999999997 1.3369999999999997 2.3369999999999997 2.3369999999999997 2.3369999999999997 2.843 2.843 2.843 3.843 3.843
		 3.843 3.8719999999999999 3.8719999999999999 3.8719999999999999 4.1509999999999998 4.1509999999999998 4.1509999999999998 4.1799999999999997 4.1799999999999997 4.1799999999999997 5.1799999999999997 5.1799999999999997
		 5.1799999999999997 5.6859999999999999 5.6859999999999999 5.6859999999999999
		37
		0.224 0.59899999999999998 0
		0.224 0.65500000000000003 0
		0.22700000000000001 0.65700000000000003 0
		0.314 0.66300000000000003 0
		0.314 0.67266666666666663 0
		0.314 0.68233333333333335 0
		0.314 0.69200000000000006 0
		0.221 0.69200000000000006 0
		0.128 0.69200000000000006 0
		0.035000000000000003 0.69200000000000006 0
		0.035000000000000003 0.68233333333333324 0
		0.035000000000000003 0.67266666666666663 0
		0.035000000000000003 0.66300000000000003 0
		0.123 0.65700000000000003 0
		0.125 0.65500000000000003 0
		0.125 0.59899999999999998 0
		0.125 0.43033333333333329 0
		0.125 0.26166666666666666 0
		0.125 0.093000000000000013 0
		0.125 0.036999999999999998 0
		0.123 0.035000000000000003 0
		0.035000000000000003 0.029000000000000001 0
		0.035000000000000003 0.019333333333333334 0
		0.035000000000000003 0.0096666666666666672 0
		0.035000000000000003 0 0
		0.128 0 0
		0.221 0 0
		0.314 0 0
		0.314 0.0096666666666666672 0
		0.314 0.019333333333333334 0
		0.314 0.029000000000000001 0
		0.22700000000000001 0.035000000000000003 0
		0.224 0.036999999999999998 0
		0.224 0.092999999999999999 0
		0.224 0.26166666666666666 0
		0.224 0.43033333333333329 0
		0.224 0.59899999999999998 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_n_6" -p "grp_faceboard_lLipRollInn_txt";
	setAttr ".t" -type "double3" 3.874 0 0 ;
createNode transform -n "curve78" -p "Char_n_6";
createNode nurbsCurve -n "curveShape78" -p "curve78";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 70 1 no 3
		75 0 0 0 1 1 1 2 2 2 2.0772787163454467 2.0772787163454467
		 2.0772787163454467 2.2283614751235414 2.2283614751235414 2.2283614751235414 2.2533614751235413 2.2533614751235413 2.2533614751235413 2.2916890109170152 2.2916890109170152 2.2916890109170152 3.2916890109170152 3.2916890109170152
		 3.2916890109170152 3.6066890109170151 3.6066890109170151 3.6066890109170151 4.6066890109170151 4.6066890109170151 4.6066890109170151 4.635689010917015 4.635689010917015 4.635689010917015 4.8796890109170148 4.8796890109170148
		 4.8796890109170148 4.9086890109170147 4.9086890109170147 4.9086890109170147 5.9086890109170147 5.9086890109170147 5.9086890109170147 6.1426890109170147 6.1426890109170147 6.1426890109170147 7.1426890109170147 7.1426890109170147
		 7.1426890109170147 8.1426890109170138 8.1426890109170138 8.1426890109170138 9.1426890109170138 9.1426890109170138 9.1426890109170138 9.3786890109170145 9.3786890109170145 9.3786890109170145 10.378689010917014 10.378689010917014
		 10.378689010917014 10.407689010917014 10.407689010917014 10.407689010917014 10.651689010917014 10.651689010917014 10.651689010917014 10.680689010917014 10.680689010917014 10.680689010917014 11.680689010917014 11.680689010917014
		 11.680689010917014 11.936689010917014 11.936689010917014 11.936689010917014
		73
		0.52900000000000003 0.34300000000000003 0
		0.52900000000000003 0.44400000000000001 0
		0.47400000000000003 0.502 0
		0.38200000000000001 0.502 0
		0.308 0.502 0
		0.26200000000000001 0.46600000000000003 0
		0.20000000000000001 0.42599999999999999 0
		0.19533333333333336 0.45133333333333336 0
		0.19066666666666668 0.47666666666666674 0
		0.18600000000000003 0.502 0
		0.13633333333333333 0.4936666666666667 0
		0.08666666666666667 0.48533333333333339 0
		0.036999999999999998 0.47700000000000004 0
		0.036999999999999998 0.46866666666666673 0
		0.036999999999999998 0.46033333333333343 0
		0.036999999999999998 0.45200000000000001 0
		0.049666666666666665 0.45033333333333331 0
		0.062333333333333331 0.44866666666666671 0
		0.074999999999999997 0.44700000000000001 0
		0.10100000000000001 0.443 0
		0.107 0.438 0
		0.107 0.40200000000000002 0
		0.107 0.29700000000000004 0
		0.107 0.19200000000000003 0
		0.107 0.087000000000000008 0
		0.107 0.036000000000000004 0
		0.10400000000000001 0.034000000000000002 0
		0.032000000000000001 0.029000000000000001 0
		0.032000000000000001 0.019333333333333334 0
		0.032000000000000001 0.0096666666666666672 0
		0.032000000000000001 0 0
		0.11333333333333336 0 0
		0.19466666666666668 0 0
		0.27600000000000002 0 0
		0.27600000000000002 0.0096666666666666672 0
		0.27600000000000002 0.019333333333333334 0
		0.27600000000000002 0.029000000000000001 0
		0.20500000000000002 0.034000000000000002 0
		0.20100000000000001 0.036000000000000004 0
		0.20100000000000001 0.087000000000000008 0
		0.20099999999999998 0.16500000000000001 0
		0.20099999999999998 0.24300000000000002 0
		0.20099999999999998 0.32100000000000001 0
		0.20100000000000001 0.34600000000000003 0
		0.20300000000000001 0.35999999999999999 0
		0.21099999999999999 0.376 0
		0.23200000000000001 0.41500000000000004 0
		0.27700000000000002 0.44800000000000001 0
		0.33000000000000002 0.44800000000000001 0
		0.39800000000000002 0.44800000000000001 0
		0.435 0.41000000000000003 0
		0.435 0.32300000000000001 0
		0.43499999999999989 0.24433333333333337 0
		0.43499999999999989 0.16566666666666668 0
		0.43499999999999989 0.087000000000000008 0
		0.435 0.036000000000000004 0
		0.432 0.034000000000000002 0
		0.35999999999999999 0.029000000000000001 0
		0.36000000000000004 0.019333333333333334 0
		0.36000000000000004 0.0096666666666666672 0
		0.36000000000000004 0 0
		0.4413333333333333 0 0
		0.52266666666666672 0 0
		0.60399999999999998 0 0
		0.60399999999999998 0.0096666666666666672 0
		0.60399999999999998 0.019333333333333334 0
		0.60399999999999998 0.029000000000000001 0
		0.53300000000000003 0.034000000000000002 0
		0.52900000000000003 0.036000000000000004 0
		0.52900000000000003 0.087000000000000008 0
		0.52900000000000003 0.17233333333333337 0
		0.52900000000000003 0.25766666666666671 0
		0.52900000000000003 0.34300000000000003 0
		;
	setAttr ".dep" yes;
createNode transform -n "grp_faceboard_upperLipRollOut_offset" -p "ctrl_faceboard_facial";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -16.885746564233688 -103.30738221262726 0 ;
	setAttr ".s" -type "double3" 0.31154353235894272 0.31154353235894272 0.31154353235894272 ;
	setAttr ".rp" -type "double3" -7.6522896379155201 -45.782008502721986 0 ;
	setAttr ".sp" -type "double3" -24.562505213874839 -146.95220329586095 0 ;
	setAttr ".spt" -type "double3" 16.91021557595932 101.17019479313896 0 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF3.0303030303030312\nsS'translateY'\np6\nF-1.2499999999999432\nsS'translateZ'\np7\nF0\nsS'scaleX'\np8\nF1.5151515151515151\nsS'scaleY'\np9\nF1.0000000000000002\nsS'scaleZ'\np10\nF-1.0000000000000002\nsS'rotateX'\np11\nF-180\nsS'rotateY'\np12\nF0\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF3.0303030303030312\nsg6\nF-1.2499999999999432\nsg7\nF0\nsg8\nF1.5151515151515151\nsg9\nF1.0000000000000002\nsg10\nF-1.0000000000000002\nsg11\nF-180\nsg12\nF0\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode nurbsCurve -n "grp_faceboard_upperLipRollOut_offsetShape" -p "grp_faceboard_upperLipRollOut_offset";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-24.514182581383004 -146.95143437536646 0
		-24.514182581383004 -146.95297221635545 0
		-24.592005975543486 -146.95297221635545 0
		-24.592005975543486 -146.95143437536646 0
		-24.514182581383004 -146.95143437536646 0
		;
createNode transform -n "ctrl_faceboard_upperLipRollOut" -p "grp_faceboard_upperLipRollOut_offset";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -24.588820126270267 -146.95220329586095 0 ;
	setAttr ".sp" -type "double3" -24.588820126270267 -146.95220329586095 0 ;
	setAttr ".mntl" -type "double3" 0 -0.01 -0.99999999999999967 ;
	setAttr ".mxtl" -type "double3" 0.07 0.01 0.99999999999999967 ;
	setAttr ".mtxe" yes;
	setAttr ".xtxe" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nssS'neutralPose'\np6\n(dp7\ng5\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" 1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
createNode nurbsCurve -n "ctrl_faceboard_upperLipRollOutShape1" -p "ctrl_faceboard_upperLipRollOut";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.95461224260004 -3.1654514221997194e-10
		-24.591229074100397 -146.95461224260004 -3.1654514221997194e-10
		-24.58641118087322 -146.95461224260004 -3.1654514221997194e-10
		-24.58641118087322 -146.95461224260004 -3.1654514221997194e-10
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.94979434937287 -3.1654514144519565e-10
		;
createNode transform -n "grp_faceboard_uLipRollOut_txt" -p "grp_faceboard_upperLipRollOut_offset";
	setAttr ".tmp" yes;
	setAttr ".t" -type "double3" -24.507640295654628 -146.95414372366548 0 ;
	setAttr ".s" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "Char_u_3" -p "grp_faceboard_uLipRollOut_txt";
createNode transform -n "curve80" -p "Char_u_3";
createNode nurbsCurve -n "curveShape80" -p "curve80";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 67 1 no 3
		72 0 0 0 0.029000000000000001 0.029000000000000001 0.029000000000000001 1.0289999999999999 1.0289999999999999 1.0289999999999999 1.4379999999999999 1.4379999999999999
		 1.4379999999999999 1.4472195444572928 1.4472195444572928 1.4472195444572928 1.606197530354712 1.606197530354712 1.606197530354712 1.6311975303547119 1.6311975303547119 1.6311975303547119 1.6695250661481855 1.6695250661481855
		 1.6695250661481855 2.6695250661481857 2.6695250661481857 2.6695250661481857 2.8945250661481858 2.8945250661481858 2.8945250661481858 3.8945250661481858 3.8945250661481858 3.8945250661481858 4.8945250661481854 4.8945250661481854
		 4.8945250661481854 5.8945250661481854 5.8945250661481854 5.8945250661481854 6.2345250661481852 6.2345250661481852 6.2345250661481852 6.2437446106054786 6.2437446106054786 6.2437446106054786 6.4027225965028975 6.4027225965028975
		 6.4027225965028975 6.4277225965028979 6.4277225965028979 6.4277225965028979 6.4660501322963713 6.4660501322963713 6.4660501322963713 7.4660501322963713 7.4660501322963713 7.4660501322963713 7.7300501322963715 7.7300501322963715
		 7.7300501322963715 8.7300501322963715 8.7300501322963715 8.7300501322963715 9.7300501322963715 9.7300501322963715 9.7300501322963715 9.790877757599354 9.790877757599354 9.790877757599354 9.9508777575993541 9.9508777575993541
		 9.9508777575993541
		70
		0.59099999999999997 0 0
		0.59099999999999997 0.0096666666666666672 0
		0.59099999999999997 0.019333333333333334 0
		0.59099999999999997 0.029000000000000001 0
		0.52200000000000002 0.034000000000000002 0
		0.51600000000000001 0.036000000000000004 0
		0.51600000000000001 0.087000000000000008 0
		0.51600000000000001 0.2233333333333333 0
		0.51600000000000001 0.35966666666666663 0
		0.51600000000000001 0.496 0
		0.5136666666666666 0.49800000000000005 0
		0.51133333333333331 0.5 0
		0.50900000000000001 0.502 0
		0.45666666666666661 0.4936666666666667 0
		0.40433333333333327 0.48533333333333339 0
		0.35200000000000004 0.47700000000000004 0
		0.35200000000000004 0.46866666666666673 0
		0.35200000000000004 0.46033333333333343 0
		0.35200000000000004 0.45200000000000001 0
		0.36466666666666664 0.45033333333333331 0
		0.37733333333333335 0.44866666666666671 0
		0.38999999999999996 0.44700000000000006 0
		0.41600000000000004 0.443 0
		0.42199999999999999 0.438 0
		0.42199999999999999 0.40200000000000002 0
		0.42199999999999999 0.32700000000000001 0
		0.42199999999999999 0.252 0
		0.42199999999999999 0.17699999999999996 0
		0.42199999999999999 0.14899999999999999 0
		0.41899999999999998 0.127 0
		0.41400000000000003 0.11700000000000001 0
		0.39100000000000001 0.071000000000000008 0
		0.34300000000000003 0.042000000000000003 0
		0.29099999999999998 0.042000000000000003 0
		0.23300000000000001 0.042000000000000003 0
		0.19 0.078000000000000014 0
		0.19 0.156 0
		0.19000000000000003 0.26933333333333331 0
		0.19000000000000003 0.38266666666666671 0
		0.19000000000000003 0.496 0
		0.18766666666666665 0.49800000000000005 0
		0.18533333333333335 0.5 0
		0.18299999999999997 0.502 0
		0.13066666666666668 0.4936666666666667 0
		0.078333333333333338 0.48533333333333339 0
		0.026000000000000006 0.47700000000000004 0
		0.026000000000000006 0.46866666666666673 0
		0.026000000000000006 0.46033333333333343 0
		0.026000000000000006 0.45200000000000001 0
		0.038666666666666676 0.45033333333333331 0
		0.051333333333333342 0.44866666666666671 0
		0.064000000000000001 0.44700000000000001 0
		0.089999999999999997 0.443 0
		0.096000000000000002 0.438 0
		0.096000000000000002 0.40200000000000002 0
		0.096000000000000016 0.314 0
		0.096000000000000016 0.22600000000000001 0
		0.096000000000000016 0.13800000000000001 0
		0.096000000000000002 0.022999999999999993 0
		0.16400000000000001 -0.012 0
		0.23800000000000002 -0.012 0
		0.32300000000000001 -0.012 0
		0.39200000000000002 0.045999999999999999 0
		0.42099999999999999 0.059999999999999998 0
		0.42433333333333328 0.040000000000000001 0
		0.42766666666666664 0.02 0
		0.43099999999999999 0 0
		0.48433333333333334 0 0
		0.53766666666666663 0 0
		0.59099999999999997 0 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_L_4" -p "grp_faceboard_uLipRollOut_txt";
	setAttr ".t" -type "double3" 0.606 0 0 ;
createNode transform -n "curve81" -p "Char_L_4";
createNode nurbsCurve -n "curveShape81" -p "curve81";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 43 1 no 3
		48 0 0 0 1 1 1 1.0289999999999999 1.0289999999999999 1.0289999999999999 1.3140000000000001 1.3140000000000001
		 1.3140000000000001 1.343 1.343 1.343 2.343 2.343 2.343 2.8490000000000002 2.8490000000000002 2.8490000000000002 3.8490000000000002 3.8490000000000002
		 3.8490000000000002 3.8780000000000001 3.8780000000000001 3.8780000000000001 4.3970000000000002 4.3970000000000002 4.3970000000000002 4.5764017837146556 4.5764017837146556 4.5764017837146556 4.6064017837146558 4.6064017837146558
		 4.6064017837146558 5.6064017837146558 5.6064017837146558 5.6064017837146558 6.6064017837146558 6.6064017837146558 6.6064017837146558 7.6064017837146558 7.6064017837146558 7.6064017837146558 8.085401783714655 8.085401783714655
		 8.085401783714655
		46
		0.224 0.59899999999999998 0
		0.224 0.65500000000000003 0
		0.22700000000000001 0.65700000000000003 0
		0.32000000000000001 0.66300000000000003 0
		0.32000000000000001 0.67266666666666663 0
		0.32000000000000001 0.68233333333333335 0
		0.32000000000000001 0.69200000000000006 0
		0.22500000000000001 0.69200000000000006 0
		0.13 0.69200000000000006 0
		0.035000000000000003 0.69200000000000006 0
		0.035000000000000003 0.68233333333333324 0
		0.035000000000000003 0.67266666666666663 0
		0.035000000000000003 0.66300000000000003 0
		0.123 0.65700000000000003 0
		0.125 0.65500000000000003 0
		0.125 0.59899999999999998 0
		0.125 0.43033333333333329 0
		0.125 0.26166666666666666 0
		0.125 0.093000000000000013 0
		0.125 0.036999999999999998 0
		0.123 0.035000000000000003 0
		0.035000000000000003 0.029000000000000001 0
		0.035000000000000003 0.019333333333333334 0
		0.035000000000000003 0.0096666666666666672 0
		0.035000000000000003 0 0
		0.20800000000000005 0 0
		0.38100000000000006 0 0
		0.55400000000000005 0 0
		0.55800000000000005 0.059666666666666673 0
		0.56200000000000006 0.11933333333333335 0
		0.56600000000000006 0.17900000000000002 0
		0.55600000000000005 0.17899999999999996 0
		0.54600000000000004 0.17899999999999996 0
		0.53600000000000003 0.17899999999999996 0
		0.51600000000000001 0.047999999999999987 0
		0.46100000000000002 0.035000000000000003 0
		0.35599999999999998 0.035000000000000003 0
		0.30599999999999999 0.035000000000000003 0
		0.27000000000000002 0.036999999999999998 0
		0.249 0.044999999999999998 0
		0.22800000000000001 0.053999999999999999 0
		0.224 0.071000000000000008 0
		0.224 0.12 0
		0.224 0.27966666666666667 0
		0.224 0.43933333333333335 0
		0.224 0.59899999999999998 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_i_6" -p "grp_faceboard_uLipRollOut_txt";
	setAttr ".t" -type "double3" 1.174 0 0 ;
createNode transform -n "curve82" -p "Char_i_6";
createNode nurbsCurve -n "curveShape82" -p "curve82";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 34 1 no 3
		39 0 0 0 0.025000000000000022 0.025000000000000022 0.025000000000000022 0.063327535793473624 0.063327535793473624 0.063327535793473624 1.0633275357934737 1.0633275357934737
		 1.0633275357934737 1.3783275357934737 1.3783275357934737 1.3783275357934737 2.3783275357934737 2.3783275357934737 2.3783275357934737 2.4073275357934736 2.4073275357934736 2.4073275357934736 2.6513275357934738 2.6513275357934738
		 2.6513275357934738 2.6803275357934737 2.6803275357934737 2.6803275357934737 3.6803275357934737 3.6803275357934737 3.6803275357934737 4.0893275357934735 4.0893275357934735 4.0893275357934735 4.098547080250766 4.098547080250766
		 4.098547080250766 4.2575250661481849 4.2575250661481849 4.2575250661481849
		37
		0.036999999999999998 0.47700000000000004 0
		0.036999999999999998 0.46866666666666673 0
		0.036999999999999998 0.46033333333333343 0
		0.036999999999999998 0.45200000000000001 0
		0.049666666666666665 0.45033333333333331 0
		0.062333333333333331 0.44866666666666671 0
		0.074999999999999997 0.44700000000000001 0
		0.10100000000000001 0.443 0
		0.107 0.438 0
		0.107 0.40200000000000002 0
		0.107 0.29700000000000004 0
		0.107 0.19200000000000003 0
		0.107 0.087000000000000008 0
		0.107 0.036000000000000004 0
		0.10400000000000001 0.034000000000000002 0
		0.032000000000000001 0.029000000000000001 0
		0.032000000000000001 0.019333333333333334 0
		0.032000000000000001 0.0096666666666666672 0
		0.032000000000000001 0 0
		0.11333333333333336 0 0
		0.19466666666666668 0 0
		0.27600000000000002 0 0
		0.27600000000000002 0.0096666666666666672 0
		0.27600000000000002 0.019333333333333334 0
		0.27600000000000002 0.029000000000000001 0
		0.20500000000000002 0.034000000000000002 0
		0.20100000000000001 0.036000000000000004 0
		0.20100000000000001 0.087000000000000008 0
		0.20099999999999998 0.2233333333333333 0
		0.20099999999999998 0.35966666666666663 0
		0.20099999999999998 0.496 0
		0.19866666666666669 0.49800000000000005 0
		0.19633333333333333 0.5 0
		0.19400000000000003 0.502 0
		0.14166666666666666 0.4936666666666667 0
		0.089333333333333334 0.48533333333333339 0
		0.036999999999999998 0.47700000000000004 0
		;
	setAttr ".dep" yes;
createNode transform -n "curve83" -p "Char_i_6";
createNode nurbsCurve -n "curveShape83" -p "curve83";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.153 0.71499999999999997 0
		0.11700000000000001 0.71499999999999997 0
		0.091999999999999998 0.68900000000000006 0
		0.091999999999999998 0.65300000000000002 0
		0.091999999999999998 0.61799999999999999 0
		0.11700000000000001 0.59299999999999997 0
		0.153 0.59299999999999997 0
		0.19 0.59299999999999997 0
		0.21299999999999999 0.61799999999999999 0
		0.214 0.65300000000000002 0
		0.214 0.68900000000000006 0
		0.19 0.71499999999999997 0
		0.153 0.71499999999999997 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_p_6" -p "grp_faceboard_uLipRollOut_txt";
	setAttr ".t" -type "double3" 1.4649999999999999 0 0 ;
createNode transform -n "curve84" -p "Char_p_6";
createNode nurbsCurve -n "curveShape84" -p "curve84";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 19 1 no 3
		24 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 5 5 5 6 6 6 6.1639999999999997 6.1639999999999997
		 6.1639999999999997
		22
		0.19400000000000001 0.32100000000000001 0
		0.19400000000000001 0.34600000000000003 0
		0.19800000000000001 0.35999999999999999 0
		0.20700000000000002 0.378 0
		0.23000000000000001 0.42399999999999999 0
		0.27300000000000002 0.44800000000000001 0
		0.32600000000000001 0.44800000000000001 0
		0.36599999999999999 0.44800000000000001 0
		0.45500000000000002 0.42199999999999999 0
		0.45500000000000002 0.25 0
		0.45500000000000002 0.10300000000000004 0
		0.40900000000000003 0.023 0
		0.309 0.023 0
		0.25700000000000001 0.023 0
		0.217 0.050000000000000003 0
		0.20100000000000001 0.096000000000000002 0
		0.19500000000000001 0.114 0
		0.19400000000000001 0.13400000000000001 0
		0.19400000000000001 0.157 0
		0.19400000000000003 0.21166666666666667 0
		0.19400000000000003 0.26633333333333331 0
		0.19400000000000003 0.32100000000000001 0
		;
	setAttr ".dep" yes;
createNode transform -n "curve85" -p "Char_p_6";
createNode nurbsCurve -n "curveShape85" -p "curve85";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 46 1 no 3
		51 0 0 0 0.025000000000000022 0.025000000000000022 0.025000000000000022 0.063327535793473638 0.063327535793473638 0.063327535793473638 1.0633275357934737 1.0633275357934737
		 1.0633275357934737 1.6083275357934737 1.6083275357934737 1.6083275357934737 2.6083275357934737 2.6083275357934737 2.6083275357934737 2.6373275357934736 2.6373275357934736 2.6373275357934736 2.8963275357934735 2.8963275357934735
		 2.8963275357934735 2.9253275357934734 2.9253275357934734 2.9253275357934734 3.9253275357934734 3.9253275357934734 3.9253275357934734 4.0793275357934737 4.0793275357934737 4.0793275357934737 5.0793275357934737 5.0793275357934737
		 5.0793275357934737 6.0793275357934737 6.0793275357934737 6.0793275357934737 7.0793275357934737 7.0793275357934737 7.0793275357934737 8.0793275357934746 8.0793275357934746 8.0793275357934746 8.1544607508185223 8.1544607508185223
		 8.1544607508185223 8.3075162962914 8.3075162962914 8.3075162962914
		49
		0.029999999999999999 0.47700000000000004 0
		0.029999999999999999 0.46866666666666673 0
		0.029999999999999999 0.46033333333333343 0
		0.029999999999999999 0.45200000000000001 0
		0.042666666666666665 0.45033333333333331 0
		0.055333333333333339 0.44866666666666671 0
		0.068000000000000005 0.44700000000000001 0
		0.094 0.443 0
		0.10000000000000001 0.438 0
		0.10000000000000001 0.40200000000000002 0
		0.10000000000000002 0.22033333333333335 0
		0.10000000000000002 0.038666666666666662 0
		0.10000000000000002 -0.14300000000000002 0
		0.10000000000000001 -0.19400000000000001 0
		0.095000000000000001 -0.19600000000000001 0
		0.025000000000000001 -0.20100000000000001 0
		0.025000000000000005 -0.2106666666666667 0
		0.025000000000000005 -0.22033333333333338 0
		0.025000000000000005 -0.23000000000000001 0
		0.11133333333333335 -0.23000000000000001 0
		0.19766666666666668 -0.23000000000000001 0
		0.28400000000000003 -0.23000000000000001 0
		0.28400000000000003 -0.22033333333333338 0
		0.28400000000000003 -0.2106666666666667 0
		0.28400000000000003 -0.20099999999999998 0
		0.20000000000000001 -0.19600000000000001 0
		0.19400000000000001 -0.19400000000000001 0
		0.19400000000000001 -0.14300000000000002 0
		0.19400000000000003 -0.091666666666666674 0
		0.19400000000000003 -0.040333333333333339 0
		0.19400000000000003 0.011000000000000001 0
		0.215 -0.0010000000000000009 0
		0.26200000000000001 -0.012 0
		0.308 -0.012 0
		0.443 -0.012 0
		0.55900000000000005 0.049999999999999989 0
		0.55900000000000005 0.25600000000000001 0
		0.55900000000000005 0.32700000000000001 0
		0.54600000000000004 0.502 0
		0.36399999999999999 0.502 0
		0.29099999999999998 0.502 0
		0.23300000000000001 0.45300000000000001 0
		0.19400000000000001 0.42799999999999999 0
		0.18966666666666665 0.45266666666666672 0
		0.18533333333333335 0.47733333333333339 0
		0.18099999999999997 0.502 0
		0.13066666666666668 0.4936666666666667 0
		0.08033333333333334 0.48533333333333334 0
		0.030000000000000002 0.47700000000000009 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_R_3" -p "grp_faceboard_uLipRollOut_txt";
	setAttr ".t" -type "double3" 2.073 0 0 ;
createNode transform -n "curve86" -p "Char_R_3";
createNode nurbsCurve -n "curveShape86" -p "curve86";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 61 1 no 3
		66 0 0 0 1 1 1 2 2 2 3 3
		 3 3.081 3.081 3.081 3.1099999999999999 3.1099999999999999 3.1099999999999999 4.1099999999999994 4.1099999999999994 4.1099999999999994 5.1099999999999994 5.1099999999999994
		 5.1099999999999994 5.1119999999999992 5.1119999999999992 5.1119999999999992 6.1119999999999992 6.1119999999999992 6.1119999999999992 7.1119999999999992 7.1119999999999992 7.1119999999999992 7.403999999999999 7.403999999999999
		 7.403999999999999 7.4329999999999989 7.4329999999999989 7.4329999999999989 8.4329999999999998 8.4329999999999998 8.4329999999999998 8.9390000000000001 8.9390000000000001 8.9390000000000001 9.9390000000000001 9.9390000000000001
		 9.9390000000000001 9.968 9.968 9.968 10.247 10.247 10.247 10.276 10.276 10.276 11.276 11.276
		 11.276 11.509 11.509 11.509 11.578000000000001 11.578000000000001 11.578000000000001
		64
		0.29299999999999998 0.32600000000000001 0
		0.35299999999999998 0.32600000000000001 0
		0.39900000000000002 0.307 0
		0.41600000000000004 0.23900000000000002 0
		0.42299999999999999 0.21099999999999999 0
		0.434 0.13200000000000001 0
		0.44500000000000001 0.086000000000000007 0
		0.46000000000000002 0.022000000000000006 0
		0.498 0 0
		0.55700000000000005 0 0
		0.58400000000000007 0 0
		0.6110000000000001 0 0
		0.63800000000000001 0 0
		0.63800000000000001 0.0096666666666666672 0
		0.63800000000000001 0.019333333333333334 0
		0.63800000000000001 0.029000000000000001 0
		0.56000000000000005 0.036999999999999998 0
		0.54400000000000004 0.092999999999999999 0
		0.53500000000000003 0.161 0
		0.52300000000000002 0.25 0
		0.505 0.317 0
		0.39900000000000002 0.34300000000000003 0
		0.39900000000000002 0.34366666666666673 0
		0.39900000000000002 0.34433333333333338 0
		0.39900000000000002 0.34500000000000003 0
		0.49299999999999999 0.36299999999999999 0
		0.56200000000000006 0.42599999999999999 0
		0.56200000000000006 0.52100000000000002 0
		0.56200000000000006 0.61699999999999999 0
		0.502 0.69200000000000006 0
		0.32700000000000001 0.69200000000000006 0
		0.22966666666666669 0.69200000000000006 0
		0.13233333333333333 0.69200000000000006 0
		0.035000000000000003 0.69200000000000006 0
		0.035000000000000003 0.68233333333333324 0
		0.035000000000000003 0.67266666666666663 0
		0.035000000000000003 0.66300000000000003 0
		0.123 0.65700000000000003 0
		0.125 0.65500000000000003 0
		0.125 0.59899999999999998 0
		0.125 0.43033333333333329 0
		0.125 0.26166666666666666 0
		0.125 0.093000000000000013 0
		0.125 0.036999999999999998 0
		0.123 0.035000000000000003 0
		0.035000000000000003 0.029000000000000001 0
		0.035000000000000003 0.019333333333333334 0
		0.035000000000000003 0.0096666666666666672 0
		0.035000000000000003 0 0
		0.128 0 0
		0.221 0 0
		0.314 0 0
		0.314 0.0096666666666666672 0
		0.314 0.019333333333333334 0
		0.314 0.029000000000000001 0
		0.22700000000000001 0.035000000000000003 0
		0.224 0.036999999999999998 0
		0.224 0.092999999999999999 0
		0.224 0.17066666666666666 0
		0.224 0.24833333333333338 0
		0.224 0.32600000000000001 0
		0.247 0.32600000000000001 0
		0.27000000000000002 0.32600000000000001 0
		0.29299999999999998 0.32600000000000001 0
		;
	setAttr ".dep" yes;
createNode transform -n "curve87" -p "Char_R_3";
createNode nurbsCurve -n "curveShape87" -p "curve87";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 13 1 no 3
		18 0 0 0 0.246 0.246 0.246 1.246 1.246 1.246 2.246 2.246
		 2.246 3.246 3.246 3.246 3.3250000000000002 3.3250000000000002 3.3250000000000002
		16
		0.224 0.36099999999999999 0
		0.224 0.443 0
		0.224 0.52500000000000002 0
		0.224 0.60699999999999998 0
		0.224 0.64900000000000002 0
		0.23100000000000001 0.65700000000000003 0
		0.29699999999999999 0.65700000000000003 0
		0.371 0.65700000000000003 0
		0.45500000000000002 0.63 0
		0.45500000000000002 0.51200000000000001 0
		0.45500000000000002 0.40700000000000003 0
		0.40000000000000002 0.36099999999999999 0
		0.30299999999999999 0.36099999999999999 0
		0.27666666666666667 0.36099999999999999 0
		0.25033333333333335 0.36099999999999999 0
		0.224 0.36099999999999999 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_o_5" -p "grp_faceboard_uLipRollOut_txt";
	setAttr ".t" -type "double3" 2.717 0 0 ;
createNode transform -n "curve88" -p "Char_o_5";
createNode nurbsCurve -n "curveShape88" -p "curve88";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.28800000000000003 0.502 0
		0.128 0.502 0
		0.049000000000000002 0.40700000000000003 0
		0.049000000000000002 0.245 0
		0.049000000000000002 0.083000000000000018 0
		0.128 -0.012 0
		0.28800000000000003 -0.012 0
		0.45000000000000001 -0.012 0
		0.52800000000000002 0.083000000000000018 0
		0.52800000000000002 0.245 0
		0.52800000000000002 0.40700000000000003 0
		0.45000000000000001 0.502 0
		0.28800000000000003 0.502 0
		;
	setAttr ".dep" yes;
createNode transform -n "curve89" -p "Char_o_5";
createNode nurbsCurve -n "curveShape89" -p "curve89";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.153 0.245 0
		0.153 0.38300000000000001 0
		0.19700000000000001 0.46700000000000003 0
		0.28800000000000003 0.46700000000000003 0
		0.38100000000000001 0.46700000000000003 0
		0.42399999999999999 0.38300000000000001 0
		0.42399999999999999 0.245 0
		0.42399999999999999 0.10699999999999998 0
		0.38100000000000001 0.023 0
		0.28800000000000003 0.023 0
		0.19700000000000001 0.023 0
		0.153 0.10699999999999998 0
		0.153 0.245 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_l_7" -p "grp_faceboard_uLipRollOut_txt";
	setAttr ".t" -type "double3" 3.294 0 0 ;
createNode transform -n "curve90" -p "Char_l_7";
createNode nurbsCurve -n "curveShape90" -p "curve90";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 34 1 no 3
		39 0 0 0 0.0092195444572928942 0.0092195444572928942 0.0092195444572928942 0.16819753035471205 0.16819753035471205 0.16819753035471205 0.19319753035471196 0.19319753035471196
		 0.19319753035471196 0.23140747670379758 0.23140747670379758 0.23140747670379758 1.2314074767037977 1.2314074767037977 1.2314074767037977 1.7864074767037978 1.7864074767037978 1.7864074767037978 2.7864074767037978 2.7864074767037978
		 2.7864074767037978 2.8154074767037978 2.8154074767037978 2.8154074767037978 3.059407476703798 3.059407476703798 3.059407476703798 3.0884074767037979 3.0884074767037979 3.0884074767037979 4.0884074767037983 4.0884074767037983
		 4.0884074767037983 4.7374074767037984 4.7374074767037984 4.7374074767037984
		37
		0.18899999999999997 0.7360000000000001 0
		0.18666666666666668 0.73799999999999999 0
		0.18433333333333332 0.73999999999999988 0
		0.18200000000000002 0.74199999999999999 0
		0.12966666666666665 0.73366666666666669 0
		0.077333333333333323 0.72533333333333339 0
		0.025000000000000005 0.71699999999999997 0
		0.025000000000000005 0.70866666666666644 0
		0.025000000000000005 0.70033333333333336 0
		0.025000000000000005 0.69200000000000006 0
		0.037666666666666668 0.69066666666666665 0
		0.050333333333333334 0.68933333333333335 0
		0.063 0.68800000000000006 0
		0.088999999999999996 0.68500000000000005 0
		0.095000000000000001 0.68000000000000005 0
		0.095000000000000001 0.64200000000000002 0
		0.095000000000000015 0.45700000000000002 0
		0.095000000000000015 0.27199999999999996 0
		0.095000000000000015 0.087000000000000008 0
		0.095000000000000001 0.036000000000000004 0
		0.091999999999999985 0.034000000000000002 0
		0.02 0.029000000000000001 0
		0.02 0.019333333333333334 0
		0.02 0.0096666666666666672 0
		0.02 0 0
		0.10133333333333334 0 0
		0.18266666666666667 0 0
		0.26400000000000001 0 0
		0.26400000000000001 0.0096666666666666672 0
		0.26400000000000001 0.019333333333333334 0
		0.26400000000000001 0.029000000000000001 0
		0.193 0.034000000000000002 0
		0.189 0.036000000000000004 0
		0.189 0.087000000000000008 0
		0.18899999999999997 0.30333333333333329 0
		0.18899999999999997 0.51966666666666661 0
		0.18899999999999997 0.7360000000000001 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_l_8" -p "grp_faceboard_uLipRollOut_txt";
	setAttr ".t" -type "double3" 3.573 0 0 ;
createNode transform -n "curve91" -p "Char_l_8";
createNode nurbsCurve -n "curveShape91" -p "curve91";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 34 1 no 3
		39 0 0 0 0.0092195444572928942 0.0092195444572928942 0.0092195444572928942 0.16819753035471205 0.16819753035471205 0.16819753035471205 0.19319753035471196 0.19319753035471196
		 0.19319753035471196 0.23140747670379758 0.23140747670379758 0.23140747670379758 1.2314074767037977 1.2314074767037977 1.2314074767037977 1.7864074767037978 1.7864074767037978 1.7864074767037978 2.7864074767037978 2.7864074767037978
		 2.7864074767037978 2.8154074767037978 2.8154074767037978 2.8154074767037978 3.059407476703798 3.059407476703798 3.059407476703798 3.0884074767037979 3.0884074767037979 3.0884074767037979 4.0884074767037983 4.0884074767037983
		 4.0884074767037983 4.7374074767037984 4.7374074767037984 4.7374074767037984
		37
		0.18899999999999997 0.7360000000000001 0
		0.18666666666666668 0.73799999999999999 0
		0.18433333333333332 0.73999999999999988 0
		0.18200000000000002 0.74199999999999999 0
		0.12966666666666665 0.73366666666666669 0
		0.077333333333333323 0.72533333333333339 0
		0.025000000000000005 0.71699999999999997 0
		0.025000000000000005 0.70866666666666644 0
		0.025000000000000005 0.70033333333333336 0
		0.025000000000000005 0.69200000000000006 0
		0.037666666666666668 0.69066666666666665 0
		0.050333333333333334 0.68933333333333335 0
		0.063 0.68800000000000006 0
		0.088999999999999996 0.68500000000000005 0
		0.095000000000000001 0.68000000000000005 0
		0.095000000000000001 0.64200000000000002 0
		0.095000000000000015 0.45700000000000002 0
		0.095000000000000015 0.27199999999999996 0
		0.095000000000000015 0.087000000000000008 0
		0.095000000000000001 0.036000000000000004 0
		0.091999999999999985 0.034000000000000002 0
		0.02 0.029000000000000001 0
		0.02 0.019333333333333334 0
		0.02 0.0096666666666666672 0
		0.02 0 0
		0.10133333333333334 0 0
		0.18266666666666667 0 0
		0.26400000000000001 0 0
		0.26400000000000001 0.0096666666666666672 0
		0.26400000000000001 0.019333333333333334 0
		0.26400000000000001 0.029000000000000001 0
		0.193 0.034000000000000002 0
		0.189 0.036000000000000004 0
		0.189 0.087000000000000008 0
		0.18899999999999997 0.30333333333333329 0
		0.18899999999999997 0.51966666666666661 0
		0.18899999999999997 0.7360000000000001 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_O_2" -p "grp_faceboard_uLipRollOut_txt";
	setAttr ".t" -type "double3" 3.852 0 0 ;
createNode transform -n "curve92" -p "Char_O_2";
createNode nurbsCurve -n "curveShape92" -p "curve92";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.38100000000000001 0.67200000000000004 0
		0.55900000000000005 0.67200000000000004 0
		0.59999999999999998 0.49299999999999999 0
		0.60199999999999998 0.34600000000000003 0
		0.59999999999999998 0.19900000000000001 0
		0.55900000000000005 0.02 0
		0.38100000000000001 0.02 0
		0.20300000000000001 0.02 0
		0.16200000000000001 0.19900000000000001 0
		0.16 0.34600000000000003 0
		0.16200000000000001 0.49299999999999999 0
		0.20300000000000001 0.67200000000000004 0
		0.38100000000000001 0.67200000000000004 0
		;
	setAttr ".dep" yes;
createNode transform -n "curve93" -p "Char_O_2";
createNode nurbsCurve -n "curveShape93" -p "curve93";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 22 1 no 3
		27 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 5 5 5 6 6 6 7 7
		 7 8 8 8
		25
		0.38100000000000001 0.70699999999999996 0
		0.27100000000000002 0.70699999999999996 0
		0.189 0.67300000000000004 0
		0.13300000000000001 0.60999999999999999 0
		0.079000000000000001 0.55000000000000004 0
		0.048000000000000001 0.45900000000000002 0
		0.048000000000000001 0.34600000000000003 0
		0.048000000000000001 0.23400000000000001 0
		0.079000000000000001 0.14200000000000002 0
		0.13300000000000001 0.082000000000000003 0
		0.189 0.019000000000000003 0
		0.27100000000000002 -0.014999999999999999 0
		0.38100000000000001 -0.014999999999999999 0
		0.49199999999999999 -0.014999999999999999 0
		0.57300000000000006 0.019000000000000003 0
		0.629 0.082000000000000003 0
		0.68400000000000005 0.14200000000000002 0
		0.71399999999999997 0.23400000000000001 0
		0.71399999999999997 0.34600000000000003 0
		0.71399999999999997 0.45900000000000002 0
		0.68400000000000005 0.55000000000000004 0
		0.629 0.60999999999999999 0
		0.57300000000000006 0.67300000000000004 0
		0.49199999999999999 0.70699999999999996 0
		0.38100000000000001 0.70699999999999996 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_u_4" -p "grp_faceboard_uLipRollOut_txt";
	setAttr ".t" -type "double3" 4.614 0 0 ;
createNode transform -n "curve94" -p "Char_u_4";
createNode nurbsCurve -n "curveShape94" -p "curve94";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 67 1 no 3
		72 0 0 0 0.029000000000000001 0.029000000000000001 0.029000000000000001 1.0289999999999999 1.0289999999999999 1.0289999999999999 1.4379999999999999 1.4379999999999999
		 1.4379999999999999 1.4472195444572928 1.4472195444572928 1.4472195444572928 1.606197530354712 1.606197530354712 1.606197530354712 1.6311975303547119 1.6311975303547119 1.6311975303547119 1.6695250661481855 1.6695250661481855
		 1.6695250661481855 2.6695250661481857 2.6695250661481857 2.6695250661481857 2.8945250661481858 2.8945250661481858 2.8945250661481858 3.8945250661481858 3.8945250661481858 3.8945250661481858 4.8945250661481854 4.8945250661481854
		 4.8945250661481854 5.8945250661481854 5.8945250661481854 5.8945250661481854 6.2345250661481852 6.2345250661481852 6.2345250661481852 6.2437446106054786 6.2437446106054786 6.2437446106054786 6.4027225965028975 6.4027225965028975
		 6.4027225965028975 6.4277225965028979 6.4277225965028979 6.4277225965028979 6.4660501322963713 6.4660501322963713 6.4660501322963713 7.4660501322963713 7.4660501322963713 7.4660501322963713 7.7300501322963715 7.7300501322963715
		 7.7300501322963715 8.7300501322963715 8.7300501322963715 8.7300501322963715 9.7300501322963715 9.7300501322963715 9.7300501322963715 9.790877757599354 9.790877757599354 9.790877757599354 9.9508777575993541 9.9508777575993541
		 9.9508777575993541
		70
		0.59099999999999997 0 0
		0.59099999999999997 0.0096666666666666672 0
		0.59099999999999997 0.019333333333333334 0
		0.59099999999999997 0.029000000000000001 0
		0.52200000000000002 0.034000000000000002 0
		0.51600000000000001 0.036000000000000004 0
		0.51600000000000001 0.087000000000000008 0
		0.51600000000000001 0.2233333333333333 0
		0.51600000000000001 0.35966666666666663 0
		0.51600000000000001 0.496 0
		0.5136666666666666 0.49800000000000005 0
		0.51133333333333331 0.5 0
		0.50900000000000001 0.502 0
		0.45666666666666661 0.4936666666666667 0
		0.40433333333333327 0.48533333333333339 0
		0.35200000000000004 0.47700000000000004 0
		0.35200000000000004 0.46866666666666673 0
		0.35200000000000004 0.46033333333333343 0
		0.35200000000000004 0.45200000000000001 0
		0.36466666666666664 0.45033333333333331 0
		0.37733333333333335 0.44866666666666671 0
		0.38999999999999996 0.44700000000000006 0
		0.41600000000000004 0.443 0
		0.42199999999999999 0.438 0
		0.42199999999999999 0.40200000000000002 0
		0.42199999999999999 0.32700000000000001 0
		0.42199999999999999 0.252 0
		0.42199999999999999 0.17699999999999996 0
		0.42199999999999999 0.14899999999999999 0
		0.41899999999999998 0.127 0
		0.41400000000000003 0.11700000000000001 0
		0.39100000000000001 0.071000000000000008 0
		0.34300000000000003 0.042000000000000003 0
		0.29099999999999998 0.042000000000000003 0
		0.23300000000000001 0.042000000000000003 0
		0.19 0.078000000000000014 0
		0.19 0.156 0
		0.19000000000000003 0.26933333333333331 0
		0.19000000000000003 0.38266666666666671 0
		0.19000000000000003 0.496 0
		0.18766666666666665 0.49800000000000005 0
		0.18533333333333335 0.5 0
		0.18299999999999997 0.502 0
		0.13066666666666668 0.4936666666666667 0
		0.078333333333333338 0.48533333333333339 0
		0.026000000000000006 0.47700000000000004 0
		0.026000000000000006 0.46866666666666673 0
		0.026000000000000006 0.46033333333333343 0
		0.026000000000000006 0.45200000000000001 0
		0.038666666666666676 0.45033333333333331 0
		0.051333333333333342 0.44866666666666671 0
		0.064000000000000001 0.44700000000000001 0
		0.089999999999999997 0.443 0
		0.096000000000000002 0.438 0
		0.096000000000000002 0.40200000000000002 0
		0.096000000000000016 0.314 0
		0.096000000000000016 0.22600000000000001 0
		0.096000000000000016 0.13800000000000001 0
		0.096000000000000002 0.022999999999999993 0
		0.16400000000000001 -0.012 0
		0.23800000000000002 -0.012 0
		0.32300000000000001 -0.012 0
		0.39200000000000002 0.045999999999999999 0
		0.42099999999999999 0.059999999999999998 0
		0.42433333333333328 0.040000000000000001 0
		0.42766666666666664 0.02 0
		0.43099999999999999 0 0
		0.48433333333333334 0 0
		0.53766666666666663 0 0
		0.59099999999999997 0 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_t_1" -p "grp_faceboard_uLipRollOut_txt";
	setAttr ".t" -type "double3" 5.22 0 0 ;
createNode transform -n "curve95" -p "Char_t_1";
createNode nurbsCurve -n "curveShape95" -p "curve95";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 46 1 no 3
		51 0 0 0 0.03999999999999998 0.03999999999999998 0.03999999999999998 0.16899999999999998 0.16899999999999998 0.16899999999999998 0.29499999999999998 0.29499999999999998
		 0.29499999999999998 0.32399999999999995 0.32399999999999995 0.32399999999999995 0.46398928530426886 0.46398928530426886 0.46398928530426886 0.53998928530426882 0.53998928530426882 0.53998928530426882 0.57998928530426874 0.57998928530426874
		 0.57998928530426874 0.65198928530426881 0.65198928530426881 0.65198928530426881 0.99998928530426878 0.99998928530426878 0.99998928530426878 1.9999892853042689 1.9999892853042689 1.9999892853042689 2.9999892853042689 2.9999892853042689
		 2.9999892853042689 3.0224614903585132 3.0224614903585132 3.0224614903585132 4.0224614903585127 4.0224614903585127 4.0224614903585127 5.0224614903585127 5.0224614903585127 5.0224614903585127 5.3324614903585124 5.3324614903585124
		 5.3324614903585124 5.4614614903585128 5.4614614903585128 5.4614614903585128
		49
		0.32600000000000001 0.45000000000000001 0
		0.32600000000000001 0.46333333333333332 0
		0.32600000000000001 0.47666666666666663 0
		0.32600000000000001 0.48999999999999999 0
		0.28299999999999997 0.48999999999999999 0
		0.23999999999999999 0.48999999999999999 0
		0.19699999999999998 0.48999999999999999 0
		0.19699999999999998 0.53199999999999992 0
		0.19699999999999998 0.57399999999999995 0
		0.19699999999999998 0.61599999999999999 0
		0.18733333333333335 0.61599999999999999 0
		0.17766666666666667 0.61599999999999999 0
		0.16800000000000001 0.61599999999999999 0
		0.14766666666666667 0.57399999999999995 0
		0.12733333333333333 0.53199999999999992 0
		0.107 0.48999999999999999 0
		0.081666666666666665 0.49000000000000005 0
		0.056333333333333339 0.49000000000000005 0
		0.031 0.49000000000000005 0
		0.031 0.47666666666666663 0
		0.031 0.46333333333333332 0
		0.031 0.45000000000000001 0
		0.055 0.45000000000000001 0
		0.079000000000000001 0.45000000000000001 0
		0.10300000000000002 0.45000000000000001 0
		0.10300000000000002 0.33400000000000007 0
		0.10300000000000002 0.218 0
		0.10300000000000002 0.10200000000000002 0
		0.10300000000000001 0 0
		0.17899999999999999 -0.012 0
		0.214 -0.012 0
		0.26500000000000001 -0.012 0
		0.313 0.013999999999999999 0
		0.34200000000000003 0.032000000000000001 0
		0.33933333333333332 0.039 0
		0.33666666666666667 0.045999999999999992 0
		0.33400000000000002 0.052999999999999992 0
		0.31 0.043000000000000003 0
		0.28800000000000003 0.040000000000000001 0
		0.26300000000000001 0.040000000000000001 0
		0.22900000000000001 0.040000000000000001 0
		0.19700000000000001 0.064000000000000001 0
		0.19700000000000001 0.14000000000000001 0
		0.19699999999999998 0.2433333333333334 0
		0.19699999999999998 0.34666666666666668 0
		0.19699999999999998 0.45000000000000001 0
		0.23999999999999999 0.45000000000000001 0
		0.28299999999999997 0.45000000000000001 0
		0.32600000000000001 0.45000000000000001 0
		;
	setAttr ".dep" yes;
createNode transform -n "grp_faceboard_lowerLipRollOut_offset" -p "ctrl_faceboard_facial";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -16.885746564233685 -103.31111463104335 0 ;
	setAttr ".s" -type "double3" 0.31154353235894272 0.31154353235894272 0.31154353235894272 ;
	setAttr ".rp" -type "double3" -7.6522896379155201 -45.782008502721986 0 ;
	setAttr ".sp" -type "double3" -24.562505213874839 -146.95220329586095 0 ;
	setAttr ".spt" -type "double3" 16.91021557595932 101.17019479313896 0 ;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF3.0303030303030312\nsS'translateY'\np6\nF-1.2499999999999432\nsS'translateZ'\np7\nF0\nsS'scaleX'\np8\nF1.5151515151515151\nsS'scaleY'\np9\nF1.0000000000000002\nsS'scaleZ'\np10\nF-1.0000000000000002\nsS'rotateX'\np11\nF-180\nsS'rotateY'\np12\nF0\nsS'rotateZ'\np13\nF0\nssS'neutralPose'\np14\n(dp15\ng5\nF3.0303030303030312\nsg6\nF-1.2499999999999432\nsg7\nF0\nsg8\nF1.5151515151515151\nsg9\nF1.0000000000000002\nsg10\nF-1.0000000000000002\nsg11\nF-180\nsg12\nF0\nsg13\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "swordsman";
	setAttr ".mirror_sibling" -type "string" "None";
createNode nurbsCurve -n "grp_faceboard_lowerLipRollOut_offsetShape" -p "grp_faceboard_lowerLipRollOut_offset";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-24.514182581383004 -146.95143437536646 0
		-24.514182581383004 -146.95297221635545 0
		-24.592005975543486 -146.95297221635545 0
		-24.592005975543486 -146.95143437536646 0
		-24.514182581383004 -146.95143437536646 0
		;
createNode transform -n "ctrl_faceboard_lowerLipRollOut" -p "grp_faceboard_lowerLipRollOut_offset";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "metasection" -ln "metasection" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
	addAttr -ci true -sn "mirror_sibling" -ln "mirror_sibling" -dt "string";
	addAttr -s false -ci true -sn "meta_controls" -ln "meta_controls" -at "message";
	addAttr -ci true -sn "mirrorTrans" -ln "mirrorTrans" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorTransX" -ln "mirrorTransX" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransY" -ln "mirrorTransY" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorTransZ" -ln "mirrorTransZ" -at "double" -p "mirrorTrans";
	addAttr -ci true -sn "mirrorRot" -ln "mirrorRot" -at "compound" -nc 3;
	addAttr -ci true -sn "mirrorRotX" -ln "mirrorRotX" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotY" -ln "mirrorRotY" -at "double" -p "mirrorRot";
	addAttr -ci true -sn "mirrorRotZ" -ln "mirrorRotZ" -at "double" -p "mirrorRot";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -24.588820126270267 -146.95220329586095 0 ;
	setAttr ".sp" -type "double3" -24.588820126270267 -146.95220329586095 0 ;
	setAttr ".mntl" -type "double3" 0 -0.01 -0.99999999999999967 ;
	setAttr ".mxtl" -type "double3" 0.07 0.01 0.99999999999999967 ;
	setAttr ".mtxe" yes;
	setAttr ".xtxe" yes;
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nssS'neutralPose'\np6\n(dp7\ng5\nF0\nss.";
	setAttr ".metasection" -type "string" "body";
	setAttr ".metacharacter" -type "string" "ppNelly";
	setAttr ".mirror_sibling" -type "string" "None";
	setAttr ".mirrorTransX" 1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
createNode nurbsCurve -n "ctrl_faceboard_lowerLipRollOutShape1" -p "ctrl_faceboard_lowerLipRollOut";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.95461224260004 -3.1654514221997194e-10
		-24.591229074100397 -146.95461224260004 -3.1654514221997194e-10
		-24.58641118087322 -146.95461224260004 -3.1654514221997194e-10
		-24.58641118087322 -146.95461224260004 -3.1654514221997194e-10
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.58641118087322 -146.94979434937287 -3.1654514144519565e-10
		-24.591229074100397 -146.94979434937287 -3.1654514144519565e-10
		;
createNode transform -n "grp_faceboard_lLipRollOut_txt" -p "grp_faceboard_lowerLipRollOut_offset";
	setAttr ".tmp" yes;
	setAttr ".t" -type "double3" -24.507640295654632 -146.95436052863843 0 ;
	setAttr ".s" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "Char_l_9" -p "grp_faceboard_lLipRollOut_txt";
createNode transform -n "curve96" -p "Char_l_9";
createNode nurbsCurve -n "curveShape96" -p "curve96";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 34 1 no 3
		39 0 0 0 0.0092195444572928942 0.0092195444572928942 0.0092195444572928942 0.16819753035471205 0.16819753035471205 0.16819753035471205 0.19319753035471196 0.19319753035471196
		 0.19319753035471196 0.23140747670379758 0.23140747670379758 0.23140747670379758 1.2314074767037977 1.2314074767037977 1.2314074767037977 1.7864074767037978 1.7864074767037978 1.7864074767037978 2.7864074767037978 2.7864074767037978
		 2.7864074767037978 2.8154074767037978 2.8154074767037978 2.8154074767037978 3.059407476703798 3.059407476703798 3.059407476703798 3.0884074767037979 3.0884074767037979 3.0884074767037979 4.0884074767037983 4.0884074767037983
		 4.0884074767037983 4.7374074767037984 4.7374074767037984 4.7374074767037984
		37
		0.18899999999999997 0.7360000000000001 0
		0.18666666666666668 0.73799999999999999 0
		0.18433333333333332 0.73999999999999988 0
		0.18200000000000002 0.74199999999999999 0
		0.12966666666666665 0.73366666666666669 0
		0.077333333333333323 0.72533333333333339 0
		0.025000000000000005 0.71699999999999997 0
		0.025000000000000005 0.70866666666666644 0
		0.025000000000000005 0.70033333333333336 0
		0.025000000000000005 0.69200000000000006 0
		0.037666666666666668 0.69066666666666665 0
		0.050333333333333334 0.68933333333333335 0
		0.063 0.68800000000000006 0
		0.088999999999999996 0.68500000000000005 0
		0.095000000000000001 0.68000000000000005 0
		0.095000000000000001 0.64200000000000002 0
		0.095000000000000015 0.45700000000000002 0
		0.095000000000000015 0.27199999999999996 0
		0.095000000000000015 0.087000000000000008 0
		0.095000000000000001 0.036000000000000004 0
		0.091999999999999985 0.034000000000000002 0
		0.02 0.029000000000000001 0
		0.02 0.019333333333333334 0
		0.02 0.0096666666666666672 0
		0.02 0 0
		0.10133333333333334 0 0
		0.18266666666666667 0 0
		0.26400000000000001 0 0
		0.26400000000000001 0.0096666666666666672 0
		0.26400000000000001 0.019333333333333334 0
		0.26400000000000001 0.029000000000000001 0
		0.193 0.034000000000000002 0
		0.189 0.036000000000000004 0
		0.189 0.087000000000000008 0
		0.18899999999999997 0.30333333333333329 0
		0.18899999999999997 0.51966666666666661 0
		0.18899999999999997 0.7360000000000001 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_L_5" -p "grp_faceboard_lLipRollOut_txt";
	setAttr ".t" -type "double3" 0.279 0 0 ;
createNode transform -n "curve97" -p "Char_L_5";
createNode nurbsCurve -n "curveShape97" -p "curve97";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 43 1 no 3
		48 0 0 0 1 1 1 1.0289999999999999 1.0289999999999999 1.0289999999999999 1.3140000000000001 1.3140000000000001
		 1.3140000000000001 1.343 1.343 1.343 2.343 2.343 2.343 2.8490000000000002 2.8490000000000002 2.8490000000000002 3.8490000000000002 3.8490000000000002
		 3.8490000000000002 3.8780000000000001 3.8780000000000001 3.8780000000000001 4.3970000000000002 4.3970000000000002 4.3970000000000002 4.5764017837146556 4.5764017837146556 4.5764017837146556 4.6064017837146558 4.6064017837146558
		 4.6064017837146558 5.6064017837146558 5.6064017837146558 5.6064017837146558 6.6064017837146558 6.6064017837146558 6.6064017837146558 7.6064017837146558 7.6064017837146558 7.6064017837146558 8.085401783714655 8.085401783714655
		 8.085401783714655
		46
		0.224 0.59899999999999998 0
		0.224 0.65500000000000003 0
		0.22700000000000001 0.65700000000000003 0
		0.32000000000000001 0.66300000000000003 0
		0.32000000000000001 0.67266666666666663 0
		0.32000000000000001 0.68233333333333335 0
		0.32000000000000001 0.69200000000000006 0
		0.22500000000000001 0.69200000000000006 0
		0.13 0.69200000000000006 0
		0.035000000000000003 0.69200000000000006 0
		0.035000000000000003 0.68233333333333324 0
		0.035000000000000003 0.67266666666666663 0
		0.035000000000000003 0.66300000000000003 0
		0.123 0.65700000000000003 0
		0.125 0.65500000000000003 0
		0.125 0.59899999999999998 0
		0.125 0.43033333333333329 0
		0.125 0.26166666666666666 0
		0.125 0.093000000000000013 0
		0.125 0.036999999999999998 0
		0.123 0.035000000000000003 0
		0.035000000000000003 0.029000000000000001 0
		0.035000000000000003 0.019333333333333334 0
		0.035000000000000003 0.0096666666666666672 0
		0.035000000000000003 0 0
		0.20800000000000005 0 0
		0.38100000000000006 0 0
		0.55400000000000005 0 0
		0.55800000000000005 0.059666666666666673 0
		0.56200000000000006 0.11933333333333335 0
		0.56600000000000006 0.17900000000000002 0
		0.55600000000000005 0.17899999999999996 0
		0.54600000000000004 0.17899999999999996 0
		0.53600000000000003 0.17899999999999996 0
		0.51600000000000001 0.047999999999999987 0
		0.46100000000000002 0.035000000000000003 0
		0.35599999999999998 0.035000000000000003 0
		0.30599999999999999 0.035000000000000003 0
		0.27000000000000002 0.036999999999999998 0
		0.249 0.044999999999999998 0
		0.22800000000000001 0.053999999999999999 0
		0.224 0.071000000000000008 0
		0.224 0.12 0
		0.224 0.27966666666666667 0
		0.224 0.43933333333333335 0
		0.224 0.59899999999999998 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_i_7" -p "grp_faceboard_lLipRollOut_txt";
	setAttr ".t" -type "double3" 0.84700000000000009 0 0 ;
createNode transform -n "curve98" -p "Char_i_7";
createNode nurbsCurve -n "curveShape98" -p "curve98";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 34 1 no 3
		39 0 0 0 0.025000000000000022 0.025000000000000022 0.025000000000000022 0.063327535793473624 0.063327535793473624 0.063327535793473624 1.0633275357934737 1.0633275357934737
		 1.0633275357934737 1.3783275357934737 1.3783275357934737 1.3783275357934737 2.3783275357934737 2.3783275357934737 2.3783275357934737 2.4073275357934736 2.4073275357934736 2.4073275357934736 2.6513275357934738 2.6513275357934738
		 2.6513275357934738 2.6803275357934737 2.6803275357934737 2.6803275357934737 3.6803275357934737 3.6803275357934737 3.6803275357934737 4.0893275357934735 4.0893275357934735 4.0893275357934735 4.098547080250766 4.098547080250766
		 4.098547080250766 4.2575250661481849 4.2575250661481849 4.2575250661481849
		37
		0.036999999999999998 0.47700000000000004 0
		0.036999999999999998 0.46866666666666673 0
		0.036999999999999998 0.46033333333333343 0
		0.036999999999999998 0.45200000000000001 0
		0.049666666666666665 0.45033333333333331 0
		0.062333333333333331 0.44866666666666671 0
		0.074999999999999997 0.44700000000000001 0
		0.10100000000000001 0.443 0
		0.107 0.438 0
		0.107 0.40200000000000002 0
		0.107 0.29700000000000004 0
		0.107 0.19200000000000003 0
		0.107 0.087000000000000008 0
		0.107 0.036000000000000004 0
		0.10400000000000001 0.034000000000000002 0
		0.032000000000000001 0.029000000000000001 0
		0.032000000000000001 0.019333333333333334 0
		0.032000000000000001 0.0096666666666666672 0
		0.032000000000000001 0 0
		0.11333333333333336 0 0
		0.19466666666666668 0 0
		0.27600000000000002 0 0
		0.27600000000000002 0.0096666666666666672 0
		0.27600000000000002 0.019333333333333334 0
		0.27600000000000002 0.029000000000000001 0
		0.20500000000000002 0.034000000000000002 0
		0.20100000000000001 0.036000000000000004 0
		0.20100000000000001 0.087000000000000008 0
		0.20099999999999998 0.2233333333333333 0
		0.20099999999999998 0.35966666666666663 0
		0.20099999999999998 0.496 0
		0.19866666666666669 0.49800000000000005 0
		0.19633333333333333 0.5 0
		0.19400000000000003 0.502 0
		0.14166666666666666 0.4936666666666667 0
		0.089333333333333334 0.48533333333333339 0
		0.036999999999999998 0.47700000000000004 0
		;
	setAttr ".dep" yes;
createNode transform -n "curve99" -p "Char_i_7";
createNode nurbsCurve -n "curveShape99" -p "curve99";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.153 0.71499999999999997 0
		0.11700000000000001 0.71499999999999997 0
		0.091999999999999998 0.68900000000000006 0
		0.091999999999999998 0.65300000000000002 0
		0.091999999999999998 0.61799999999999999 0
		0.11700000000000001 0.59299999999999997 0
		0.153 0.59299999999999997 0
		0.19 0.59299999999999997 0
		0.21299999999999999 0.61799999999999999 0
		0.214 0.65300000000000002 0
		0.214 0.68900000000000006 0
		0.19 0.71499999999999997 0
		0.153 0.71499999999999997 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_p_7" -p "grp_faceboard_lLipRollOut_txt";
	setAttr ".t" -type "double3" 1.1380000000000001 0 0 ;
createNode transform -n "curve100" -p "Char_p_7";
createNode nurbsCurve -n "curveShape100" -p "curve100";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 19 1 no 3
		24 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 5 5 5 6 6 6 6.1639999999999997 6.1639999999999997
		 6.1639999999999997
		22
		0.19400000000000001 0.32100000000000001 0
		0.19400000000000001 0.34600000000000003 0
		0.19800000000000001 0.35999999999999999 0
		0.20700000000000002 0.378 0
		0.23000000000000001 0.42399999999999999 0
		0.27300000000000002 0.44800000000000001 0
		0.32600000000000001 0.44800000000000001 0
		0.36599999999999999 0.44800000000000001 0
		0.45500000000000002 0.42199999999999999 0
		0.45500000000000002 0.25 0
		0.45500000000000002 0.10300000000000004 0
		0.40900000000000003 0.023 0
		0.309 0.023 0
		0.25700000000000001 0.023 0
		0.217 0.050000000000000003 0
		0.20100000000000001 0.096000000000000002 0
		0.19500000000000001 0.114 0
		0.19400000000000001 0.13400000000000001 0
		0.19400000000000001 0.157 0
		0.19400000000000003 0.21166666666666667 0
		0.19400000000000003 0.26633333333333331 0
		0.19400000000000003 0.32100000000000001 0
		;
	setAttr ".dep" yes;
createNode transform -n "curve101" -p "Char_p_7";
createNode nurbsCurve -n "curveShape101" -p "curve101";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 46 1 no 3
		51 0 0 0 0.025000000000000022 0.025000000000000022 0.025000000000000022 0.063327535793473638 0.063327535793473638 0.063327535793473638 1.0633275357934737 1.0633275357934737
		 1.0633275357934737 1.6083275357934737 1.6083275357934737 1.6083275357934737 2.6083275357934737 2.6083275357934737 2.6083275357934737 2.6373275357934736 2.6373275357934736 2.6373275357934736 2.8963275357934735 2.8963275357934735
		 2.8963275357934735 2.9253275357934734 2.9253275357934734 2.9253275357934734 3.9253275357934734 3.9253275357934734 3.9253275357934734 4.0793275357934737 4.0793275357934737 4.0793275357934737 5.0793275357934737 5.0793275357934737
		 5.0793275357934737 6.0793275357934737 6.0793275357934737 6.0793275357934737 7.0793275357934737 7.0793275357934737 7.0793275357934737 8.0793275357934746 8.0793275357934746 8.0793275357934746 8.1544607508185223 8.1544607508185223
		 8.1544607508185223 8.3075162962914 8.3075162962914 8.3075162962914
		49
		0.029999999999999999 0.47700000000000004 0
		0.029999999999999999 0.46866666666666673 0
		0.029999999999999999 0.46033333333333343 0
		0.029999999999999999 0.45200000000000001 0
		0.042666666666666665 0.45033333333333331 0
		0.055333333333333339 0.44866666666666671 0
		0.068000000000000005 0.44700000000000001 0
		0.094 0.443 0
		0.10000000000000001 0.438 0
		0.10000000000000001 0.40200000000000002 0
		0.10000000000000002 0.22033333333333335 0
		0.10000000000000002 0.038666666666666662 0
		0.10000000000000002 -0.14300000000000002 0
		0.10000000000000001 -0.19400000000000001 0
		0.095000000000000001 -0.19600000000000001 0
		0.025000000000000001 -0.20100000000000001 0
		0.025000000000000005 -0.2106666666666667 0
		0.025000000000000005 -0.22033333333333338 0
		0.025000000000000005 -0.23000000000000001 0
		0.11133333333333335 -0.23000000000000001 0
		0.19766666666666668 -0.23000000000000001 0
		0.28400000000000003 -0.23000000000000001 0
		0.28400000000000003 -0.22033333333333338 0
		0.28400000000000003 -0.2106666666666667 0
		0.28400000000000003 -0.20099999999999998 0
		0.20000000000000001 -0.19600000000000001 0
		0.19400000000000001 -0.19400000000000001 0
		0.19400000000000001 -0.14300000000000002 0
		0.19400000000000003 -0.091666666666666674 0
		0.19400000000000003 -0.040333333333333339 0
		0.19400000000000003 0.011000000000000001 0
		0.215 -0.0010000000000000009 0
		0.26200000000000001 -0.012 0
		0.308 -0.012 0
		0.443 -0.012 0
		0.55900000000000005 0.049999999999999989 0
		0.55900000000000005 0.25600000000000001 0
		0.55900000000000005 0.32700000000000001 0
		0.54600000000000004 0.502 0
		0.36399999999999999 0.502 0
		0.29099999999999998 0.502 0
		0.23300000000000001 0.45300000000000001 0
		0.19400000000000001 0.42799999999999999 0
		0.18966666666666665 0.45266666666666672 0
		0.18533333333333335 0.47733333333333339 0
		0.18099999999999997 0.502 0
		0.13066666666666668 0.4936666666666667 0
		0.08033333333333334 0.48533333333333334 0
		0.030000000000000002 0.47700000000000009 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_R_4" -p "grp_faceboard_lLipRollOut_txt";
	setAttr ".t" -type "double3" 1.746 0 0 ;
createNode transform -n "curve102" -p "Char_R_4";
createNode nurbsCurve -n "curveShape102" -p "curve102";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 61 1 no 3
		66 0 0 0 1 1 1 2 2 2 3 3
		 3 3.081 3.081 3.081 3.1099999999999999 3.1099999999999999 3.1099999999999999 4.1099999999999994 4.1099999999999994 4.1099999999999994 5.1099999999999994 5.1099999999999994
		 5.1099999999999994 5.1119999999999992 5.1119999999999992 5.1119999999999992 6.1119999999999992 6.1119999999999992 6.1119999999999992 7.1119999999999992 7.1119999999999992 7.1119999999999992 7.403999999999999 7.403999999999999
		 7.403999999999999 7.4329999999999989 7.4329999999999989 7.4329999999999989 8.4329999999999998 8.4329999999999998 8.4329999999999998 8.9390000000000001 8.9390000000000001 8.9390000000000001 9.9390000000000001 9.9390000000000001
		 9.9390000000000001 9.968 9.968 9.968 10.247 10.247 10.247 10.276 10.276 10.276 11.276 11.276
		 11.276 11.509 11.509 11.509 11.578000000000001 11.578000000000001 11.578000000000001
		64
		0.29299999999999998 0.32600000000000001 0
		0.35299999999999998 0.32600000000000001 0
		0.39900000000000002 0.307 0
		0.41600000000000004 0.23900000000000002 0
		0.42299999999999999 0.21099999999999999 0
		0.434 0.13200000000000001 0
		0.44500000000000001 0.086000000000000007 0
		0.46000000000000002 0.022000000000000006 0
		0.498 0 0
		0.55700000000000005 0 0
		0.58400000000000007 0 0
		0.6110000000000001 0 0
		0.63800000000000001 0 0
		0.63800000000000001 0.0096666666666666672 0
		0.63800000000000001 0.019333333333333334 0
		0.63800000000000001 0.029000000000000001 0
		0.56000000000000005 0.036999999999999998 0
		0.54400000000000004 0.092999999999999999 0
		0.53500000000000003 0.161 0
		0.52300000000000002 0.25 0
		0.505 0.317 0
		0.39900000000000002 0.34300000000000003 0
		0.39900000000000002 0.34366666666666673 0
		0.39900000000000002 0.34433333333333338 0
		0.39900000000000002 0.34500000000000003 0
		0.49299999999999999 0.36299999999999999 0
		0.56200000000000006 0.42599999999999999 0
		0.56200000000000006 0.52100000000000002 0
		0.56200000000000006 0.61699999999999999 0
		0.502 0.69200000000000006 0
		0.32700000000000001 0.69200000000000006 0
		0.22966666666666669 0.69200000000000006 0
		0.13233333333333333 0.69200000000000006 0
		0.035000000000000003 0.69200000000000006 0
		0.035000000000000003 0.68233333333333324 0
		0.035000000000000003 0.67266666666666663 0
		0.035000000000000003 0.66300000000000003 0
		0.123 0.65700000000000003 0
		0.125 0.65500000000000003 0
		0.125 0.59899999999999998 0
		0.125 0.43033333333333329 0
		0.125 0.26166666666666666 0
		0.125 0.093000000000000013 0
		0.125 0.036999999999999998 0
		0.123 0.035000000000000003 0
		0.035000000000000003 0.029000000000000001 0
		0.035000000000000003 0.019333333333333334 0
		0.035000000000000003 0.0096666666666666672 0
		0.035000000000000003 0 0
		0.128 0 0
		0.221 0 0
		0.314 0 0
		0.314 0.0096666666666666672 0
		0.314 0.019333333333333334 0
		0.314 0.029000000000000001 0
		0.22700000000000001 0.035000000000000003 0
		0.224 0.036999999999999998 0
		0.224 0.092999999999999999 0
		0.224 0.17066666666666666 0
		0.224 0.24833333333333338 0
		0.224 0.32600000000000001 0
		0.247 0.32600000000000001 0
		0.27000000000000002 0.32600000000000001 0
		0.29299999999999998 0.32600000000000001 0
		;
	setAttr ".dep" yes;
createNode transform -n "curve103" -p "Char_R_4";
createNode nurbsCurve -n "curveShape103" -p "curve103";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 13 1 no 3
		18 0 0 0 0.246 0.246 0.246 1.246 1.246 1.246 2.246 2.246
		 2.246 3.246 3.246 3.246 3.3250000000000002 3.3250000000000002 3.3250000000000002
		16
		0.224 0.36099999999999999 0
		0.224 0.443 0
		0.224 0.52500000000000002 0
		0.224 0.60699999999999998 0
		0.224 0.64900000000000002 0
		0.23100000000000001 0.65700000000000003 0
		0.29699999999999999 0.65700000000000003 0
		0.371 0.65700000000000003 0
		0.45500000000000002 0.63 0
		0.45500000000000002 0.51200000000000001 0
		0.45500000000000002 0.40700000000000003 0
		0.40000000000000002 0.36099999999999999 0
		0.30299999999999999 0.36099999999999999 0
		0.27666666666666667 0.36099999999999999 0
		0.25033333333333335 0.36099999999999999 0
		0.224 0.36099999999999999 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_o_6" -p "grp_faceboard_lLipRollOut_txt";
	setAttr ".t" -type "double3" 2.39 0 0 ;
createNode transform -n "curve104" -p "Char_o_6";
createNode nurbsCurve -n "curveShape104" -p "curve104";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.28800000000000003 0.502 0
		0.128 0.502 0
		0.049000000000000002 0.40700000000000003 0
		0.049000000000000002 0.245 0
		0.049000000000000002 0.083000000000000018 0
		0.128 -0.012 0
		0.28800000000000003 -0.012 0
		0.45000000000000001 -0.012 0
		0.52800000000000002 0.083000000000000018 0
		0.52800000000000002 0.245 0
		0.52800000000000002 0.40700000000000003 0
		0.45000000000000001 0.502 0
		0.28800000000000003 0.502 0
		;
	setAttr ".dep" yes;
createNode transform -n "curve105" -p "Char_o_6";
createNode nurbsCurve -n "curveShape105" -p "curve105";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.153 0.245 0
		0.153 0.38300000000000001 0
		0.19700000000000001 0.46700000000000003 0
		0.28800000000000003 0.46700000000000003 0
		0.38100000000000001 0.46700000000000003 0
		0.42399999999999999 0.38300000000000001 0
		0.42399999999999999 0.245 0
		0.42399999999999999 0.10699999999999998 0
		0.38100000000000001 0.023 0
		0.28800000000000003 0.023 0
		0.19700000000000001 0.023 0
		0.153 0.10699999999999998 0
		0.153 0.245 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_l_10" -p "grp_faceboard_lLipRollOut_txt";
	setAttr ".t" -type "double3" 2.967 0 0 ;
createNode transform -n "curve106" -p "Char_l_10";
createNode nurbsCurve -n "curveShape106" -p "curve106";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 34 1 no 3
		39 0 0 0 0.0092195444572928942 0.0092195444572928942 0.0092195444572928942 0.16819753035471205 0.16819753035471205 0.16819753035471205 0.19319753035471196 0.19319753035471196
		 0.19319753035471196 0.23140747670379758 0.23140747670379758 0.23140747670379758 1.2314074767037977 1.2314074767037977 1.2314074767037977 1.7864074767037978 1.7864074767037978 1.7864074767037978 2.7864074767037978 2.7864074767037978
		 2.7864074767037978 2.8154074767037978 2.8154074767037978 2.8154074767037978 3.059407476703798 3.059407476703798 3.059407476703798 3.0884074767037979 3.0884074767037979 3.0884074767037979 4.0884074767037983 4.0884074767037983
		 4.0884074767037983 4.7374074767037984 4.7374074767037984 4.7374074767037984
		37
		0.18899999999999997 0.7360000000000001 0
		0.18666666666666668 0.73799999999999999 0
		0.18433333333333332 0.73999999999999988 0
		0.18200000000000002 0.74199999999999999 0
		0.12966666666666665 0.73366666666666669 0
		0.077333333333333323 0.72533333333333339 0
		0.025000000000000005 0.71699999999999997 0
		0.025000000000000005 0.70866666666666644 0
		0.025000000000000005 0.70033333333333336 0
		0.025000000000000005 0.69200000000000006 0
		0.037666666666666668 0.69066666666666665 0
		0.050333333333333334 0.68933333333333335 0
		0.063 0.68800000000000006 0
		0.088999999999999996 0.68500000000000005 0
		0.095000000000000001 0.68000000000000005 0
		0.095000000000000001 0.64200000000000002 0
		0.095000000000000015 0.45700000000000002 0
		0.095000000000000015 0.27199999999999996 0
		0.095000000000000015 0.087000000000000008 0
		0.095000000000000001 0.036000000000000004 0
		0.091999999999999985 0.034000000000000002 0
		0.02 0.029000000000000001 0
		0.02 0.019333333333333334 0
		0.02 0.0096666666666666672 0
		0.02 0 0
		0.10133333333333334 0 0
		0.18266666666666667 0 0
		0.26400000000000001 0 0
		0.26400000000000001 0.0096666666666666672 0
		0.26400000000000001 0.019333333333333334 0
		0.26400000000000001 0.029000000000000001 0
		0.193 0.034000000000000002 0
		0.189 0.036000000000000004 0
		0.189 0.087000000000000008 0
		0.18899999999999997 0.30333333333333329 0
		0.18899999999999997 0.51966666666666661 0
		0.18899999999999997 0.7360000000000001 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_l_11" -p "grp_faceboard_lLipRollOut_txt";
	setAttr ".t" -type "double3" 3.246 0 0 ;
createNode transform -n "curve107" -p "Char_l_11";
createNode nurbsCurve -n "curveShape107" -p "curve107";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 34 1 no 3
		39 0 0 0 0.0092195444572928942 0.0092195444572928942 0.0092195444572928942 0.16819753035471205 0.16819753035471205 0.16819753035471205 0.19319753035471196 0.19319753035471196
		 0.19319753035471196 0.23140747670379758 0.23140747670379758 0.23140747670379758 1.2314074767037977 1.2314074767037977 1.2314074767037977 1.7864074767037978 1.7864074767037978 1.7864074767037978 2.7864074767037978 2.7864074767037978
		 2.7864074767037978 2.8154074767037978 2.8154074767037978 2.8154074767037978 3.059407476703798 3.059407476703798 3.059407476703798 3.0884074767037979 3.0884074767037979 3.0884074767037979 4.0884074767037983 4.0884074767037983
		 4.0884074767037983 4.7374074767037984 4.7374074767037984 4.7374074767037984
		37
		0.18899999999999997 0.7360000000000001 0
		0.18666666666666668 0.73799999999999999 0
		0.18433333333333332 0.73999999999999988 0
		0.18200000000000002 0.74199999999999999 0
		0.12966666666666665 0.73366666666666669 0
		0.077333333333333323 0.72533333333333339 0
		0.025000000000000005 0.71699999999999997 0
		0.025000000000000005 0.70866666666666644 0
		0.025000000000000005 0.70033333333333336 0
		0.025000000000000005 0.69200000000000006 0
		0.037666666666666668 0.69066666666666665 0
		0.050333333333333334 0.68933333333333335 0
		0.063 0.68800000000000006 0
		0.088999999999999996 0.68500000000000005 0
		0.095000000000000001 0.68000000000000005 0
		0.095000000000000001 0.64200000000000002 0
		0.095000000000000015 0.45700000000000002 0
		0.095000000000000015 0.27199999999999996 0
		0.095000000000000015 0.087000000000000008 0
		0.095000000000000001 0.036000000000000004 0
		0.091999999999999985 0.034000000000000002 0
		0.02 0.029000000000000001 0
		0.02 0.019333333333333334 0
		0.02 0.0096666666666666672 0
		0.02 0 0
		0.10133333333333334 0 0
		0.18266666666666667 0 0
		0.26400000000000001 0 0
		0.26400000000000001 0.0096666666666666672 0
		0.26400000000000001 0.019333333333333334 0
		0.26400000000000001 0.029000000000000001 0
		0.193 0.034000000000000002 0
		0.189 0.036000000000000004 0
		0.189 0.087000000000000008 0
		0.18899999999999997 0.30333333333333329 0
		0.18899999999999997 0.51966666666666661 0
		0.18899999999999997 0.7360000000000001 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_O_3" -p "grp_faceboard_lLipRollOut_txt";
	setAttr ".t" -type "double3" 3.525 0 0 ;
createNode transform -n "curve108" -p "Char_O_3";
createNode nurbsCurve -n "curveShape108" -p "curve108";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 1 no 3
		15 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4
		13
		0.38100000000000001 0.67200000000000004 0
		0.55900000000000005 0.67200000000000004 0
		0.59999999999999998 0.49299999999999999 0
		0.60199999999999998 0.34600000000000003 0
		0.59999999999999998 0.19900000000000001 0
		0.55900000000000005 0.02 0
		0.38100000000000001 0.02 0
		0.20300000000000001 0.02 0
		0.16200000000000001 0.19900000000000001 0
		0.16 0.34600000000000003 0
		0.16200000000000001 0.49299999999999999 0
		0.20300000000000001 0.67200000000000004 0
		0.38100000000000001 0.67200000000000004 0
		;
	setAttr ".dep" yes;
createNode transform -n "curve109" -p "Char_O_3";
createNode nurbsCurve -n "curveShape109" -p "curve109";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 22 1 no 3
		27 0 0 0 1 1 1 2 2 2 3 3
		 3 4 4 4 5 5 5 6 6 6 7 7
		 7 8 8 8
		25
		0.38100000000000001 0.70699999999999996 0
		0.27100000000000002 0.70699999999999996 0
		0.189 0.67300000000000004 0
		0.13300000000000001 0.60999999999999999 0
		0.079000000000000001 0.55000000000000004 0
		0.048000000000000001 0.45900000000000002 0
		0.048000000000000001 0.34600000000000003 0
		0.048000000000000001 0.23400000000000001 0
		0.079000000000000001 0.14200000000000002 0
		0.13300000000000001 0.082000000000000003 0
		0.189 0.019000000000000003 0
		0.27100000000000002 -0.014999999999999999 0
		0.38100000000000001 -0.014999999999999999 0
		0.49199999999999999 -0.014999999999999999 0
		0.57300000000000006 0.019000000000000003 0
		0.629 0.082000000000000003 0
		0.68400000000000005 0.14200000000000002 0
		0.71399999999999997 0.23400000000000001 0
		0.71399999999999997 0.34600000000000003 0
		0.71399999999999997 0.45900000000000002 0
		0.68400000000000005 0.55000000000000004 0
		0.629 0.60999999999999999 0
		0.57300000000000006 0.67300000000000004 0
		0.49199999999999999 0.70699999999999996 0
		0.38100000000000001 0.70699999999999996 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_u_5" -p "grp_faceboard_lLipRollOut_txt";
	setAttr ".t" -type "double3" 4.287 0 0 ;
createNode transform -n "curve110" -p "Char_u_5";
createNode nurbsCurve -n "curveShape110" -p "curve110";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 67 1 no 3
		72 0 0 0 0.029000000000000001 0.029000000000000001 0.029000000000000001 1.0289999999999999 1.0289999999999999 1.0289999999999999 1.4379999999999999 1.4379999999999999
		 1.4379999999999999 1.4472195444572928 1.4472195444572928 1.4472195444572928 1.606197530354712 1.606197530354712 1.606197530354712 1.6311975303547119 1.6311975303547119 1.6311975303547119 1.6695250661481855 1.6695250661481855
		 1.6695250661481855 2.6695250661481857 2.6695250661481857 2.6695250661481857 2.8945250661481858 2.8945250661481858 2.8945250661481858 3.8945250661481858 3.8945250661481858 3.8945250661481858 4.8945250661481854 4.8945250661481854
		 4.8945250661481854 5.8945250661481854 5.8945250661481854 5.8945250661481854 6.2345250661481852 6.2345250661481852 6.2345250661481852 6.2437446106054786 6.2437446106054786 6.2437446106054786 6.4027225965028975 6.4027225965028975
		 6.4027225965028975 6.4277225965028979 6.4277225965028979 6.4277225965028979 6.4660501322963713 6.4660501322963713 6.4660501322963713 7.4660501322963713 7.4660501322963713 7.4660501322963713 7.7300501322963715 7.7300501322963715
		 7.7300501322963715 8.7300501322963715 8.7300501322963715 8.7300501322963715 9.7300501322963715 9.7300501322963715 9.7300501322963715 9.790877757599354 9.790877757599354 9.790877757599354 9.9508777575993541 9.9508777575993541
		 9.9508777575993541
		70
		0.59099999999999997 0 0
		0.59099999999999997 0.0096666666666666672 0
		0.59099999999999997 0.019333333333333334 0
		0.59099999999999997 0.029000000000000001 0
		0.52200000000000002 0.034000000000000002 0
		0.51600000000000001 0.036000000000000004 0
		0.51600000000000001 0.087000000000000008 0
		0.51600000000000001 0.2233333333333333 0
		0.51600000000000001 0.35966666666666663 0
		0.51600000000000001 0.496 0
		0.5136666666666666 0.49800000000000005 0
		0.51133333333333331 0.5 0
		0.50900000000000001 0.502 0
		0.45666666666666661 0.4936666666666667 0
		0.40433333333333327 0.48533333333333339 0
		0.35200000000000004 0.47700000000000004 0
		0.35200000000000004 0.46866666666666673 0
		0.35200000000000004 0.46033333333333343 0
		0.35200000000000004 0.45200000000000001 0
		0.36466666666666664 0.45033333333333331 0
		0.37733333333333335 0.44866666666666671 0
		0.38999999999999996 0.44700000000000006 0
		0.41600000000000004 0.443 0
		0.42199999999999999 0.438 0
		0.42199999999999999 0.40200000000000002 0
		0.42199999999999999 0.32700000000000001 0
		0.42199999999999999 0.252 0
		0.42199999999999999 0.17699999999999996 0
		0.42199999999999999 0.14899999999999999 0
		0.41899999999999998 0.127 0
		0.41400000000000003 0.11700000000000001 0
		0.39100000000000001 0.071000000000000008 0
		0.34300000000000003 0.042000000000000003 0
		0.29099999999999998 0.042000000000000003 0
		0.23300000000000001 0.042000000000000003 0
		0.19 0.078000000000000014 0
		0.19 0.156 0
		0.19000000000000003 0.26933333333333331 0
		0.19000000000000003 0.38266666666666671 0
		0.19000000000000003 0.496 0
		0.18766666666666665 0.49800000000000005 0
		0.18533333333333335 0.5 0
		0.18299999999999997 0.502 0
		0.13066666666666668 0.4936666666666667 0
		0.078333333333333338 0.48533333333333339 0
		0.026000000000000006 0.47700000000000004 0
		0.026000000000000006 0.46866666666666673 0
		0.026000000000000006 0.46033333333333343 0
		0.026000000000000006 0.45200000000000001 0
		0.038666666666666676 0.45033333333333331 0
		0.051333333333333342 0.44866666666666671 0
		0.064000000000000001 0.44700000000000001 0
		0.089999999999999997 0.443 0
		0.096000000000000002 0.438 0
		0.096000000000000002 0.40200000000000002 0
		0.096000000000000016 0.314 0
		0.096000000000000016 0.22600000000000001 0
		0.096000000000000016 0.13800000000000001 0
		0.096000000000000002 0.022999999999999993 0
		0.16400000000000001 -0.012 0
		0.23800000000000002 -0.012 0
		0.32300000000000001 -0.012 0
		0.39200000000000002 0.045999999999999999 0
		0.42099999999999999 0.059999999999999998 0
		0.42433333333333328 0.040000000000000001 0
		0.42766666666666664 0.02 0
		0.43099999999999999 0 0
		0.48433333333333334 0 0
		0.53766666666666663 0 0
		0.59099999999999997 0 0
		;
	setAttr ".dep" yes;
createNode transform -n "Char_t_2" -p "grp_faceboard_lLipRollOut_txt";
	setAttr ".t" -type "double3" 4.893 0 0 ;
createNode transform -n "curve111" -p "Char_t_2";
createNode nurbsCurve -n "curveShape111" -p "curve111";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 46 1 no 3
		51 0 0 0 0.03999999999999998 0.03999999999999998 0.03999999999999998 0.16899999999999998 0.16899999999999998 0.16899999999999998 0.29499999999999998 0.29499999999999998
		 0.29499999999999998 0.32399999999999995 0.32399999999999995 0.32399999999999995 0.46398928530426886 0.46398928530426886 0.46398928530426886 0.53998928530426882 0.53998928530426882 0.53998928530426882 0.57998928530426874 0.57998928530426874
		 0.57998928530426874 0.65198928530426881 0.65198928530426881 0.65198928530426881 0.99998928530426878 0.99998928530426878 0.99998928530426878 1.9999892853042689 1.9999892853042689 1.9999892853042689 2.9999892853042689 2.9999892853042689
		 2.9999892853042689 3.0224614903585132 3.0224614903585132 3.0224614903585132 4.0224614903585127 4.0224614903585127 4.0224614903585127 5.0224614903585127 5.0224614903585127 5.0224614903585127 5.3324614903585124 5.3324614903585124
		 5.3324614903585124 5.4614614903585128 5.4614614903585128 5.4614614903585128
		49
		0.32600000000000001 0.45000000000000001 0
		0.32600000000000001 0.46333333333333332 0
		0.32600000000000001 0.47666666666666663 0
		0.32600000000000001 0.48999999999999999 0
		0.28299999999999997 0.48999999999999999 0
		0.23999999999999999 0.48999999999999999 0
		0.19699999999999998 0.48999999999999999 0
		0.19699999999999998 0.53199999999999992 0
		0.19699999999999998 0.57399999999999995 0
		0.19699999999999998 0.61599999999999999 0
		0.18733333333333335 0.61599999999999999 0
		0.17766666666666667 0.61599999999999999 0
		0.16800000000000001 0.61599999999999999 0
		0.14766666666666667 0.57399999999999995 0
		0.12733333333333333 0.53199999999999992 0
		0.107 0.48999999999999999 0
		0.081666666666666665 0.49000000000000005 0
		0.056333333333333339 0.49000000000000005 0
		0.031 0.49000000000000005 0
		0.031 0.47666666666666663 0
		0.031 0.46333333333333332 0
		0.031 0.45000000000000001 0
		0.055 0.45000000000000001 0
		0.079000000000000001 0.45000000000000001 0
		0.10300000000000002 0.45000000000000001 0
		0.10300000000000002 0.33400000000000007 0
		0.10300000000000002 0.218 0
		0.10300000000000002 0.10200000000000002 0
		0.10300000000000001 0 0
		0.17899999999999999 -0.012 0
		0.214 -0.012 0
		0.26500000000000001 -0.012 0
		0.313 0.013999999999999999 0
		0.34200000000000003 0.032000000000000001 0
		0.33933333333333332 0.039 0
		0.33666666666666667 0.045999999999999992 0
		0.33400000000000002 0.052999999999999992 0
		0.31 0.043000000000000003 0
		0.28800000000000003 0.040000000000000001 0
		0.26300000000000001 0.040000000000000001 0
		0.22900000000000001 0.040000000000000001 0
		0.19700000000000001 0.064000000000000001 0
		0.19700000000000001 0.14000000000000001 0
		0.19699999999999998 0.2433333333333334 0
		0.19699999999999998 0.34666666666666668 0
		0.19699999999999998 0.45000000000000001 0
		0.23999999999999999 0.45000000000000001 0
		0.28299999999999997 0.45000000000000001 0
		0.32600000000000001 0.45000000000000001 0
		;
	setAttr ".dep" yes;
createNode displayLayer -n "controls_layer";
	setAttr ".c" 17;
	setAttr ".do" 2;
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 5;
	setAttr -s 6 ".dli[1:5]"  5 7 8 6 4;
	setAttr -s 2 ".dli";
createNode condition -n "condition142";
	setAttr ".op" 2;
createNode multiplyDivide -n "multiplyDivide_jawPT_open2";
	setAttr ".i2" -type "float3" -22.5 -22.5 -22.5 ;
createNode multiplyDivide -n "multiplyDivide5494";
	setAttr ".i2" -type "float3" 11 1 1 ;
createNode unitConversion -n "unitConversion1355";
	setAttr ".cf" 57.295779513082323;
createNode multiplyDivide -n "multiplyDivide5493";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode unitConversion -n "unitConversion1351";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion1645";
	setAttr ".cf" 57.295779513082323;
createNode setRange -n "setRange1";
	setAttr ".m" -type "float3" 0.050000001 0 0 ;
	setAttr ".om" -type "float3" 0.07 0 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode ilrOptionsNode -s -n "TurtleRenderOptions";
lockNode -l 1 ;
createNode ilrUIOptionsNode -s -n "TurtleUIOptions";
lockNode -l 1 ;
createNode ilrBakeLayerManager -s -n "TurtleBakeLayerManager";
lockNode -l 1 ;
createNode ilrBakeLayer -s -n "TurtleDefaultBakeLayer";
lockNode -l 1 ;
createNode delightRenderGlobals -n "delightRenderGlobals1";
	addAttr -s false -ci true -sn "renderPass" -ln "renderPass" -at "message";
	addAttr -ci true -sn "monitorColorProfile" -ln "monitorColorProfile" -dt "string";
	addAttr -ci true -sn "linearizeShaderColors" -ln "linearizeShaderColors" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "version" -ln "version" -dt "string";
	addAttr -s false -ci true -h true -sn "attrChgScriptJobsAdded" -ln "attrChgScriptJobsAdded" 
		-min 0 -max 1 -at "bool";
	setAttr ".monitorColorProfile" -type "string" "srgb";
	setAttr ".version" -type "string" "8.0.10";
createNode animCurveUU -n "animCurveUU1234";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0062455639946108511;
createNode blendWeighted -n "blendWeighted175";
	setAttr -s 7 ".i";
	setAttr ".c" 30;
createNode animCurveUU -n "animCurveUU1204";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0;
createNode blendWeighted -n "blendWeighted235";
	setAttr -s 5 ".i";
	setAttr ".c" 28;
createNode animCurveUU -n "animCurveUU1241";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0;
createNode blendWeighted -n "blendWeighted244";
	setAttr -s 4 ".i";
	setAttr ".c" 27;
createNode animCurveUU -n "animCurveUU1416";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.00047439568515789208;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode blendWeighted -n "blendWeighted307";
	setAttr -s 4 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "animCurveUU1415";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.00044276930614736655;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode blendWeighted -n "blendWeighted306";
	setAttr -s 4 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "animCurveUU1201";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0012831976540293075;
createNode blendWeighted -n "blendWeighted232";
	setAttr -s 5 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "animCurveUU1202";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0;
createNode blendWeighted -n "blendWeighted233";
	setAttr -s 5 ".i";
	setAttr ".c" 28;
createNode animCurveUU -n "animCurveUU1239";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0;
createNode blendWeighted -n "blendWeighted242";
	setAttr -s 4 ".i";
	setAttr ".c" 27;
createNode animCurveUU -n "animCurveUU1230";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.0023457517350651083;
createNode blendWeighted -n "blendWeighted154";
	setAttr -s 6 ".i";
	setAttr ".c" 29;
createNode animCurveUU -n "animCurveUU1216";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0041441512106022748;
createNode blendWeighted -n "blendWeighted167";
	setAttr -s 7 ".i";
	setAttr ".c" 30;
createNode animCurveUU -n "animCurveUU1220";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0040170998462989984;
createNode blendWeighted -n "blendWeighted143";
	setAttr -s 6 ".i";
	setAttr ".c" 29;
createNode animCurveUU -n "animCurveUU1214";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.004234904477491171;
createNode blendWeighted -n "blendWeighted146";
	setAttr -s 7 ".i";
	setAttr ".c" 30;
createNode animCurveUU -n "animCurveUU1449";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0022251416660977203;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode blendWeighted -n "blendWeighted140";
	setAttr -s 5 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "animCurveUU1210";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.0054247918990176216;
createNode blendWeighted -n "blendWeighted150";
	setAttr -s 7 ".i";
	setAttr ".c" 30;
createNode animCurveUU -n "animCurveUU1215";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.002483100827620586;
createNode blendWeighted -n "blendWeighted166";
	setAttr -s 6 ".i";
	setAttr ".c" 29;
createNode animCurveUU -n "animCurveUU1207";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0040685601639255109;
createNode blendWeighted -n "blendWeighted162";
	setAttr -s 6 ".i";
	setAttr ".c" 29;
createNode animCurveUU -n "animCurveUU1450";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0022251416660977203;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode blendWeighted -n "blendWeighted177";
	setAttr -s 5 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "animCurveUU1224";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.00087965690064941609;
createNode blendWeighted -n "blendWeighted151";
	setAttr -s 6 ".i";
	setAttr ".c" 29;
createNode animCurveUU -n "animCurveUU1205";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0033274511289938307;
createNode blendWeighted -n "blendWeighted138";
	setAttr -s 6 ".i";
	setAttr ".c" 29;
createNode animCurveUU -n "animCurveUU1229";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0029028677721430717;
createNode blendWeighted -n "blendWeighted173";
	setAttr -s 6 ".i";
	setAttr ".c" 30;
createNode animCurveUU -n "animCurveUU1231";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.0062162420979225376;
createNode blendWeighted -n "blendWeighted155";
	setAttr -s 7 ".i";
	setAttr ".c" 30;
createNode animCurveUU -n "animCurveUU1218";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0094903329261101337;
createNode blendWeighted -n "blendWeighted136";
	setAttr -s 6 ".i";
	setAttr ".c" 29;
createNode animCurveUU -n "animCurveUU1228";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0051020100237666108;
createNode blendWeighted -n "blendWeighted172";
	setAttr -s 7 ".i";
	setAttr ".c" 30;
createNode animCurveUU -n "animCurveUU1238";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0;
createNode blendWeighted -n "blendWeighted241";
	setAttr -s 4 ".i";
	setAttr ".c" 27;
createNode animCurveUU -n "animCurveUU1227";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0026389707019482478;
createNode blendWeighted -n "blendWeighted171";
	setAttr -s 6 ".i";
	setAttr ".c" 29;
createNode animCurveUU -n "animCurveUU1240";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0;
createNode blendWeighted -n "blendWeighted243";
	setAttr -s 4 ".i";
	setAttr ".c" 27;
createNode animCurveUU -n "animCurveUU1221";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0038411684661691144;
createNode blendWeighted -n "blendWeighted169";
	setAttr -s 6 ".i";
	setAttr ".c" 29;
createNode animCurveUU -n "animCurveUU1209";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.0012027432272212479;
createNode blendWeighted -n "blendWeighted149";
	setAttr -s 6 ".i";
	setAttr ".c" 29;
createNode animCurveUU -n "animCurveUU1213";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0022241387509243414;
createNode blendWeighted -n "blendWeighted145";
	setAttr -s 6 ".i";
	setAttr ".c" 29;
createNode animCurveUU -n "animCurveUU1203";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.00053338282129805929;
createNode blendWeighted -n "blendWeighted234";
	setAttr -s 5 ".i";
	setAttr ".c" 28;
createNode animCurveUU -n "animCurveUU1385";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 1.3322603509976336;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode blendWeighted -n "blendWeighted246";
	setAttr -s 4 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "animCurveUU1384";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode blendWeighted -n "blendWeighted280";
	setAttr ".c" -1;
createNode animCurveUU -n "animCurveUU1236";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0;
createNode blendWeighted -n "blendWeighted239";
	setAttr -s 4 ".i";
	setAttr ".c" 27;
createNode animCurveUU -n "animCurveUU1237";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.00070372552051953252;
createNode blendWeighted -n "blendWeighted240";
	setAttr -s 4 ".i";
	setAttr ".c" 28;
createNode animCurveUU -n "animCurveUU1208";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.019450191469914859;
createNode blendWeighted -n "blendWeighted163";
	setAttr -s 7 ".i";
	setAttr ".c" 30;
createNode animCurveUU -n "animCurveUU1212";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0056385315721623327;
createNode blendWeighted -n "blendWeighted165";
	setAttr -s 7 ".i";
	setAttr ".c" 30;
createNode animCurveUU -n "animCurveUU1219";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0092210290804088241;
createNode blendWeighted -n "blendWeighted168";
	setAttr -s 6 ".i";
	setAttr ".c" 29;
createNode animCurveUU -n "animCurveUU1225";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.0049260786436367285;
createNode blendWeighted -n "blendWeighted152";
	setAttr -s 7 ".i";
	setAttr ".c" 30;
createNode animCurveUU -n "animCurveUU1223";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0064508172714290478;
createNode blendWeighted -n "blendWeighted170";
	setAttr -s 6 ".i";
	setAttr ".c" 29;
createNode animCurveUU -n "animCurveUU1226";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0026389707019482461;
createNode blendWeighted -n "blendWeighted153";
	setAttr -s 6 ".i";
	setAttr ".c" 30;
createNode animCurveUU -n "animCurveUU1206";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.019349266601915112;
createNode blendWeighted -n "blendWeighted139";
	setAttr -s 7 ".i";
	setAttr ".c" 30;
createNode animCurveUU -n "animCurveUU1232";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0010849101774676123;
createNode blendWeighted -n "blendWeighted156";
	setAttr -s 6 ".i";
	setAttr ".c" 30;
createNode animCurveUU -n "animCurveUU1211";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.0011385496443789313;
createNode blendWeighted -n "blendWeighted164";
	setAttr -s 6 ".i";
	setAttr ".c" 29;
createNode animCurveUU -n "animCurveUU1235";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0011142320741559263;
createNode blendWeighted -n "blendWeighted176";
	setAttr -s 6 ".i";
	setAttr ".c" 29;
createNode animCurveUU -n "animCurveUU1233";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.0024043955284417363;
createNode blendWeighted -n "blendWeighted174";
	setAttr -s 6 ".i";
	setAttr ".c" 29;
createNode animCurveUU -n "animCurveUU1222";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0064801391681173631;
createNode blendWeighted -n "blendWeighted147";
	setAttr -s 6 ".i";
	setAttr ".c" 29;
createNode animCurveUU -n "animCurveUU723";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.00333;
createNode animCurveUU -n "animCurveUU753";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0022723409755050182;
createNode animCurveUU -n "animCurveUU1273";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 2.0436649852811843;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "animCurveUU1446";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0.070000000298023224 0;
createNode blendWeighted -n "blendWeighted141";
	setAttr -s 4 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "animCurveUU751";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0026;
createNode animCurveUU -n "animCurveUU1411";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0.070000000298023224 0;
createNode blendWeighted -n "blendWeighted310";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "animCurveUU1409";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0.070000000298023224 0;
createNode blendWeighted -n "blendWeighted312";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "animCurveUU1405";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0.070000000298023224 0;
createNode animCurveUU -n "animCurveUU1410";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0.070000000298023224 0;
createNode blendWeighted -n "blendWeighted313";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "animCurveUU721";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0033286605459786401;
createNode animCurveUU -n "animCurveUU717";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0022312975531961106;
createNode animCurveUU -n "animCurveUU720";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0;
createNode animCurveUU -n "animCurveUU1406";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0.070000000298023224 0;
createNode animCurveUU -n "animCurveUU727";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.00182;
createNode animCurveUU -n "animCurveUU1447";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0025075200501202743;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "animCurveUU738";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0075340005900834655;
createNode animCurveUU -n "animCurveUU754";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.0010933691081092978;
createNode animCurveUU -n "animCurveUU739";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0075340005900834655;
createNode animCurveUU -n "animCurveUU740";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.00056445473789852856;
createNode animCurveUU -n "animCurveUU1445";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0025075200501202739;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "animCurveUU719";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.0016437932784284048;
createNode animCurveUU -n "animCurveUU757";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0019630945350144185;
createNode animCurveUU -n "animCurveUU1412";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0.070000000298023224 0;
createNode blendWeighted -n "blendWeighted311";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "animCurveUU730";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.0014385338560437061;
createNode animCurveUU -n "animCurveUU745";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.00447;
createNode animCurveUU -n "animCurveUU741";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.0043624057785687179;
createNode animCurveUU -n "animCurveUU735";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0105;
createNode animCurveUU -n "animCurveUU728";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.00498;
createNode animCurveUU -n "animCurveUU750";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.00569;
createNode animCurveUU -n "animCurveUU736";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0051770741482965923;
createNode animCurveUU -n "animCurveUU737";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0051770741482965923;
createNode animCurveUU -n "animCurveUU755";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0;
createNode animCurveUU -n "animCurveUU748";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.002599387151055621;
createNode animCurveUU -n "animCurveUU722";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.0182;
createNode animCurveUU -n "animCurveUU752";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.001515807165433064;
createNode animCurveUU -n "animCurveUU731";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.00299;
createNode animCurveUU -n "animCurveUU725";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.0018212368307122212;
createNode animCurveUU -n "animCurveUU726";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.0049849197392781803;
createNode animCurveUU -n "animCurveUU724";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.018035871743486975;
createNode animCurveUU -n "animCurveUU718";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0;
createNode animCurveUU -n "animCurveUU749";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.00156;
createNode animCurveUU -n "animCurveUU1448";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0.070000000298023224 0;
createNode blendWeighted -n "blendWeighted178";
	setAttr -s 4 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "animCurveUU1408";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0.070000000298023224 0;
createNode blendWeighted -n "blendWeighted309";
	setAttr -s 3 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "animCurveUU743";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.00208;
createNode animCurveUU -n "animCurveUU729";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0016724403802773537;
createNode animCurveUU -n "animCurveUU747";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.0056876332135313307;
createNode animCurveUU -n "animCurveUU756";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.00057153385196622233;
createNode animCurveUU -n "animCurveUU746";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.0015578877279094083;
createNode animCurveUU -n "animCurveUU742";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0044677354955562918;
createNode animCurveUU -n "animCurveUU732";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.00144;
createNode animCurveUU -n "animCurveUU734";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0105;
createNode animCurveUU -n "animCurveUU744";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.00436;
createNode animCurveUU -n "animCurveUU1400";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "animCurveUU991";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.0043478260869565192;
createNode animCurveUU -n "animCurveUU967";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0009450842155220014;
createNode animCurveUU -n "animCurveUU1442";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.0030383914120826741;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "animCurveUU1007";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveUU -n "animCurveUU1001";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.00053846539231017232 0 0.070000000298023224 0.0010976756474957705;
createNode animCurveUU -n "animCurveUU1399";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.0012334287814105204;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode blendWeighted -n "blendWeighted308";
	setAttr -s 2 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "animCurveUU1404";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.00085391223328420626;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "animCurveUU1397";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "animCurveUU968";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveUU -n "animCurveUU1398";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "animCurveUU971";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.00091826086956521818;
createNode animCurveUU -n "animCurveUU1005";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0;
createNode animCurveUU -n "animCurveUU1402";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "animCurveUU1004";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveUU -n "animCurveUU1441";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "animCurveUU997";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.005677339319470699;
createNode animCurveUU -n "animCurveUU990";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.00063291073038827892;
createNode animCurveUU -n "animCurveUU1401";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "animCurveUU992";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.00293;
createNode animCurveUU -n "animCurveUU1443";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "animCurveUU974";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.018239641075906182;
createNode animCurveUU -n "animCurveUU1403";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.00091716499130525993;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "animCurveUU993";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0022126417769376188;
createNode animCurveUU -n "animCurveUU984";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0088968479861405107;
createNode animCurveUU -n "animCurveUU970";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0;
createNode animCurveUU -n "animCurveUU978";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0050844636105860097;
createNode animCurveUU -n "animCurveUU1002";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0;
createNode animCurveUU -n "animCurveUU975";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.00020136786328457798;
createNode animCurveUU -n "animCurveUU977";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.00022304474051792892;
createNode animCurveUU -n "animCurveUU973";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0017015107808315809;
createNode animCurveUU -n "animCurveUU981";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.00053846539231017232 0 0.070000000298023224 0.0034045217391304359;
createNode animCurveUU -n "animCurveUU979";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0023869565217391367;
createNode animCurveUU -n "animCurveUU998";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.00053846539231017232 0 0.070000000298023224 0.0010976756474957705;
createNode animCurveUU -n "animCurveUU969";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.00010584036340038905;
createNode animCurveUU -n "animCurveUU982";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0038706521739130424;
createNode animCurveUU -n "animCurveUU994";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0044945652173913045;
createNode animCurveUU -n "animCurveUU1200";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 8.151;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "animCurveUU972";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.018187478229746288;
createNode animCurveUU -n "animCurveUU1003";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.00072577400842357715;
createNode animCurveUU -n "animCurveUU1000";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.00053846539231017232 0 0.070000000298023224 0.0057201782105649746;
createNode animCurveUU -n "animCurveUU1444";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.00304;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "animCurveUU986";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0037278004680149504;
createNode animCurveUU -n "animCurveUU988";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0061028138820882387;
createNode animCurveUU -n "animCurveUU989";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0061028138820882387;
createNode animCurveUU -n "animCurveUU999";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.00061937564053539656;
createNode animCurveUU -n "animCurveUU995";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.00293;
createNode animCurveUU -n "animCurveUU980";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.0038804347826086956;
createNode animCurveUU -n "animCurveUU1006";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveUU -n "animCurveUU987";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0037278004680149504;
createNode animCurveUU -n "animCurveUU985";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 0.0088968479861405107;
createNode animCurveUU -n "animCurveUU976";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.004959629017013233;
createNode animCurveUU -n "animCurveUU996";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.070000000298023224 -0.00073341887900039461;
createNode animCurveUU -n "atts_faceboard_nose_Nose_UD";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.01 0 0 0.0099999997764825821 0.01;
createNode animCurveUU -n "atts_faceboard_nose_Nose_LR";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.01 0 0 0.0099999997764825821 0.01;
createNode animCurveUU -n "atts_faceboard_nose_Snear_L_UD";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.01 0 0 0.0099999997764825821 0.01;
createNode animCurveUU -n "atts_faceboard_nose_Snear_R_UD";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.01 0 0 0.0099999997764825821 0.01;
createNode animCurveUU -n "animCurveUU110";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode blendWeighted -n "blendWeighted188";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" 1;
createNode animCurveUU -n "atts_faceboard_eyebrow_EyebrowMidOut_L_LR";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.000678953897095 0 0 0.0099999997764825821 -0.0060808245345199997;
	setAttr -s 3 ".kit[1:2]"  3 1;
	setAttr -s 3 ".kot[1:2]"  3 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode blendWeighted -n "blendWeighted189";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" 1;
createNode animCurveUU -n "animCurveUU114";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode blendWeighted -n "blendWeighted192";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" 1;
createNode animCurveUU -n "atts_faceboard_eyebrow_EyebrowInn_L_FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0 0 0;
createNode blendWeighted -n "blendWeighted190";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" 1;
createNode animCurveUU -n "animCurveUU107";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0.0099999997764825821 0;
createNode blendWeighted -n "blendWeighted185";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" 1;
createNode animCurveUU -n "animCurveUU116";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0.00264372045997;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode blendWeighted -n "blendWeighted194";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" 1;
createNode animCurveUU -n "animCurveUU113";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0.0099999997764825821 0;
createNode blendWeighted -n "blendWeighted191";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" 1;
createNode animCurveUU -n "animCurveUU115";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode blendWeighted -n "blendWeighted193";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" 1;
createNode animCurveUU -n "atts_faceboard_EyebrowOutL_UD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
createNode blendWeighted -n "blendWeighted198";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" 1;
createNode animCurveUU -n "atts_faceboard_eyebrow_EyebrowOut_L_FB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.0025752622780199999 0 0;
	setAttr -s 2 ".kix[0:1]"  1 0.0099999997764825821;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0.0099999997764825821;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveUU -n "animCurveUU108";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0.0099999997764825821 0;
createNode blendWeighted -n "blendWeighted186";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" 1;
createNode animCurveUU -n "atts_faceboard_eyebrow_EyebrowMid_L_LR";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.00111828131775 0 0 0.0099999997764825821 -0.0083003400457200005;
	setAttr -s 3 ".kit[1:2]"  3 1;
	setAttr -s 3 ".kot[1:2]"  3 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveUU -n "atts_faceboard_eyebrow_EyebrowMid_L_FB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.0061144425644800004 0 0 0.0099999997764825821 0.0030515057270799999;
	setAttr -s 3 ".kix[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveUU -n "atts_faceboard_eyebrow_EyebrowInn_L_LR";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.0105261571671 0 0 0.0099999997764825821 -0.011225596607;
	setAttr -s 3 ".kit[1:2]"  3 1;
	setAttr -s 3 ".kot[1:2]"  3 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveUU -n "atts_faceboard_eyebrows_EyebrowMidInn_L_UD";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.010362069218325999 0 0 0.0099999997764825821 0.0165;
createNode blendWeighted -n "blendWeighted199";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" 1;
createNode animCurveUU -n "atts_faceboard_eyebrow_EyebrowMidInn_L_LR";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.014560694321 0 0 0.0099999997764825821 -0.0110642592152;
	setAttr -s 3 ".kit[1:2]"  3 1;
	setAttr -s 3 ".kot[1:2]"  3 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveUU -n "animCurveUU123";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.009923518804948725 0 0 0.0099999997764825821 0.011597365350361766;
createNode blendWeighted -n "blendWeighted200";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" 1;
createNode animCurveUU -n "animCurveUU109";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode blendWeighted -n "blendWeighted187";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" 1;
createNode animCurveUU -n "atts_faceboard_eyebrow_EyebrowMidInn_L_FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.0103367618172 0 0;
createNode animCurveUU -n "atts_faceboard_eyebrow_EyebrowMid_L_UD";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.007 0 0 0.0099999997764825821 0.012931034482758732;
createNode blendWeighted -n "blendWeighted195";
	setAttr -s 2 ".i";
createNode animCurveUU -n "animCurveUU122";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.009923518804948725 0 0 0.0099999997764825821 0.011597365350361766;
createNode animCurveUU -n "atts_faceboard_eyebrow_EyebrowOut_L_LR";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0 0 0;
createNode animCurveUU -n "animCurveUU121";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.007 0 0 0.0099999997764825821 0.0129;
createNode animCurveUU -n "animCurveUU119";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.0049172622181900003 0 0 0.0099999997764825821 -0.0012476820243217906;
	setAttr -s 3 ".kix[0:2]"  0 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.0036879463586956263 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0.0036879468243569136 0;
createNode animCurveUU -n "atts_faceboard_EyebrowInnL_UD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.0154100160534 0 0 0.0099999997764825821 0.027757134363852562;
createNode blendWeighted -n "blendWeighted197";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" 1;
createNode animCurveUU -n "atts_faceboard_eyebrow_EyebrowMidOut_L_FB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.00354604037182 0 0 0.0099999997764825821 0.00264372045997;
	setAttr -s 3 ".kix[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveUU -n "animCurveUU111";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveUU -n "atts_faceboard_eyebrows_EyebrowMidOut_L_UD";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.0014998802003750001 0 0 0.0099999997764825821 -0.002964152453370685;
createNode animCurveUU -n "animCurveUU120";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.007 0 0 0.0099999997764825821 0.0129;
createNode animCurveUU -n "animCurveUU112";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveUU -n "animCurveUU130";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode blendWeighted -n "blendWeighted207";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "animCurveUU135";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.0025752622780199999 0 0;
	setAttr -s 2 ".kix[0:1]"  1 0.0099999997764825821;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0.0099999997764825821;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode blendWeighted -n "blendWeighted212";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "atts_faceboard_eyebrow_EyebrowInn_R_LR";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0.0099999997764825821 0;
createNode blendWeighted -n "blendWeighted205";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "atts_faceboard_eyebrow_EyebrowMid_R_LR";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.00112 0 0 0.0099999997764825821 0;
	setAttr -s 3 ".kit[1:2]"  3 1;
	setAttr -s 3 ".kot[1:2]"  3 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode blendWeighted -n "blendWeighted206";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "atts_faceboard_eyebrow_EyebrowInn_R_FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode blendWeighted -n "blendWeighted210";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "animCurveUU133";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveUU -n "animCurveUU129";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.00112 0 0 0.0099999997764825821 0.0083;
	setAttr -s 3 ".kit[1:2]"  3 1;
	setAttr -s 3 ".kot[1:2]"  3 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveUU -n "atts_faceboard_eyebrow_EyebrowMid_R_FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode blendWeighted -n "blendWeighted211";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "atts_faceboard_eyebrow_EyebrowMidInn_R_FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode blendWeighted -n "blendWeighted213";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "atts_faceboard_eyebrow_EyebrowMidOut_R_LR";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -0.0099999997764825821 0;
createNode blendWeighted -n "blendWeighted209";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "animCurveUU132";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.000188700145977 0 0 0.0099999997764825821 0.0060808245345199997;
	setAttr -s 3 ".kit[1:2]"  3 1;
	setAttr -s 3 ".kot[1:2]"  3 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveUU -n "animCurveUU136";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.0103367618172 0 0;
createNode animCurveUU -n "atts_faceboard_eyebrow_EyebrowMidOut_R_FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0.00264372045997;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode blendWeighted -n "blendWeighted214";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "atts_faceboard_eyebrow_EyebrowOut_R_LR";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveUU -n "animCurveUU125";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.007 0 0 0.0099999997764825821 0.0129;
createNode blendWeighted -n "blendWeighted202";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode animCurveUU -n "atts_faceboard_EyebrowOutR_UD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  1 18 18;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveUU -n "atts_faceboard_eyebrows_EyebrowMidOut_L_UD1";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.0014998802003750001 0 0 0.0099999997764825821 -0.002964152453370685;
createNode blendWeighted -n "blendWeighted204";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode animCurveUU -n "animCurveUU126";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.009923518804948725 0 0 0.0099999997764825821 0.011597365350361766;
createNode blendWeighted -n "blendWeighted203";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode animCurveUU -n "animCurveUU131";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.0146 0 0 0.0099999997764825821 0.0111;
	setAttr -s 3 ".kit[1:2]"  3 1;
	setAttr -s 3 ".kot[1:2]"  3 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode blendWeighted -n "blendWeighted208";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "atts_faceboard_EyebrowInnR_UD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.0154 0 0 0.0099999997764825821 0.027757134363852562;
createNode blendWeighted -n "blendWeighted201";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode animCurveUU -n "animCurveUU137";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.00354604037182 0 0 0.0099999997764825821 0.00264372045997;
	setAttr -s 3 ".kix[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveUU -n "animCurveUU124";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.007 0 0 0.0099999997764825821 0.0129;
createNode animCurveUU -n "atts_faceboard_eyebrows_EyebrowMidInn_L_UD1";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.010362069218325999 0 0 0.0099999997764825821 0.0165;
createNode animCurveUU -n "animCurveUU128";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.0105 0 0 0.0099999997764825821 0.0112;
	setAttr -s 3 ".kit[1:2]"  3 1;
	setAttr -s 3 ".kot[1:2]"  3 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveUU -n "atts_faceboard_eyebrow_EyebrowMidInn_R_LR";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveUU -n "atts_faceboard_eyebrow_EyebrowOut_R_FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveUU -n "animCurveUU134";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.0061144425644800004 0 0 0.0099999997764825821 0.0030515057270799999;
	setAttr -s 3 ".kix[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveUU -n "animCurveUU118";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.0049172622181900003 0 0 0.0099999997764825821 -0.0012476820243217906;
	setAttr -s 3 ".kix[0:2]"  0 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.0036879463586956263 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0.0036879468243569136 0;
createNode blendWeighted -n "blendWeighted196";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" 1;
createNode animCurveUU -n "animCurveUU127";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.009923518804948725 0 0 0.0099999997764825821 0.011597365350361766;
createNode animCurveUU -n "atts_faceboard_eyebrow_EyebrowMid_R_UD";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.007 0 0 0.0099999997764825821 0.012931034482758732;
createNode animCurveUU -n "animCurveUU142";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.00118442249019 0 0 0.0099999997764825821 -0.0031302467398663224;
createNode blendWeighted -n "blendWeighted221";
	setAttr -s 3 ".i";
	setAttr -s 3 ".i";
createNode animCurveUU -n "animCurveUU139";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.0191 0 0 0.0099999997764825821 0.0067975921670196462;
	setAttr -s 3 ".kix[0:2]"  0 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode blendWeighted -n "blendWeighted218";
	setAttr -s 3 ".i";
	setAttr -s 3 ".i";
createNode animCurveUU -n "atts_faceboard_eyelids_EyelidOut_R_UD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.00121 0 0 0.0099999997764825821 0;
createNode blendWeighted -n "blendWeighted300";
	setAttr -s 3 ".i";
	setAttr -s 3 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "animCurveUU147";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -0.0099999997764825821 0.0035599478191299999 -0.004999999888241291 0.0035599478191299999 0 0 0.0099999997764825821 
		-0.0069600954640835454;
	setAttr -s 4 ".kit[1:3]"  3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 1 1;
	setAttr -s 4 ".kix[0:3]"  0 1 0.0099999997764825821 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 0.0099999997764825821 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode blendWeighted -n "blendWeighted224";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" 3;
createNode animCurveUU -n "atts_faceboard_eyelids_EyelidIn_R_UD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
createNode animCurveUU -n "animCurveUU154";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.00267 0 0 0.0099999997764825821 -0.0038847044450698856;
	setAttr -s 3 ".kix[0:2]"  0 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode blendWeighted -n "blendWeighted227";
	setAttr -s 3 ".i";
	setAttr -s 3 ".i";
createNode animCurveUU -n "animCurveUU138";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.011672936183992313 0 0 0.0099999997764825821 0.0067975921670196462;
	setAttr -s 3 ".kix[0:2]"  0 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode blendWeighted -n "blendWeighted217";
	setAttr -s 3 ".i";
	setAttr -s 3 ".i";
createNode animCurveUU -n "animCurveUU150";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.00023779839688299999 0 0 0.0099999997764825821 0;
	setAttr -s 3 ".kix[0:2]"  0 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode blendWeighted -n "blendWeighted225";
	setAttr -s 3 ".i";
	setAttr -s 3 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "animCurveUU141";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.0029419854125099999 0 0 0.0099999997764825821 -0.0031302467398663224;
createNode blendWeighted -n "blendWeighted220";
	setAttr -s 3 ".i";
	setAttr -s 3 ".i";
createNode animCurveUU -n "animCurveUU152";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.00197 0 0 0.0099999997764825821 0;
	setAttr -s 3 ".kix[0:2]"  0 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode blendWeighted -n "blendWeighted226";
	setAttr -s 3 ".i";
	setAttr -s 3 ".i";
createNode animCurveUU -n "atts_faceboard_eyelids_EyelidOut_R_FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -0.0099999997764825821 0;
createNode animCurveUU -n "animCurveUU143";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.0029419854125099999 0 0 0.0099999997764825821 -0.0031302467398663224;
createNode blendWeighted -n "blendWeighted222";
	setAttr -s 3 ".i";
	setAttr -s 3 ".i";
createNode animCurveUU -n "animCurveUU156";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
	setAttr -s 3 ".kix[0:2]"  0 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode blendWeighted -n "blendWeighted228";
	setAttr -s 3 ".i";
	setAttr -s 3 ".i";
createNode animCurveUU -n "animCurveUU145";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.00044040345018100003 0 0 0.0099999997764825821 0;
	setAttr -s 3 ".kix[0:2]"  0 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode blendWeighted -n "blendWeighted223";
	setAttr -s 3 ".i";
	setAttr -s 3 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "animCurveUU140";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.0127 0 0 0.0099999997764825821 0.0067975921670196462;
	setAttr -s 3 ".kix[0:2]"  0 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode blendWeighted -n "blendWeighted219";
	setAttr -s 3 ".i";
	setAttr -s 3 ".i";
createNode animCurveUU -n "atts_faceboard_eyelids_EyelidIn_R_FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -0.0099999997764825821 0;
createNode animCurveUU -n "animCurveUU67";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.00044040345018100003 0 0 0.0099999997764825821 0;
	setAttr -s 3 ".kix[0:2]"  0 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode blendWeighted -n "blendWeighted124";
	setAttr -s 3 ".i";
	setAttr -s 3 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "atts_faceboard_eyelids_EyelidIn_L_FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
createNode animCurveUU -n "animCurveUU65";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.019098487898410715 0 0 0.0099999997764825821 0.0067975921670196462;
	setAttr -s 3 ".kix[0:2]"  0 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode blendWeighted -n "blendWeighted105";
	setAttr -s 3 ".i";
	setAttr ".c" 3;
createNode animCurveUU -n "animCurveUU72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.0029419854125099999 0 0 0.0099999997764825821 -0.0031302467398663224;
createNode blendWeighted -n "blendWeighted109";
	setAttr -s 3 ".i";
	setAttr ".c" 3;
createNode animCurveUU -n "animCurveUU66";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.0127 0 0 0.0099999997764825821 0.0067975921670196462;
	setAttr -s 3 ".kix[0:2]"  0 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode blendWeighted -n "blendWeighted106";
	setAttr -s 3 ".i";
	setAttr ".c" 3;
createNode animCurveUU -n "animCurveUU71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.00118442249019 0 0 0.0099999997764825821 -0.0031302467398663224;
createNode blendWeighted -n "blendWeighted108";
	setAttr -s 3 ".i";
	setAttr ".c" 3;
createNode animCurveUU -n "animCurveUU75";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
	setAttr -s 3 ".kix[0:2]"  0 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode blendWeighted -n "blendWeighted132";
	setAttr -s 3 ".i";
	setAttr -s 3 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "animCurveUU68";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -0.0099999997764825821 0.0035599478191299999 -0.004999999888241291 0.0035599478191299999 0 0 0.0099999997764825821 
		-0.0069600954640835454;
	setAttr -s 4 ".kit[1:3]"  3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 1 1;
	setAttr -s 4 ".kix[0:3]"  0 1 0.0099999997764825821 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 0.0099999997764825821 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode blendWeighted -n "blendWeighted125";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" 4;
createNode animCurveUU -n "animCurveUU73";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.00197 0 0 0.0099999997764825821 0;
	setAttr -s 3 ".kix[0:2]"  0 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode blendWeighted -n "blendWeighted130";
	setAttr -s 3 ".i";
	setAttr -s 3 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "atts_faceboard_eyelids_EyelidOut_L_FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
createNode animCurveUU -n "animCurveUU70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.0029419854125099999 0 0 0.0099999997764825821 -0.0031302467398663224;
createNode blendWeighted -n "blendWeighted107";
	setAttr -s 3 ".i";
	setAttr ".c" 3;
createNode animCurveUU -n "animCurveUU69";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.00023779839688299999 0 0 0.0099999997764825821 0;
	setAttr -s 3 ".kix[0:2]"  0 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode blendWeighted -n "blendWeighted126";
	setAttr -s 3 ".i";
	setAttr -s 3 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "atts_faceboard_eyelids_EyelidIn_L_UD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
createNode animCurveUU -n "animCurveUU74";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.00267 0 0 0.0099999997764825821 -0.0038847044450698856;
	setAttr -s 3 ".kix[0:2]"  0 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode blendWeighted -n "blendWeighted131";
	setAttr -s 3 ".i";
	setAttr -s 3 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "animCurveUU64";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.011671298160139877 0 0 0.0099999997764825821 0.0067975921670196462;
	setAttr -s 3 ".kix[0:2]"  0 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode blendWeighted -n "blendWeighted104";
	setAttr -s 3 ".i";
	setAttr ".c" 3;
createNode animCurveUU -n "atts_faceboard_eyelids_EyelidOut_L_UD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.00121 0 0 0.0099999997764825821 0;
createNode blendWeighted -n "blendWeighted301";
	setAttr -s 3 ".i";
	setAttr -s 3 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "__atts_faceboard_eyelids_EyelidLowMid_L_UD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.0067189858543804711 0 0 0.0099999997764825821 -0.0065768904156813038;
createNode animCurveUU -n "animCurveUU9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099975038319826126 0.00077955130666473166 0 0;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveUU -n "__animCurveUU6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.0015259376186061938 0 0 0.0099999997764825821 0.004956896535087618;
createNode animCurveUU -n "atts_faceboard_eyelids_EyelidLowMid_L_FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[1:2]"  1 18;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  0 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveUU -n "__animCurveUU4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 1 0 0 0.0099999997764825821 -0.001;
createNode animCurveUU -n "animCurveUU7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099975038319826126 0.0019488782666618309 0 0;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveUU -n "animCurveUU8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099975038319826126 0.00077955130666473166 0 0 0.0099999997764825821 -0.0076030232869469527;
	setAttr -s 3 ".kit[2]"  18;
	setAttr -s 3 ".kot[2]"  18;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveUU -n "atts_faceboard_eyelids_EyelidLowInn_L_FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0 0 0;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "__atts_faceboard_eyelids_EyelidLowInn_L_UD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.00585 0 0 0.0099999997764825821 -0.0031900642756049263;
	setAttr -s 3 ".kit[1:2]"  3 18;
	setAttr -s 3 ".kot[1:2]"  3 18;
createNode animCurveUU -n "__atts_faceboard_eyelids_EyelidLowOut_L_UD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.0065593120784970538 0 0 0.0099999997764825821 -0.0028398128376413796;
createNode animCurveUU -n "animCurveUU1254";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.0017068054306043651 0 0 0.0099999997764825821 0;
	setAttr -s 3 ".kix[0:2]"  0 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveUU -n "atts_faceboard_eyelids_EyelidLowOut_L_FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0 0 0;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "__animCurveUU5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 0 0 1 0;
createNode animCurveUU -n "__animCurveUU1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.0024152794292509115 0 0 1 1;
createNode animCurveUU -n "__atts_faceboard_eyelids_EyelidUppInn_L_UD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.011884733173997608 0 0 0.0099999997764825821 0.0047205786437904077;
	setAttr -s 3 ".kit[1:2]"  3 18;
	setAttr -s 3 ".kot[1:2]"  3 18;
createNode animCurveUU -n "animCurveUU1258";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0.0018900842708136903;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "animCurveUU1253";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveUU -n "animCurveUU1263";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 -0.003049778303780554;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "__animCurveUU3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 1 0 0 0.0099999997764825821 -0.0027758621533144393;
createNode animCurveUU -n "__atts_faceboard_eyelids_EyelidUppOut_L_UD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.0093613762661888308 0 0 0.0099999997764825821 0.0024644868966284131;
	setAttr -s 3 ".kit[1:2]"  3 18;
	setAttr -s 3 ".kot[1:2]"  3 18;
createNode animCurveUU -n "__animCurveUU2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 0 0 1 0;
createNode animCurveUU -n "__atts_faceboard_eyelids_EyelidUppMid_L_UD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.013867564529021058 0 0 0.0099999997764825821 0.0092094773174621163;
	setAttr -s 3 ".kit[1:2]"  3 18;
	setAttr -s 3 ".kot[1:2]"  3 18;
createNode animCurveUU -n "animCurveUU76";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099961664527654648 0.0025932378510041812 0 0 0.0099999997764825821 -0.0065441234874335924;
	setAttr -s 3 ".kit[1:2]"  3 1;
	setAttr -s 3 ".kot[1:2]"  3 1;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveUU -n "animCurveUU1259";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0.0099999997764825821 0;
createNode animCurveUU -n "animCurveUU1260";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.0047368897058719245 0 0 0.0099999997764825821 0;
	setAttr -s 3 ".kix[0:2]"  0 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveUU -n "atts_faceboard_eyelids_EyelidLowOut_R_FB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0 0 0;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "__atts_faceboard_eyelids_EyelidLowInn_R_UD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.00585 0 0 0.0099999997764825821 -0.0031900642756049263;
	setAttr -s 3 ".kit[1:2]"  3 18;
	setAttr -s 3 ".kot[1:2]"  3 18;
createNode animCurveUU -n "__atts_faceboard_eyelids_EyelidLowMid_R_UD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.0067453191793473369 0 0 0.0099999997764825821 -0.0065768904156813038;
createNode animCurveUU -n "animCurveUU151";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099975038319826126 0.0008979310344827587 0 0;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveUU -n "__atts_faceboard_eyelids_EyelidLowOut_R_UD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.0065648556143735638 0 0 0.0099999997764825821 -0.0028398128376413796;
createNode animCurveUU -n "__animCurveUU16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 1 0 0 0.0099999997764825821 -0.001;
createNode animCurveUU -n "__animCurveUU18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 -1 0 0 0.0099999997764825821 0.004956896535087618;
createNode animCurveUU -n "animCurveUU155";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099975038319826126 0.0019696551724137932 0 0;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveUU -n "__animCurveUU17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 0 0 1 0;
createNode animCurveUU -n "atts_faceboard_eyelids_EyelidLowInn_R_FB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0 0 0;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "atts_faceboard_eyelids_EyelidLowMid_R_FB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[1:2]"  1 18;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  0 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveUU -n "animCurveUU1255";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.0017068054306043651 0 0 0.0099999997764825821 0;
	setAttr -s 3 ".kix[0:2]"  0 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveUU -n "animCurveUU153";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099975038319826126 0.0045031029090820789 0 0 0.0099999997764825821 -0.0076030232869469527;
	setAttr -s 3 ".kit[2]"  18;
	setAttr -s 3 ".kot[2]"  18;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveUU -n "animCurveUU1256";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0.0018900842708136903;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "__animCurveUU13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.0024152794292509115 0 0 1 1;
createNode animCurveUU -n "__atts_faceboard_eyelids_EyelidUppInn_R_UD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.0119 0 0 0.0099999997764825821 0.0047205786437904077;
	setAttr -s 3 ".kit[1:2]"  3 18;
	setAttr -s 3 ".kot[1:2]"  3 18;
createNode animCurveUU -n "animCurveUU1262";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 -0.003049778303780554;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "animCurveUU148";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099961664527654648 0.0025932378510041812 0 0 0.0099999997764825821 -0.00654;
	setAttr -s 3 ".kit[1:2]"  3 1;
	setAttr -s 3 ".kot[1:2]"  3 1;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveUU -n "animCurveUU1252";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveUU -n "__animCurveUU14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 0 0 1 0;
createNode animCurveUU -n "__atts_faceboard_eyelids_EyelidUppMid_R_UD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.013851638895583293 0 0 0.0099999997764825821 0.0092094773174621163;
	setAttr -s 3 ".kit[1:2]"  3 18;
	setAttr -s 3 ".kot[1:2]"  3 18;
createNode animCurveUU -n "__animCurveUU15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 1 0 0 0.0099999997764825821 -0.0027758621533144393;
createNode animCurveUU -n "__atts_faceboard_eyelids_EyelidUppOut_R_UD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.0093420714712423112 0 0 0.0099999997764825821 0.0024644868966284131;
	setAttr -s 3 ".kit[1:2]"  3 18;
	setAttr -s 3 ".kot[1:2]"  3 18;
createNode animCurveUU -n "animCurveUU1261";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.0047368897058719245 0 0 0.0099999997764825821 0;
	setAttr -s 3 ".kix[0:2]"  0 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveUU -n "animCurveUU1257";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0.0099999997764825821 0;
createNode unitConversion -n "unitConversion324";
	setAttr ".cf" 11.25;
createNode unitConversion -n "unitConversion323";
	setAttr ".cf" -11.25;
createNode animCurveUU -n "animCurveUU164";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 -0.004 0 0;
createNode animCurveUU -n "atts_faceboard_lips_LipLow_FB";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0 0 0;
createNode animCurveUU -n "animCurveUU90";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.0086126499021679445 0 0;
createNode animCurveUU -n "animCurveUU171";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.005 0 0;
createNode animCurveUU -n "animCurveUU95";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.00096268842276892963 0 0;
createNode animCurveUU -n "atts_faceboard_lips_LipUpp_UD";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.00094869695894977881 0 0;
createNode animCurveUU -n "animCurveUU162";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 -0.013 0 0;
createNode animCurveUU -n "atts_faceboard_lips_LipLow_LR";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveUU -n "animCurveUU77";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.00046279209019557427 0 0;
createNode animCurveUU -n "animCurveUU96";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 -0.0043723480972568726 0 0;
createNode animCurveUU -n "animCurveUU168";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 -0.005 0 0;
createNode animCurveUU -n "animCurveUU78";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 -0.022007851534267191 0 0;
createNode animCurveUU -n "animCurveUU81";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 -0.0009133203224910803 0 0;
createNode animCurveUU -n "animCurveUU105";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.0056499104477611946 0 0;
createNode animCurveUU -n "animCurveUU99";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.0046658208955223891 0 0;
createNode animCurveUU -n "animCurveUU97";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.0024276647335419745 0 0;
createNode animCurveUU -n "animCurveUU83";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 -0.000913 0 0;
createNode animCurveUU -n "animCurveUU87";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.00212 0 0;
createNode animCurveUU -n "animCurveUU82";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 -0.0050556888350573115 0 0;
createNode animCurveUU -n "animCurveUU106";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.0010503296999716419 0 0;
createNode animCurveUU -n "atts_faceboard_lips_LipUpp_LR";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0 0 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  3 18;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveUU -n "animCurveUU166";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 -0.004 0 0;
createNode animCurveUU -n "animCurveUU165";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.004 0 0;
createNode animCurveUU -n "animCurveUU169";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.005 0 0;
createNode animCurveUU -n "animCurveUU79";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.0004625980603448277 0 0;
createNode animCurveUU -n "animCurveUU167";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.004 0 0;
createNode animCurveUU -n "animCurveUU88";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.0036703283582089543 0 0;
createNode animCurveUU -n "animCurveUU94";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.0060702905469535873 0 0;
createNode animCurveUU -n "animCurveUU170";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 -0.005 0 0;
createNode animCurveUU -n "rigs_jaw_facepnt_PT";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 22.125435540069688 0 0;
createNode animCurveUU -n "animCurveUU84";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.00506 0 0;
createNode animCurveUU -n "atts_faceboard_lips_LipLow_UD";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 -0.002293054005473662 0 0;
createNode animCurveUU -n "animCurveUU104";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 -0.00090987977659272344 0 0;
createNode animCurveUU -n "animCurveUU91";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.0032891286577998282 0 0;
createNode animCurveUU -n "animCurveUU80";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.022 0 0;
createNode animCurveUU -n "animCurveUU103";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.0010808578222619388 0 0;
createNode animCurveUU -n "animCurveUU102";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 -0.0056882860656331776 0 0;
createNode animCurveUU -n "animCurveUU92";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.0034430374527200294 0 0;
createNode animCurveUU -n "animCurveUU98";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.00073262485653208178 0 0;
createNode animCurveUU -n "animCurveUU93";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.0059933361494934837 0 0;
createNode animCurveUU -n "animCurveUU86";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 -0.0039512832479193776 0 0;
createNode animCurveUU -n "atts_faceboard_lips_LipUpp_FB";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0 0 0;
createNode animCurveUU -n "animCurveUU85";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.002120025617831321 0 0;
createNode animCurveUU -n "animCurveUU163";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.013 0 0;
createNode animCurveUU -n "animCurveUU100";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.0025344819818178218 0 0;
createNode animCurveUU -n "animCurveUU89";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0.0085932410497111932 0 0;
createNode animCurveUU -n "animCurveUU101";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 -0.00090987977659272388 0 0;
createNode animCurveUU -n "atts_faceboard_lips_LipUpp_L_FB";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.00283295342233 0 0 0.0099999997764825821 -0.0011168071930616683;
createNode animCurveUU -n "animCurveUU19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0;
createNode blendWeighted -n "blendWeighted142";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode animCurveUU -n "atts_faceboard_cheeks_CheeksMid_L_FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0.0069429457334855404;
createNode animCurveUU -n "atts_faceboard_lips_LipUpp_L_LR";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.0066778476487600004 0 0 0.0099999997764825821 0.0030111852232105616;
createNode animCurveUU -n "atts_faceboard_lips_LipCornerMidLow_L_UD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0.03 0 0 1 -0.015018359853121173;
	setAttr -s 3 ".kit[1:2]"  2 1;
	setAttr -s 3 ".kot[1:2]"  2 1;
	setAttr -s 3 ".kix[0:2]"  1 0.99955028295516968 1;
	setAttr -s 3 ".kiy[0:2]"  0 -0.029986508190631866 0;
	setAttr -s 3 ".kox[0:2]"  1 0.99988722801208496 1;
	setAttr -s 3 ".koy[0:2]"  0 -0.015016666613519192 0;
createNode animCurveUU -n "atts_faceboard_cheeks_CheeksInn_L_UD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode blendWeighted -n "blendWeighted157";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "animCurveUU15";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
createNode animCurveUU -n "animCurveUU27";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0 0 0;
createNode animCurveUU -n "atts_faceboard_cheeks_CheeksMid_L_LR";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0.0083524013955236648;
createNode animCurveUU -n "animCurveUU17";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.001 0 0 0.0099999997764825821 0.016804284108302422;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 0.95782625675201416 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.28734788298606873 0;
	setAttr -s 3 ".kox[0:2]"  1 0.95782625675201416 1;
	setAttr -s 3 ".koy[0:2]"  0 0.28734788298606873 0;
createNode animCurveUU -n "atts_faceboard_lips_LipLow_L_LR";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
createNode animCurveUU -n "animCurveUU29";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
createNode animCurveUU -n "atts_faceboard_lips_LipCornerMidUpp_L_UD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 -0.03 0 0 1 0.016670746634026914;
	setAttr -s 3 ".kit[1:2]"  2 1;
	setAttr -s 3 ".kot[1:2]"  2 1;
	setAttr -s 3 ".kix[0:2]"  1 0.99955028295516968 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.029986508190631866 0;
	setAttr -s 3 ".kox[0:2]"  1 0.99986112117767334 1;
	setAttr -s 3 ".koy[0:2]"  0 0.016668431460857391 0;
createNode animCurveUU -n "animCurveUU33";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 -0.000493;
createNode animCurveUU -n "atts_faceboard_lips_LipUppInn_L_FB";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.00094017165070099998 0 0 0.0099999997764825821 -0.000493;
	setAttr -s 3 ".kit[0:2]"  18 3 3;
	setAttr -s 3 ".kot[0:2]"  18 1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveUU -n "atts_faceboard_lips_LipUppInn_L_UD";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0;
createNode animCurveUU -n "atts_faceboard_lips_LipCornerMid_L_FB";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.0075996908673558626 0 0 0.0099999997764825821 -0.00062583250615334113;
createNode animCurveUU -n "animCurveUU30";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
createNode animCurveUU -n "animCurveUU34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0.0041431222081835285;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "atts_faceboard_lips_LipLowInn_L_UD";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
createNode animCurveUU -n "animCurveUU28";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0.0027522592904488628;
createNode animCurveUU -n "atts_faceboard_lips_LipLow_L_UD";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0.0017080567792722107;
createNode animCurveUU -n "atts_faceboard_lips_LipUpp_L_UD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveUU -n "atts_faceboard_lips_LipCornerMid_L_UD";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.014714059895933124 0 0 0.0099999997764825821 0.018651753387340188;
createNode animCurveUU -n "atts_faceboard_cheeks_CheeksInn_L_FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0.0039243749216148049;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode blendWeighted -n "blendWeighted159";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "animCurveUU16";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.0094753169940629996 0 0 0.0099999997764825821 0.011706285007470368;
createNode animCurveUU -n "animCurveUU26";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0.00091564918501361395;
createNode animCurveUU -n "animCurveUU35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode blendWeighted -n "blendWeighted158";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "atts_faceboard_cheeks_CheeksInn_L_LR";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 -0.00087478778140000039;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "animCurveUU32";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0;
createNode animCurveUU -n "atts_faceboard_cheeks_CheeksMid_L_UD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
	setAttr -s 3 ".kix[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveUU -n "animCurveUU18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0;
createNode animCurveUU -n "animCurveUU24";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.0060879689530044835 0 0 0.0099999997764825821 -0.0011168071930616683;
createNode animCurveUU -n "animCurveUU31";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0.0029580656004040756;
createNode animCurveUU -n "animCurveUU22";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
createNode animCurveUU -n "atts_faceboard_lips_LipUppInn_L_LR";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.008 0 0 0.0099999997764825821 0.0069656676200290715;
createNode animCurveUU -n "atts_faceboard_lips_LipLow_L_FB";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.0039608877174100001 0 0 0.0099933017045259476 -0.0017749127385132948;
createNode animCurveUU -n "animCurveUU13";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
createNode animCurveUU -n "animCurveUU174";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0.0026121620370276057;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode blendWeighted -n "blendWeighted236";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "atts_faceboard_eyelids_SquintOut_L_UD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0.0026121620370276057;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "atts_faceboard_lips_LipLowInn_L_LR";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.008 0 0 0.0099999997764825821 0.0069656676200290681;
createNode animCurveUU -n "animCurveUU36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0.0039243749216148049;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "atts_faceboard_lips_LipLowInn_L_FB";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.0017059490112339998 0 0 0.0099999997764825821 0;
createNode animCurveUU -n "atts_faceboard_lips_LipCornerMid_L_LR";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
createNode animCurveUU -n "animCurveUU20";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.00283295342233 0 0 0.0099999997764825821 -0.001093752540195528;
createNode animCurveUU -n "animCurveUU23";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.0050613972649166967 0 0 0.0099999997764825821 0.0043721392061195369;
createNode animCurveUU -n "atts_faceboard_lips_LipUppInn_R_FB2";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.00094017165070099998 0 0 0.0099999997764825821 -0.00031767600349551879;
	setAttr -s 3 ".kit[0:2]"  18 3 3;
	setAttr -s 3 ".kot[0:2]"  18 1 3;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveUU -n "animCurveUU45";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
createNode animCurveUU -n "animCurveUU173";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0.0026127994011976049;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode blendWeighted -n "blendWeighted216";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" -1;
createNode animCurveUU -n "animCurveUU61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0.0039243749216148049;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode blendWeighted -n "blendWeighted182";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode animCurveUU -n "atts_faceboard_cheeks_CheeksInn_R_FB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0.0039243749216148049;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "animCurveUU60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode blendWeighted -n "blendWeighted181";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode animCurveUU -n "animCurveUU58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0;
createNode blendWeighted -n "blendWeighted179";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode animCurveUU -n "atts_faceboard_cheeks_CheeksMid_R_FB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0.0069429457334855404;
createNode animCurveUU -n "atts_faceboard_lips_LipCornerMidUpp_R_UD1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 -0.03 0 0 1 0.016670746634026914;
	setAttr -s 3 ".kit[1:2]"  2 1;
	setAttr -s 3 ".kot[1:2]"  2 1;
	setAttr -s 3 ".kix[0:2]"  1 0.99955028295516968 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.029986508190631866 0;
	setAttr -s 3 ".kox[0:2]"  1 0.99986112117767334 1;
	setAttr -s 3 ".koy[0:2]"  0 0.016668431460857391 0;
createNode animCurveUU -n "animCurveUU56";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.001 0 0 0.0099999997764825821 0.016804284108302422;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 0.95782625675201416 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.28734788298606873 0;
	setAttr -s 3 ".kox[0:2]"  1 0.95782625675201416 1;
	setAttr -s 3 ".koy[0:2]"  0 0.28734788298606873 0;
createNode animCurveUU -n "atts_faceboard_lips_LipLowInn_R_FB1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.0017059490112339998 0 0 0.0099999997764825821 0.0001873005181347149;
createNode animCurveUU -n "animCurveUU59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0.0041431222081835285;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode blendWeighted -n "blendWeighted180";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode animCurveUU -n "atts_faceboard_cheeks_CheeksInn_R_UD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "animCurveUU172";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0.0026127994011976049;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "atts_faceboard_lips_LipLow_R_FB1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.0039608877174100001 0 0 0.0099999997764825821 -0.00177;
createNode animCurveUU -n "animCurveUU57";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0;
createNode animCurveUU -n "atts_faceboard_cheeks_CheeksMid_R_LR1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 -0.00835;
createNode animCurveUU -n "atts_faceboard_lips_LipCornerMidLow_R_UD1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0.03 0 0 1 -0.015018359853121173;
	setAttr -s 3 ".kit[1:2]"  2 1;
	setAttr -s 3 ".kot[1:2]"  2 1;
	setAttr -s 3 ".kix[0:2]"  1 0.99955028295516968 1;
	setAttr -s 3 ".kiy[0:2]"  0 -0.029986508190631866 0;
	setAttr -s 3 ".kox[0:2]"  1 0.99988722801208496 1;
	setAttr -s 3 ".koy[0:2]"  0 -0.015016666613519192 0;
createNode animCurveUU -n "animCurveUU55";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 -0.00031767600349551879;
createNode animCurveUU -n "atts_faceboard_cheeks_CheeksMid_R_UD1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
	setAttr -s 3 ".kix[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0099999997764825821 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveUU -n "atts_faceboard_lips_LipCornerMid_R_UD2";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.014714059895933124 0 0 0.0099999997764825821 0.018651753387340188;
createNode animCurveUU -n "atts_faceboard_lips_LipLowInn_R_UD1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
createNode animCurveUU -n "atts_faceboard_lips_LipUpp_R_UD1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveUU -n "atts_faceboard_cheeks_CheeksInn_R_LR1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0.00087475766939999929;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveUU -n "atts_faceboard_lips_LipLow_R_LR1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
createNode animCurveUU -n "atts_faceboard_lips_LipLowInn_R_LR1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.008 0 0 0.0099999997764825821 -0.00697;
createNode animCurveUU -n "animCurveUU49";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.0060879689530044835 0 0 0.0099999997764825821 -0.00079907038152697823;
createNode animCurveUU -n "atts_faceboard_lips_LipUpp_R_LR1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.0066778476487600004 0 0 0.0099999997764825821 -0.00301;
createNode animCurveUU -n "atts_faceboard_lips_LipUpp_R_FB1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.00283295342233 0 0 0.0099999997764825821 -0.00080122399935360269;
createNode animCurveUU -n "atts_faceboard_lips_LipUppInn_R_LR1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.008 0 0 0.0099999997764825821 -0.00697;
createNode animCurveUU -n "animCurveUU43";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0.00091564918501361395;
createNode animCurveUU -n "animCurveUU44";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -0.0099999997764825821 0 0 0;
createNode animCurveUU -n "atts_faceboard_lips_LipCornerMid_R_FB1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.0076010359371809994 0 0 0.0099999997764825821 -0.00062911684907334135;
createNode animCurveUU -n "animCurveUU50";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0.0027522592904488628;
createNode animCurveUU -n "animCurveUU41";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
createNode animCurveUU -n "animCurveUU48";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.00283295342233 0 0 0.0099999997764825821 -0.00109;
createNode animCurveUU -n "animCurveUU46";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.0050611402269729999 0 0 0.0099999997764825821 -0.00437;
createNode animCurveUU -n "atts_faceboard_lips_LipUppInn_R_UD1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0;
createNode animCurveUU -n "animCurveUU53";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0.0029580656004040756;
createNode animCurveUU -n "animCurveUU54";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.0099999997764825821 0;
createNode animCurveUU -n "atts_faceboard_lips_LipLow_R_UD1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0.0017080567792722107;
createNode animCurveUU -n "animCurveUU47";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
createNode animCurveUU -n "animCurveUU52";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0.0001873005181347149;
createNode animCurveUU -n "atts_faceboard_lips_LipCornerMid_R_LR1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
createNode animCurveUU -n "animCurveUU51";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0 0 0 0.0099999997764825821 0;
createNode animCurveUU -n "animCurveUU42";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 0.0094753169940629996 0 0 0.0099999997764825821 -0.0117;
createNode animCurveUU -n "animCurveUU161";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.01 0 0 0.0099999997764825821 0.01;
createNode animCurveUU -n "animCurveUU160";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.01 0 0 0.0099999997764825821 0.01;
createNode animCurveUU -n "animCurveUU159";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.01 0 0 0.0099999997764825821 0.01;
createNode animCurveUU -n "animCurveUU158";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.0099999997764825821 -0.01 0 0 0.0099999997764825821 0.01;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 100 -ast 0 -aet 100 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 41 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".fs" 1251.25;
	setAttr ".ef" 1370;
	setAttr ".cpe" yes;
	setAttr ".ocp" 4;
select -ne :defaultResolution;
	setAttr ".w" 1998;
	setAttr ".h" 1080;
	setAttr ".pa" 1;
	setAttr ".dar" 1.8500000238418579;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "blendWeighted232.o" "atts_faceboard_lips.LipUpp_UD";
connectAttr "blendWeighted233.o" "atts_faceboard_lips.LipUpp_LR";
connectAttr "blendWeighted234.o" "atts_faceboard_lips.LipLow_UD";
connectAttr "blendWeighted235.o" "atts_faceboard_lips.LipLow_LR";
connectAttr "blendWeighted138.o" "atts_faceboard_lips.LipCornerMid_L_UD";
connectAttr "blendWeighted139.o" "atts_faceboard_lips.LipCornerMid_L_LR";
connectAttr "blendWeighted162.o" "atts_faceboard_lips.LipCornerMid_R_UD";
connectAttr "blendWeighted163.o" "atts_faceboard_lips.LipCornerMid_R_LR";
connectAttr "blendWeighted149.o" "atts_faceboard_lips.LipUpp_L_UD";
connectAttr "blendWeighted150.o" "atts_faceboard_lips.LipUpp_L_LR";
connectAttr "blendWeighted164.o" "atts_faceboard_lips.LipUpp_R_UD";
connectAttr "blendWeighted165.o" "atts_faceboard_lips.LipUpp_R_LR";
connectAttr "blendWeighted145.o" "atts_faceboard_lips.LipLow_L_UD";
connectAttr "blendWeighted146.o" "atts_faceboard_lips.LipLow_L_LR";
connectAttr "blendWeighted166.o" "atts_faceboard_lips.LipLow_R_UD";
connectAttr "blendWeighted167.o" "atts_faceboard_lips.LipLow_R_LR";
connectAttr "condition142.ocr" "atts_faceboard_lips.Jaw_PT";
connectAttr "unitConversion323.o" "atts_faceboard_lips.HeadLow_PT";
connectAttr "unitConversion324.o" "atts_faceboard_lips.HeadLow_TW";
connectAttr "blendWeighted136.o" "atts_faceboard_lips.LipCornerMid_L_FB";
connectAttr "blendWeighted168.o" "atts_faceboard_lips.LipCornerMid_R_FB";
connectAttr "blendWeighted143.o" "atts_faceboard_lips.LipLow_L_FB";
connectAttr "blendWeighted169.o" "atts_faceboard_lips.LipLow_R_FB";
connectAttr "blendWeighted147.o" "atts_faceboard_lips.LipUpp_L_FB";
connectAttr "blendWeighted170.o" "atts_faceboard_lips.LipUpp_R_FB";
connectAttr "blendWeighted151.o" "atts_faceboard_lips.LipLowInn_L_UD";
connectAttr "blendWeighted152.o" "atts_faceboard_lips.LipLowInn_L_LR";
connectAttr "blendWeighted153.o" "atts_faceboard_lips.LipLowInn_L_FB";
connectAttr "blendWeighted171.o" "atts_faceboard_lips.LipLowInn_R_UD";
connectAttr "blendWeighted172.o" "atts_faceboard_lips.LipLowInn_R_LR";
connectAttr "blendWeighted173.o" "atts_faceboard_lips.LipLowInn_R_FB";
connectAttr "blendWeighted154.o" "atts_faceboard_lips.LipUppInn_L_UD";
connectAttr "blendWeighted155.o" "atts_faceboard_lips.LipUppInn_L_LR";
connectAttr "blendWeighted156.o" "atts_faceboard_lips.LipUppInn_L_FB";
connectAttr "blendWeighted174.o" "atts_faceboard_lips.LipUppInn_R_UD";
connectAttr "blendWeighted175.o" "atts_faceboard_lips.LipUppInn_R_LR";
connectAttr "blendWeighted176.o" "atts_faceboard_lips.LipUppInn_R_FB";
connectAttr "blendWeighted239.o" "atts_faceboard_lips.LipUpp_FB";
connectAttr "blendWeighted240.o" "atts_faceboard_lips.LipLow_FB";
connectAttr "blendWeighted241.o" "atts_faceboard_lips.LipCornerMidUpp_L_UD";
connectAttr "blendWeighted242.o" "atts_faceboard_lips.LipCornerMidUpp_R_UD";
connectAttr "blendWeighted243.o" "atts_faceboard_lips.LipCornerMidLow_L_UD";
connectAttr "blendWeighted244.o" "atts_faceboard_lips.LipCornerMidLow_R_UD";
connectAttr "blendWeighted140.o" "atts_faceboard_cheeks.CheeksMid_L_UD";
connectAttr "blendWeighted141.o" "atts_faceboard_cheeks.CheeksMid_L_LR";
connectAttr "blendWeighted142.o" "atts_faceboard_cheeks.CheeksMid_L_FB";
connectAttr "blendWeighted177.o" "atts_faceboard_cheeks.CheeksMid_R_UD";
connectAttr "blendWeighted178.o" "atts_faceboard_cheeks.CheeksMid_R_LR";
connectAttr "blendWeighted179.o" "atts_faceboard_cheeks.CheeksMid_R_FB";
connectAttr "blendWeighted157.o" "atts_faceboard_cheeks.CheeksInn_L_UD";
connectAttr "blendWeighted158.o" "atts_faceboard_cheeks.CheeksInn_L_LR";
connectAttr "blendWeighted159.o" "atts_faceboard_cheeks.CheeksInn_L_FB";
connectAttr "blendWeighted180.o" "atts_faceboard_cheeks.CheeksInn_R_UD";
connectAttr "blendWeighted181.o" "atts_faceboard_cheeks.CheeksInn_R_LR";
connectAttr "blendWeighted182.o" "atts_faceboard_cheeks.CheeksInn_R_FB";
connectAttr "blendWeighted280.o" "atts_faceboard_jaw.RawFB";
connectAttr "blendWeighted246.o" "atts_faceboard_jaw.RawPT";
connectAttr "blendWeighted236.o" "atts_faceboard_eyelids.SquintOut_L_UD";
connectAttr "blendWeighted216.o" "atts_faceboard_eyelids.SquintOut_R_UD";
connectAttr "blendWeighted104.o" "atts_faceboard_eyelids.EyelidUppInn_L_UD";
connectAttr "blendWeighted105.o" "atts_faceboard_eyelids.EyelidUppMid_L_UD";
connectAttr "blendWeighted106.o" "atts_faceboard_eyelids.EyelidUppOut_L_UD";
connectAttr "blendWeighted217.o" "atts_faceboard_eyelids.EyelidUppInn_R_UD";
connectAttr "blendWeighted218.o" "atts_faceboard_eyelids.EyelidUppMid_R_UD";
connectAttr "blendWeighted219.o" "atts_faceboard_eyelids.EyelidUppOut_R_UD";
connectAttr "blendWeighted107.o" "atts_faceboard_eyelids.EyelidLowInn_L_UD";
connectAttr "blendWeighted108.o" "atts_faceboard_eyelids.EyelidLowMid_L_UD";
connectAttr "blendWeighted109.o" "atts_faceboard_eyelids.EyelidLowOut_L_UD";
connectAttr "blendWeighted220.o" "atts_faceboard_eyelids.EyelidLowInn_R_UD";
connectAttr "blendWeighted221.o" "atts_faceboard_eyelids.EyelidLowMid_R_UD";
connectAttr "blendWeighted222.o" "atts_faceboard_eyelids.EyelidLowOut_R_UD";
connectAttr "blendWeighted124.o" "atts_faceboard_eyelids.EyelidUppInn_L_FB";
connectAttr "blendWeighted125.o" "atts_faceboard_eyelids.EyelidUppMid_L_FB";
connectAttr "blendWeighted126.o" "atts_faceboard_eyelids.EyelidUppOut_L_FB";
connectAttr "blendWeighted223.o" "atts_faceboard_eyelids.EyelidUppInn_R_FB";
connectAttr "blendWeighted224.o" "atts_faceboard_eyelids.EyelidUppMid_R_FB";
connectAttr "blendWeighted225.o" "atts_faceboard_eyelids.EyelidUppOut_R_FB";
connectAttr "blendWeighted130.o" "atts_faceboard_eyelids.EyelidLowInn_L_FB";
connectAttr "blendWeighted131.o" "atts_faceboard_eyelids.EyelidLowMid_L_FB";
connectAttr "blendWeighted132.o" "atts_faceboard_eyelids.EyelidLowOut_L_FB";
connectAttr "blendWeighted226.o" "atts_faceboard_eyelids.EyelidLowInn_R_FB";
connectAttr "blendWeighted227.o" "atts_faceboard_eyelids.EyelidLowMid_R_FB";
connectAttr "blendWeighted228.o" "atts_faceboard_eyelids.EyelidLowOut_R_FB";
connectAttr "blendWeighted301.o" "atts_faceboard_eyelids.EyelidOut_L_UD";
connectAttr "atts_faceboard_eyelids_EyelidOut_L_FB.o" "atts_faceboard_eyelids.EyelidOut_L_FB"
		;
connectAttr "atts_faceboard_eyelids_EyelidIn_L_UD.o" "atts_faceboard_eyelids.EyelidIn_L_UD"
		;
connectAttr "atts_faceboard_eyelids_EyelidIn_L_FB.o" "atts_faceboard_eyelids.EyelidIn_L_FB"
		;
connectAttr "blendWeighted300.o" "atts_faceboard_eyelids.EyelidOut_R_UD";
connectAttr "atts_faceboard_eyelids_EyelidOut_R_FB.o" "atts_faceboard_eyelids.EyelidOut_R_FB"
		;
connectAttr "atts_faceboard_eyelids_EyelidIn_R_UD.o" "atts_faceboard_eyelids.EyelidIn_R_UD"
		;
connectAttr "atts_faceboard_eyelids_EyelidIn_R_FB.o" "atts_faceboard_eyelids.EyelidIn_R_FB"
		;
connectAttr "blendWeighted197.o" "atts_faceboard_eyebrow.EyebrowInn_L_UD";
connectAttr "blendWeighted195.o" "atts_faceboard_eyebrow.EyebrowMid_L_UD";
connectAttr "blendWeighted198.o" "atts_faceboard_eyebrow.EyebrowOut_L_UD";
connectAttr "blendWeighted201.o" "atts_faceboard_eyebrow.EyebrowInn_R_UD";
connectAttr "blendWeighted196.o" "atts_faceboard_eyebrow.EyebrowMid_R_UD";
connectAttr "blendWeighted202.o" "atts_faceboard_eyebrow.EyebrowOut_R_UD";
connectAttr "blendWeighted199.o" "atts_faceboard_eyebrow.EyebrowMidInn_L_UD";
connectAttr "blendWeighted200.o" "atts_faceboard_eyebrow.EyebrowMidOut_L_UD";
connectAttr "blendWeighted203.o" "atts_faceboard_eyebrow.EyebrowMidInn_R_UD";
connectAttr "blendWeighted204.o" "atts_faceboard_eyebrow.EyebrowMidOut_R_UD";
connectAttr "blendWeighted185.o" "atts_faceboard_eyebrow.EyebrowInn_L_LR";
connectAttr "blendWeighted186.o" "atts_faceboard_eyebrow.EyebrowMid_L_LR";
connectAttr "blendWeighted187.o" "atts_faceboard_eyebrow.EyebrowOut_L_LR";
connectAttr "blendWeighted205.o" "atts_faceboard_eyebrow.EyebrowInn_R_LR";
connectAttr "blendWeighted206.o" "atts_faceboard_eyebrow.EyebrowMid_R_LR";
connectAttr "blendWeighted207.o" "atts_faceboard_eyebrow.EyebrowOut_R_LR";
connectAttr "blendWeighted188.o" "atts_faceboard_eyebrow.EyebrowMidInn_L_LR";
connectAttr "blendWeighted189.o" "atts_faceboard_eyebrow.EyebrowMidOut_L_LR";
connectAttr "blendWeighted208.o" "atts_faceboard_eyebrow.EyebrowMidInn_R_LR";
connectAttr "blendWeighted209.o" "atts_faceboard_eyebrow.EyebrowMidOut_R_LR";
connectAttr "blendWeighted190.o" "atts_faceboard_eyebrow.EyebrowInn_L_FB";
connectAttr "blendWeighted191.o" "atts_faceboard_eyebrow.EyebrowMid_L_FB";
connectAttr "blendWeighted192.o" "atts_faceboard_eyebrow.EyebrowOut_L_FB";
connectAttr "blendWeighted210.o" "atts_faceboard_eyebrow.EyebrowInn_R_FB";
connectAttr "blendWeighted211.o" "atts_faceboard_eyebrow.EyebrowMid_R_FB";
connectAttr "blendWeighted212.o" "atts_faceboard_eyebrow.EyebrowOut_R_FB";
connectAttr "blendWeighted193.o" "atts_faceboard_eyebrow.EyebrowMidInn_L_FB";
connectAttr "blendWeighted194.o" "atts_faceboard_eyebrow.EyebrowMidOut_L_FB";
connectAttr "blendWeighted213.o" "atts_faceboard_eyebrow.EyebrowMidInn_R_FB";
connectAttr "blendWeighted214.o" "atts_faceboard_eyebrow.EyebrowMidOut_R_FB";
connectAttr "blendWeighted306.o" "atts_faceboard_nose.Snear_L_UD";
connectAttr "blendWeighted307.o" "atts_faceboard_nose.Snear_R_UD";
connectAttr "blendWeighted308.o" "atts_faceboard_nose.Nose_UD";
connectAttr "blendWeighted309.o" "atts_faceboard_nose.Nose_LR";
connectAttr "blendWeighted312.o" "atts_faceboard_nose.bridgeUD";
connectAttr "blendWeighted313.o" "atts_faceboard_nose.bridgeLR";
connectAttr "blendWeighted310.o" "atts_faceboard_nose.Snear_l_LR";
connectAttr "blendWeighted311.o" "atts_faceboard_nose.Snear_r_LR";
connectAttr "multiplyDivide5494.ox" "atts_faceboard_tongue.RawTW";
connectAttr "multiplyDivide5493.ox" "atts_faceboard_tongue.RawYW";
connectAttr "unitConversion1645.o" "atts_faceboard_tongue.RawPT";
connectAttr "setRange1.ox" "atts_faceboard_tongue.FB";
connectAttr "layerManager.dli[4]" "controls_layer.id";
connectAttr "ctrl_faceboard_jaw.ty" "condition142.ft";
connectAttr "multiplyDivide_jawPT_open2.o" "condition142.cf";
connectAttr "ctrl_faceboard_jaw.ty" "multiplyDivide_jawPT_open2.i1x";
connectAttr "unitConversion1355.o" "multiplyDivide5494.i1x";
connectAttr "ctrl_faceboard_tongue_UpDwn.rz" "unitConversion1355.i";
connectAttr "unitConversion1351.o" "multiplyDivide5493.i1x";
connectAttr "ctrl_faceboard_tongue_sideSide.rz" "unitConversion1351.i";
connectAttr "ctrl_faceboard_tongue_twist.rz" "unitConversion1645.i";
connectAttr "ctrl_faceboard_tongue_backFront.tx" "setRange1.vx";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":TurtleDefaultBakeLayer.idx" ":TurtleBakeLayerManager.bli[0]";
connectAttr ":TurtleRenderOptions.msg" ":TurtleDefaultBakeLayer.rset";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1234.i";
connectAttr "atts_faceboard_lips_LipUppInn_R_LR1.o" "blendWeighted175.i[0]";
connectAttr "animCurveUU54.o" "blendWeighted175.i[1]";
connectAttr "animCurveUU105.o" "blendWeighted175.i[2]";
connectAttr "animCurveUU171.o" "blendWeighted175.i[3]";
connectAttr "animCurveUU750.o" "blendWeighted175.i[17]";
connectAttr "animCurveUU1000.o" "blendWeighted175.i[23]";
connectAttr "animCurveUU1234.o" "blendWeighted175.i[28]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1204.i";
connectAttr "atts_faceboard_lips_LipLow_LR.o" "blendWeighted235.i[0]";
connectAttr "animCurveUU161.o" "blendWeighted235.i[1]";
connectAttr "animCurveUU720.o" "blendWeighted235.i[15]";
connectAttr "animCurveUU970.o" "blendWeighted235.i[21]";
connectAttr "animCurveUU1204.o" "blendWeighted235.i[26]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1241.i";
connectAttr "atts_faceboard_lips_LipCornerMidLow_R_UD1.o" "blendWeighted244.i[0]"
		;
connectAttr "animCurveUU757.o" "blendWeighted244.i[14]";
connectAttr "animCurveUU1007.o" "blendWeighted244.i[20]";
connectAttr "animCurveUU1241.o" "blendWeighted244.i[25]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1416.i";
connectAttr "atts_faceboard_nose_Snear_R_UD.o" "blendWeighted307.i[0]";
connectAttr "animCurveUU1398.o" "blendWeighted307.i[2]";
connectAttr "animCurveUU1406.o" "blendWeighted307.i[3]";
connectAttr "animCurveUU1416.o" "blendWeighted307.i[4]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1415.i";
connectAttr "atts_faceboard_nose_Snear_L_UD.o" "blendWeighted306.i[0]";
connectAttr "animCurveUU1397.o" "blendWeighted306.i[2]";
connectAttr "animCurveUU1405.o" "blendWeighted306.i[3]";
connectAttr "animCurveUU1415.o" "blendWeighted306.i[4]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1201.i";
connectAttr "atts_faceboard_lips_LipUpp_UD.o" "blendWeighted232.i[0]";
connectAttr "animCurveUU159.o" "blendWeighted232.i[2]";
connectAttr "animCurveUU717.o" "blendWeighted232.i[16]";
connectAttr "animCurveUU967.o" "blendWeighted232.i[22]";
connectAttr "animCurveUU1201.o" "blendWeighted232.i[29]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1202.i";
connectAttr "atts_faceboard_lips_LipUpp_LR.o" "blendWeighted233.i[0]";
connectAttr "animCurveUU158.o" "blendWeighted233.i[1]";
connectAttr "animCurveUU718.o" "blendWeighted233.i[15]";
connectAttr "animCurveUU968.o" "blendWeighted233.i[21]";
connectAttr "animCurveUU1202.o" "blendWeighted233.i[26]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1239.i";
connectAttr "atts_faceboard_lips_LipCornerMidUpp_R_UD1.o" "blendWeighted242.i[0]"
		;
connectAttr "animCurveUU755.o" "blendWeighted242.i[14]";
connectAttr "animCurveUU1005.o" "blendWeighted242.i[20]";
connectAttr "animCurveUU1239.o" "blendWeighted242.i[25]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1230.i";
connectAttr "atts_faceboard_lips_LipUppInn_L_UD.o" "blendWeighted154.i[0]";
connectAttr "animCurveUU31.o" "blendWeighted154.i[1]";
connectAttr "animCurveUU101.o" "blendWeighted154.i[2]";
connectAttr "animCurveUU746.o" "blendWeighted154.i[16]";
connectAttr "animCurveUU996.o" "blendWeighted154.i[22]";
connectAttr "animCurveUU1230.o" "blendWeighted154.i[27]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1216.i";
connectAttr "atts_faceboard_lips_LipLow_R_LR1.o" "blendWeighted167.i[0]";
connectAttr "animCurveUU46.o" "blendWeighted167.i[1]";
connectAttr "animCurveUU88.o" "blendWeighted167.i[2]";
connectAttr "animCurveUU167.o" "blendWeighted167.i[3]";
connectAttr "animCurveUU732.o" "blendWeighted167.i[17]";
connectAttr "animCurveUU982.o" "blendWeighted167.i[23]";
connectAttr "animCurveUU1216.o" "blendWeighted167.i[28]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1220.i";
connectAttr "atts_faceboard_lips_LipLow_L_FB.o" "blendWeighted143.i[0]";
connectAttr "animCurveUU20.o" "blendWeighted143.i[1]";
connectAttr "animCurveUU91.o" "blendWeighted143.i[2]";
connectAttr "animCurveUU736.o" "blendWeighted143.i[16]";
connectAttr "animCurveUU986.o" "blendWeighted143.i[22]";
connectAttr "animCurveUU1220.o" "blendWeighted143.i[27]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1214.i";
connectAttr "atts_faceboard_lips_LipLow_L_LR.o" "blendWeighted146.i[0]";
connectAttr "animCurveUU23.o" "blendWeighted146.i[1]";
connectAttr "animCurveUU86.o" "blendWeighted146.i[2]";
connectAttr "animCurveUU166.o" "blendWeighted146.i[3]";
connectAttr "animCurveUU730.o" "blendWeighted146.i[17]";
connectAttr "animCurveUU980.o" "blendWeighted146.i[23]";
connectAttr "animCurveUU1214.o" "blendWeighted146.i[28]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1449.i";
connectAttr "atts_faceboard_cheeks_CheeksMid_L_UD.o" "blendWeighted140.i[0]";
connectAttr "animCurveUU17.o" "blendWeighted140.i[1]";
connectAttr "animCurveUU1441.o" "blendWeighted140.i[3]";
connectAttr "animCurveUU1445.o" "blendWeighted140.i[4]";
connectAttr "animCurveUU1449.o" "blendWeighted140.i[5]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1210.i";
connectAttr "atts_faceboard_lips_LipUpp_L_LR.o" "blendWeighted150.i[0]";
connectAttr "animCurveUU27.o" "blendWeighted150.i[1]";
connectAttr "animCurveUU82.o" "blendWeighted150.i[2]";
connectAttr "animCurveUU164.o" "blendWeighted150.i[3]";
connectAttr "animCurveUU726.o" "blendWeighted150.i[17]";
connectAttr "animCurveUU976.o" "blendWeighted150.i[23]";
connectAttr "animCurveUU1210.o" "blendWeighted150.i[28]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1215.i";
connectAttr "atts_faceboard_lips_LipLow_R_UD1.o" "blendWeighted166.i[0]";
connectAttr "animCurveUU45.o" "blendWeighted166.i[1]";
connectAttr "animCurveUU87.o" "blendWeighted166.i[2]";
connectAttr "animCurveUU731.o" "blendWeighted166.i[16]";
connectAttr "animCurveUU981.o" "blendWeighted166.i[22]";
connectAttr "animCurveUU1215.o" "blendWeighted166.i[27]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1207.i";
connectAttr "atts_faceboard_lips_LipCornerMid_R_UD2.o" "blendWeighted162.i[0]";
connectAttr "animCurveUU41.o" "blendWeighted162.i[1]";
connectAttr "animCurveUU79.o" "blendWeighted162.i[2]";
connectAttr "animCurveUU723.o" "blendWeighted162.i[16]";
connectAttr "animCurveUU973.o" "blendWeighted162.i[22]";
connectAttr "animCurveUU1207.o" "blendWeighted162.i[27]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1450.i";
connectAttr "atts_faceboard_cheeks_CheeksMid_R_UD1.o" "blendWeighted177.i[0]";
connectAttr "animCurveUU56.o" "blendWeighted177.i[1]";
connectAttr "animCurveUU1443.o" "blendWeighted177.i[3]";
connectAttr "animCurveUU1447.o" "blendWeighted177.i[4]";
connectAttr "animCurveUU1450.o" "blendWeighted177.i[5]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1224.i";
connectAttr "atts_faceboard_lips_LipLowInn_L_UD.o" "blendWeighted151.i[0]";
connectAttr "animCurveUU28.o" "blendWeighted151.i[1]";
connectAttr "animCurveUU95.o" "blendWeighted151.i[2]";
connectAttr "animCurveUU740.o" "blendWeighted151.i[16]";
connectAttr "animCurveUU990.o" "blendWeighted151.i[22]";
connectAttr "animCurveUU1224.o" "blendWeighted151.i[27]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1205.i";
connectAttr "atts_faceboard_lips_LipCornerMid_L_UD.o" "blendWeighted138.i[0]";
connectAttr "animCurveUU15.o" "blendWeighted138.i[1]";
connectAttr "animCurveUU77.o" "blendWeighted138.i[2]";
connectAttr "animCurveUU721.o" "blendWeighted138.i[16]";
connectAttr "animCurveUU971.o" "blendWeighted138.i[22]";
connectAttr "animCurveUU1205.o" "blendWeighted138.i[27]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1229.i";
connectAttr "atts_faceboard_lips_LipLowInn_R_FB1.o" "blendWeighted173.i[0]";
connectAttr "animCurveUU52.o" "blendWeighted173.i[1]";
connectAttr "animCurveUU100.o" "blendWeighted173.i[2]";
connectAttr "animCurveUU745.o" "blendWeighted173.i[16]";
connectAttr "animCurveUU995.o" "blendWeighted173.i[22]";
connectAttr "animCurveUU1229.o" "blendWeighted173.i[28]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1231.i";
connectAttr "atts_faceboard_lips_LipUppInn_L_LR.o" "blendWeighted155.i[0]";
connectAttr "animCurveUU32.o" "blendWeighted155.i[1]";
connectAttr "animCurveUU102.o" "blendWeighted155.i[2]";
connectAttr "animCurveUU170.o" "blendWeighted155.i[3]";
connectAttr "animCurveUU747.o" "blendWeighted155.i[17]";
connectAttr "animCurveUU997.o" "blendWeighted155.i[23]";
connectAttr "animCurveUU1231.o" "blendWeighted155.i[28]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1218.i";
connectAttr "atts_faceboard_lips_LipCornerMid_L_FB.o" "blendWeighted136.i[0]";
connectAttr "animCurveUU13.o" "blendWeighted136.i[1]";
connectAttr "animCurveUU89.o" "blendWeighted136.i[2]";
connectAttr "animCurveUU734.o" "blendWeighted136.i[16]";
connectAttr "animCurveUU984.o" "blendWeighted136.i[22]";
connectAttr "animCurveUU1218.o" "blendWeighted136.i[27]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1228.i";
connectAttr "atts_faceboard_lips_LipLowInn_R_LR1.o" "blendWeighted172.i[0]";
connectAttr "animCurveUU51.o" "blendWeighted172.i[1]";
connectAttr "animCurveUU99.o" "blendWeighted172.i[2]";
connectAttr "animCurveUU169.o" "blendWeighted172.i[3]";
connectAttr "animCurveUU744.o" "blendWeighted172.i[17]";
connectAttr "animCurveUU994.o" "blendWeighted172.i[23]";
connectAttr "animCurveUU1228.o" "blendWeighted172.i[28]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1238.i";
connectAttr "atts_faceboard_lips_LipCornerMidUpp_L_UD.o" "blendWeighted241.i[0]"
		;
connectAttr "animCurveUU754.o" "blendWeighted241.i[14]";
connectAttr "animCurveUU1004.o" "blendWeighted241.i[20]";
connectAttr "animCurveUU1238.o" "blendWeighted241.i[25]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1227.i";
connectAttr "atts_faceboard_lips_LipLowInn_R_UD1.o" "blendWeighted171.i[0]";
connectAttr "animCurveUU50.o" "blendWeighted171.i[1]";
connectAttr "animCurveUU98.o" "blendWeighted171.i[2]";
connectAttr "animCurveUU743.o" "blendWeighted171.i[16]";
connectAttr "animCurveUU993.o" "blendWeighted171.i[22]";
connectAttr "animCurveUU1227.o" "blendWeighted171.i[27]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1240.i";
connectAttr "atts_faceboard_lips_LipCornerMidLow_L_UD.o" "blendWeighted243.i[0]"
		;
connectAttr "animCurveUU756.o" "blendWeighted243.i[14]";
connectAttr "animCurveUU1006.o" "blendWeighted243.i[20]";
connectAttr "animCurveUU1240.o" "blendWeighted243.i[25]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1221.i";
connectAttr "atts_faceboard_lips_LipLow_R_FB1.o" "blendWeighted169.i[0]";
connectAttr "animCurveUU48.o" "blendWeighted169.i[1]";
connectAttr "animCurveUU92.o" "blendWeighted169.i[2]";
connectAttr "animCurveUU737.o" "blendWeighted169.i[16]";
connectAttr "animCurveUU987.o" "blendWeighted169.i[22]";
connectAttr "animCurveUU1221.o" "blendWeighted169.i[27]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1209.i";
connectAttr "atts_faceboard_lips_LipUpp_L_UD.o" "blendWeighted149.i[0]";
connectAttr "animCurveUU26.o" "blendWeighted149.i[1]";
connectAttr "animCurveUU81.o" "blendWeighted149.i[2]";
connectAttr "animCurveUU725.o" "blendWeighted149.i[16]";
connectAttr "animCurveUU975.o" "blendWeighted149.i[22]";
connectAttr "animCurveUU1209.o" "blendWeighted149.i[27]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1213.i";
connectAttr "atts_faceboard_lips_LipLow_L_UD.o" "blendWeighted145.i[0]";
connectAttr "animCurveUU22.o" "blendWeighted145.i[1]";
connectAttr "animCurveUU85.o" "blendWeighted145.i[2]";
connectAttr "animCurveUU729.o" "blendWeighted145.i[16]";
connectAttr "animCurveUU979.o" "blendWeighted145.i[22]";
connectAttr "animCurveUU1213.o" "blendWeighted145.i[27]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1203.i";
connectAttr "atts_faceboard_lips_LipLow_UD.o" "blendWeighted234.i[0]";
connectAttr "animCurveUU160.o" "blendWeighted234.i[1]";
connectAttr "animCurveUU719.o" "blendWeighted234.i[15]";
connectAttr "animCurveUU969.o" "blendWeighted234.i[21]";
connectAttr "animCurveUU1203.o" "blendWeighted234.i[26]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1385.i";
connectAttr "rigs_jaw_facepnt_PT.o" "blendWeighted246.i[0]";
connectAttr "animCurveUU1200.o" "blendWeighted246.i[12]";
connectAttr "animCurveUU1273.o" "blendWeighted246.i[16]";
connectAttr "animCurveUU1385.o" "blendWeighted246.i[19]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1384.i";
connectAttr "animCurveUU1384.o" "blendWeighted280.i[4]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1236.i";
connectAttr "atts_faceboard_lips_LipUpp_FB.o" "blendWeighted239.i[0]";
connectAttr "animCurveUU752.o" "blendWeighted239.i[14]";
connectAttr "animCurveUU1002.o" "blendWeighted239.i[20]";
connectAttr "animCurveUU1236.o" "blendWeighted239.i[25]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1237.i";
connectAttr "atts_faceboard_lips_LipLow_FB.o" "blendWeighted240.i[0]";
connectAttr "animCurveUU753.o" "blendWeighted240.i[14]";
connectAttr "animCurveUU1003.o" "blendWeighted240.i[20]";
connectAttr "animCurveUU1237.o" "blendWeighted240.i[26]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1208.i";
connectAttr "atts_faceboard_lips_LipCornerMid_R_LR1.o" "blendWeighted163.i[0]";
connectAttr "animCurveUU42.o" "blendWeighted163.i[1]";
connectAttr "animCurveUU80.o" "blendWeighted163.i[2]";
connectAttr "animCurveUU163.o" "blendWeighted163.i[3]";
connectAttr "animCurveUU724.o" "blendWeighted163.i[17]";
connectAttr "animCurveUU974.o" "blendWeighted163.i[23]";
connectAttr "animCurveUU1208.o" "blendWeighted163.i[28]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1212.i";
connectAttr "atts_faceboard_lips_LipUpp_R_LR1.o" "blendWeighted165.i[0]";
connectAttr "animCurveUU44.o" "blendWeighted165.i[1]";
connectAttr "animCurveUU84.o" "blendWeighted165.i[2]";
connectAttr "animCurveUU165.o" "blendWeighted165.i[3]";
connectAttr "animCurveUU728.o" "blendWeighted165.i[17]";
connectAttr "animCurveUU978.o" "blendWeighted165.i[23]";
connectAttr "animCurveUU1212.o" "blendWeighted165.i[28]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1219.i";
connectAttr "atts_faceboard_lips_LipCornerMid_R_FB1.o" "blendWeighted168.i[0]";
connectAttr "animCurveUU47.o" "blendWeighted168.i[1]";
connectAttr "animCurveUU90.o" "blendWeighted168.i[2]";
connectAttr "animCurveUU735.o" "blendWeighted168.i[16]";
connectAttr "animCurveUU985.o" "blendWeighted168.i[22]";
connectAttr "animCurveUU1219.o" "blendWeighted168.i[27]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1225.i";
connectAttr "atts_faceboard_lips_LipLowInn_L_LR.o" "blendWeighted152.i[0]";
connectAttr "animCurveUU29.o" "blendWeighted152.i[1]";
connectAttr "animCurveUU96.o" "blendWeighted152.i[2]";
connectAttr "animCurveUU168.o" "blendWeighted152.i[3]";
connectAttr "animCurveUU741.o" "blendWeighted152.i[17]";
connectAttr "animCurveUU991.o" "blendWeighted152.i[23]";
connectAttr "animCurveUU1225.o" "blendWeighted152.i[28]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1223.i";
connectAttr "atts_faceboard_lips_LipUpp_R_FB1.o" "blendWeighted170.i[0]";
connectAttr "animCurveUU49.o" "blendWeighted170.i[1]";
connectAttr "animCurveUU94.o" "blendWeighted170.i[2]";
connectAttr "animCurveUU739.o" "blendWeighted170.i[16]";
connectAttr "animCurveUU989.o" "blendWeighted170.i[22]";
connectAttr "animCurveUU1223.o" "blendWeighted170.i[27]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1226.i";
connectAttr "atts_faceboard_lips_LipLowInn_L_FB.o" "blendWeighted153.i[0]";
connectAttr "animCurveUU30.o" "blendWeighted153.i[1]";
connectAttr "animCurveUU97.o" "blendWeighted153.i[2]";
connectAttr "animCurveUU742.o" "blendWeighted153.i[16]";
connectAttr "animCurveUU992.o" "blendWeighted153.i[22]";
connectAttr "animCurveUU1226.o" "blendWeighted153.i[28]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1206.i";
connectAttr "atts_faceboard_lips_LipCornerMid_L_LR.o" "blendWeighted139.i[0]";
connectAttr "animCurveUU16.o" "blendWeighted139.i[1]";
connectAttr "animCurveUU78.o" "blendWeighted139.i[2]";
connectAttr "animCurveUU162.o" "blendWeighted139.i[3]";
connectAttr "animCurveUU722.o" "blendWeighted139.i[17]";
connectAttr "animCurveUU972.o" "blendWeighted139.i[23]";
connectAttr "animCurveUU1206.o" "blendWeighted139.i[28]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1232.i";
connectAttr "atts_faceboard_lips_LipUppInn_L_FB.o" "blendWeighted156.i[0]";
connectAttr "animCurveUU33.o" "blendWeighted156.i[1]";
connectAttr "animCurveUU103.o" "blendWeighted156.i[2]";
connectAttr "animCurveUU748.o" "blendWeighted156.i[16]";
connectAttr "animCurveUU998.o" "blendWeighted156.i[22]";
connectAttr "animCurveUU1232.o" "blendWeighted156.i[28]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1211.i";
connectAttr "atts_faceboard_lips_LipUpp_R_UD1.o" "blendWeighted164.i[0]";
connectAttr "animCurveUU43.o" "blendWeighted164.i[1]";
connectAttr "animCurveUU83.o" "blendWeighted164.i[2]";
connectAttr "animCurveUU727.o" "blendWeighted164.i[16]";
connectAttr "animCurveUU977.o" "blendWeighted164.i[22]";
connectAttr "animCurveUU1211.o" "blendWeighted164.i[27]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1235.i";
connectAttr "atts_faceboard_lips_LipUppInn_R_FB2.o" "blendWeighted176.i[0]";
connectAttr "animCurveUU55.o" "blendWeighted176.i[1]";
connectAttr "animCurveUU106.o" "blendWeighted176.i[2]";
connectAttr "animCurveUU751.o" "blendWeighted176.i[16]";
connectAttr "animCurveUU1001.o" "blendWeighted176.i[22]";
connectAttr "animCurveUU1235.o" "blendWeighted176.i[27]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1233.i";
connectAttr "atts_faceboard_lips_LipUppInn_R_UD1.o" "blendWeighted174.i[0]";
connectAttr "animCurveUU53.o" "blendWeighted174.i[1]";
connectAttr "animCurveUU104.o" "blendWeighted174.i[2]";
connectAttr "animCurveUU749.o" "blendWeighted174.i[16]";
connectAttr "animCurveUU999.o" "blendWeighted174.i[22]";
connectAttr "animCurveUU1233.o" "blendWeighted174.i[27]";
connectAttr "ctrl_faceboard_WQ.tx" "animCurveUU1222.i";
connectAttr "atts_faceboard_lips_LipUpp_L_FB.o" "blendWeighted147.i[0]";
connectAttr "animCurveUU24.o" "blendWeighted147.i[1]";
connectAttr "animCurveUU93.o" "blendWeighted147.i[2]";
connectAttr "animCurveUU738.o" "blendWeighted147.i[16]";
connectAttr "animCurveUU988.o" "blendWeighted147.i[22]";
connectAttr "animCurveUU1222.o" "blendWeighted147.i[27]";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU723.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU753.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU1273.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU1446.i";
connectAttr "atts_faceboard_cheeks_CheeksMid_L_LR.o" "blendWeighted141.i[0]";
connectAttr "animCurveUU18.o" "blendWeighted141.i[1]";
connectAttr "animCurveUU1442.o" "blendWeighted141.i[4]";
connectAttr "animCurveUU1446.o" "blendWeighted141.i[5]";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU751.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU1411.i";
connectAttr "animCurveUU1403.o" "blendWeighted310.i[2]";
connectAttr "animCurveUU1411.o" "blendWeighted310.i[3]";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU1409.i";
connectAttr "animCurveUU1401.o" "blendWeighted312.i[1]";
connectAttr "animCurveUU1409.o" "blendWeighted312.i[2]";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU1405.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU1410.i";
connectAttr "animCurveUU1402.o" "blendWeighted313.i[1]";
connectAttr "animCurveUU1410.o" "blendWeighted313.i[2]";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU721.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU717.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU720.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU1406.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU727.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU1447.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU738.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU754.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU739.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU740.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU1445.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU719.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU757.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU1412.i";
connectAttr "animCurveUU1404.o" "blendWeighted311.i[2]";
connectAttr "animCurveUU1412.o" "blendWeighted311.i[3]";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU730.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU745.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU741.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU735.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU728.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU750.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU736.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU737.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU755.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU748.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU722.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU752.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU731.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU725.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU726.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU724.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU718.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU749.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU1448.i";
connectAttr "atts_faceboard_cheeks_CheeksMid_R_LR1.o" "blendWeighted178.i[0]";
connectAttr "animCurveUU57.o" "blendWeighted178.i[1]";
connectAttr "animCurveUU1444.o" "blendWeighted178.i[4]";
connectAttr "animCurveUU1448.o" "blendWeighted178.i[5]";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU1408.i";
connectAttr "atts_faceboard_nose_Nose_LR.o" "blendWeighted309.i[0]";
connectAttr "animCurveUU1400.o" "blendWeighted309.i[2]";
connectAttr "animCurveUU1408.o" "blendWeighted309.i[3]";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU743.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU729.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU747.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU756.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU746.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU742.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU732.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU734.i";
connectAttr "ctrl_faceboard_YU.tx" "animCurveUU744.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU1400.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU991.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU967.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU1442.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU1007.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU1001.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU1399.i";
connectAttr "atts_faceboard_nose_Nose_UD.o" "blendWeighted308.i[0]";
connectAttr "animCurveUU1399.o" "blendWeighted308.i[2]";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU1404.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU1397.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU968.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU1398.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU971.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU1005.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU1402.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU1004.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU1441.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU997.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU990.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU1401.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU992.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU1443.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU974.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU1403.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU993.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU984.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU970.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU978.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU1002.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU975.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU977.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU973.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU981.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU979.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU998.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU969.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU982.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU994.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU1200.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU972.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU1003.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU1000.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU1444.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU986.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU988.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU989.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU999.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU995.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU980.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU1006.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU987.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU985.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU976.i";
connectAttr "ctrl_faceboard_O.tx" "animCurveUU996.i";
connectAttr "ctrl_faceboard_nose.ty" "atts_faceboard_nose_Nose_UD.i";
connectAttr "ctrl_faceboard_nose.tx" "atts_faceboard_nose_Nose_LR.i";
connectAttr "ctrl_faceboard_snear_l.ty" "atts_faceboard_nose_Snear_L_UD.i";
connectAttr "ctrl_faceboard_snear_r.ty" "atts_faceboard_nose_Snear_R_UD.i";
connectAttr "ctrl_faceboard_eyebrow_l.ty" "animCurveUU110.i";
connectAttr "atts_faceboard_eyebrow_EyebrowMidInn_L_LR.o" "blendWeighted188.i[0]"
		;
connectAttr "animCurveUU110.o" "blendWeighted188.i[1]";
connectAttr "ctrl_faceboard_eyebrow_l.tx" "atts_faceboard_eyebrow_EyebrowMidOut_L_LR.i"
		;
connectAttr "atts_faceboard_eyebrow_EyebrowMidOut_L_LR.o" "blendWeighted189.i[0]"
		;
connectAttr "animCurveUU111.o" "blendWeighted189.i[1]";
connectAttr "ctrl_faceboard_eyebrow_l.ty" "animCurveUU114.i";
connectAttr "atts_faceboard_eyebrow_EyebrowOut_L_FB.o" "blendWeighted192.i[0]";
connectAttr "animCurveUU114.o" "blendWeighted192.i[1]";
connectAttr "ctrl_faceboard_eyebrow_l.tx" "atts_faceboard_eyebrow_EyebrowInn_L_FB.i"
		;
connectAttr "atts_faceboard_eyebrow_EyebrowInn_L_FB.o" "blendWeighted190.i[0]";
connectAttr "animCurveUU112.o" "blendWeighted190.i[1]";
connectAttr "ctrl_faceboard_eyebrow_l.ty" "animCurveUU107.i";
connectAttr "atts_faceboard_eyebrow_EyebrowInn_L_LR.o" "blendWeighted185.i[0]";
connectAttr "animCurveUU107.o" "blendWeighted185.i[1]";
connectAttr "ctrl_faceboard_eyebrow_l.ty" "animCurveUU116.i";
connectAttr "atts_faceboard_eyebrow_EyebrowMidOut_L_FB.o" "blendWeighted194.i[0]"
		;
connectAttr "animCurveUU116.o" "blendWeighted194.i[1]";
connectAttr "ctrl_faceboard_eyebrow_l.ty" "animCurveUU113.i";
connectAttr "atts_faceboard_eyebrow_EyebrowMid_L_FB.o" "blendWeighted191.i[0]";
connectAttr "animCurveUU113.o" "blendWeighted191.i[1]";
connectAttr "ctrl_faceboard_eyebrow_l.ty" "animCurveUU115.i";
connectAttr "atts_faceboard_eyebrow_EyebrowMidInn_L_FB.o" "blendWeighted193.i[0]"
		;
connectAttr "animCurveUU115.o" "blendWeighted193.i[1]";
connectAttr "ctrl_faceboard_eyebrow_l.tx" "atts_faceboard_EyebrowOutL_UD1.i";
connectAttr "atts_faceboard_EyebrowOutL_UD1.o" "blendWeighted198.i[0]";
connectAttr "animCurveUU121.o" "blendWeighted198.i[1]";
connectAttr "ctrl_faceboard_eyebrow_l.tx" "atts_faceboard_eyebrow_EyebrowOut_L_FB.i"
		;
connectAttr "ctrl_faceboard_eyebrow_l.ty" "animCurveUU108.i";
connectAttr "atts_faceboard_eyebrow_EyebrowMid_L_LR.o" "blendWeighted186.i[0]";
connectAttr "animCurveUU108.o" "blendWeighted186.i[1]";
connectAttr "ctrl_faceboard_eyebrow_l.tx" "atts_faceboard_eyebrow_EyebrowMid_L_LR.i"
		;
connectAttr "ctrl_faceboard_eyebrow_l.tx" "atts_faceboard_eyebrow_EyebrowMid_L_FB.i"
		;
connectAttr "ctrl_faceboard_eyebrow_l.tx" "atts_faceboard_eyebrow_EyebrowInn_L_LR.i"
		;
connectAttr "ctrl_faceboard_eyebrow_l.tx" "atts_faceboard_eyebrows_EyebrowMidInn_L_UD.i"
		;
connectAttr "atts_faceboard_eyebrows_EyebrowMidInn_L_UD.o" "blendWeighted199.i[0]"
		;
connectAttr "animCurveUU122.o" "blendWeighted199.i[1]";
connectAttr "ctrl_faceboard_eyebrow_l.tx" "atts_faceboard_eyebrow_EyebrowMidInn_L_LR.i"
		;
connectAttr "ctrl_faceboard_eyebrow_l.ty" "animCurveUU123.i";
connectAttr "atts_faceboard_eyebrows_EyebrowMidOut_L_UD.o" "blendWeighted200.i[0]"
		;
connectAttr "animCurveUU123.o" "blendWeighted200.i[1]";
connectAttr "ctrl_faceboard_eyebrow_l.ty" "animCurveUU109.i";
connectAttr "atts_faceboard_eyebrow_EyebrowOut_L_LR.o" "blendWeighted187.i[0]";
connectAttr "animCurveUU109.o" "blendWeighted187.i[1]";
connectAttr "ctrl_faceboard_eyebrow_l.tx" "atts_faceboard_eyebrow_EyebrowMidInn_L_FB.i"
		;
connectAttr "ctrl_faceboard_eyebrow_l.ty" "atts_faceboard_eyebrow_EyebrowMid_L_UD.i"
		;
connectAttr "atts_faceboard_eyebrow_EyebrowMid_L_UD.o" "blendWeighted195.i[0]";
connectAttr "animCurveUU119.o" "blendWeighted195.i[2]";
connectAttr "ctrl_faceboard_eyebrow_l.ty" "animCurveUU122.i";
connectAttr "ctrl_faceboard_eyebrow_l.tx" "atts_faceboard_eyebrow_EyebrowOut_L_LR.i"
		;
connectAttr "ctrl_faceboard_eyebrow_l.ty" "animCurveUU121.i";
connectAttr "ctrl_faceboard_eyebrow_l.tx" "animCurveUU119.i";
connectAttr "ctrl_faceboard_eyebrow_l.tx" "atts_faceboard_EyebrowInnL_UD1.i";
connectAttr "atts_faceboard_EyebrowInnL_UD1.o" "blendWeighted197.i[0]";
connectAttr "animCurveUU120.o" "blendWeighted197.i[1]";
connectAttr "ctrl_faceboard_eyebrow_l.tx" "atts_faceboard_eyebrow_EyebrowMidOut_L_FB.i"
		;
connectAttr "ctrl_faceboard_eyebrow_l.ty" "animCurveUU111.i";
connectAttr "ctrl_faceboard_eyebrow_l.tx" "atts_faceboard_eyebrows_EyebrowMidOut_L_UD.i"
		;
connectAttr "ctrl_faceboard_eyebrow_l.ty" "animCurveUU120.i";
connectAttr "ctrl_faceboard_eyebrow_l.ty" "animCurveUU112.i";
connectAttr "ctrl_faceboard_eyebrow_r.tx" "animCurveUU130.i";
connectAttr "atts_faceboard_eyebrow_EyebrowOut_R_LR.o" "blendWeighted207.i[0]";
connectAttr "animCurveUU130.o" "blendWeighted207.i[1]";
connectAttr "ctrl_faceboard_eyebrow_r.tx" "animCurveUU135.i";
connectAttr "atts_faceboard_eyebrow_EyebrowOut_R_FB.o" "blendWeighted212.i[0]";
connectAttr "animCurveUU135.o" "blendWeighted212.i[1]";
connectAttr "ctrl_faceboard_eyebrow_r.ty" "atts_faceboard_eyebrow_EyebrowInn_R_LR.i"
		;
connectAttr "atts_faceboard_eyebrow_EyebrowInn_R_LR.o" "blendWeighted205.i[0]";
connectAttr "animCurveUU128.o" "blendWeighted205.i[1]";
connectAttr "ctrl_faceboard_eyebrow_r.ty" "atts_faceboard_eyebrow_EyebrowMid_R_LR.i"
		;
connectAttr "atts_faceboard_eyebrow_EyebrowMid_R_LR.o" "blendWeighted206.i[0]";
connectAttr "animCurveUU129.o" "blendWeighted206.i[1]";
connectAttr "ctrl_faceboard_eyebrow_r.ty" "atts_faceboard_eyebrow_EyebrowInn_R_FB.i"
		;
connectAttr "atts_faceboard_eyebrow_EyebrowInn_R_FB.o" "blendWeighted210.i[0]";
connectAttr "animCurveUU133.o" "blendWeighted210.i[1]";
connectAttr "ctrl_faceboard_eyebrow_r.tx" "animCurveUU133.i";
connectAttr "ctrl_faceboard_eyebrow_r.tx" "animCurveUU129.i";
connectAttr "ctrl_faceboard_eyebrow_r.ty" "atts_faceboard_eyebrow_EyebrowMid_R_FB.i"
		;
connectAttr "atts_faceboard_eyebrow_EyebrowMid_R_FB.o" "blendWeighted211.i[0]";
connectAttr "animCurveUU134.o" "blendWeighted211.i[1]";
connectAttr "ctrl_faceboard_eyebrow_r.ty" "atts_faceboard_eyebrow_EyebrowMidInn_R_FB.i"
		;
connectAttr "atts_faceboard_eyebrow_EyebrowMidInn_R_FB.o" "blendWeighted213.i[0]"
		;
connectAttr "animCurveUU136.o" "blendWeighted213.i[1]";
connectAttr "ctrl_faceboard_eyebrow_r.ty" "atts_faceboard_eyebrow_EyebrowMidOut_R_LR.i"
		;
connectAttr "atts_faceboard_eyebrow_EyebrowMidOut_R_LR.o" "blendWeighted209.i[0]"
		;
connectAttr "animCurveUU132.o" "blendWeighted209.i[1]";
connectAttr "ctrl_faceboard_eyebrow_r.tx" "animCurveUU132.i";
connectAttr "ctrl_faceboard_eyebrow_r.tx" "animCurveUU136.i";
connectAttr "ctrl_faceboard_eyebrow_r.ty" "atts_faceboard_eyebrow_EyebrowMidOut_R_FB.i"
		;
connectAttr "atts_faceboard_eyebrow_EyebrowMidOut_R_FB.o" "blendWeighted214.i[0]"
		;
connectAttr "animCurveUU137.o" "blendWeighted214.i[1]";
connectAttr "ctrl_faceboard_eyebrow_r.ty" "atts_faceboard_eyebrow_EyebrowOut_R_LR.i"
		;
connectAttr "ctrl_faceboard_eyebrow_r.ty" "animCurveUU125.i";
connectAttr "atts_faceboard_EyebrowOutR_UD1.o" "blendWeighted202.i[0]";
connectAttr "animCurveUU125.o" "blendWeighted202.i[1]";
connectAttr "ctrl_faceboard_eyebrow_r.tx" "atts_faceboard_EyebrowOutR_UD1.i";
connectAttr "ctrl_faceboard_eyebrow_r.tx" "atts_faceboard_eyebrows_EyebrowMidOut_L_UD1.i"
		;
connectAttr "atts_faceboard_eyebrows_EyebrowMidOut_L_UD1.o" "blendWeighted204.i[0]"
		;
connectAttr "animCurveUU127.o" "blendWeighted204.i[1]";
connectAttr "ctrl_faceboard_eyebrow_r.ty" "animCurveUU126.i";
connectAttr "atts_faceboard_eyebrows_EyebrowMidInn_L_UD1.o" "blendWeighted203.i[0]"
		;
connectAttr "animCurveUU126.o" "blendWeighted203.i[1]";
connectAttr "ctrl_faceboard_eyebrow_r.tx" "animCurveUU131.i";
connectAttr "atts_faceboard_eyebrow_EyebrowMidInn_R_LR.o" "blendWeighted208.i[0]"
		;
connectAttr "animCurveUU131.o" "blendWeighted208.i[1]";
connectAttr "ctrl_faceboard_eyebrow_r.tx" "atts_faceboard_EyebrowInnR_UD1.i";
connectAttr "atts_faceboard_EyebrowInnR_UD1.o" "blendWeighted201.i[0]";
connectAttr "animCurveUU124.o" "blendWeighted201.i[1]";
connectAttr "ctrl_faceboard_eyebrow_r.tx" "animCurveUU137.i";
connectAttr "ctrl_faceboard_eyebrow_r.ty" "animCurveUU124.i";
connectAttr "ctrl_faceboard_eyebrow_r.tx" "atts_faceboard_eyebrows_EyebrowMidInn_L_UD1.i"
		;
connectAttr "ctrl_faceboard_eyebrow_r.tx" "animCurveUU128.i";
connectAttr "ctrl_faceboard_eyebrow_r.ty" "atts_faceboard_eyebrow_EyebrowMidInn_R_LR.i"
		;
connectAttr "ctrl_faceboard_eyebrow_r.ty" "atts_faceboard_eyebrow_EyebrowOut_R_FB.i"
		;
connectAttr "ctrl_faceboard_eyebrow_r.tx" "animCurveUU134.i";
connectAttr "ctrl_faceboard_eyebrow_r.tx" "animCurveUU118.i";
connectAttr "atts_faceboard_eyebrow_EyebrowMid_R_UD.o" "blendWeighted196.i[0]";
connectAttr "animCurveUU118.o" "blendWeighted196.i[1]";
connectAttr "ctrl_faceboard_eyebrow_r.ty" "animCurveUU127.i";
connectAttr "ctrl_faceboard_eyebrow_r.ty" "atts_faceboard_eyebrow_EyebrowMid_R_UD.i"
		;
connectAttr "ctrl_faceboard_eyelidBlink_r.ty" "animCurveUU142.i";
connectAttr "__atts_faceboard_eyelids_EyelidLowMid_R_UD1.o" "blendWeighted221.i[0]"
		;
connectAttr "__animCurveUU17.o" "blendWeighted221.i[1]";
connectAttr "animCurveUU142.o" "blendWeighted221.i[2]";
connectAttr "ctrl_faceboard_eyelidBlink_r.ty" "animCurveUU139.i";
connectAttr "__atts_faceboard_eyelids_EyelidUppMid_R_UD1.o" "blendWeighted218.i[0]"
		;
connectAttr "__animCurveUU14.o" "blendWeighted218.i[1]";
connectAttr "animCurveUU139.o" "blendWeighted218.i[2]";
connectAttr "ctrl_faceboard_eyelidBlink_r.ty" "atts_faceboard_eyelids_EyelidOut_R_UD.i"
		;
connectAttr "atts_faceboard_eyelids_EyelidOut_R_UD.o" "blendWeighted300.i[0]";
connectAttr "animCurveUU1252.o" "blendWeighted300.i[1]";
connectAttr "animCurveUU1255.o" "blendWeighted300.i[2]";
connectAttr "ctrl_faceboard_eyelidBlink_r.ty" "animCurveUU147.i";
connectAttr "animCurveUU147.o" "blendWeighted224.i[2]";
connectAttr "animCurveUU148.o" "blendWeighted224.i[3]";
connectAttr "ctrl_faceboard_eyelidBlink_r.ty" "atts_faceboard_eyelids_EyelidIn_R_UD.i"
		;
connectAttr "ctrl_faceboard_eyelidBlink_r.ty" "animCurveUU154.i";
connectAttr "atts_faceboard_eyelids_EyelidLowMid_R_FB1.o" "blendWeighted227.i[0]"
		;
connectAttr "animCurveUU153.o" "blendWeighted227.i[1]";
connectAttr "animCurveUU154.o" "blendWeighted227.i[2]";
connectAttr "ctrl_faceboard_eyelidBlink_r.ty" "animCurveUU138.i";
connectAttr "__atts_faceboard_eyelids_EyelidUppInn_R_UD1.o" "blendWeighted217.i[0]"
		;
connectAttr "__animCurveUU13.o" "blendWeighted217.i[1]";
connectAttr "animCurveUU138.o" "blendWeighted217.i[2]";
connectAttr "ctrl_faceboard_eyelidBlink_r.ty" "animCurveUU150.i";
connectAttr "animCurveUU150.o" "blendWeighted225.i[2]";
connectAttr "animCurveUU1257.o" "blendWeighted225.i[3]";
connectAttr "animCurveUU1261.o" "blendWeighted225.i[4]";
connectAttr "ctrl_faceboard_eyelidBlink_r.ty" "animCurveUU141.i";
connectAttr "__atts_faceboard_eyelids_EyelidLowInn_R_UD1.o" "blendWeighted220.i[0]"
		;
connectAttr "__animCurveUU16.o" "blendWeighted220.i[1]";
connectAttr "animCurveUU141.o" "blendWeighted220.i[2]";
connectAttr "ctrl_faceboard_eyelidBlink_r.ty" "animCurveUU152.i";
connectAttr "atts_faceboard_eyelids_EyelidLowInn_R_FB1.o" "blendWeighted226.i[0]"
		;
connectAttr "animCurveUU151.o" "blendWeighted226.i[1]";
connectAttr "animCurveUU152.o" "blendWeighted226.i[2]";
connectAttr "ctrl_faceboard_eyelidBlink_r.ty" "atts_faceboard_eyelids_EyelidOut_R_FB.i"
		;
connectAttr "ctrl_faceboard_eyelidBlink_r.ty" "animCurveUU143.i";
connectAttr "__atts_faceboard_eyelids_EyelidLowOut_R_UD1.o" "blendWeighted222.i[0]"
		;
connectAttr "__animCurveUU18.o" "blendWeighted222.i[1]";
connectAttr "animCurveUU143.o" "blendWeighted222.i[2]";
connectAttr "ctrl_faceboard_eyelidBlink_r.ty" "animCurveUU156.i";
connectAttr "atts_faceboard_eyelids_EyelidLowOut_R_FB1.o" "blendWeighted228.i[0]"
		;
connectAttr "animCurveUU155.o" "blendWeighted228.i[1]";
connectAttr "animCurveUU156.o" "blendWeighted228.i[2]";
connectAttr "ctrl_faceboard_eyelidBlink_r.ty" "animCurveUU145.i";
connectAttr "animCurveUU145.o" "blendWeighted223.i[2]";
connectAttr "animCurveUU1256.o" "blendWeighted223.i[3]";
connectAttr "animCurveUU1262.o" "blendWeighted223.i[4]";
connectAttr "ctrl_faceboard_eyelidBlink_r.ty" "animCurveUU140.i";
connectAttr "__atts_faceboard_eyelids_EyelidUppOut_R_UD1.o" "blendWeighted219.i[0]"
		;
connectAttr "__animCurveUU15.o" "blendWeighted219.i[1]";
connectAttr "animCurveUU140.o" "blendWeighted219.i[2]";
connectAttr "ctrl_faceboard_eyelidBlink_r.ty" "atts_faceboard_eyelids_EyelidIn_R_FB.i"
		;
connectAttr "ctrl_faceboard_eyelidBlink_l.ty" "animCurveUU67.i";
connectAttr "animCurveUU67.o" "blendWeighted124.i[3]";
connectAttr "animCurveUU1258.o" "blendWeighted124.i[4]";
connectAttr "animCurveUU1263.o" "blendWeighted124.i[5]";
connectAttr "ctrl_faceboard_eyelidBlink_l.ty" "atts_faceboard_eyelids_EyelidIn_L_FB.i"
		;
connectAttr "ctrl_faceboard_eyelidBlink_l.ty" "animCurveUU65.i";
connectAttr "__atts_faceboard_eyelids_EyelidUppMid_L_UD.o" "blendWeighted105.i[0]"
		;
connectAttr "__animCurveUU2.o" "blendWeighted105.i[1]";
connectAttr "animCurveUU65.o" "blendWeighted105.i[3]";
connectAttr "ctrl_faceboard_eyelidBlink_l.ty" "animCurveUU72.i";
connectAttr "__atts_faceboard_eyelids_EyelidLowOut_L_UD.o" "blendWeighted109.i[0]"
		;
connectAttr "__animCurveUU6.o" "blendWeighted109.i[1]";
connectAttr "animCurveUU72.o" "blendWeighted109.i[3]";
connectAttr "ctrl_faceboard_eyelidBlink_l.ty" "animCurveUU66.i";
connectAttr "__atts_faceboard_eyelids_EyelidUppOut_L_UD.o" "blendWeighted106.i[0]"
		;
connectAttr "__animCurveUU3.o" "blendWeighted106.i[1]";
connectAttr "animCurveUU66.o" "blendWeighted106.i[3]";
connectAttr "ctrl_faceboard_eyelidBlink_l.ty" "animCurveUU71.i";
connectAttr "__atts_faceboard_eyelids_EyelidLowMid_L_UD.o" "blendWeighted108.i[0]"
		;
connectAttr "__animCurveUU5.o" "blendWeighted108.i[1]";
connectAttr "animCurveUU71.o" "blendWeighted108.i[3]";
connectAttr "ctrl_faceboard_eyelidBlink_l.ty" "animCurveUU75.i";
connectAttr "atts_faceboard_eyelids_EyelidLowOut_L_FB.o" "blendWeighted132.i[0]"
		;
connectAttr "animCurveUU9.o" "blendWeighted132.i[1]";
connectAttr "animCurveUU75.o" "blendWeighted132.i[2]";
connectAttr "ctrl_faceboard_eyelidBlink_l.ty" "animCurveUU68.i";
connectAttr "animCurveUU68.o" "blendWeighted125.i[3]";
connectAttr "animCurveUU76.o" "blendWeighted125.i[4]";
connectAttr "ctrl_faceboard_eyelidBlink_l.ty" "animCurveUU73.i";
connectAttr "atts_faceboard_eyelids_EyelidLowInn_L_FB.o" "blendWeighted130.i[0]"
		;
connectAttr "animCurveUU7.o" "blendWeighted130.i[1]";
connectAttr "animCurveUU73.o" "blendWeighted130.i[2]";
connectAttr "ctrl_faceboard_eyelidBlink_l.ty" "atts_faceboard_eyelids_EyelidOut_L_FB.i"
		;
connectAttr "ctrl_faceboard_eyelidBlink_l.ty" "animCurveUU70.i";
connectAttr "__atts_faceboard_eyelids_EyelidLowInn_L_UD.o" "blendWeighted107.i[0]"
		;
connectAttr "__animCurveUU4.o" "blendWeighted107.i[1]";
connectAttr "animCurveUU70.o" "blendWeighted107.i[3]";
connectAttr "ctrl_faceboard_eyelidBlink_l.ty" "animCurveUU69.i";
connectAttr "animCurveUU69.o" "blendWeighted126.i[3]";
connectAttr "animCurveUU1259.o" "blendWeighted126.i[4]";
connectAttr "animCurveUU1260.o" "blendWeighted126.i[5]";
connectAttr "ctrl_faceboard_eyelidBlink_l.ty" "atts_faceboard_eyelids_EyelidIn_L_UD.i"
		;
connectAttr "ctrl_faceboard_eyelidBlink_l.ty" "animCurveUU74.i";
connectAttr "atts_faceboard_eyelids_EyelidLowMid_L_FB.o" "blendWeighted131.i[0]"
		;
connectAttr "animCurveUU8.o" "blendWeighted131.i[1]";
connectAttr "animCurveUU74.o" "blendWeighted131.i[2]";
connectAttr "ctrl_faceboard_eyelidBlink_l.ty" "animCurveUU64.i";
connectAttr "__atts_faceboard_eyelids_EyelidUppInn_L_UD.o" "blendWeighted104.i[0]"
		;
connectAttr "__animCurveUU1.o" "blendWeighted104.i[1]";
connectAttr "animCurveUU64.o" "blendWeighted104.i[3]";
connectAttr "ctrl_faceboard_eyelidBlink_l.ty" "atts_faceboard_eyelids_EyelidOut_L_UD.i"
		;
connectAttr "atts_faceboard_eyelids_EyelidOut_L_UD.o" "blendWeighted301.i[0]";
connectAttr "animCurveUU1253.o" "blendWeighted301.i[1]";
connectAttr "animCurveUU1254.o" "blendWeighted301.i[2]";
connectAttr "ctrl_faceboard_eyelidLo_l.ty" "__atts_faceboard_eyelids_EyelidLowMid_L_UD.i"
		;
connectAttr "ctrl_faceboard_eyelidLo_l.ty" "animCurveUU9.i";
connectAttr "ctrl_faceboard_eyelidLo_l.tx" "__animCurveUU6.i";
connectAttr "ctrl_faceboard_eyelidLo_l.tx" "atts_faceboard_eyelids_EyelidLowMid_L_FB.i"
		;
connectAttr "ctrl_faceboard_eyelidLo_l.tx" "__animCurveUU4.i";
connectAttr "ctrl_faceboard_eyelidLo_l.ty" "animCurveUU7.i";
connectAttr "ctrl_faceboard_eyelidLo_l.ty" "animCurveUU8.i";
connectAttr "ctrl_faceboard_eyelidLo_l.tx" "atts_faceboard_eyelids_EyelidLowInn_L_FB.i"
		;
connectAttr "ctrl_faceboard_eyelidLo_l.ty" "__atts_faceboard_eyelids_EyelidLowInn_L_UD.i"
		;
connectAttr "ctrl_faceboard_eyelidLo_l.ty" "__atts_faceboard_eyelids_EyelidLowOut_L_UD.i"
		;
connectAttr "ctrl_faceboard_eyelidLo_l.ty" "animCurveUU1254.i";
connectAttr "ctrl_faceboard_eyelidLo_l.tx" "atts_faceboard_eyelids_EyelidLowOut_L_FB.i"
		;
connectAttr "ctrl_faceboard_eyelidLo_l.tx" "__animCurveUU5.i";
connectAttr "ctrl_faceboard_eyelidUp_l.tx" "__animCurveUU1.i";
connectAttr "ctrl_faceboard_eyelidUp_l.ty" "__atts_faceboard_eyelids_EyelidUppInn_L_UD.i"
		;
connectAttr "ctrl_faceboard_eyelidUp_l.ty" "animCurveUU1258.i";
connectAttr "ctrl_faceboard_eyelidUp_l.ty" "animCurveUU1253.i";
connectAttr "ctrl_faceboard_eyelidUp_l.tx" "animCurveUU1263.i";
connectAttr "ctrl_faceboard_eyelidUp_l.tx" "__animCurveUU3.i";
connectAttr "ctrl_faceboard_eyelidUp_l.ty" "__atts_faceboard_eyelids_EyelidUppOut_L_UD.i"
		;
connectAttr "ctrl_faceboard_eyelidUp_l.tx" "__animCurveUU2.i";
connectAttr "ctrl_faceboard_eyelidUp_l.ty" "__atts_faceboard_eyelids_EyelidUppMid_L_UD.i"
		;
connectAttr "ctrl_faceboard_eyelidUp_l.ty" "animCurveUU76.i";
connectAttr "ctrl_faceboard_eyelidUp_l.ty" "animCurveUU1259.i";
connectAttr "ctrl_faceboard_eyelidUp_l.tx" "animCurveUU1260.i";
connectAttr "ctrl_faceboard_eyelidLo_r.tx" "atts_faceboard_eyelids_EyelidLowOut_R_FB1.i"
		;
connectAttr "ctrl_faceboard_eyelidLo_r.ty" "__atts_faceboard_eyelids_EyelidLowInn_R_UD1.i"
		;
connectAttr "ctrl_faceboard_eyelidLo_r.ty" "__atts_faceboard_eyelids_EyelidLowMid_R_UD1.i"
		;
connectAttr "ctrl_faceboard_eyelidLo_r.ty" "animCurveUU151.i";
connectAttr "ctrl_faceboard_eyelidLo_r.ty" "__atts_faceboard_eyelids_EyelidLowOut_R_UD1.i"
		;
connectAttr "ctrl_faceboard_eyelidLo_r.tx" "__animCurveUU16.i";
connectAttr "ctrl_faceboard_eyelidLo_r.tx" "__animCurveUU18.i";
connectAttr "ctrl_faceboard_eyelidLo_r.ty" "animCurveUU155.i";
connectAttr "ctrl_faceboard_eyelidLo_r.tx" "__animCurveUU17.i";
connectAttr "ctrl_faceboard_eyelidLo_r.tx" "atts_faceboard_eyelids_EyelidLowInn_R_FB1.i"
		;
connectAttr "ctrl_faceboard_eyelidLo_r.tx" "atts_faceboard_eyelids_EyelidLowMid_R_FB1.i"
		;
connectAttr "ctrl_faceboard_eyelidLo_r.ty" "animCurveUU1255.i";
connectAttr "ctrl_faceboard_eyelidLo_r.ty" "animCurveUU153.i";
connectAttr "ctrl_faceboard_eyelidUp_r.ty" "animCurveUU1256.i";
connectAttr "ctrl_faceboard_eyelidUp_r.tx" "__animCurveUU13.i";
connectAttr "ctrl_faceboard_eyelidUp_r.ty" "__atts_faceboard_eyelids_EyelidUppInn_R_UD1.i"
		;
connectAttr "ctrl_faceboard_eyelidUp_r.tx" "animCurveUU1262.i";
connectAttr "ctrl_faceboard_eyelidUp_r.ty" "animCurveUU148.i";
connectAttr "ctrl_faceboard_eyelidUp_r.ty" "animCurveUU1252.i";
connectAttr "ctrl_faceboard_eyelidUp_r.tx" "__animCurveUU14.i";
connectAttr "ctrl_faceboard_eyelidUp_r.ty" "__atts_faceboard_eyelids_EyelidUppMid_R_UD1.i"
		;
connectAttr "ctrl_faceboard_eyelidUp_r.tx" "__animCurveUU15.i";
connectAttr "ctrl_faceboard_eyelidUp_r.ty" "__atts_faceboard_eyelids_EyelidUppOut_R_UD1.i"
		;
connectAttr "ctrl_faceboard_eyelidUp_r.tx" "animCurveUU1261.i";
connectAttr "ctrl_faceboard_eyelidUp_r.ty" "animCurveUU1257.i";
connectAttr "ctrl_faceboard_muzzle.tx" "unitConversion324.i";
connectAttr "ctrl_faceboard_muzzle.ty" "unitConversion323.i";
connectAttr "ctrl_faceboard_jaw.ty" "animCurveUU164.i";
connectAttr "ctrl_faceboard_jaw.tx" "atts_faceboard_lips_LipLow_FB.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU90.i";
connectAttr "ctrl_faceboard_jaw.ty" "animCurveUU171.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU95.i";
connectAttr "ctrl_faceboard_jaw.tx" "atts_faceboard_lips_LipUpp_UD.i";
connectAttr "ctrl_faceboard_jaw.ty" "animCurveUU162.i";
connectAttr "ctrl_faceboard_jaw.tx" "atts_faceboard_lips_LipLow_LR.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU77.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU96.i";
connectAttr "ctrl_faceboard_jaw.ty" "animCurveUU168.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU78.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU81.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU105.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU99.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU97.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU83.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU87.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU82.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU106.i";
connectAttr "ctrl_faceboard_jaw.tx" "atts_faceboard_lips_LipUpp_LR.i";
connectAttr "ctrl_faceboard_jaw.ty" "animCurveUU166.i";
connectAttr "ctrl_faceboard_jaw.ty" "animCurveUU165.i";
connectAttr "ctrl_faceboard_jaw.ty" "animCurveUU169.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU79.i";
connectAttr "ctrl_faceboard_jaw.ty" "animCurveUU167.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU88.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU94.i";
connectAttr "ctrl_faceboard_jaw.ty" "animCurveUU170.i";
connectAttr "ctrl_faceboard_jaw.ty" "rigs_jaw_facepnt_PT.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU84.i";
connectAttr "ctrl_faceboard_jaw.tx" "atts_faceboard_lips_LipLow_UD.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU104.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU91.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU80.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU103.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU102.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU92.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU98.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU93.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU86.i";
connectAttr "ctrl_faceboard_jaw.tx" "atts_faceboard_lips_LipUpp_FB.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU85.i";
connectAttr "ctrl_faceboard_jaw.ty" "animCurveUU163.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU100.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU89.i";
connectAttr "ctrl_faceboard_jaw.tx" "animCurveUU101.i";
connectAttr "ctrl_faceboard_lipCorner_l.ty" "atts_faceboard_lips_LipUpp_L_FB.i";
connectAttr "ctrl_faceboard_lipCorner_l.ty" "animCurveUU19.i";
connectAttr "atts_faceboard_cheeks_CheeksMid_L_FB.o" "blendWeighted142.i[0]";
connectAttr "animCurveUU19.o" "blendWeighted142.i[1]";
connectAttr "ctrl_faceboard_lipCorner_l.tx" "atts_faceboard_cheeks_CheeksMid_L_FB.i"
		;
connectAttr "ctrl_faceboard_lipCorner_l.tx" "atts_faceboard_lips_LipUpp_L_LR.i";
connectAttr "ctrl_faceboard_lipCorner_l.Bot" "atts_faceboard_lips_LipCornerMidLow_L_UD.i"
		;
connectAttr "ctrl_faceboard_lipCorner_l.tx" "atts_faceboard_cheeks_CheeksInn_L_UD.i"
		;
connectAttr "atts_faceboard_cheeks_CheeksInn_L_UD.o" "blendWeighted157.i[0]";
connectAttr "animCurveUU34.o" "blendWeighted157.i[1]";
connectAttr "ctrl_faceboard_lipCorner_l.tx" "animCurveUU15.i";
connectAttr "ctrl_faceboard_lipCorner_l.ty" "animCurveUU27.i";
connectAttr "ctrl_faceboard_lipCorner_l.tx" "atts_faceboard_cheeks_CheeksMid_L_LR.i"
		;
connectAttr "ctrl_faceboard_lipCorner_l.ty" "animCurveUU17.i";
connectAttr "ctrl_faceboard_lipCorner_l.ty" "atts_faceboard_lips_LipLow_L_LR.i";
connectAttr "ctrl_faceboard_lipCorner_l.ty" "animCurveUU29.i";
connectAttr "ctrl_faceboard_lipCorner_l.Up" "atts_faceboard_lips_LipCornerMidUpp_L_UD.i"
		;
connectAttr "ctrl_faceboard_lipCorner_l.ty" "animCurveUU33.i";
connectAttr "ctrl_faceboard_lipCorner_l.tx" "atts_faceboard_lips_LipUppInn_L_FB.i"
		;
connectAttr "ctrl_faceboard_lipCorner_l.tx" "atts_faceboard_lips_LipUppInn_L_UD.i"
		;
connectAttr "ctrl_faceboard_lipCorner_l.tx" "atts_faceboard_lips_LipCornerMid_L_FB.i"
		;
connectAttr "ctrl_faceboard_lipCorner_l.ty" "animCurveUU30.i";
connectAttr "ctrl_faceboard_lipCorner_l.ty" "animCurveUU34.i";
connectAttr "ctrl_faceboard_lipCorner_l.tx" "atts_faceboard_lips_LipLowInn_L_UD.i"
		;
connectAttr "ctrl_faceboard_lipCorner_l.ty" "animCurveUU28.i";
connectAttr "ctrl_faceboard_lipCorner_l.ty" "atts_faceboard_lips_LipLow_L_UD.i";
connectAttr "ctrl_faceboard_lipCorner_l.tx" "atts_faceboard_lips_LipUpp_L_UD.i";
connectAttr "ctrl_faceboard_lipCorner_l.ty" "atts_faceboard_lips_LipCornerMid_L_UD.i"
		;
connectAttr "ctrl_faceboard_lipCorner_l.tx" "atts_faceboard_cheeks_CheeksInn_L_FB.i"
		;
connectAttr "atts_faceboard_cheeks_CheeksInn_L_FB.o" "blendWeighted159.i[0]";
connectAttr "animCurveUU36.o" "blendWeighted159.i[1]";
connectAttr "ctrl_faceboard_lipCorner_l.tx" "animCurveUU16.i";
connectAttr "ctrl_faceboard_lipCorner_l.ty" "animCurveUU26.i";
connectAttr "ctrl_faceboard_lipCorner_l.ty" "animCurveUU35.i";
connectAttr "atts_faceboard_cheeks_CheeksInn_L_LR.o" "blendWeighted158.i[0]";
connectAttr "animCurveUU35.o" "blendWeighted158.i[1]";
connectAttr "ctrl_faceboard_lipCorner_l.tx" "atts_faceboard_cheeks_CheeksInn_L_LR.i"
		;
connectAttr "ctrl_faceboard_lipCorner_l.ty" "animCurveUU32.i";
connectAttr "ctrl_faceboard_lipCorner_l.tx" "atts_faceboard_cheeks_CheeksMid_L_UD.i"
		;
connectAttr "ctrl_faceboard_lipCorner_l.ty" "animCurveUU18.i";
connectAttr "ctrl_faceboard_lipCorner_l.tx" "animCurveUU24.i";
connectAttr "ctrl_faceboard_lipCorner_l.ty" "animCurveUU31.i";
connectAttr "ctrl_faceboard_lipCorner_l.tx" "animCurveUU22.i";
connectAttr "ctrl_faceboard_lipCorner_l.tx" "atts_faceboard_lips_LipUppInn_L_LR.i"
		;
connectAttr "ctrl_faceboard_lipCorner_l.tx" "atts_faceboard_lips_LipLow_L_FB.i";
connectAttr "ctrl_faceboard_lipCorner_l.ty" "animCurveUU13.i";
connectAttr "ctrl_faceboard_lipCorner_l.tx" "animCurveUU174.i";
connectAttr "atts_faceboard_eyelids_SquintOut_L_UD.o" "blendWeighted236.i[0]";
connectAttr "animCurveUU174.o" "blendWeighted236.i[1]";
connectAttr "ctrl_faceboard_lipCorner_l.ty" "atts_faceboard_eyelids_SquintOut_L_UD.i"
		;
connectAttr "ctrl_faceboard_lipCorner_l.tx" "atts_faceboard_lips_LipLowInn_L_LR.i"
		;
connectAttr "ctrl_faceboard_lipCorner_l.ty" "animCurveUU36.i";
connectAttr "ctrl_faceboard_lipCorner_l.tx" "atts_faceboard_lips_LipLowInn_L_FB.i"
		;
connectAttr "ctrl_faceboard_lipCorner_l.ty" "atts_faceboard_lips_LipCornerMid_L_LR.i"
		;
connectAttr "ctrl_faceboard_lipCorner_l.ty" "animCurveUU20.i";
connectAttr "ctrl_faceboard_lipCorner_l.tx" "animCurveUU23.i";
connectAttr "ctrl_faceboard_lipCorner_r.tx" "atts_faceboard_lips_LipUppInn_R_FB2.i"
		;
connectAttr "ctrl_faceboard_lipCorner_r.tx" "animCurveUU45.i";
connectAttr "ctrl_faceboard_lipCorner_r.ty" "animCurveUU173.i";
connectAttr "animCurveUU172.o" "blendWeighted216.i[0]";
connectAttr "animCurveUU173.o" "blendWeighted216.i[1]";
connectAttr "ctrl_faceboard_lipCorner_r.ty" "animCurveUU61.i";
connectAttr "atts_faceboard_cheeks_CheeksInn_R_FB1.o" "blendWeighted182.i[0]";
connectAttr "animCurveUU61.o" "blendWeighted182.i[1]";
connectAttr "ctrl_faceboard_lipCorner_r.tx" "atts_faceboard_cheeks_CheeksInn_R_FB1.i"
		;
connectAttr "ctrl_faceboard_lipCorner_r.ty" "animCurveUU60.i";
connectAttr "atts_faceboard_cheeks_CheeksInn_R_LR1.o" "blendWeighted181.i[0]";
connectAttr "animCurveUU60.o" "blendWeighted181.i[1]";
connectAttr "ctrl_faceboard_lipCorner_r.ty" "animCurveUU58.i";
connectAttr "atts_faceboard_cheeks_CheeksMid_R_FB1.o" "blendWeighted179.i[0]";
connectAttr "animCurveUU58.o" "blendWeighted179.i[1]";
connectAttr "ctrl_faceboard_lipCorner_r.tx" "atts_faceboard_cheeks_CheeksMid_R_FB1.i"
		;
connectAttr "ctrl_faceboard_lipCorner_r.Up" "atts_faceboard_lips_LipCornerMidUpp_R_UD1.i"
		;
connectAttr "ctrl_faceboard_lipCorner_r.ty" "animCurveUU56.i";
connectAttr "ctrl_faceboard_lipCorner_r.tx" "atts_faceboard_lips_LipLowInn_R_FB1.i"
		;
connectAttr "ctrl_faceboard_lipCorner_r.ty" "animCurveUU59.i";
connectAttr "atts_faceboard_cheeks_CheeksInn_R_UD1.o" "blendWeighted180.i[0]";
connectAttr "animCurveUU59.o" "blendWeighted180.i[1]";
connectAttr "ctrl_faceboard_lipCorner_r.tx" "atts_faceboard_cheeks_CheeksInn_R_UD1.i"
		;
connectAttr "ctrl_faceboard_lipCorner_r.tx" "animCurveUU172.i";
connectAttr "ctrl_faceboard_lipCorner_r.tx" "atts_faceboard_lips_LipLow_R_FB1.i"
		;
connectAttr "ctrl_faceboard_lipCorner_r.ty" "animCurveUU57.i";
connectAttr "ctrl_faceboard_lipCorner_r.tx" "atts_faceboard_cheeks_CheeksMid_R_LR1.i"
		;
connectAttr "ctrl_faceboard_lipCorner_r.Bot" "atts_faceboard_lips_LipCornerMidLow_R_UD1.i"
		;
connectAttr "ctrl_faceboard_lipCorner_r.ty" "animCurveUU55.i";
connectAttr "ctrl_faceboard_lipCorner_r.tx" "atts_faceboard_cheeks_CheeksMid_R_UD1.i"
		;
connectAttr "ctrl_faceboard_lipCorner_r.ty" "atts_faceboard_lips_LipCornerMid_R_UD2.i"
		;
connectAttr "ctrl_faceboard_lipCorner_r.tx" "atts_faceboard_lips_LipLowInn_R_UD1.i"
		;
connectAttr "ctrl_faceboard_lipCorner_r.tx" "atts_faceboard_lips_LipUpp_R_UD1.i"
		;
connectAttr "ctrl_faceboard_lipCorner_r.tx" "atts_faceboard_cheeks_CheeksInn_R_LR1.i"
		;
connectAttr "ctrl_faceboard_lipCorner_r.ty" "atts_faceboard_lips_LipLow_R_LR1.i"
		;
connectAttr "ctrl_faceboard_lipCorner_r.tx" "atts_faceboard_lips_LipLowInn_R_LR1.i"
		;
connectAttr "ctrl_faceboard_lipCorner_r.tx" "animCurveUU49.i";
connectAttr "ctrl_faceboard_lipCorner_r.tx" "atts_faceboard_lips_LipUpp_R_LR1.i"
		;
connectAttr "ctrl_faceboard_lipCorner_r.ty" "atts_faceboard_lips_LipUpp_R_FB1.i"
		;
connectAttr "ctrl_faceboard_lipCorner_r.tx" "atts_faceboard_lips_LipUppInn_R_LR1.i"
		;
connectAttr "ctrl_faceboard_lipCorner_r.ty" "animCurveUU43.i";
connectAttr "ctrl_faceboard_lipCorner_r.ty" "animCurveUU44.i";
connectAttr "ctrl_faceboard_lipCorner_r.tx" "atts_faceboard_lips_LipCornerMid_R_FB1.i"
		;
connectAttr "ctrl_faceboard_lipCorner_r.ty" "animCurveUU50.i";
connectAttr "ctrl_faceboard_lipCorner_r.tx" "animCurveUU41.i";
connectAttr "ctrl_faceboard_lipCorner_r.ty" "animCurveUU48.i";
connectAttr "ctrl_faceboard_lipCorner_r.tx" "animCurveUU46.i";
connectAttr "ctrl_faceboard_lipCorner_r.tx" "atts_faceboard_lips_LipUppInn_R_UD1.i"
		;
connectAttr "ctrl_faceboard_lipCorner_r.ty" "animCurveUU53.i";
connectAttr "ctrl_faceboard_lipCorner_r.ty" "animCurveUU54.i";
connectAttr "ctrl_faceboard_lipCorner_r.ty" "atts_faceboard_lips_LipLow_R_UD1.i"
		;
connectAttr "ctrl_faceboard_lipCorner_r.ty" "animCurveUU47.i";
connectAttr "ctrl_faceboard_lipCorner_r.ty" "animCurveUU52.i";
connectAttr "ctrl_faceboard_lipCorner_r.ty" "atts_faceboard_lips_LipCornerMid_R_LR1.i"
		;
connectAttr "ctrl_faceboard_lipCorner_r.ty" "animCurveUU51.i";
connectAttr "ctrl_faceboard_lipCorner_r.tx" "animCurveUU42.i";
connectAttr "ctrl_faceboard_lipLow.tx" "animCurveUU161.i";
connectAttr "ctrl_faceboard_lipLow.ty" "animCurveUU160.i";
connectAttr "ctrl_faceboard_lipUpp.ty" "animCurveUU159.i";
connectAttr "ctrl_faceboard_lipUpp.tx" "animCurveUU158.i";
connectAttr "multiplyDivide_jawPT_open2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition142.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "unitConversion323.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "unitConversion324.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted162.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted163.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted164.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted165.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted166.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted167.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted168.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted169.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted170.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted171.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted172.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted173.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted174.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted175.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted176.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted177.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted178.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted179.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted180.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted181.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted182.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted216.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted217.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted218.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted219.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted220.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted221.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted222.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted223.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted224.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted225.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted226.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted227.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendWeighted228.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide5493.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "setRange1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide5494.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of faceboard.ma
