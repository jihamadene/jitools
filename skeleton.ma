//Maya ASCII 2015 scene
//Name: skeleton.ma
//Last modified: Wed, May 18, 2016 11:29:48 AM
//Codeset: UTF-8
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201503261530-955654";
fileInfo "osv" "Linux 2.6.32-504.23.4.el6.x86_64 #1 SMP Tue Jun 9 20:57:37 UTC 2015 x86_64";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.4321554281619076 2.2710470888750187 2.6945031017042766 ;
	setAttr ".r" -type "double3" -20.738352729603868 42.600000000000037 -1.0802089619416488e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 3.9332968479795434;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
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
createNode joint -n "jnt_cog";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.9303806576313238e-32 0.67449112598656757 -0.06707992371587751 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 -4.9303806576313238e-32 0.67449112598656757 -0.06707992371587751 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "cog";
createNode joint -n "jnt_spine_00" -p "jnt_cog";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 0 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 -4.9303806576313238e-32 0.67449112598656757 -0.06707992371587751 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "spine_00";
createNode joint -n "jnt_spine_01" -p "jnt_spine_00";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.094144398962197506 1.3877787807814457e-17 7.4265887162357448e-18 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 2.8330844589701368e-17 0.76863552494876508 -0.067079923715877496 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "spine_01";
createNode joint -n "jnt_spine_02" -p "jnt_spine_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.094144398962197506 1.3877787807814457e-17 6.8038401011837794e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 7.2961911058154498e-16 0.86277992391096259 -0.067079923715877482 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "spine_02";
createNode joint -n "jnt_spine_03" -p "jnt_spine_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.094144398962197728 -1.3877787807814457e-17 -7.9489069727244494e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 6.7103429672776621e-16 0.95692432287316032 -0.067079923715877496 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "spine_03";
createNode joint -n "jnt_spine_04" -p "jnt_spine_03";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.094144398962197728 -1.3877787807814457e-17 -1.7553429337829991e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 6.7438512326340199e-16 1.051068721835358 -0.06707992371587751 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "spine_04";
createNode joint -n "jne_spine" -p "jnt_spine_04";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.096167981195136587 0 5.6928192442275084e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 1.2650206290770648e-15 1.1472367030304946 -0.06707992371587751 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "jne_spine";
createNode joint -n "jnt_chest" -p "jne_spine";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 6.6613381477509392e-16 0 1.5307233708903829e-16 ;
	setAttr ".r" -type "double3" 9.5416640443905503e-15 3.1805546814635183e-15 -1.9083328088781101e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -90 -89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 1 3.3306690738754696e-16 2.7755575615628914e-16 0 -2.7755575615628914e-16 1 1.1102230246251554e-16 0
		 -2.2204460492503131e-16 -5.5511151231257827e-17 1 0 1.4180929661661033e-15 1.1472367030304953 -0.06707992371587751 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "chest";
createNode joint -n "jnt_neck" -p "jnt_chest";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 5.7176485768195546e-15 0.19147289176374649 -0.009811798841120295 ;
	setAttr ".r" -type "double3" -7.9513867036587919e-15 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 14.230038113714338 0 0 ;
	setAttr ".bps" -type "matrix" 1 3.3306690738754696e-16 2.7755575615628914e-16 0 -3.2362143209318622e-16 0.96931661084591469 0.24581559742658651 0
		 -1.4700398988380529e-16 -0.24581559742658646 0.96931661084591469 0 7.0847757967260205e-15 1.3387095947942418 -0.076891722556997777 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "neck";
createNode joint -n "jnt_head" -p "jnt_neck";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 0.065588904206194787 0 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -14.230038113714336 0 0 ;
	setAttr ".bps" -type "matrix" 1 3.3306690738754696e-16 2.7755575615628914e-16 0 -2.7755575615628914e-16 1 1.1102230246251565e-16 0
		 -2.2204460492503131e-16 -5.5511151231257827e-17 1 0 7.2328642411593697e-15 1.4042103574206592 -0.043534630921463202 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "head";
createNode joint -n "jnt_headOffset" -p "jnt_head";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 4.7331654313260708e-30 0 -4.163336342344337e-17 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 3.3306690738754696e-16 2.7755575615628914e-16 0 -2.7755575615628914e-16 1 1.1102230246251565e-16 0
		 -2.2204460492503131e-16 -5.5511151231257827e-17 1 0 7.232864241159376e-15 1.4042103574206592 -0.043534630921463251 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "headOffset";
createNode joint -n "jnt_headLow" -p "jnt_headOffset";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.8144920417408602e-17 0.039834063324585278 -0.0011664539925869603 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 3.3306690738754696e-16 2.7755575615628914e-16 0 -2.7755575615628914e-16 1 1.1102230246251565e-16 0
		 -2.2204460492503131e-16 -5.5511151231257827e-17 1 0 7.2402119928258991e-15 1.4440444207452445 -0.044701084914050206 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "headLow";
createNode joint -n "jnt_jaw" -p "jnt_headLow";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -1.5777218104420236e-30 -4.4408920985006262e-16 -1.3877787807814457e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 3.3306690738754696e-16 2.7755575615628914e-16 0 -2.7755575615628914e-16 1 1.1102230246251565e-16 0
		 -2.2204460492503131e-16 -5.5511151231257827e-17 1 0 7.2402119928258976e-15 1.4440444207452441 -0.044701084914050219 1;
	setAttr ".typ" 18;
createNode joint -n "jnt_tongue_01" -p "jnt_jaw";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 2.0030486653322776e-05 -0.024628485680216732 0.052889894929866385 ;
	setAttr ".r" -type "double3" -8.8278125961003172e-31 -7.9513867036587919e-15 1.2722218725854067e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.999977653888791 -43.087427996303028 89.999984735068196 ;
	setAttr ".bps" -type "matrix" 0.0027664965080010282 0.69945955795659009 0.54266750361883442 -9.7671124020232537e-17 0.0025717289495020466 0.7155429498827045 -0.56251211550877134 -5.8104382331894256e-17
		 -0.78175638200389619 0.014016030421696083 0.00018072667797211625 1.734716558523445e-18 0.0014601648958318609 1.4530525697159176 0.011998998414322039 0.99999999999999989;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "tongue_01";
createNode joint -n "jnt_tongue_02" -p "jnt_tongue_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.020101659909221761 4.4408920985006262e-16 1.3710075284258105e-16 ;
	setAttr ".r" -type "double3" 5.6872749581855245e-21 -1.0219869829713035e-14 1.2722218725853434e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.7915166395472172e-22 -2.7728300839333957e-05 -10.186572003693687 ;
	setAttr ".bps" -type "matrix" 0.0022676893732526686 0.56188735406658308 0.63359604169639561 -1.5409102645098901e-16 0.0030204571850784988 0.82796618004981504 -0.45767232343178488 -8.4088253750128062e-17
		 -0.78175638310143647 0.014015758496230898 0.00018042004907548679 1.7347980483517016e-18 0.0014892497298088676 1.4604061539543354 0.017704190595797469 0.99999999999999989;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "tongue_02";
createNode joint -n "jnt_tongue_03" -p "jnt_tongue_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.021490798166163626 -0.0015458931964966727 -2.5110065291151021e-10 ;
	setAttr ".r" -type "double3" 3.7915166447085945e-21 2.0663805449060664e-14 2.862499213317154e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -6.9931212672578895e-06 -18.518000000003926 ;
	setAttr ".bps" -type "matrix" 0.0011908769500188845 0.26983085069668622 0.74614882908135283 -1.2265003647142216e-16 0.0035842937274360954 0.96355420548182458 -0.23274411825472341 -1.5816545543493121e-16
		 -0.78175638324679253 0.014015725562568592 0.00018032897937909101 3.4694619217574512e-18 0.0015115715122157912 1.4658140009137857 0.025953001097468068 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "tongue_03";
createNode joint -n "jnt_tongue_04" -p "jnt_tongue_03";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.02403682312906226 -0.0029919981384216587 -2.0999299786436621e-09 ;
	setAttr ".r" -type "double3" -9.4787915879943463e-22 1.3057536002423532e-14 9.5416640443905172e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.8957583197733961e-22 5.8915833071589239e-06 -19.914999999982793 ;
	setAttr ".bps" -type "matrix" -0.0001011608951612579 -0.074516640798695147 0.78080700017936222 -6.6566006200755192e-17 0.0037755926207149989 0.99784400852451505 0.035331687811149037 -1.4220010602715126e-16
		 -0.78175638325719865 0.014015717900206779 0.00018040926783187969 3.4694401071358416e-18 0.0015180552207035055 1.4668296726693888 0.037430028114397731 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "tongue_04";
createNode joint -n "jnt_tongue_05" -p "jnt_tongue_04";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.022036244129490377 -0.0014401852199621423 5.6306623522099023e-09 ;
	setAttr ".r" -type "double3" 3.487445763458558e-14 -9.8292709201156434e-15 9.5416524980190175e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.4031867268171642e-06 -3.889860245913965e-05 -9.9999999999251141 ;
	setAttr ".bps" -type "matrix" -0.00075577955325129421 -0.24665834974641079 0.76280950430306582 -8.1852812901599547e-17 0.0037006200461628604 0.96974483784398691 0.17038063278384299 -1.4377944811442299e-17
		 -0.78175638296407979 0.014015827758953256 0.00017988126976600766 5.2042162154010343e-18 0.0015113540334515299 1.4644650227185607 0.047098490035852661 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "tongue_05";
createNode joint -n "jnt_squint_l" -p "jnt_headOffset";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.062557697296135389 0.11645004296996575 0.1012104693919222 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.78175638200718733 -0.014016043170578566 -0.00018050407853492453 -1.7347234759768194e-18 0.0037771889835168343 0.99962091765903505 0.012057046084627958 -1.1102230246251564e-16
		 1.1443574194516755e-05 -0.044759434366433058 0.781512973211689 -2.4286128663675299e-17 0.048494169310228041 1.5420742062012678 0.070296844825873783 0.99999999999999989;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "squint";
createNode joint -n "jnt_snear_l" -p "jnt_headOffset";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.041594127672402809 0.085641010470219214 0.12016542711956836 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.78175638200718733 -0.014016043170578566 -0.00018050407853492453 -1.7347234759768194e-18 0.0037771889835168343 0.99962091765903505 0.012057046084627958 -1.1102230246251564e-16
		 1.1443574194516755e-05 -0.044759434366433058 0.781512973211689 -2.4286128663675299e-17 0.034144835626292218 1.497336176754861 0.07455076770977162 0.99999999999999989;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "snear";
createNode joint -n "jnt_nose" -p "jnt_headOffset";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -6.8949119760718919e-15 0.098846428822405796 0.12049295557665533 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.78175638200718733 -0.014016043170578566 -0.00018050407853492453 -1.7347234759768194e-18 0.0037771889835168343 0.99962091765903505 0.012057046084627958 -1.1102230246251564e-16
		 1.1443574194516755e-05 -0.044759434366433058 0.781512973211689 -2.4286128663675299e-17 0.0017002852949298155 1.5168016947369878 0.077274114766706231 0.99999999999999989;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "nose";
createNode joint -n "jnt_noseTip" -p "jnt_nose";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -1.4791141972893971e-31 0.018538497414162691 0.050621173483924642 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.78175638200718733 -0.014016043170578566 -0.00018050407853492461 -1.7347234759768071e-18 0.0037771889835168338 0.99962091765903505 0.012057046084627959 -1.1102230246251565e-16
		 1.1443574194516721e-05 -0.044759434366433065 0.78151297321168911 -2.4286128663675299e-17 0.0016991535068365644 1.5144937920134398 0.11011352935118712 0.99999999999999989;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "noseTip";
createNode joint -n "jnt_noseBridge" -p "jnt_nose";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -1.4791141972893971e-31 -0.019133289800425279 0.019296572785902216 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.78175638200718733 -0.014016043170578566 -0.00018050407853492461 -1.7347234759768071e-18 0.0037771889835168338 0.99962091765903505 0.012057046084627959 -1.1102230246251565e-16
		 1.1443574194516721e-05 -0.044759434366433065 0.78151297321168911 -2.4286128663675299e-17 0.0015870436482152263 1.486417479008969 0.083702049353688593 0.99999999999999989;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "noseBridge";
createNode joint -n "jnt_eye_l" -p "jnt_headOffset";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.054548382759087063 0.13794967675902825 0.065103942540268148 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 3.3306690738754696e-16 2.7755575615628914e-16 0 -2.7755575615628914e-16 1 1.1102230246251565e-16 0
		 -2.2204460492503131e-16 -5.5511151231257827e-17 1 0 0.054548382759094238 1.5421600341796875 0.021569311618804925 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "eye";
createNode joint -n "jnt_eyeHighlight_l" -p "jnt_eye_l";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 6.9388939039072284e-18 -4.4408920985006262e-16 1.0408340855860843e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.78175638200718733 -0.014016043170578564 -0.00018050407853492461 -1.7347234759768071e-18 0.0037771889835168347 0.99962091765903482 0.012057046084627963 -1.1102230246251565e-16
		 1.1443574194516673e-05 -0.044759434366433058 0.78151297321168911 -2.0816681711721685e-17 0.042497647443783926 1.5682763093723016 0.044782142378767043 0.99999999999999978;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "eyeHighlight";
createNode joint -n "jnt_ear_l_01" -p "jnt_headOffset";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.12086080400284058 0.083186108504355927 -0.0025737879640809107 ;
	setAttr ".r" -type "double3" 0 -6.3611093629270335e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 39.300000000000026 0 ;
	setAttr ".bps" -type "matrix" 0.60494727446646701 0.017503591810670661 -0.49513505025656102 1.4039970587276232e-17 0.0037771889835168343 0.99962091765903505 0.012057046084627958 -1.1102230246251564e-16
		 0.49515839491572378 -0.043514143731526803 0.60465183526334332 -1.9892323567525095e-17 0.085991322608428136 1.5363748410954117 -0.019366160232017898 0.99999999999999989;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "ear_01";
createNode joint -n "jnt_ear_l_02" -p "jnt_ear_l_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.062066381330757148 8.8817841970012523e-16 0.0011996284553642267 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.60494727446646701 0.017503591810670661 -0.49513505025656107 1.5612511283791264e-17 0.0037771889835168351 0.99962091765903516 0.012057046084627963 -1.1102230246251565e-16
		 0.49515839491572383 -0.043514143731526816 0.60465183526334354 -2.4286128663675299e-17 0.12413221693091947 1.5374090248943604 -0.049372043524295098 0.99999999999999978;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "ear_02";
createNode joint -n "jnt_collar" -p "jnt_chest";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 5.6982662199713534e-15 0.19147289176374671 -0.0098117988411201978 ;
	setAttr ".r" -type "double3" -6.3611093629270335e-15 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 14.230038113714338 0 0 ;
	setAttr ".bps" -type "matrix" 1 3.3306690738754696e-16 2.7755575615628914e-16 0 -3.2362143209318622e-16 0.96931661084591469 0.24581559742658651 0
		 -1.4700398988380529e-16 -0.24581559742658646 0.96931661084591469 0 7.0653934398778192e-15 1.338709594794242 -0.076891722556997694 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "collar";
createNode joint -n "jnt_clav_l" -p "jnt_chest";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.018307795849477261 0.092090883842863569 0.015233002716267499 ;
	setAttr ".r" -type "double3" -1.9108176172230033e-14 -3.975693351829395e-16 3.9756933518293969e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 5.4922146280615216 0.26279185171402869 ;
	setAttr ".bps" -type "matrix" 0.99539874266846418 0.0045655110254328411 -0.095710496828285085 0 0.095709490111432149 0.00043898260426853292 0.99540921273458327 0
		 0.0045865669787106267 -0.99998948164635704 -1.0974810662473857e-16 0 0.079935352562819917 1.2393275868733589 -0.051846920999609976 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "clav";
	setAttr ".liw" yes;
createNode joint -n "jnt_shoulder_l" -p "jnt_clav_l";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.10458010072930828 0 -4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.56386741737122281 -36.231455237116329 4.5382600495361851 ;
	setAttr ".bps" -type "matrix" 0.80922654870751842 -0.58734320386825045 -0.013429584382882285 0 0.010868556357307253 -0.0078884865091469417 0.99990981906535104 0
		 -0.58739617580439385 -0.80929953209573391 6.1924469696474833e-16 0 0.34951570058449938 1.2255728431582962 -0.095475001886564076 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "shoulder";
createNode joint -n "jnt_elbow_l" -p "jnt_shoulder_l";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.27473923563957225 -6.9388939039072284e-17 -2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" 6.0664266232748404e-21 -3.8830286175456999e-19 -1.1927080055259515e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.4684429756718177e-05 0.00086377845303183389 1.9478948749455738 ;
	setAttr ".bps" -type "matrix" 0.57726148617247597 -0.67916201531415121 0.06001906670200878 2.3006310399748822e-16 -0.049466273800601646 0.016038340412797253 0.77926429393137231 -1.6483518037695734e-17
		 -0.52486147928264693 -0.73479491291358134 -0.0072666413178816159 6.5265455542842161e-17 0.21607408961819391 1.149987538746341 -0.045755495983493676 0.99999999999999978;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "elbow";
createNode joint -n "jnt_hand_l" -p "jnt_elbow_l";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.27606996893882746 4.4408920985006262e-16 0 ;
	setAttr ".r" -type "double3" 6.2124000138973858e-18 3.2330389081146432e-35 5.9635401462289893e-16 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.025406875366784969 -0.00052262134775957637 -1.1784122527725667 ;
	setAttr ".bps" -type "matrix" 0.65552554061194634 -0.76854786111256701 0.01803872254729439 3.7795165923981301e-16 -0.019019408725375889 -0.025268266715225952 0.88448379290284707 -6.1654087307602583e-18
		 -0.59409482466033836 -0.8317201246038094 -0.0082251682968176761 2.513340297139083e-16 0.3480672004328913 0.9955542394566953 -0.046456686461421752 0.99999999999999967;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "hand";
createNode joint -n "jnt_thumb_l_01" -p "jnt_hand_l";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.0080909110098042747 0.050724258862910064 0.025650432470439188 ;
	setAttr ".r" -type "double3" 4.533854405539067e-07 1.3659608157611384e-07 8.6407865707977091e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 9.0062645884342611 -27.411152194650914 35.879100471584159 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.18368550937939654 -0.99496473409167008 0.4067842213931197 4.0270850098886827e-16 -0.47230705988237548 0.31203790418492205 0.70155702897244931 -1.8942232459608266e-16
		 -0.7254032036187481 -0.44242534970347586 -0.35362262531885469 8.9438859871376982e-17 0.346909988180646 0.97498310224654683 -0.027869017598185063 0.99999999999999978;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "thumb_01";
	setAttr ".radi" 0.5;
createNode joint -n "jnt_thumb_l_02" -p "jnt_thumb_l_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.03449625284664154 -5.2023890750874102e-10 8.2239104415293696e-11 ;
	setAttr ".r" -type "double3" 0 0 -8.6407873247506674e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -7.9513867036587903e-15 -10.31324031235483 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.21520585186116062 -1.0044283450851266 0.37490779526102119 4.1070316416167364e-16 -0.40460084794412465 0.2962667022212464 0.74620323490150564 -1.7577026049073594e-16
		 -0.75697339990164325 -0.43175503070487747 -0.29211214642240452 8.0510806441029685e-17 0.35216662785677916 0.94302932734163059 -0.013475790559886154 0.99999999999999956;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "thumb_02";
	setAttr ".radi" 0.5;
createNode joint -n "jnt_thumb_l_03" -p "jnt_thumb_l_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.040946769563256435 -6.1751925795050511e-10 1.5404921782646852e-10 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.21520585186116059 -1.0044283450851266 0.37490779526102125 4.1070316416167374e-16 -0.40460084794412465 0.29626670222124624 0.74620323490150553 -1.7577026049073594e-16
		 -0.75697339990164314 -0.43175503070487742 -0.29211214642240446 8.0510806441029673e-17 0.36031066312685212 0.90501874446067643 0.00071184551611269166 0.99999999999999956;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "thumb_03";
	setAttr ".radi" 0.5;
createNode joint -n "jnt_index_l_00" -p "jnt_hand_l";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.045368836468471771 0.033340113181128089 -8.5582567012298938e-05 ;
	setAttr ".r" -type "double3" 9.068621103267695e-08 -1.4352253040911764e-13 5.1564742761869111e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.974481729727358 -5.2808521653753573 -0.0023496313934723537 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.66018032819423433 -0.75692235615692938 -0.051020789882229849 3.7506580678371042e-16 0.58735304288531665 0.84024119047401835 -0.013405679191574923 -2.5512918871936805e-16
		 0.046930483374430766 -0.064233592263832906 0.88313181098727378 1.7000033066390765e-17 0.37477108551996102 0.96346959823217804 -0.030740618884504287 0.99999999999999978;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "index_00";
	setAttr ".radi" 0.5;
createNode joint -n "jnt_index_l_01" -p "jnt_index_l_00";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.0405045188087617 1.8856249894838584e-11 0 ;
	setAttr ".r" -type "double3" 0 9.8113427589917052e-07 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.66018032819423433 -0.75692235615692915 -0.051020789882229849 3.7506580678371032e-16 0.58735304288531642 0.84024119047401846 -0.013405679191574912 -2.5512918871936815e-16
		 0.046930483374430766 -0.064233592263832864 0.88313181098727356 1.7000033066390755e-17 0.39301976935820221 0.94230783909426907 -0.02594873333182636 0.99999999999999978;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "index_01";
	setAttr ".radi" 0.5;
createNode joint -n "jnt_index_l_02" -p "jnt_index_l_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.039078365683643701 2.4191759706582161e-12 -6.6917908714270169e-10 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.67453281999266068 -0.74030021938029844 -0.0091355798041323349 3.6969831536575987e-16 0.57270152163040178 0.85517220249196857 0.020642582457644415 -2.6323632332832376e-16
		 -0.006524941840071144 -0.060817391139269913 0.88441791805886483 9.1682700375963018e-18 0.42401549158471041 0.90677004116768178 -0.028344179187191804 0.99999999999999978;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "index_02";
	setAttr ".radi" 0.5;
createNode joint -n "jnt_index_l_03" -p "jnt_index_l_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.026374361876524255 1.6329160246186802e-12 -4.5163518064272878e-10 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.67453281999266057 -0.74030021938029855 -0.0091355798041323367 3.6969831536575992e-16 0.57270152163040178 0.85517220249196846 0.020642582457644418 -2.6323632332832385e-16
		 -0.0065249418400711388 -0.060817391139269907 0.8844179180588646 9.1682700375963049e-18 0.44139649710820356 0.8876943760247592 -0.028579579983609202 0.99999999999999978;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "index_03";
	setAttr ".radi" 0.5;
createNode joint -n "jnt_middle_l_00" -p "jnt_hand_l";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.044851012438867008 0.007178819175498577 0.00036701851634046712 ;
	setAttr ".r" -type "double3" 9.0686332962222422e-08 -2.3059021983978962e-14 6.8660224184268812e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.974481729727358 -5.2808521653753573 -0.0023496313934723537 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.67019587030424277 -0.74712411192363759 -0.0011609284905160814 3.7170119600355535e-16 0.57756092025084094 0.84926595464488841 0.027003138506521335 -2.6044963995947014e-16
		 -0.016882293007339712 -0.060129572241047306 0.88429300097212882 7.6465295190489081e-18 0.37381512940611888 0.96478365340278449 -0.045727554384731771 0.99999999999999978;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "middle_00";
	setAttr ".radi" 0.5;
createNode joint -n "jnt_middle_l_01" -p "jnt_middle_l_00";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.034531279029111461 3.2154279239193784e-12 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.67019587030424277 -0.74712411192363737 -0.0011609284905160786 3.717011960035553e-16 0.57756092025084094 0.84926595464488841 0.027003138506521335 -2.6044963995947019e-16
		 -0.016882293007339708 -0.060129572241047292 0.88429300097212848 7.6465295190489081e-18 0.39195390767909083 0.94429014228203167 -0.04565691330773429 0.99999999999999978;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "middle_01";
	setAttr ".radi" 0.5;
createNode joint -n "jnt_middle_l_02" -p "jnt_middle_l_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.044491556907195404 0 -7.6187424424833949e-10 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.67285224299181845 -0.74274515680813635 -0.01016484865199971 3.7046067116469814e-16 0.57468770528644408 0.85304376583722874 0.019856330047998163 -2.6215596888975577e-16
		 -0.0052946656670350215 -0.060898533633947531 0.88442468917447226 9.3489344233210303e-18 0.42764673026599015 0.90450032924546475 -0.045718741224741934 0.99999999999999978;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "middle_02";
	setAttr ".radi" 0.5;
createNode joint -n "jnt_middle_l_03" -p "jnt_middle_l_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.036248742931406536 0 -6.2072409712232712e-10 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.67285224299181845 -0.74274515680813646 -0.010164848651999712 3.7046067116469824e-16 0.57468770528644397 0.85304376583722896 0.019856330047998163 -2.6215596888975582e-16
		 -0.0052946656670350267 -0.060898533633947545 0.88442468917447226 9.3489344233210334e-18 0.44723873971644346 0.8828731885425396 -0.04601471974443451 0.99999999999999978;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "middle_03";
	setAttr ".radi" 0.5;
createNode joint -n "jnt_ring_l_00" -p "jnt_hand_l";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.043627189510139552 -0.019613370618135211 -0.0011294414355141067 ;
	setAttr ".r" -type "double3" 9.0686373961560125e-08 -8.2296852225238089e-14 -1.9918223699178149e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.974481729727358 -5.2808521653753573 -0.0023496313934723537 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.66546977093964388 -0.75318941576211473 -0.016030143409449943 3.7371533438980868e-16 0.58323482829331041 0.84321414546404361 0.023185762791272858 -2.5735016807478082e-16
		 -0.0033544034127924865 -0.068980248388474802 0.88425679738326823 1.2728052206535749e-17 0.37182363713158029 0.96992802992981442 -0.060409654555204029 0.99999999999999978;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "ring_00";
	setAttr ".radi" 0.5;
createNode joint -n "jnt_ring_l_01" -p "jnt_ring_l_00";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.027741240504663763 -2.3372415114408795e-12 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.66546977093964388 -0.75318941576211473 -0.016030143409449943 3.7371533438980868e-16 0.5832348282933103 0.84321414546404361 0.023185762791272855 -2.5735016807478077e-16
		 -0.0033544034127924839 -0.068980248388474802 0.88425679738326834 1.2728052206535745e-17 0.39028551720322746 0.94929006185094333 -0.063725648395173154 0.99999999999999978;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "ring_01";
	setAttr ".radi" 0.5;
createNode joint -n "jnt_ring_l_02" -p "jnt_ring_l_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.051116465643196593 -6.6613381477509392e-16 -8.7531960846209955e-10 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.6689140175466286 -0.74745418381065998 -0.024718117160992092 3.7203833873979552e-16 0.57923695073541026 0.84824211635898072 0.016263525743835116 -2.5968229767862334e-16
		 0.0079199130940750852 -0.069715284789254248 0.88421102754198355 1.4382011655565986e-17 0.42356085793705789 0.91162849472790186 -0.06452720018197855 0.99999999999999978;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "ring_02";
	setAttr ".radi" 0.5;
createNode joint -n "jnt_ring_l_03" -p "jnt_ring_l_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.028045510530812917 0 -4.8025193544187772e-10 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.6689140175466286 -0.74745418381066009 -0.024718117160992082 3.7203833873979552e-16 0.57923695073541015 0.84824211635898039 0.016263525743835106 -2.596822976786233e-16
		 0.0079199130940750886 -0.069715284789254234 0.88421102754198344 1.4382011655565977e-17 0.441627403811233 0.89144067544705163 -0.065194806161070318 0.99999999999999978;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "ring_03";
	setAttr ".radi" 0.5;
createNode joint -n "jnt_pinky_l_00" -p "jnt_hand_l";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.03186960009204283 -0.040196502676631198 0.0015632467458121279 ;
	setAttr ".r" -type "double3" 9.0686443312561035e-08 7.1960049548237378e-14 1.514739167616484e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.974481729727358 -5.2808521653753573 -0.0023496313934723537 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.68900121495006972 -0.71071539896654456 -0.067615428218262927 3.6085885702923258e-16 0.55122609676001688 0.87958156937553544 -0.022418668005796255 -2.7466261277855461e-16
		 0.066717681607575158 -0.065441197125090084 0.8818334230477789 1.988964364664404e-17 0.36648252920538033 0.97300119287028608 -0.068859622155818423 0.99999999999999978;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "pinky_00";
	setAttr ".radi" 0.5;
createNode joint -n "jnt_pinky_l_01" -p "jnt_pinky_l_00";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.03493826665900835 -2.1856516596585607e-11 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.68900121495006972 -0.71071539896654468 -0.067615428218262941 3.6085885702923258e-16 0.55122609676001655 0.87958156937553533 -0.02241866800579622 -2.7466261277855466e-16
		 0.066717681607575172 -0.06544119712509007 0.8818334230477789 1.988964364664403e-17 0.38386280632113223 0.95062715303702161 -0.080258866859319877 0.99999999999999978;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "pinky_01";
	setAttr ".radi" 0.5;
createNode joint -n "jnt_pinky_l_02" -p "jnt_pinky_l_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.036618869636352858 -4.4408920985006262e-16 -6.2706262404788049e-10 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.70840091581828024 -0.68596616703719537 -0.015069960819444228 3.5277990465245934e-16 0.53027101311088576 0.89930203886239535 0.016220410638545311 -2.8546691170490482e-16
		 0.0022199354093314638 -0.06139158226260763 0.88442886846375246 1.045201771155519e-17 0.41055039982010233 0.92240153694556215 -0.080963743511394695 0.99999999999999978;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "pinky_02";
	setAttr ".radi" 0.5;
createNode joint -n "jnt_pinky_l_03" -p "jnt_pinky_l_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.020706123127638199 0 -3.5457212166356555e-10 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.7207745313905527 -0.66199328629493004 -0.038409389025970631 3.453240926160733e-16 0.51286639487878216 0.91576491422742623 0.016159171273917337 -2.9397584992330261e-16
		 0.021823585723138975 -0.078753898728524133 0.88372406826500327 1.9589134741851416e-17 0.42429649556504367 0.9090907740719818 -0.08125616708069143 0.99999999999999978;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "pinky_03";
	setAttr ".radi" 0.5;
createNode joint -n "jnt_hip_l" -p "jnt_spine_00";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 0 0.17917196281591655 ;
	setAttr ".r" -type "double3" 0 0 6.3148126298499443e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 180 ;
	setAttr ".bps" -type "matrix" -0.088785920919382685 -0.99600658985560608 0.0093772709624807774 0 0.0026706373050992003 0.0091763727289203602 0.99995432989708311 0
		 -0.99604715146567324 0.08880690934688916 0.0018452396515563167 0 0.17917196281591655 0.6734053233656857 -0.060133817424907123 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "hip";
createNode joint -n "jnt_knee_l" -p "jnt_hip_l";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.29631271958351146 8.3266726846886741e-17 9.7144514654701197e-17 ;
	setAttr ".r" -type "double3" 1.9412561995501674e-19 1.4680752470625632e-18 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -7.2553561773639252 ;
	setAttr ".bps" -type "matrix" -0.088175292114069187 -0.98921171066966485 -0.11698422686240117 0 -0.0085357565672041485 -0.11668699629223876 0.99313205856830555 0
		 -0.99606840062338287 0.088568258254807269 0.0018452396282776194 0 0.15286356512756757 0.37827590200247196 -0.05735521276374287 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "knee";
createNode joint -n "jnt_ankle_l" -p "jnt_knee_l";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.28464478254318198 0 0 ;
	setAttr ".r" -type "double3" 3.9756933518293969e-16 1.7890620083232284e-15 6.3362612794780998e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 56.331081200293866 ;
	setAttr ".bps" -type "matrix" -0.0010934021757343509 -0.64937307442823666 0.76046920692379261 0 0.0012804619401005912 0.76046812891568427 0.64937399495259907 0
		 -0.99999858244344619 0.001683778815030873 -1.5862784910359721e-15 0 0.12776492919258486 0.096701959987047836 -0.090654149591458399 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "ankle";
createNode joint -n "jnt_ball_l" -p "jnt_ankle_l";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.14676836133003238 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 37.55862116997131 ;
	setAttr ".bps" -type "matrix" -8.6238005678070735e-05 -0.051216871633859351 0.99868755105040097 0 0.0016815689412936511 0.99868613535431783 0.051216944236774198 0
		 -0.99999858244344619 0.001683778815030873 -1.5862784910359721e-15 0 0.1276044523543281 0.0013945423268012236 0.020958664638417862 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "ball";
createNode joint -n "jne_toes_l" -p "jnt_ball_l";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.065825037658214583 2.1684043449710089e-18 0 ;
	setAttr ".r" -type "double3" 0 0 0.0092123353127249244 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.040439295873646315 -9.2245539462089361e-16 0.99918199711025824 0 1.2664836627346299e-17 1.0000000000000002 7.9693158369891891e-16 0
		 -0.99918199711025868 7.8652091350245312e-17 -0.040439295873646273 0 0.076877884927506177 6.5416995028304062e-06 0.12625483802202764 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "jne_toes";
createNode displayLayerManager -n "layerManager";
	setAttr -s 5 ".dli[1:4]"  1 2 3 4;
createNode dagPose -n "bindPose1";
	setAttr -s 16 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr -s 28 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.9303806576313238e-32
		 0.67449112598656757 -0.06707992371587751 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0.5 0.49999999999999989 0.5 0.50000000000000011 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -0.0018442474573778127 0.00011456728721591166 1.1021427203740348e-07 0 -0.0010858026208818705
		 0.0069461062909703455 0.17917196281591655 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0.0046839881375468429 0.99899857980095552 0.00020862556688254697 0.044495553555090647 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 3.3881312306902485e-21 2.562274672827094e-20 -4.3580570000923862e-08 0 0.29631271958351146
		 8.3266726846886741e-17 9.7144514654701197e-17 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 -6.4584659564175185e-06 0.00011962339165607384 -0.063272630608509406 0.99799627247019884 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -0.001835073017061011 0.00011399701437048726 1.1019314372658878e-07 0 -0.0010861259865675432
		 0.0069461237158775571 -0.17917199999999994 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0.99899857980095541 -0.004683988137543304 -0.044495553555091633 0.00020862556696239925 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 2.3716918807881907e-20 -2.5516870989203043e-20 2.9119861604168177e-07 0 -0.29631230235099804
		 -3.193943953760936e-08 1.7431833047865108e-07 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 -6.4584702367603774e-06 0.0001196233919379396 -0.063272630608508851 0.99799627247019884 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.094144398962197506
		 1.3877787807814457e-17 7.4265887162357448e-18 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.094144398962197506
		 1.3877787807814457e-17 6.8038401011837794e-16 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.094144398962197728
		 -1.3877787807814457e-17 -7.9489069727244494e-17 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.094144398962197728
		 -1.3877787807814457e-17 -1.7553429337829893e-17 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.096167981195136587
		 0 5.6928192442275084e-16 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 1.6653345369377348e-16 5.5511151231257852e-17 -3.3306690738754696e-16 0 6.6613381477509392e-16
		 0 1.5307233708903829e-16 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 -0.50000000000000011 -0.49999999999999989 -0.49999999999999983 0.50000000000000011 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 -1.3877787807814457e-16 0 0 0 5.7176485768195522e-15
		 0.19147289176374649 -0.009811798841120295 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0.123861594439288 0 0 0.99229950389131871 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 -1.1102230246251565e-16 0 0 0 5.6982662199713534e-15
		 0.19147289176374671 -0.0098117988411201978 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0.123861594439288 0 0 0.99229950389131871 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 -3.3350058825654116e-16 -6.9388939039072268e-18 6.9388939039072299e-18 0 0.079935352562818529
		 0.092090883842863569 0.015233002716267499 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0.70621522216392996 0.035497323616733294 -0.03225784682549044 0.70637060479480829 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 4.40619762898109e-16 2.0794997668271975e-16 -8.6736173798839892e-18 0 0.27245280733217864
		 -0.017632434088803418 0.014991047360149556 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0.016983998822074749 -0.31050458923688773 0.039159166792394548 0.94961308094558639 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 -3.3219954564955856e-16 -2.7755575615628914e-17 4.6101948043769458e-33 0 -0.079935400000001405
		 0.092093296969504745 0.015233023715877515 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 -0.70637060479480829 -0.032257846825489898 -0.035497323616733398 0.70621522216392996 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 -2.5673907444456745e-16 2.2963402013242984e-16 -3.8163916471489787e-17 0 -0.27245303598277471
		 0.01763243130480642 -0.014996304745515054 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0.016983998822077687 -0.31050458923688762 0.039159166792395485 0.94961308094558639 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 -4.7026420646282761 1.7830696434888529e-05 -1.7791869910198041e-05 0 2.7755575615628914e-16
		 2.7755575615628914e-16 1.3322676295501878e-15 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 -4.4408920985006262e-16 2.1539539628908505e-16 1.0875903042744739e-18 0 -0.091578453779220303
		 6.1415377228257739e-09 1.6232276425637293e-06 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 -4.4408920985006262e-16 2.1539539628908505e-16 1.0875903042744739e-18 0 -0.09157845377922097
		 6.141537500781169e-09 1.6232276416339175e-06 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 -4.4408920985006262e-16 2.1539539628908505e-16 1.0875903042744739e-18 0 -0.091578453779219748
		 6.1415379448703789e-09 1.6232276423555625e-06 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 1.5805433195738254 0 0 0 2.7755575615628914e-16
		 2.0816681711721685e-16 -2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 -3.3306690738754696e-16 0 0 0 0.091579745213190622
		 2.2204460492503131e-16 -2.7755575615628914e-16 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 -3.3306690738754696e-16 0 0 0 0.091579745213190678
		 6.6613381477509392e-16 -2.3592239273284576e-16 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 -3.3306690738754696e-16 0 0 0 0.091579745213190955
		 4.4408920985006262e-16 -8.8817841970012523e-16 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr -s 25 ".m";
	setAttr -s 28 ".p";
	setAttr -s 28 ".g[0:27]" yes yes yes no no no no no no no no no no 
		no no no no no no no no no no no no no no no;
	setAttr ".bp" yes;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 1096 -ast 1 -aet 1096 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 396;
	setAttr ".unw" 396;
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
connectAttr "jnt_cog.s" "jnt_spine_00.is";
connectAttr "jnt_spine_00.s" "jnt_spine_01.is";
connectAttr "jnt_spine_01.s" "jnt_spine_02.is";
connectAttr "jnt_spine_02.s" "jnt_spine_03.is";
connectAttr "jnt_spine_03.s" "jnt_spine_04.is";
connectAttr "jnt_spine_04.s" "jne_spine.is";
connectAttr "jne_spine.s" "jnt_chest.is";
connectAttr "jnt_chest.s" "jnt_neck.is";
connectAttr "jnt_neck.s" "jnt_head.is";
connectAttr "jnt_head.s" "jnt_headOffset.is";
connectAttr "jnt_headOffset.s" "jnt_headLow.is";
connectAttr "jnt_headLow.s" "jnt_jaw.is";
connectAttr "jnt_jaw.s" "jnt_tongue_01.is";
connectAttr "jnt_tongue_01.s" "jnt_tongue_02.is";
connectAttr "jnt_tongue_02.s" "jnt_tongue_03.is";
connectAttr "jnt_tongue_03.s" "jnt_tongue_04.is";
connectAttr "jnt_tongue_04.s" "jnt_tongue_05.is";
connectAttr "jnt_headOffset.s" "jnt_squint_l.is";
connectAttr "jnt_headOffset.s" "jnt_snear_l.is";
connectAttr "jnt_headOffset.s" "jnt_nose.is";
connectAttr "jnt_nose.s" "jnt_noseBridge.is";
connectAttr "jnt_headOffset.s" "jnt_eye_l.is";
connectAttr "jnt_eye_l.s" "jnt_eyeHighlight_l.is";
connectAttr "jnt_headOffset.s" "jnt_ear_l_01.is";
connectAttr "jnt_ear_l_01.s" "jnt_ear_l_02.is";
connectAttr "jnt_chest.s" "jnt_collar.is";
connectAttr "jnt_chest.s" "jnt_clav_l.is";
connectAttr "jnt_clav_l.s" "jnt_shoulder_l.is";
connectAttr "jnt_shoulder_l.s" "jnt_elbow_l.is";
connectAttr "jnt_elbow_l.s" "jnt_hand_l.is";
connectAttr "jnt_hand_l.s" "jnt_thumb_l_01.is";
connectAttr "jnt_thumb_l_01.s" "jnt_thumb_l_02.is";
connectAttr "jnt_thumb_l_02.s" "jnt_thumb_l_03.is";
connectAttr "jnt_hand_l.s" "jnt_index_l_00.is";
connectAttr "jnt_index_l_00.s" "jnt_index_l_01.is";
connectAttr "jnt_index_l_01.s" "jnt_index_l_02.is";
connectAttr "jnt_index_l_02.s" "jnt_index_l_03.is";
connectAttr "jnt_hand_l.s" "jnt_middle_l_00.is";
connectAttr "jnt_middle_l_00.s" "jnt_middle_l_01.is";
connectAttr "jnt_middle_l_01.s" "jnt_middle_l_02.is";
connectAttr "jnt_middle_l_02.s" "jnt_middle_l_03.is";
connectAttr "jnt_hand_l.s" "jnt_ring_l_00.is";
connectAttr "jnt_ring_l_00.s" "jnt_ring_l_01.is";
connectAttr "jnt_ring_l_01.s" "jnt_ring_l_02.is";
connectAttr "jnt_ring_l_02.s" "jnt_ring_l_03.is";
connectAttr "jnt_hand_l.s" "jnt_pinky_l_00.is";
connectAttr "jnt_pinky_l_00.s" "jnt_pinky_l_01.is";
connectAttr "jnt_pinky_l_01.s" "jnt_pinky_l_02.is";
connectAttr "jnt_pinky_l_02.s" "jnt_pinky_l_03.is";
connectAttr "jnt_spine_00.s" "jnt_hip_l.is";
connectAttr "jnt_hip_l.s" "jnt_knee_l.is";
connectAttr "jnt_knee_l.s" "jnt_ankle_l.is";
connectAttr "jnt_ankle_l.s" "jnt_ball_l.is";
connectAttr "jnt_ball_l.s" "jne_toes_l.is";
connectAttr "jnt_cog.msg" "bindPose1.m[2]";
connectAttr "jnt_spine_00.msg" "bindPose1.m[3]";
connectAttr "jnt_hip_l.msg" "bindPose1.m[4]";
connectAttr "jnt_knee_l.msg" "bindPose1.m[5]";
connectAttr "jnt_spine_01.msg" "bindPose1.m[8]";
connectAttr "jnt_spine_02.msg" "bindPose1.m[9]";
connectAttr "jnt_spine_03.msg" "bindPose1.m[10]";
connectAttr "jnt_spine_04.msg" "bindPose1.m[11]";
connectAttr "jne_spine.msg" "bindPose1.m[12]";
connectAttr "jnt_chest.msg" "bindPose1.m[13]";
connectAttr "jnt_neck.msg" "bindPose1.m[14]";
connectAttr "jnt_collar.msg" "bindPose1.m[15]";
connectAttr "jnt_clav_l.msg" "bindPose1.m[16]";
connectAttr "jnt_shoulder_l.msg" "bindPose1.m[17]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[3]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[3]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[13]" "bindPose1.p[15]";
connectAttr "bindPose1.m[13]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[13]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[17]" "bindPose1.p[24]";
connectAttr "bindPose1.m[24]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "jnt_cog.bps" "bindPose1.wm[2]";
connectAttr "jnt_spine_00.bps" "bindPose1.wm[3]";
connectAttr "jnt_hip_l.bps" "bindPose1.wm[4]";
connectAttr "jnt_knee_l.bps" "bindPose1.wm[5]";
connectAttr "jnt_spine_01.bps" "bindPose1.wm[8]";
connectAttr "jnt_spine_02.bps" "bindPose1.wm[9]";
connectAttr "jnt_spine_03.bps" "bindPose1.wm[10]";
connectAttr "jnt_spine_04.bps" "bindPose1.wm[11]";
connectAttr "jne_spine.bps" "bindPose1.wm[12]";
connectAttr "jnt_chest.bps" "bindPose1.wm[13]";
connectAttr "jnt_neck.bps" "bindPose1.wm[14]";
connectAttr "jnt_collar.bps" "bindPose1.wm[15]";
connectAttr "jnt_clav_l.bps" "bindPose1.wm[16]";
connectAttr "jnt_shoulder_l.bps" "bindPose1.wm[17]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of skeleton.ma
