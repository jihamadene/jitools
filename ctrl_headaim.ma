//Maya ASCII 2015 scene
//Name: ctrl_headaim.ma
//Last modified: Thu, Apr 28, 2016 10:24:40 AM
//Codeset: UTF-8
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201503261530-955654";
fileInfo "osv" "Linux 2.6.32-504.23.4.el6.x86_64 #1 SMP Tue Jun 9 20:57:37 UTC 2015 x86_64";
createNode transform -n "ctrl_headAim";
	addAttr -ci true -sn "metainfo" -ln "metainfo" -dt "string";
	addAttr -ci true -sn "meta_controls" -ln "meta_controls" -dt "string";
	addAttr -ci true -sn "metacharacter" -ln "metacharacter" -dt "string";
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
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".metainfo" -type "string" "(dp1\nS'neutralPoseOverride'\np2\nI00\nsS'overridePose'\np3\n(dp4\nS'translateX'\np5\nF0\nsS'translateY'\np6\nF0\nsS'translateZ'\np7\nF0\nsS'rotateX'\np8\nF0\nsS'rotateY'\np9\nF0\nsS'rotateZ'\np10\nF0\nssS'neutralPose'\np11\n(dp12\ng5\nF0\nsg6\nF0\nsg7\nF0\nsg8\nF0\nsg9\nF0\nsg10\nF0\nss.";
	setAttr ".mirrorTransX" 1;
	setAttr ".mirrorTransY" 1;
	setAttr ".mirrorTransZ" 1;
	setAttr ".mirrorRotX" 1;
	setAttr ".mirrorRotY" 1;
	setAttr ".mirrorRotZ" 1;
createNode nurbsCurve -n "ctrl_headAimShape" -p "ctrl_headAim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.0059977006137174049 5.484527269964209e-17 0.0059977006137172939
		0.00032136401031890305 6.3887570305331776e-17 0.051905537145859326
		-0.00032136401031865325 6.3887570305331776e-17 0.051905537145859326
		-0.0059977006137171829 5.484527269964209e-17 0.0059977006137172939
		;
createNode nurbsCurve -n "leftnurbsSquareShape1" -p "ctrl_headAim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-0.0059977006137172306 -0.005997700613717293 1.3317570632314815e-18
		-0.051905537145859222 -4.6268832256733234e-05 2.8839045583881641e-18
		-0.051905537145859222 4.6268832256827092e-05 2.8633570692305658e-18
		-0.0059977006137172306 0.0059977006137173624 -1.3317570632314813e-18
		;
createNode nurbsCurve -n "bottomnurbsSquareShape1" -p "ctrl_headAim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-0.0059977006137172306 0.0059977006137173668 -1.3317570632314815e-18
		-9.130751748872319e-05 0.051905537145859257 -2.9269533909503297e-18
		9.1307517488938974e-05 0.051905537145859257 -2.9269533909503297e-18
		0.0059977006137174266 0.0059977006137173668 -1.3317570632314815e-18
		;
createNode nurbsCurve -n "rightnurbsSquareShape1" -p "ctrl_headAim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.0059977006137174327 0.0059977006137173668 -1.3317570632314815e-18
		0.05190553714585934 2.5198741245399822e-06 -2.8814760033570748e-18
		0.05190553714585934 -2.5198741244347273e-06 -2.8803569544482076e-18
		0.0059977006137174327 -0.0059977006137172904 1.3317570632314813e-18
		;
createNode nurbsCurve -n "ctrl_headAimShape3" -p "ctrl_headAim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.0059977006137174327 -0.005997700613717293 1.3317570632314815e-18
		8.2854704062650144e-05 -0.051905537145859257 2.9227303623103984e-18
		-8.2854704062422488e-05 -0.051905537145859257 2.9227303623103984e-18
		-0.0059977006137172263 -0.005997700613717293 1.3317570632314815e-18
		;
createNode nurbsCurve -n "ctrl_headAimShape4" -p "ctrl_headAim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		1.1102230246251568e-16 0.0059977006137173754 0.005997700613717326
		1.1370740643681102e-16 0.00032136401031897818 0.051905537145859257
		1.1356469214739434e-16 -0.00032136401031885084 0.051905537145859257
		1.0835878833605274e-16 -0.0059977006137172818 0.005997700613717326
		;
createNode nurbsCurve -n "leftnurbsSquareShape2" -p "ctrl_headAim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		1.0835878833605274e-16 -0.0059977006137172904 0.005997700613717326
		1.1377945586455839e-16 -0.051905537145859222 8.2854704062539121e-05
		1.1377945586455839e-16 -0.051905537145859222 -8.2854704062533457e-05
		1.0835878833605274e-16 -0.0059977006137172904 -0.0059977006137173251
		;
createNode nurbsCurve -n "bottomnurbsSquareShape2" -p "ctrl_headAim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		1.0835878833605274e-16 -0.0059977006137172904 -0.005997700613717326
		1.0802080282536142e-16 -0.00016651334183865555 -0.051905537145859257
		1.0809474960376802e-16 0.00016651334183877259 -0.051905537145859257
		1.1102230246251565e-16 0.0059977006137173668 -0.005997700613717326
		;
createNode nurbsCurve -n "rightnurbsSquareShape2" -p "ctrl_headAim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		1.1102230246251568e-16 0.0059977006137173754 -0.005997700613717326
		1.0815617209650782e-16 0.05190553714585934 -9.1307517488833887e-05
		1.0815617209650782e-16 0.05190553714585934 9.1307517488828385e-05
		1.1102230246251568e-16 0.0059977006137173754 0.0059977006137173251
		;
createNode nurbsCurve -n "bottomnurbsSquareShape3" -p "ctrl_headAim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-0.0059977006137171829 5.484527269964209e-17 -0.0059977006137172939
		-0.00016651334183881428 5.8309297227793828e-17 -0.051905537145859326
		0.00016651334183900857 5.8309297227793828e-17 -0.051905537145859326
		0.0059977006137174049 5.484527269964209e-17 -0.0059977006137172939
		;
createNode nurbsCurve -n "leftnurbsSquareShape3" -p "ctrl_headAim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-0.0059977006137171829 5.484527269964209e-17 0.0059977006137172939
		-0.051905537145859215 4.6874848172961541e-17 4.6268832256973758e-05
		-0.051905537145859215 4.6874848172961541e-17 -4.6268832256973758e-05
		-0.0059977006137171829 5.484527269964209e-17 -0.0059977006137172939
		;
createNode nurbsCurve -n "rightnurbsSquareShape3" -p "ctrl_headAim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.0059977006137174049 5.484527269964209e-17 -0.0059977006137172939
		0.051905537145859437 5.2629395465673506e-17 -2.5198741245013867e-06
		0.051905537145859437 5.2629395465673506e-17 2.5198741245013867e-06
		0.0059977006137174049 5.484527269964209e-17 0.0059977006137172939
		;
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.7000264211161351 3.711483458113217 3.136375135523354 ;
	setAttr ".r" -type "double3" -27.938352729602379 44.999999999999972 -5.172681101354183e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 4.3221511546894451;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 7.2268580009193784e-15 1.686463642276121 0.43634871440722101 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
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
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".fs" 1001;
	setAttr ".ef" 1096;
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
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of ctrl_headaim.ma
