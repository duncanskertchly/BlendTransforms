//Maya ASCII 2013 scene
//Name: Face_Rig_Done.ma
//Last modified: Fri, Jun 10, 2016 02:30:28 PM
//Codeset: 1252
requires "BlendTransforms" "0.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2013";
fileInfo "version" "2013 x64";
fileInfo "cutIdentifier" "201209210409-845513";
fileInfo "osv" "Microsoft Windows 7 Ultimate Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 16.032635950526522 8.7631578141657851 32.155558943881474 ;
	setAttr ".r" -type "double3" -3.3383527608790544 23.79999999999778 -1.0863028971463561e-016 ;
	setAttr ".rp" -type "double3" 1.7763568394002505e-015 -2.2204460492503131e-016 0 ;
	setAttr ".rpt" -type "double3" -1.0286176838337276e-017 3.7679623167519729e-019 
		-1.9132491967219257e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 32.804093053074574;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1.6155891418457031 3.2978326884593003 4.044743537902832 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.8385546731797704 100.94642977694652 1.7771240749642394 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 20.509049463789005;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.7490687690390807 4.9729211722107758 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 19.652013830909667;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 3.6272543829460928 4.1842725450134219 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 2.0435520723821452;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "RootJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "HeadMainJnt" -p "RootJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 2.6510792265591219 0.15941333770751953 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 2.6510792265591219 0.15941333770751953 1;
	setAttr ".radi" 0.5;
createNode joint -n "HeadJnt" -p "HeadMainJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 2.6510792265591219 0.15941333770751953 1;
	setAttr ".radi" 0.5;
createNode joint -n "LEarJnt" -p "HeadJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 31.032145746331601 0 ;
	setAttr ".bps" -type "matrix" 0.8568782041537788 0 -0.51551890677859236 0 0 1 0 0
		 0.51551890677859236 0 0.8568782041537788 0 3.4573048726676103 4.9250746656808948 -0.10595114113084247 1;
	setAttr ".radi" 0.54288830854350489;
createNode joint -n "LEarEndJnt" -p "LEarJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.8291739651744272 0 4.4408920985006262e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.8568782041537788 0 -0.51551890677859236 0 0 1 0 0
		 0.51551890677859236 0 0.8568782041537788 0 5.0246841750311209 4.9250746656808948 -1.0489249039654258 1;
	setAttr ".radi" 0.54288830854350489;
createNode parentConstraint -n "LEarJnt_parentConstraint1" -p "LEarJnt";
	addAttr -ci true -k true -sn "w0" -ln "LEarCtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 3.4573048726676103 2.2739954391217729 -0.26536447883836201 ;
	setAttr -k on ".w0";
createNode joint -n "REarJnt" -p "HeadJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -31.032006645207332 3.2467477512419639e-014 ;
	setAttr ".bps" -type "matrix" 0.85687945571393631 6.1629758220391506e-033 0.51551682647163732 0
		 -6.3132603144509235e-017 -1 1.0493746826951985e-016 0 0.51551682647163732 -1.2246467991473532e-016 -0.8568794557139362 0
		 -3.4573 4.9250699999999998 -0.10595100000000002 1;
	setAttr ".radi" 0.54288830854350489;
createNode joint -n "REarEndJnt" -p "REarJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.8291739651744272 0 4.4408920985006262e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.85687945571393631 6.1629758220391506e-033 0.51551682647163732 0
		 -6.3132603144509235e-017 -1 1.0493746826951985e-016 0 0.51551682647163732 -1.2246467991473532e-016 -0.8568794557139362 0
		 -5.0246799999999991 4.9250699999999998 -1.0489200000000001 1;
	setAttr ".radi" 0.54288830854350489;
createNode parentConstraint -n "REarJnt_parentConstraint1" -p "REarJnt";
	addAttr -ci true -k true -sn "w0" -ln "REarCtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 1.1761008961519863e-046 -1.2722218725854067e-014 -1.0593375115320381e-030 ;
	setAttr ".rst" -type "double3" -3.4573048726676108 2.2739954391217738 -0.26536447883836245 ;
	setAttr ".rsrr" -type "double3" 1.176100896151986e-046 -1.272221872585407e-014 -1.0593375115320388e-030 ;
	setAttr -k on ".w0";
createNode joint -n "LBrow1Jnt" -p "HeadJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.70032157905532078 7.9587930460186911 3.9659181433425426 1;
	setAttr ".radi" 0.5;
createNode joint -n "LBrow2Jnt" -p "HeadJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.5418849868367961 8.0130874594239465 3.7692945846020662 1;
	setAttr ".radi" 0.5;
createNode joint -n "LBrow3Jnt" -p "HeadJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.832097442617433 7.7271002377287905 3.0350306518440733 1;
	setAttr ".radi" 0.5;
createNode joint -n "RBrow1Jnt" -p "HeadJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.700322 7.9587899999999996 3.9659200000000001 1;
	setAttr ".radi" 0.5;
createNode joint -n "RBrow2Jnt" -p "HeadJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.5418799999999999 8.01309 3.7692899999999994 1;
	setAttr ".radi" 0.5;
createNode joint -n "RBrow3Jnt" -p "HeadJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.8321000000000001 7.7271000000000001 3.0350299999999999 1;
	setAttr ".radi" 0.5;
createNode joint -n "LEyeJnt" -p "HeadJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.3571937889825747 3.6263951059888631 1.974457046273741 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.3571937889825747 6.2774743325479854 2.1338703839812605 1;
	setAttr ".radi" 0.5;
createNode joint -n "REyeJnt" -p "HeadJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.3571937889825747 3.6263951059888631 1.974457046273741 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.3571899999999999 6.2774700000000001 2.1338699999999999 1;
	setAttr ".radi" 0.5;
createNode joint -n "LUpperEyeLidJnt" -p "HeadJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.3571937889825747 6.2774743325479854 2.1338703839812605 1;
	setAttr ".radi" 0.5;
createNode joint -n "LLowerEyeLidJnt" -p "HeadJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.3571937889825747 6.2774743325479854 2.1338703839812605 1;
	setAttr ".radi" 0.5;
createNode joint -n "RUpperEyeLidJnt" -p "HeadJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.3571899999999999 6.2774700000000001 2.1338699999999999 1;
	setAttr ".radi" 0.5;
createNode joint -n "RLowerEyeLidJnt" -p "HeadJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.3571899999999999 6.2774700000000001 2.1338699999999999 1;
	setAttr ".radi" 0.5;
createNode joint -n "LCheek1Jnt" -p "HeadJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.2891244888305664 4.8194341659545898 3.8684920072555538 1;
	setAttr ".radi" 0.5;
createNode joint -n "LCheek2Jnt" -p "HeadJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.5902773407317584e-015 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.6112871170043945 3.9640679359436031 3.5529706478118896 1;
	setAttr ".radi" 0.5;
createNode joint -n "RCheek1Jnt" -p "HeadJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.28912 4.8194299999999997 3.86849 1;
	setAttr ".radi" 0.5;
createNode joint -n "RCheek2Jnt" -p "HeadJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.6112899999999999 3.9640699999999991 3.5529700000000002 1;
	setAttr ".radi" 0.5;
createNode joint -n "LNoseJnt" -p "HeadJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.67817592620849609 4.8611326217651367 4.2679023742675781 1;
	setAttr ".radi" 0.5;
createNode joint -n "RNoseJnt" -p "HeadJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.678176 4.8611300000000002 4.2679 1;
	setAttr ".radi" 0.5;
createNode joint -n "JawShiftJnt" -p "HeadJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 1.6734866008750533 0.35221614076962982 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 13.417762963043517 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 4.3245658274341752 0.51162947847714935 1;
	setAttr ".radi" 0.6478008263495697;
createNode joint -n "JawJnt" -p "JawShiftJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 23.406 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.91771303142205074 0.39724399549665951 0
		 0 -0.39724399549665951 0.91771303142205074 0 0 4.3245658274341752 0.51162947847714935 1;
	setAttr ".radi" 0.6478008263495697;
createNode joint -n "JawEndJnt" -p "JawJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-016 3.7817660557659769 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 4.3245658274341752 0.51162947847714935 1;
	setAttr ".radi" 0.6478008263495697;
createNode joint -n "MLowerLipJnt" -p "JawShiftJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.604121674342684 4.5782801586721877 1;
	setAttr ".radi" 0.5;
createNode joint -n "MUpperLipJnt" -p "JawShiftJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.8536765854340032 4.5991263872092452 1;
	setAttr ".radi" 0.5;
createNode joint -n "LCornerJnt" -p "JawShiftJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.2116631576933896 3.7272872924804687 4.2309069633483887 1;
	setAttr ".radi" 0.5;
createNode joint -n "LUpperLip1Jnt" -p "JawShiftJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.47707247734069824 3.856354741333051 4.5410800462668623 1;
	setAttr ".radi" 0.5;
createNode joint -n "LUpperLip2Jnt" -p "JawShiftJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.87896239757537842 3.8239085953216994 4.4307237153952794 1;
	setAttr ".radi" 0.5;
createNode joint -n "LLowerLip1Jnt" -p "JawShiftJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.43370148539543152 3.6000308883624585 4.5117599445913772 1;
	setAttr ".radi" 0.5;
createNode joint -n "LLowerLip2Jnt" -p "JawShiftJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.82565557956695557 3.6117086303668535 4.4300243336294631 1;
	setAttr ".radi" 0.5;
createNode joint -n "RCornerJnt" -p "JawShiftJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.21166 3.7272899999999991 4.2309099999999997 1;
	setAttr ".radi" 0.5;
createNode joint -n "RUpperLip1Jnt" -p "JawShiftJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.477072 3.8563499999999991 4.5410800000000009 1;
	setAttr ".radi" 0.5;
createNode joint -n "RUpperLip2Jnt" -p "JawShiftJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.87896200000000002 3.8239100000000006 4.43072 1;
	setAttr ".radi" 0.5;
createNode joint -n "RLowerLip1Jnt" -p "JawShiftJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.433701 3.6000299999999998 4.5117599999999998 1;
	setAttr ".radi" 0.5;
createNode joint -n "RLowerLip2Jnt" -p "JawShiftJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.82565599999999995 3.6117099999999991 4.4300200000000007 1;
	setAttr ".radi" 0.5;
createNode joint -n "MLowerLipHelperJnt" -p "JawShiftJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.3901154994964595 4.4691109657287598 1;
	setAttr ".radi" 0.5;
createNode joint -n "MUpperLipHelperJnt" -p "JawShiftJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 4.0899658203125 4.5796923637390146 1;
	setAttr ".radi" 0.5;
createNode joint -n "LUpperLipHelperJnt" -p "JawShiftJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.9693737030029298 4.0818991661071777 4.3959288597106942 1;
	setAttr ".radi" 0.5;
createNode joint -n "LLowerLipHelperJnt" -p "JawShiftJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.85301494598388672 3.4086754322052002 4.2707557678222656 1;
	setAttr ".radi" 0.5;
createNode joint -n "LCornerHelperJnt" -p "JawShiftJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.6155891418457031 3.7449901103973384 4.044743537902832 1;
	setAttr ".radi" 0.5;
createNode joint -n "RUpperLipHelperJnt" -p "JawShiftJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.96937399999999996 4.0819000000000001 4.3959299999999999 1;
	setAttr ".radi" 0.5;
createNode joint -n "RLowerLipHelperJnt" -p "JawShiftJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.85301499999999997 3.4086799999999999 4.2707600000000001 1;
	setAttr ".radi" 0.5;
createNode joint -n "RCornerHelperJnt" -p "JawShiftJnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.6155900000000001 3.74499 4.04474 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "HeadJnt_parentConstraint1" -p "HeadJnt";
	addAttr -ci true -k true -sn "w0" -ln "HeadCtrlW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "RootCtrl_ZeroGrp";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "RootCtrl" -p "RootCtrl_ZeroGrp";
	addAttr -ci true -sn "LMRightClickFunction" -ln "LMRightClickFunction" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".LMRightClickFunction" -type "string" "FaceRigMM";
createNode nurbsCurve -n "RootCtrlShape" -p "RootCtrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-3.6572153581093847 0 -3.6572153581093847
		-3.6572153581093847 0 3.6572153581093847
		3.6572153581093847 0 3.6572153581093847
		3.6572153581093847 0 -3.6572153581093847
		-3.6572153581093847 0 -3.6572153581093847
		;
createNode transform -n "NeckCtrl_ZeroGrp" -p "RootCtrl";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "NeckCtrl" -p "NeckCtrl_ZeroGrp";
	addAttr -ci true -sn "LMRightClickFunction" -ln "LMRightClickFunction" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".LMRightClickFunction" -type "string" "FaceRigMM";
createNode nurbsCurve -n "NeckCtrlShape" -p "NeckCtrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-2.9015579993953349 0 -2.9015579993953349
		-2.9015579993953349 0 2.9015579993953349
		2.9015579993953349 0 2.9015579993953349
		2.9015579993953349 0 -2.9015579993953349
		-2.9015579993953349 0 -2.9015579993953349
		;
createNode transform -n "HeadCtrl_ZeroGrp" -p "NeckCtrl";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0 2.6510792265591219 0.15941333770751953 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "HeadCtrl" -p "HeadCtrl_ZeroGrp";
	addAttr -ci true -sn "LMRightClickFunction" -ln "LMRightClickFunction" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".LMRightClickFunction" -type "string" "FaceRigMM";
createNode nurbsCurve -n "HeadCtrlShape" -p "HeadCtrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		0 12.209858117340511 0
		-1.4592762016710177 9.291305713998474 0
		1.4592762016710177 9.291305713998474 0
		0 12.209858117340511 0
		0 9.291305713998474 1.4592762016710183
		0 9.291305713998474 -1.4592762016710183
		0 12.209858117340511 0
		;
createNode transform -n "MouthControlGrp" -p "HeadCtrl";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 7 6.3489207734408781 -0.15941333770751953 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "Joystick_MouthSneerGrp" -p "MouthControlGrp";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.25 1.8629983289492096 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "JoystickFrame_MouthSneerGrp" -p "Joystick_MouthSneerGrp";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "JoystickFrame_MouthSneerGrpShape" -p "JoystickFrame_MouthSneerGrp";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-1 0.12984802018858746 0
		1 0.12984802018858746 0
		1 -0.12984802018858746 0
		-1 -0.12984802018858746 0
		-1 0.12984802018858746 0
		;
createNode transform -n "Joystick_MouthSneerCtrl" -p "JoystickFrame_MouthSneerGrp";
	addAttr -ci true -sn "LMRightClickFunction" -ln "LMRightClickFunction" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mntl" -type "double3" -1 0 0 ;
	setAttr ".mxtl" -type "double3" 1 0 0 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".LMRightClickFunction" -type "string" "FaceRigMM";
createNode nurbsCurve -n "Joystick_MouthSneerCtrlShape" -p "Joystick_MouthSneerCtrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.092593246640052959 0.23532297562767843 0
		-0.092593246640052959 -0.23532297562767843 0
		0.092593246640052959 -0.23532297562767843 0
		0.092593246640052959 0.23532297562767843 0
		-0.092593246640052959 0.23532297562767843 0
		;
createNode transform -n "Joystick_MouthEmotGrp" -p "MouthControlGrp";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.25 0.36299832894920936 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "JoystickFrame_MouthEmotGrp" -p "Joystick_MouthEmotGrp";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "JoystickFrame_MouthEmotGrpShape" -p "JoystickFrame_MouthEmotGrp";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-1 1 0
		-1 -1 0
		1 -1 0
		1 1 0
		-1 1 0
		;
createNode transform -n "Joystick_MouthEmotCtrl" -p "JoystickFrame_MouthEmotGrp";
	addAttr -ci true -sn "LMRightClickFunction" -ln "LMRightClickFunction" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mntl" -type "double3" -1 -1 0 ;
	setAttr ".mxtl" -type "double3" 1 1 0 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".LMRightClickFunction" -type "string" "FaceRigMM";
createNode nurbsCurve -n "Joystick_MouthEmotCtrlShape" -p "Joystick_MouthEmotCtrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 12 2 no 3
		17 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0.080108096439050522 0.13875129313006251 0
		-4.5417519334437866e-017 0.16021619287810071 0
		-0.0801080964390503 0.13875129313006265 0
		-0.13875129313006265 0.080108096439050383 0
		-0.16021619287810063 5.2691715145396296e-017 0
		-0.13875129313006271 -0.080108096439050314 0
		-0.080108096439050397 -0.13875129313006257 0
		-1.0113024555681811e-016 -0.16021619287810066 0
		0.080108096439050244 -0.13875129313006268 0
		0.1387512931300626 -0.080108096439050439 0
		0.16021619287810066 -1.5106533410860777e-016 0
		0.13875129313006271 0.08010809643905023 0
		0.080108096439050522 0.13875129313006251 0
		-4.5417519334437866e-017 0.16021619287810071 0
		-0.0801080964390503 0.13875129313006265 0
		;
createNode transform -n "Joystick_MouthGrp" -p "MouthControlGrp";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.25 0.36299832894920936 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "JoystickFrame_MouthGrp" -p "Joystick_MouthGrp";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "JoystickFrame_MouthGrpShape" -p "JoystickFrame_MouthGrp";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-1 1 0
		-1 -1 0
		1 -1 0
		1 1 0
		-1 1 0
		;
createNode transform -n "Joystick_MouthCtrl" -p "JoystickFrame_MouthGrp";
	addAttr -ci true -sn "LMRightClickFunction" -ln "LMRightClickFunction" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mntl" -type "double3" -1 -1 0 ;
	setAttr ".mxtl" -type "double3" 1 1 0 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".LMRightClickFunction" -type "string" "FaceRigMM";
createNode nurbsCurve -n "Joystick_MouthCtrlShape" -p "Joystick_MouthCtrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 12 2 no 3
		17 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0.080108096439050522 0.13875129313006251 0
		-4.5417519334437866e-017 0.16021619287810071 0
		-0.0801080964390503 0.13875129313006265 0
		-0.13875129313006265 0.080108096439050383 0
		-0.16021619287810063 5.2691715145396296e-017 0
		-0.13875129313006271 -0.080108096439050314 0
		-0.080108096439050397 -0.13875129313006257 0
		-1.0113024555681811e-016 -0.16021619287810066 0
		0.080108096439050244 -0.13875129313006268 0
		0.1387512931300626 -0.080108096439050439 0
		0.16021619287810066 -1.5106533410860777e-016 0
		0.13875129313006271 0.08010809643905023 0
		0.080108096439050522 0.13875129313006251 0
		-4.5417519334437866e-017 0.16021619287810071 0
		-0.0801080964390503 0.13875129313006265 0
		;
createNode transform -n "Joystick_MouthShiftGrp" -p "MouthControlGrp";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.25 -1.1370016710507906 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "JoystickFrame_MouthShiftGrp" -p "Joystick_MouthShiftGrp";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "JoystickFrame_MouthShiftGrpShape" -p "JoystickFrame_MouthShiftGrp";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-1 0 0
		-1 -1 0
		1 -1 0
		1 0 0
		-1 0 0
		;
createNode transform -n "Joystick_MouthShiftCtrl" -p "JoystickFrame_MouthShiftGrp";
	addAttr -ci true -sn "LMRightClickFunction" -ln "LMRightClickFunction" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mntl" -type "double3" -1 -1 0 ;
	setAttr ".mxtl" -type "double3" 1 0 0 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".LMRightClickFunction" -type "string" "FaceRigMM";
createNode nurbsCurve -n "Joystick_MouthShiftCtrlShape" -p "Joystick_MouthShiftCtrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 12 2 no 3
		17 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0.080108096439050522 0.13875129313006251 0
		-4.5417519334437866e-017 0.16021619287810071 0
		-0.0801080964390503 0.13875129313006265 0
		-0.13875129313006265 0.080108096439050383 0
		-0.16021619287810063 5.2691715145396296e-017 0
		-0.13875129313006271 -0.080108096439050314 0
		-0.080108096439050397 -0.13875129313006257 0
		-1.0113024555681811e-016 -0.16021619287810066 0
		0.080108096439050244 -0.13875129313006268 0
		0.1387512931300626 -0.080108096439050439 0
		0.16021619287810066 -1.5106533410860777e-016 0
		0.13875129313006271 0.08010809643905023 0
		0.080108096439050522 0.13875129313006251 0
		-4.5417519334437866e-017 0.16021619287810071 0
		-0.0801080964390503 0.13875129313006265 0
		;
createNode transform -n "BrowControlFrameGrp" -p "MouthControlGrp";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "BrowControlFrameGrpShape" -p "|RootCtrl_ZeroGrp|RootCtrl|NeckCtrl_ZeroGrp|NeckCtrl|HeadCtrl_ZeroGrp|HeadCtrl|MouthControlGrp|BrowControlFrameGrp";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-2.6461556843220726 2.5193115664166812 0
		2.6461556843220726 2.5193115664166812 0
		2.6461556843220726 -2.5193115664166812 0
		-2.6461556843220726 -2.5193115664166812 0
		-2.6461556843220726 2.5193115664166812 0
		;
createNode transform -n "Eye_ControlGrp" -p "HeadCtrl";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7 6.3489207734408781 -0.15941333770751953 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "BrowControlFrameGrp" -p "Eye_ControlGrp";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "BrowControlFrameGrpShape" -p "|RootCtrl_ZeroGrp|RootCtrl|NeckCtrl_ZeroGrp|NeckCtrl|HeadCtrl_ZeroGrp|HeadCtrl|Eye_ControlGrp|BrowControlFrameGrp";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-2.6461556843220726 2.5193115664166812 0
		2.6461556843220726 2.5193115664166812 0
		2.6461556843220726 -2.5193115664166812 0
		-2.6461556843220726 -2.5193115664166812 0
		-2.6461556843220726 2.5193115664166812 0
		;
createNode transform -n "JoystickGrp_LBrowGrp" -p "Eye_ControlGrp";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.25 1.25 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "JoystickFrame_LBrowGrp" -p "JoystickGrp_LBrowGrp";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "JoystickFrame_LBrowGrpShape" -p "JoystickFrame_LBrowGrp";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-1 1 0
		-1 -1 0
		1 -1 0
		1 1 0
		-1 1 0
		;
createNode transform -n "Joystick_LBrowCtrl" -p "JoystickFrame_LBrowGrp";
	addAttr -ci true -sn "LMRightClickFunction" -ln "LMRightClickFunction" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mntl" -type "double3" -1 -1 0 ;
	setAttr ".mxtl" -type "double3" 1 1 0 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".LMRightClickFunction" -type "string" "FaceRigMM";
createNode nurbsCurve -n "Joystick_LBrowCtrlShape" -p "Joystick_LBrowCtrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 12 2 no 3
		17 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0.080108096439050522 0.13875129313006251 0
		-4.5417519334437866e-017 0.16021619287810071 0
		-0.0801080964390503 0.13875129313006265 0
		-0.13875129313006265 0.080108096439050383 0
		-0.16021619287810063 5.2691715145396296e-017 0
		-0.13875129313006271 -0.080108096439050314 0
		-0.080108096439050397 -0.13875129313006257 0
		-1.0113024555681811e-016 -0.16021619287810066 0
		0.080108096439050244 -0.13875129313006268 0
		0.1387512931300626 -0.080108096439050439 0
		0.16021619287810066 -1.5106533410860777e-016 0
		0.13875129313006271 0.08010809643905023 0
		0.080108096439050522 0.13875129313006251 0
		-4.5417519334437866e-017 0.16021619287810071 0
		-0.0801080964390503 0.13875129313006265 0
		;
createNode transform -n "JoystickGrp_RBrowGrp" -p "Eye_ControlGrp";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.25 1.25 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "JoystickFrame_RBrowGrp" -p "JoystickGrp_RBrowGrp";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "JoystickFrame_RBrowGrpShape" -p "JoystickFrame_RBrowGrp";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-1 1 0
		-1 -1 0
		1 -1 0
		1 1 0
		-1 1 0
		;
createNode transform -n "Joystick_RBrowCtrl" -p "JoystickFrame_RBrowGrp";
	addAttr -ci true -sn "LMRightClickFunction" -ln "LMRightClickFunction" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mntl" -type "double3" -1 -1 0 ;
	setAttr ".mxtl" -type "double3" 1 1 0 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".LMRightClickFunction" -type "string" "FaceRigMM";
createNode nurbsCurve -n "Joystick_RBrowCtrlShape" -p "Joystick_RBrowCtrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 12 2 no 3
		17 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0.080108096439050522 0.13875129313006251 0
		-4.5417519334437866e-017 0.16021619287810071 0
		-0.0801080964390503 0.13875129313006265 0
		-0.13875129313006265 0.080108096439050383 0
		-0.16021619287810063 5.2691715145396296e-017 0
		-0.13875129313006271 -0.080108096439050314 0
		-0.080108096439050397 -0.13875129313006257 0
		-1.0113024555681811e-016 -0.16021619287810066 0
		0.080108096439050244 -0.13875129313006268 0
		0.1387512931300626 -0.080108096439050439 0
		0.16021619287810066 -1.5106533410860777e-016 0
		0.13875129313006271 0.08010809643905023 0
		0.080108096439050522 0.13875129313006251 0
		-4.5417519334437866e-017 0.16021619287810071 0
		-0.0801080964390503 0.13875129313006265 0
		;
createNode transform -n "JoystickGrp_LUpperEyeLidGrp" -p "Eye_ControlGrp";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.25 -1.25 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "JoystickFrame_LUpperEyeLidGrp" -p "JoystickGrp_LUpperEyeLidGrp";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "JoystickFrame_LUpperEyeLidGrpShape" -p "JoystickFrame_LUpperEyeLidGrp";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0.12984802018858729 1.0000000000000002 0
		0.12984802018858771 -1 0
		-0.12984802018858729 -1 0
		-0.12984802018858771 1.0000000000000002 0
		0.12984802018858729 1.0000000000000002 0
		;
createNode transform -n "Joystick_LUpperEyeLidCtrl" -p "JoystickFrame_LUpperEyeLidGrp";
	addAttr -ci true -sn "LMRightClickFunction" -ln "LMRightClickFunction" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mntl" -type "double3" -1 -1 0 ;
	setAttr ".mxtl" -type "double3" 1 1 0 ;
	setAttr ".mtye" yes;
	setAttr ".xtye" yes;
	setAttr ".LMRightClickFunction" -type "string" "FaceRigMM";
createNode nurbsCurve -n "Joystick_LUpperEyeLidCtrlShape" -p "Joystick_LUpperEyeLidCtrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0.23532297562767851 0.092593246640053056 0
		-0.23532297562767857 0.092593246640052945 0
		-0.23532297562767851 -0.092593246640053056 0
		0.23532297562767857 -0.092593246640052945 0
		0.23532297562767851 0.092593246640053056 0
		;
createNode transform -n "JoystickGrp_LLowerEyeLidGrp" -p "Eye_ControlGrp";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.5 -1.25 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "JoystickFrame_LLowerEyeLidGrp" -p "JoystickGrp_LLowerEyeLidGrp";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "JoystickFrame_LLowerEyeLidGrpShape" -p "JoystickFrame_LLowerEyeLidGrp";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0.12984802018858729 1.0000000000000002 0
		0.12984802018858771 -1 0
		-0.12984802018858729 -1 0
		-0.12984802018858771 1.0000000000000002 0
		0.12984802018858729 1.0000000000000002 0
		;
createNode transform -n "Joystick_LLowerEyeLidCtrl" -p "JoystickFrame_LLowerEyeLidGrp";
	addAttr -ci true -sn "LMRightClickFunction" -ln "LMRightClickFunction" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mntl" -type "double3" -1 -1 0 ;
	setAttr ".mxtl" -type "double3" 1 1 0 ;
	setAttr ".mtye" yes;
	setAttr ".xtye" yes;
	setAttr ".LMRightClickFunction" -type "string" "FaceRigMM";
createNode nurbsCurve -n "Joystick_LLowerEyeLidCtrlShape" -p "Joystick_LLowerEyeLidCtrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0.23532297562767851 0.092593246640053056 0
		-0.23532297562767857 0.092593246640052945 0
		-0.23532297562767851 -0.092593246640053056 0
		0.23532297562767857 -0.092593246640052945 0
		0.23532297562767851 0.092593246640053056 0
		;
createNode transform -n "JoystickGrp_LEyesGrp" -p "Eye_ControlGrp";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0 -1.25 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "JoystickFrame_LEyesGrp" -p "JoystickGrp_LEyesGrp";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "JoystickFrame_LEyesGrpShape" -p "JoystickFrame_LEyesGrp";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-1 1 0
		-1 -1 0
		1 -1 0
		1 1 0
		-1 1 0
		;
createNode transform -n "Joystick_LEyesCtrl" -p "JoystickFrame_LEyesGrp";
	addAttr -ci true -sn "LMRightClickFunction" -ln "LMRightClickFunction" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mntl" -type "double3" -1 -1 0 ;
	setAttr ".mxtl" -type "double3" 1 1 0 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".LMRightClickFunction" -type "string" "FaceRigMM";
createNode nurbsCurve -n "Joystick_LEyesCtrlShape" -p "Joystick_LEyesCtrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 12 2 no 3
		17 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0.080108096439050522 0.13875129313006251 0
		-4.5417519334437866e-017 0.16021619287810071 0
		-0.0801080964390503 0.13875129313006265 0
		-0.13875129313006265 0.080108096439050383 0
		-0.16021619287810063 5.2691715145396296e-017 0
		-0.13875129313006271 -0.080108096439050314 0
		-0.080108096439050397 -0.13875129313006257 0
		-1.0113024555681811e-016 -0.16021619287810066 0
		0.080108096439050244 -0.13875129313006268 0
		0.1387512931300626 -0.080108096439050439 0
		0.16021619287810066 -1.5106533410860777e-016 0
		0.13875129313006271 0.08010809643905023 0
		0.080108096439050522 0.13875129313006251 0
		-4.5417519334437866e-017 0.16021619287810071 0
		-0.0801080964390503 0.13875129313006265 0
		;
createNode transform -n "JoystickGrp_RUpperEyeLidGrp" -p "Eye_ControlGrp";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.25 -1.25 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "JoystickFrame_RUpperEyeLidGrp" -p "JoystickGrp_RUpperEyeLidGrp";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "JoystickFrame_RUpperEyeLidGrpShape" -p "JoystickFrame_RUpperEyeLidGrp";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0.12984802018858729 1.0000000000000002 0
		0.12984802018858771 -1 0
		-0.12984802018858729 -1 0
		-0.12984802018858771 1.0000000000000002 0
		0.12984802018858729 1.0000000000000002 0
		;
createNode transform -n "Joystick_RUpperEyeLidCtrl" -p "JoystickFrame_RUpperEyeLidGrp";
	addAttr -ci true -sn "LMRightClickFunction" -ln "LMRightClickFunction" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mntl" -type "double3" -1 -1 0 ;
	setAttr ".mxtl" -type "double3" 1 1 0 ;
	setAttr ".mtye" yes;
	setAttr ".xtye" yes;
	setAttr ".LMRightClickFunction" -type "string" "FaceRigMM";
createNode nurbsCurve -n "Joystick_RUpperEyeLidCtrlShape" -p "Joystick_RUpperEyeLidCtrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0.23532297562767851 0.092593246640053056 0
		-0.23532297562767857 0.092593246640052945 0
		-0.23532297562767851 -0.092593246640053056 0
		0.23532297562767857 -0.092593246640052945 0
		0.23532297562767851 0.092593246640053056 0
		;
createNode transform -n "JoystickGrp_RLowerEyeLidGrp" -p "Eye_ControlGrp";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.5 -1.25 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "JoystickFrame_RLowerEyeLidGrp" -p "JoystickGrp_RLowerEyeLidGrp";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "JoystickFrame_RLowerEyeLidGrpShape" -p "JoystickFrame_RLowerEyeLidGrp";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0.12984802018858729 1.0000000000000002 0
		0.12984802018858771 -1 0
		-0.12984802018858729 -1 0
		-0.12984802018858771 1.0000000000000002 0
		0.12984802018858729 1.0000000000000002 0
		;
createNode transform -n "Joystick_RLowerEyeLidCtrl" -p "JoystickFrame_RLowerEyeLidGrp";
	addAttr -ci true -sn "LMRightClickFunction" -ln "LMRightClickFunction" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mntl" -type "double3" -1 -1 0 ;
	setAttr ".mxtl" -type "double3" 1 1 0 ;
	setAttr ".mtye" yes;
	setAttr ".xtye" yes;
	setAttr ".LMRightClickFunction" -type "string" "FaceRigMM";
createNode nurbsCurve -n "Joystick_RLowerEyeLidCtrlShape" -p "Joystick_RLowerEyeLidCtrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0.23532297562767851 0.092593246640053056 0
		-0.23532297562767857 0.092593246640052945 0
		-0.23532297562767851 -0.092593246640053056 0
		0.23532297562767857 -0.092593246640052945 0
		0.23532297562767851 0.092593246640053056 0
		;
createNode transform -n "LEarCtrl_ZeroGrp" -p "HeadCtrl";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.4573048726676103 2.2739954391217729 -0.26536447883836201 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 31.032145746331601 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "LEarCtrl" -p "LEarCtrl_ZeroGrp";
	addAttr -ci true -sn "LMRightClickFunction" -ln "LMRightClickFunction" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".LMRightClickFunction" -type "string" "FaceRigMM";
createNode nurbsCurve -n "LEarCtrlShape" -p "LEarCtrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.038054610840796893 1.5335176729481308 0
		2.0783269341791333 1.5335176729481308 0
		2.0783269341791333 -1.5335176729481308 0
		-0.038054610840796893 -1.5335176729481308 0
		-0.038054610840796893 1.5335176729481308 0
		;
createNode transform -n "REarCtrl_ZeroGrp" -p "HeadCtrl";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.4573048726676103 2.2739954391217729 -0.26536447883836201 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 180 -31.032006645207332 4.1209122413817924e-031 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "REarCtrl" -p "REarCtrl_ZeroGrp";
	addAttr -ci true -sn "LMRightClickFunction" -ln "LMRightClickFunction" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.4408920985006262e-016 -8.8817841970012523e-016 2.2204460492503131e-016 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 7.0622500768802582e-031 -3.1805546814635176e-015 -1.4124500153760516e-030 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".LMRightClickFunction" -type "string" "FaceRigMM";
createNode nurbsCurve -n "REarCtrlShape" -p "REarCtrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.038054610840796893 1.5335176729481308 0
		-2 1.5335176729481308 0
		-2 -1.5335176729481308 0
		-0.038054610840796893 -1.5335176729481308 0
		-0.038054610840796893 1.5335176729481308 0
		;
createNode transform -n "Meshes";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "LEyeMesh" -p "Meshes";
	setAttr -l on -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "LEyeMeshShape" -p "LEyeMesh";
	addAttr -ci true -sn "textureAnim" -ln "textureAnim" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "Fadeable" -ln "Fadeable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "Fadeable3DS" -ln "Fadeable3DS" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "NoMerge" -ln "NoMerge" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "NoRecvRtShadows" -ln "NoRecvRtShadows" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noQuad" -ln "noQuad" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noLightmapCast" -ln "noLightmapCast" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noLightmapRecv" -ln "noLightmapRecv" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "vtxLightmapOnly" -ln "vtxLightmapOnly" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "clipMesh" -ln "clipMesh" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "tessellate" -ln "tessellate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noRender" -ln "noRender" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "earlyAlpha" -ln "earlyAlpha" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "reflectWater" -ln "reflectWater" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "billboardX" -ln "billboardX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "billboardY" -ln "billboardY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "billboardZ" -ln "billboardZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "recvSilhouette" -ln "recvSilhouette" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "depthBias" -ln "depthBias" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "pvsNonOccluder" -ln "pvsNonOccluder" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".tessellate" yes;
createNode parentConstraint -n "LEyeMesh_parentConstraint1" -p "LEyeMesh";
	addAttr -ci true -k true -sn "w0" -ln "LEyeJntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 0 4.4408920985006262e-016 ;
	setAttr ".tg[0].tor" -type "double3" 0 5 0 ;
	setAttr ".lr" -type "double3" 0 5 0 ;
	setAttr ".rst" -type "double3" 1.3571937889825747 6.2774743325479854 2.1338703839812609 ;
	setAttr ".rsrr" -type "double3" 0 5 0 ;
	setAttr -k on ".w0";
createNode transform -n "REyeMesh" -p "Meshes";
	setAttr -l on -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "REyeMeshShape" -p "REyeMesh";
	addAttr -ci true -sn "textureAnim" -ln "textureAnim" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "Fadeable" -ln "Fadeable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "Fadeable3DS" -ln "Fadeable3DS" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "NoMerge" -ln "NoMerge" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "NoRecvRtShadows" -ln "NoRecvRtShadows" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noQuad" -ln "noQuad" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noLightmapCast" -ln "noLightmapCast" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noLightmapRecv" -ln "noLightmapRecv" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "vtxLightmapOnly" -ln "vtxLightmapOnly" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "clipMesh" -ln "clipMesh" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "tessellate" -ln "tessellate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noRender" -ln "noRender" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "earlyAlpha" -ln "earlyAlpha" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "reflectWater" -ln "reflectWater" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "billboardX" -ln "billboardX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "billboardY" -ln "billboardY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "billboardZ" -ln "billboardZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "recvSilhouette" -ln "recvSilhouette" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "depthBias" -ln "depthBias" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "pvsNonOccluder" -ln "pvsNonOccluder" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:379]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[380:399]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 439 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.050000001 0.050000001 0.050000001
		 0.1 0.050000001 0.15000001 0.050000001 0.2 0.050000001 0.25 0.050000001 0.30000001
		 0.050000001 0.35000002 0.050000001 0.40000004 0.050000001 0.45000005 0.050000001
		 0.50000006 0.050000001 0.55000007 0.050000001 0.60000008 0.050000001 0.6500001 0.050000001
		 0.70000011 0.050000001 0.75000012 0.050000001 0.80000013 0.050000001 0.85000014 0.050000001
		 0.90000015 0.050000001 0.95000017 0.050000001 1.000000119209 0.050000001 0 0.1 0.050000001
		 0.1 0.1 0.1 0.15000001 0.1 0.2 0.1 0.25 0.1 0.30000001 0.1 0.35000002 0.1 0.40000004
		 0.1 0.45000005 0.1 0.50000006 0.1 0.55000007 0.1 0.60000008 0.1 0.6500001 0.1 0.70000011
		 0.1 0.75000012 0.1 0.80000013 0.1 0.85000014 0.1 0.90000015 0.1 0.95000017 0.1 1.000000119209
		 0.1 0 0.15000001 0.050000001 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0 0.2 0.050000001 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0 0.25 0.050000001 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0 0.30000001 0.050000001 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001 0.95000017 0.30000001 1.000000119209
		 0.30000001 0 0.35000002 0.050000001 0.35000002 0.1 0.35000002 0.15000001 0.35000002
		 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004
		 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008
		 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013
		 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0 0.40000004 0.050000001 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0 0.45000005 0.050000001 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0 0.50000006 0.050000001 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0 0.55000007 0.050000001 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0 0.60000008 0.050000001 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008;
	setAttr ".uvst[0].uvsp[250:438]" 0.95000017 0.60000008 1.000000119209 0.60000008
		 0 0.6500001 0.050000001 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001
		 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005
		 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001
		 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014
		 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001 0 0.70000011
		 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011
		 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011
		 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011
		 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011
		 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209 0.70000011 0 0.75000012
		 0.050000001 0.75000012 0.1 0.75000012 0.15000001 0.75000012 0.2 0.75000012 0.25 0.75000012
		 0.30000001 0.75000012 0.35000002 0.75000012 0.40000004 0.75000012 0.45000005 0.75000012
		 0.50000006 0.75000012 0.55000007 0.75000012 0.60000008 0.75000012 0.6500001 0.75000012
		 0.70000011 0.75000012 0.75000012 0.75000012 0.80000013 0.75000012 0.85000014 0.75000012
		 0.90000015 0.75000012 0.95000017 0.75000012 1.000000119209 0.75000012 0 0.80000013
		 0.050000001 0.80000013 0.1 0.80000013 0.15000001 0.80000013 0.2 0.80000013 0.25 0.80000013
		 0.30000001 0.80000013 0.35000002 0.80000013 0.40000004 0.80000013 0.45000005 0.80000013
		 0.50000006 0.80000013 0.55000007 0.80000013 0.60000008 0.80000013 0.6500001 0.80000013
		 0.70000011 0.80000013 0.75000012 0.80000013 0.80000013 0.80000013 0.85000014 0.80000013
		 0.90000015 0.80000013 0.95000017 0.80000013 1.000000119209 0.80000013 0 0.85000014
		 0.050000001 0.85000014 0.1 0.85000014 0.15000001 0.85000014 0.2 0.85000014 0.25 0.85000014
		 0.30000001 0.85000014 0.35000002 0.85000014 0.40000004 0.85000014 0.45000005 0.85000014
		 0.50000006 0.85000014 0.55000007 0.85000014 0.60000008 0.85000014 0.6500001 0.85000014
		 0.70000011 0.85000014 0.75000012 0.85000014 0.80000013 0.85000014 0.85000014 0.85000014
		 0.90000015 0.85000014 0.95000017 0.85000014 1.000000119209 0.85000014 0 0.90000015
		 0.050000001 0.90000015 0.1 0.90000015 0.15000001 0.90000015 0.2 0.90000015 0.25 0.90000015
		 0.30000001 0.90000015 0.35000002 0.90000015 0.40000004 0.90000015 0.45000005 0.90000015
		 0.50000006 0.90000015 0.55000007 0.90000015 0.60000008 0.90000015 0.6500001 0.90000015
		 0.70000011 0.90000015 0.75000012 0.90000015 0.80000013 0.90000015 0.85000014 0.90000015
		 0.90000015 0.90000015 0.95000017 0.90000015 1.000000119209 0.90000015 0 0.95000017
		 0.050000001 0.95000017 0.1 0.95000017 0.15000001 0.95000017 0.2 0.95000017 0.25 0.95000017
		 0.30000001 0.95000017 0.35000002 0.95000017 0.40000004 0.95000017 0.45000005 0.95000017
		 0.50000006 0.95000017 0.55000007 0.95000017 0.60000008 0.95000017 0.6500001 0.95000017
		 0.70000011 0.95000017 0.75000012 0.95000017 0.80000013 0.95000017 0.85000014 0.95000017
		 0.90000015 0.95000017 0.95000017 0.95000017 1.000000119209 0.95000017 0.025 0 0.075000003
		 0 0.125 0 0.175 0 0.22500001 0 0.27500001 0 0.32500002 0 0.375 0 0.42500001 0 0.47499999
		 0 0.52500004 0 0.57499999 0 0.625 0 0.67500001 0 0.72500002 0 0.77500004 0 0.82499999
		 0 0.875 0 0.92500001 0 0.97500002 0 0.025 1 0.075000003 1 0.125 1 0.175 1 0.22500001
		 1 0.27500001 1 0.32500002 1 0.375 1 0.42500001 1 0.47499999 1 0.52500004 1 0.57499999
		 1 0.625 1 0.67500001 1 0.72500002 1 0.77500004 1 0.82499999 1 0.875 1 0.92500001
		 1 0.97500002 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 382 ".vt";
	setAttr ".vt[0:165]"  0.24105436 0.079473525 -1.60022283 0.20505308 0.15012999 -1.60017204
		 0.14897978 0.20620328 -1.60013175 0.078323297 0.24220452 -1.60010588 0 0.2546097 -1.60009694
		 -0.078323297 0.2422045 -1.60010588 -0.14897974 0.20620324 -1.60013175 -0.205053 0.15012994 -1.60017204
		 -0.24105425 0.079473503 -1.60022283 -0.25345945 0.0011502444 -1.60027909 -0.24105425 -0.077173017 -1.60033536
		 -0.205053 -0.14782943 -1.60038614 -0.14897972 -0.20390269 -1.60042644 -0.078323275 -0.23990393 -1.6004523
		 -7.5536786e-009 -0.25230908 -1.60046124 0.078323252 -0.23990391 -1.6004523 0.14897968 -0.20390266 -1.60042644
		 0.20505296 -0.14782943 -1.60038614 0.24105421 -0.077172995 -1.60033536 0.25345939 0.0011502444 -1.60027909
		 0.4761731 0.15582557 -1.54081595 0.40505704 0.29539865 -1.54071569 0.29429117 0.40616447 -1.54063606
		 0.15471801 0.47728053 -1.54058492 0 0.5017854 -1.54056728 -0.15471801 0.47728047 -1.54058492
		 -0.29429108 0.40616444 -1.54063606 -0.40505692 0.29539856 -1.54071569 -0.47617292 0.15582551 -1.54081595
		 -0.50067788 0.0011075836 -1.54092717 -0.47617292 -0.15361033 -1.54103839 -0.40505686 -0.29318342 -1.54113865
		 -0.29429105 -0.4039492 -1.54121828 -0.15471795 -0.4750652 -1.54126942 -1.4921358e-008 -0.49957007 -1.54128706
		 0.15471791 -0.47506514 -1.54126942 0.29429099 -0.40394914 -1.54121828 0.40505677 -0.29318336 -1.54113865
		 0.47617283 -0.1536103 -1.54103839 0.5006777 0.0011075836 -1.54092717 0.6995669 0.22834067 -1.44346917
		 0.59508717 0.43339369 -1.44332182 0.43235612 0.59612465 -1.44320488 0.22730304 0.70060432 -1.44312978
		 0 0.73660558 -1.44310391 -0.22730304 0.70060426 -1.44312978 -0.43235603 0.59612453 -1.44320488
		 -0.59508693 0.43339354 -1.44332182 -0.69956666 0.22834058 -1.44346917 -0.73556793 0.0010376505 -1.4436326
		 -0.69956666 -0.22626527 -1.44379604 -0.59508687 -0.43131819 -1.44394338 -0.43235594 -0.59404904 -1.44406033
		 -0.22730297 -0.69852877 -1.44413543 -2.1921625e-008 -0.73452997 -1.4441613 0.22730291 -0.69852871 -1.44413543
		 0.43235585 -0.59404904 -1.44406033 0.59508681 -0.43131813 -1.44394338 0.69956648 -0.22626522 -1.44379604
		 0.73556769 0.0010376505 -1.4436326 0.90573508 0.29523325 -1.31057954 0.7704643 0.56071705 -1.31038868
		 0.55977499 0.77140617 -1.31023717 0.29429111 0.90667689 -1.31014001 0 0.95328796 -1.31010652
		 -0.29429111 0.90667689 -1.31014001 -0.55977494 0.77140605 -1.31023717 -0.77046394 0.56071687 -1.31038868
		 -0.90573472 0.29523313 -1.31057954 -0.95234573 0.00094216689 -1.31079102 -0.90573472 -0.29334879 -1.31100249
		 -0.77046394 -0.55883247 -1.31119335 -0.55977476 -0.76952153 -1.31134486 -0.29429102 -0.90479225 -1.31144202
		 -2.8382109e-008 -0.95140326 -1.31147552 0.29429096 -0.90479213 -1.31144202 0.5597747 -0.76952147 -1.31134486
		 0.77046376 -0.55883241 -1.31119335 0.90573442 -0.29334873 -1.31100249 0.95234555 0.00094216689 -1.31079102
		 1.08960104 0.35485622 -1.14541876 0.92686999 0.67423373 -1.14518929 0.67341042 0.92769319 -1.14500701
		 0.35403275 1.090424061 -1.14489007 0 1.14649725 -1.14484978 -0.35403275 1.090424061 -1.14489007
		 -0.67341024 0.92769295 -1.14500701 -0.92686963 0.6742335 -1.14518929 -1.089600563 0.35485607 -1.14541876
		 -1.14567375 0.00082348398 -1.14567327 -1.089600563 -0.35320908 -1.14592779 -0.92686951 -0.6725865 -1.14615726
		 -0.67341012 -0.92604578 -1.14633954 -0.35403267 -1.088776708 -1.14645648 -3.4143731e-008 -1.14484978 -1.14649677
		 0.35403255 -1.088776588 -1.14645648 0.67341 -0.92604572 -1.14633954 0.92686933 -0.67258638 -1.14615726
		 1.089600205 -0.35320902 -1.14592779 1.14567351 0.00082348398 -1.14567327 1.24663734 0.40574142 -0.9520542
		 1.060453057 0.77114856 -0.95179158 0.77046424 1.061137199 -0.95158315 0.40505701 1.24732149 -0.95144933
		 0 1.31147611 -0.9514032 -0.40505701 1.24732137 -0.95144933 -0.77046406 1.06113708 -0.95158315
		 -1.0604527 0.77114832 -0.95179158 -1.24663687 0.4057413 -0.9520542 -1.31079149 0.0006845243 -0.95234537
		 -1.24663687 -0.40437225 -0.95263654 -1.06045258 -0.76977926 -0.95289916 -0.77046394 -1.059767842 -0.9531076
		 -0.40505686 -1.24595201 -0.95324141 -3.9064624e-008 -1.31010664 -0.95328754 0.40505672 -1.24595189 -0.95324141
		 0.77046376 -1.059767842 -0.9531076 1.060452461 -0.76977915 -0.95289916 1.24663663 -0.40437216 -0.95263654
		 1.31079125 0.0006845243 -0.95234537 1.3729775 0.44663602 -0.7352469 1.16792428 0.8490752 -0.73495764
		 0.84854668 1.16845274 -0.7347281 0.44610736 1.37350571 -0.7345807 0 1.44416201 -0.73452991
		 -0.44610736 1.37350559 -0.7345807 -0.8485465 1.1684525 -0.7347281 -1.16792393 0.8490749 -0.73495764
		 -1.3729769 0.44663584 -0.7352469 -1.44363332 0.00052870932 -0.73556757 -1.3729769 -0.4455784 -0.73588824
		 -1.16792393 -0.84801745 -0.7361775 -0.84854633 -1.16739488 -0.73640704 -0.44610721 -1.37244773 -0.73655444
		 -4.3023615e-008 -1.44310415 -0.73660523 0.44610709 -1.37244761 -0.73655444 0.84854615 -1.16739476 -0.73640704
		 1.16792357 -0.84801733 -0.7361775 1.37297654 -0.44557831 -0.73588824 1.44363296 0.00052870932 -0.73556757
		 1.46551013 0.47653288 -0.50033528 1.24663746 0.90609467 -0.50002652 0.90573502 1.246997 -0.49978146
		 0.47617307 1.46586955 -0.49962416 0 1.5412879 -0.49956995 -0.47617307 1.46586943 -0.49962416
		 -0.90573484 1.24699664 -0.49978146 -1.24663699 0.90609443 -0.50002652 -1.46550965 0.47653267 -0.50033528
		 -1.54092789 0.0003598757 -0.50067753 -1.46550965 -0.47581294 -0.50101978 -1.24663687 -0.90537453 -0.50132853
		 -0.9057346 -1.24627662 -0.50157356 -0.47617292 -1.46514916 -0.50173092 -4.5923219e-008 -1.54056752 -0.5017851
		 0.47617278 -1.46514916 -0.50173092 0.90573442 -1.2462765 -0.50157356 1.24663663 -0.90537441 -0.50132853
		 1.4655093 -0.47581285 -0.50101978 1.54092753 0.0003598757 -0.50067753 1.52195728 0.4946959 -0.2531037
		 1.29465425 0.94080311 -0.25278306 0.9406212 1.29483593 -0.25252858 0.49451381 1.52213883 -0.2523652
		 0 1.60046196 -0.25230891 -0.49451381 1.52213871 -0.2523652;
	setAttr ".vt[166:331]" -0.94062102 1.29483569 -0.25252858 -1.29465377 0.94080287 -0.25278306
		 -1.52195668 0.49469572 -0.2531037 -1.60027981 0.00018218069 -0.25345916 -1.52195668 -0.49433136 -0.25381461
		 -1.29465365 -0.94043845 -0.25413525 -0.94062084 -1.29447114 -0.25438973 -0.49451366 -1.52177405 -0.25455311
		 -4.7692044e-008 -1.60009718 -0.25460941 0.49451351 -1.52177393 -0.25455311 0.94062066 -1.29447103 -0.25438973
		 1.29465342 -0.94043839 -0.25413525 1.52195632 -0.49433127 -0.25381461 1.60027945 0.00018218069 -0.25345916
		 1.54092848 0.50067788 0.00035987594 1.31079209 0.95234591 0.00068452465 0.95234615 1.31079173 0.00094216742
		 0.50067794 1.54092801 0.0011075841 0 1.62022746 0.0011645828 -0.50067794 1.54092789 0.0011075841
		 -0.95234597 1.31079137 0.00094216719 -1.31079161 0.95234561 0.00068452448 -1.54092789 0.5006777 0.00035987579
		 -1.62022746 0 0 -1.54092789 -0.5006777 -0.00035987579 -1.31079149 -0.95234555 -0.00068452442
		 -0.95234573 -1.31079113 -0.00094216701 -0.50067782 -1.54092741 -0.0011075838 -4.828653e-008 -1.62022686 -0.0011645824
		 0.50067765 -1.54092729 -0.0011075836 0.95234555 -1.31079102 -0.00094216695 1.31079125 -0.95234543 -0.00068452436
		 1.54092753 -0.50067759 -0.00035987573 1.6202271 0 0 1.52195728 0.49433154 0.25381461
		 1.29465425 0.94043881 0.25413525 0.9406212 1.29447162 0.25438973 0.49451381 1.52177453 0.25455311
		 0 1.60009766 0.25460941 -0.49451381 1.52177441 0.25455311 -0.94062102 1.29447138 0.25438973
		 -1.29465377 0.94043857 0.25413525 -1.52195668 0.49433136 0.25381461 -1.60027981 -0.00018218069 0.25345916
		 -1.52195668 -0.49469572 0.2531037 -1.29465365 -0.94080275 0.25278306 -0.94062084 -1.29483545 0.25252858
		 -0.49451366 -1.52213836 0.2523652 -4.7692044e-008 -1.60046148 0.25230891 0.49451351 -1.52213824 0.2523652
		 0.94062066 -1.29483533 0.25252858 1.29465342 -0.94080269 0.25278306 1.52195632 -0.49469563 0.2531037
		 1.60027945 -0.00018218069 0.25345916 1.46551013 0.47581315 0.50101978 1.24663746 0.90537488 0.50132853
		 0.90573502 1.24627721 0.50157356 0.47617307 1.46514976 0.50173092 0 1.54056811 0.5017851
		 -0.47617307 1.46514964 0.50173092 -0.90573484 1.24627686 0.50157356 -1.24663699 0.90537465 0.50132853
		 -1.46550965 0.47581294 0.50101978 -1.54092789 -0.0003598757 0.50067753 -1.46550965 -0.47653267 0.50033528
		 -1.24663687 -0.90609431 0.50002652 -0.9057346 -1.2469964 0.49978146 -0.47617292 -1.46586895 0.49962416
		 -4.5923219e-008 -1.5412873 0.49956995 0.47617278 -1.46586895 0.49962416 0.90573442 -1.24699628 0.49978146
		 1.24663663 -0.90609419 0.50002652 1.4655093 -0.47653258 0.50033528 1.54092753 -0.0003598757 0.50067753
		 1.3729775 0.44557858 0.73588824 1.16792428 0.84801781 0.7361775 0.84854668 1.16739535 0.73640704
		 0.44610736 1.37244833 0.73655444 0 1.44310462 0.73660523 -0.44610736 1.37244821 0.73655444
		 -0.8485465 1.16739511 0.73640704 -1.16792393 0.84801751 0.7361775 -1.3729769 0.4455784 0.73588824
		 -1.44363332 -0.00052870932 0.73556757 -1.3729769 -0.44663584 0.7352469 -1.16792393 -0.84907484 0.73495764
		 -0.84854633 -1.16845226 0.7347281 -0.44610721 -1.37350512 0.7345807 -4.3023615e-008 -1.44416153 0.73452991
		 0.44610709 -1.373505 0.7345807 0.84854615 -1.16845214 0.7347281 1.16792357 -0.84907472 0.73495764
		 1.37297654 -0.44663575 0.7352469 1.44363296 -0.00052870932 0.73556757 1.24663734 0.40437236 0.95263654
		 1.060453057 0.76977956 0.95289916 0.77046424 1.0597682 0.9531076 0.40505701 1.24595249 0.95324141
		 0 1.31010711 0.95328754 -0.40505701 1.24595237 0.95324141 -0.77046406 1.059768081 0.9531076
		 -1.0604527 0.76977932 0.95289916 -1.24663687 0.40437225 0.95263654 -1.31079149 -0.0006845243 0.95234537
		 -1.24663687 -0.4057413 0.9520542 -1.06045258 -0.77114826 0.95179158 -0.77046394 -1.061136842 0.95158315
		 -0.40505686 -1.24732101 0.95144933 -3.9064624e-008 -1.31147563 0.9514032 0.40505672 -1.24732089 0.95144933
		 0.77046376 -1.061136842 0.95158315 1.060452461 -0.77114815 0.95179158 1.24663663 -0.40574121 0.9520542
		 1.31079125 -0.0006845243 0.95234537 1.08960104 0.35320923 1.14592779 0.92686999 0.67258674 1.14615726
		 0.67341042 0.92604619 1.14633954 0.35403275 1.088777065 1.14645648 0 1.14485025 1.14649677
		 -0.35403275 1.088777065 1.14645648 -0.67341024 0.92604595 1.14633954 -0.92686963 0.6725865 1.14615726
		 -1.089600563 0.35320908 1.14592779 -1.14567375 -0.00082348398 1.14567327 -1.089600563 -0.35485607 1.14541876
		 -0.92686951 -0.6742335 1.14518929 -0.67341012 -0.92769277 1.14500701 -0.35403267 -1.090423703 1.14489007
		 -3.4143731e-008 -1.14649677 1.14484978 0.35403255 -1.090423584 1.14489007 0.67341 -0.92769271 1.14500701
		 0.92686933 -0.67423338 1.14518929 1.089600205 -0.35485601 1.14541876 1.14567351 -0.00082348398 1.14567327
		 0.90573508 0.29334891 1.31100249 0.7704643 0.55883271 1.31119335 0.55977499 0.76952183 1.31134486
		 0.29429111 0.90479255 1.31144202 0 0.95140362 1.31147552 -0.29429111 0.90479255 1.31144202
		 -0.55977494 0.76952171 1.31134486 -0.77046394 0.55883253 1.31119335 -0.90573472 0.29334879 1.31100249
		 -0.95234573 -0.00094216689 1.31079102 -0.90573472 -0.29523313 1.31057954 -0.77046394 -0.56071681 1.31038868
		 -0.55977476 -0.77140588 1.31023717 -0.29429102 -0.90667659 1.31014001 -2.8382109e-008 -0.9532876 1.31010652
		 0.29429096 -0.90667647 1.31014001 0.5597747 -0.77140582 1.31023717 0.77046376 -0.56071675 1.31038868
		 0.90573442 -0.29523307 1.31057954 0.95234555 -0.00094216689 1.31079102 0.6995669 0.22626536 1.44379604
		 0.59508717 0.43131837 1.44394338 0.43235612 0.59404933 1.44406033 0.22730304 0.69852901 1.44413543
		 0 0.73453027 1.4441613 -0.22730304 0.69852895 1.44413543 -0.43235603 0.59404922 1.44406033
		 -0.59508693 0.43131822 1.44394338 -0.69956666 0.22626527 1.44379604 -0.73556793 -0.0010376505 1.4436326
		 -0.69956666 -0.22834058 1.44346917 -0.59508687 -0.43339351 1.44332182;
	setAttr ".vt[332:381]" -0.43235594 -0.59612435 1.44320488 -0.22730297 -0.70060408 1.44312978
		 -2.1921625e-008 -0.73660529 1.44310391 0.22730291 -0.70060402 1.44312978 0.43235585 -0.59612435 1.44320488
		 0.59508681 -0.43339345 1.44332182 0.69956648 -0.22834054 1.44346917 0.73556769 -0.0010376505 1.4436326
		 0.4761731 0.15361039 1.54103839 0.40505704 0.29318351 1.54113865 0.29429117 0.40394932 1.54121828
		 0.15471801 0.47506538 1.54126942 0 0.49957025 1.54128706 -0.15471801 0.47506532 1.54126942
		 -0.29429108 0.40394929 1.54121828 -0.40505692 0.29318342 1.54113865 -0.47617292 0.15361033 1.54103839
		 -0.50067788 -0.0011075836 1.54092717 -0.47617292 -0.15582551 1.54081595 -0.40505686 -0.29539856 1.54071569
		 -0.29429105 -0.40616435 1.54063606 -0.15471795 -0.47728035 1.54058492 -1.4921358e-008 -0.50178522 1.54056728
		 0.15471791 -0.47728029 1.54058492 0.29429099 -0.40616429 1.54063606 0.40505677 -0.2953985 1.54071569
		 0.47617283 -0.15582548 1.54081595 0.5006777 -0.0011075836 1.54092717 0.24105436 0.077173039 1.60033536
		 0.20505308 0.14782949 1.60038614 0.14897978 0.20390278 1.60042644 0.078323297 0.23990402 1.6004523
		 0 0.2523092 1.60046124 -0.078323297 0.239904 1.6004523 -0.14897974 0.20390274 1.60042644
		 -0.205053 0.14782944 1.60038614 -0.24105425 0.077173017 1.60033536 -0.25345945 -0.0011502444 1.60027909
		 -0.24105425 -0.079473503 1.60022283 -0.205053 -0.15012993 1.60017204 -0.14897972 -0.20620319 1.60013175
		 -0.078323275 -0.24220443 1.60010588 -7.5536786e-009 -0.25460958 1.60009694 0.078323252 -0.24220441 1.60010588
		 0.14897968 -0.20620316 1.60013175 0.20505296 -0.15012993 1.60017204 0.24105421 -0.079473481 1.60022283
		 0.25345939 -0.0011502444 1.60027909 0 0.0011645823 -1.62022674 0 -0.0011645823 1.62022674;
	setAttr -s 780 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 0 20 1 1 21 1 2 22 1
		 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1
		 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1
		 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1
		 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1
		 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1;
	setAttr ".ed[498:663]" 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1
		 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1
		 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1
		 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1
		 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1
		 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1
		 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1
		 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1
		 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1
		 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1
		 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1
		 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1
		 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1
		 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1;
	setAttr ".ed[664:779]" 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1
		 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1
		 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1
		 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1
		 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1
		 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1
		 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1
		 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1
		 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 380 0 1 380 1 1
		 380 2 1 380 3 1 380 4 1 380 5 1 380 6 1 380 7 1 380 8 1 380 9 1 380 10 1 380 11 1
		 380 12 1 380 13 1 380 14 1 380 15 1 380 16 1 380 17 1 380 18 1 380 19 1 360 381 1
		 361 381 1 362 381 1 363 381 1 364 381 1 365 381 1 366 381 1 367 381 1 368 381 1 369 381 1
		 370 381 1 371 381 1 372 381 1 373 381 1 374 381 1 375 381 1 376 381 1 377 381 1 378 381 1
		 379 381 1;
	setAttr -s 400 -ch 1560 ".fc[0:399]" -type "polyFaces" 
		f 4 0 381 -21 -381
		mu 0 4 0 1 22 21
		f 4 1 382 -22 -382
		mu 0 4 1 2 23 22
		f 4 2 383 -23 -383
		mu 0 4 2 3 24 23
		f 4 3 384 -24 -384
		mu 0 4 3 4 25 24
		f 4 4 385 -25 -385
		mu 0 4 4 5 26 25
		f 4 5 386 -26 -386
		mu 0 4 5 6 27 26
		f 4 6 387 -27 -387
		mu 0 4 6 7 28 27
		f 4 7 388 -28 -388
		mu 0 4 7 8 29 28
		f 4 8 389 -29 -389
		mu 0 4 8 9 30 29
		f 4 9 390 -30 -390
		mu 0 4 9 10 31 30
		f 4 10 391 -31 -391
		mu 0 4 10 11 32 31
		f 4 11 392 -32 -392
		mu 0 4 11 12 33 32
		f 4 12 393 -33 -393
		mu 0 4 12 13 34 33
		f 4 13 394 -34 -394
		mu 0 4 13 14 35 34
		f 4 14 395 -35 -395
		mu 0 4 14 15 36 35
		f 4 15 396 -36 -396
		mu 0 4 15 16 37 36
		f 4 16 397 -37 -397
		mu 0 4 16 17 38 37
		f 4 17 398 -38 -398
		mu 0 4 17 18 39 38
		f 4 18 399 -39 -399
		mu 0 4 18 19 40 39
		f 4 19 380 -40 -400
		mu 0 4 19 20 41 40
		f 4 20 401 -41 -401
		mu 0 4 21 22 43 42
		f 4 21 402 -42 -402
		mu 0 4 22 23 44 43
		f 4 22 403 -43 -403
		mu 0 4 23 24 45 44
		f 4 23 404 -44 -404
		mu 0 4 24 25 46 45
		f 4 24 405 -45 -405
		mu 0 4 25 26 47 46
		f 4 25 406 -46 -406
		mu 0 4 26 27 48 47
		f 4 26 407 -47 -407
		mu 0 4 27 28 49 48
		f 4 27 408 -48 -408
		mu 0 4 28 29 50 49
		f 4 28 409 -49 -409
		mu 0 4 29 30 51 50
		f 4 29 410 -50 -410
		mu 0 4 30 31 52 51
		f 4 30 411 -51 -411
		mu 0 4 31 32 53 52
		f 4 31 412 -52 -412
		mu 0 4 32 33 54 53
		f 4 32 413 -53 -413
		mu 0 4 33 34 55 54
		f 4 33 414 -54 -414
		mu 0 4 34 35 56 55
		f 4 34 415 -55 -415
		mu 0 4 35 36 57 56
		f 4 35 416 -56 -416
		mu 0 4 36 37 58 57
		f 4 36 417 -57 -417
		mu 0 4 37 38 59 58
		f 4 37 418 -58 -418
		mu 0 4 38 39 60 59
		f 4 38 419 -59 -419
		mu 0 4 39 40 61 60
		f 4 39 400 -60 -420
		mu 0 4 40 41 62 61
		f 4 40 421 -61 -421
		mu 0 4 42 43 64 63
		f 4 41 422 -62 -422
		mu 0 4 43 44 65 64
		f 4 42 423 -63 -423
		mu 0 4 44 45 66 65
		f 4 43 424 -64 -424
		mu 0 4 45 46 67 66
		f 4 44 425 -65 -425
		mu 0 4 46 47 68 67
		f 4 45 426 -66 -426
		mu 0 4 47 48 69 68
		f 4 46 427 -67 -427
		mu 0 4 48 49 70 69
		f 4 47 428 -68 -428
		mu 0 4 49 50 71 70
		f 4 48 429 -69 -429
		mu 0 4 50 51 72 71
		f 4 49 430 -70 -430
		mu 0 4 51 52 73 72
		f 4 50 431 -71 -431
		mu 0 4 52 53 74 73
		f 4 51 432 -72 -432
		mu 0 4 53 54 75 74
		f 4 52 433 -73 -433
		mu 0 4 54 55 76 75
		f 4 53 434 -74 -434
		mu 0 4 55 56 77 76
		f 4 54 435 -75 -435
		mu 0 4 56 57 78 77
		f 4 55 436 -76 -436
		mu 0 4 57 58 79 78
		f 4 56 437 -77 -437
		mu 0 4 58 59 80 79
		f 4 57 438 -78 -438
		mu 0 4 59 60 81 80
		f 4 58 439 -79 -439
		mu 0 4 60 61 82 81
		f 4 59 420 -80 -440
		mu 0 4 61 62 83 82
		f 4 60 441 -81 -441
		mu 0 4 63 64 85 84
		f 4 61 442 -82 -442
		mu 0 4 64 65 86 85
		f 4 62 443 -83 -443
		mu 0 4 65 66 87 86
		f 4 63 444 -84 -444
		mu 0 4 66 67 88 87
		f 4 64 445 -85 -445
		mu 0 4 67 68 89 88
		f 4 65 446 -86 -446
		mu 0 4 68 69 90 89
		f 4 66 447 -87 -447
		mu 0 4 69 70 91 90
		f 4 67 448 -88 -448
		mu 0 4 70 71 92 91
		f 4 68 449 -89 -449
		mu 0 4 71 72 93 92
		f 4 69 450 -90 -450
		mu 0 4 72 73 94 93
		f 4 70 451 -91 -451
		mu 0 4 73 74 95 94
		f 4 71 452 -92 -452
		mu 0 4 74 75 96 95
		f 4 72 453 -93 -453
		mu 0 4 75 76 97 96
		f 4 73 454 -94 -454
		mu 0 4 76 77 98 97
		f 4 74 455 -95 -455
		mu 0 4 77 78 99 98
		f 4 75 456 -96 -456
		mu 0 4 78 79 100 99
		f 4 76 457 -97 -457
		mu 0 4 79 80 101 100
		f 4 77 458 -98 -458
		mu 0 4 80 81 102 101
		f 4 78 459 -99 -459
		mu 0 4 81 82 103 102
		f 4 79 440 -100 -460
		mu 0 4 82 83 104 103
		f 4 80 461 -101 -461
		mu 0 4 84 85 106 105
		f 4 81 462 -102 -462
		mu 0 4 85 86 107 106
		f 4 82 463 -103 -463
		mu 0 4 86 87 108 107
		f 4 83 464 -104 -464
		mu 0 4 87 88 109 108
		f 4 84 465 -105 -465
		mu 0 4 88 89 110 109
		f 4 85 466 -106 -466
		mu 0 4 89 90 111 110
		f 4 86 467 -107 -467
		mu 0 4 90 91 112 111
		f 4 87 468 -108 -468
		mu 0 4 91 92 113 112
		f 4 88 469 -109 -469
		mu 0 4 92 93 114 113
		f 4 89 470 -110 -470
		mu 0 4 93 94 115 114
		f 4 90 471 -111 -471
		mu 0 4 94 95 116 115
		f 4 91 472 -112 -472
		mu 0 4 95 96 117 116
		f 4 92 473 -113 -473
		mu 0 4 96 97 118 117
		f 4 93 474 -114 -474
		mu 0 4 97 98 119 118
		f 4 94 475 -115 -475
		mu 0 4 98 99 120 119
		f 4 95 476 -116 -476
		mu 0 4 99 100 121 120
		f 4 96 477 -117 -477
		mu 0 4 100 101 122 121
		f 4 97 478 -118 -478
		mu 0 4 101 102 123 122
		f 4 98 479 -119 -479
		mu 0 4 102 103 124 123
		f 4 99 460 -120 -480
		mu 0 4 103 104 125 124
		f 4 100 481 -121 -481
		mu 0 4 105 106 127 126
		f 4 101 482 -122 -482
		mu 0 4 106 107 128 127
		f 4 102 483 -123 -483
		mu 0 4 107 108 129 128
		f 4 103 484 -124 -484
		mu 0 4 108 109 130 129
		f 4 104 485 -125 -485
		mu 0 4 109 110 131 130
		f 4 105 486 -126 -486
		mu 0 4 110 111 132 131
		f 4 106 487 -127 -487
		mu 0 4 111 112 133 132
		f 4 107 488 -128 -488
		mu 0 4 112 113 134 133
		f 4 108 489 -129 -489
		mu 0 4 113 114 135 134
		f 4 109 490 -130 -490
		mu 0 4 114 115 136 135
		f 4 110 491 -131 -491
		mu 0 4 115 116 137 136
		f 4 111 492 -132 -492
		mu 0 4 116 117 138 137
		f 4 112 493 -133 -493
		mu 0 4 117 118 139 138
		f 4 113 494 -134 -494
		mu 0 4 118 119 140 139
		f 4 114 495 -135 -495
		mu 0 4 119 120 141 140
		f 4 115 496 -136 -496
		mu 0 4 120 121 142 141
		f 4 116 497 -137 -497
		mu 0 4 121 122 143 142
		f 4 117 498 -138 -498
		mu 0 4 122 123 144 143
		f 4 118 499 -139 -499
		mu 0 4 123 124 145 144
		f 4 119 480 -140 -500
		mu 0 4 124 125 146 145
		f 4 120 501 -141 -501
		mu 0 4 126 127 148 147
		f 4 121 502 -142 -502
		mu 0 4 127 128 149 148
		f 4 122 503 -143 -503
		mu 0 4 128 129 150 149
		f 4 123 504 -144 -504
		mu 0 4 129 130 151 150
		f 4 124 505 -145 -505
		mu 0 4 130 131 152 151
		f 4 125 506 -146 -506
		mu 0 4 131 132 153 152
		f 4 126 507 -147 -507
		mu 0 4 132 133 154 153
		f 4 127 508 -148 -508
		mu 0 4 133 134 155 154
		f 4 128 509 -149 -509
		mu 0 4 134 135 156 155
		f 4 129 510 -150 -510
		mu 0 4 135 136 157 156
		f 4 130 511 -151 -511
		mu 0 4 136 137 158 157
		f 4 131 512 -152 -512
		mu 0 4 137 138 159 158
		f 4 132 513 -153 -513
		mu 0 4 138 139 160 159
		f 4 133 514 -154 -514
		mu 0 4 139 140 161 160
		f 4 134 515 -155 -515
		mu 0 4 140 141 162 161
		f 4 135 516 -156 -516
		mu 0 4 141 142 163 162
		f 4 136 517 -157 -517
		mu 0 4 142 143 164 163
		f 4 137 518 -158 -518
		mu 0 4 143 144 165 164
		f 4 138 519 -159 -519
		mu 0 4 144 145 166 165
		f 4 139 500 -160 -520
		mu 0 4 145 146 167 166
		f 4 140 521 -161 -521
		mu 0 4 147 148 169 168
		f 4 141 522 -162 -522
		mu 0 4 148 149 170 169
		f 4 142 523 -163 -523
		mu 0 4 149 150 171 170
		f 4 143 524 -164 -524
		mu 0 4 150 151 172 171
		f 4 144 525 -165 -525
		mu 0 4 151 152 173 172
		f 4 145 526 -166 -526
		mu 0 4 152 153 174 173
		f 4 146 527 -167 -527
		mu 0 4 153 154 175 174
		f 4 147 528 -168 -528
		mu 0 4 154 155 176 175
		f 4 148 529 -169 -529
		mu 0 4 155 156 177 176
		f 4 149 530 -170 -530
		mu 0 4 156 157 178 177
		f 4 150 531 -171 -531
		mu 0 4 157 158 179 178
		f 4 151 532 -172 -532
		mu 0 4 158 159 180 179
		f 4 152 533 -173 -533
		mu 0 4 159 160 181 180
		f 4 153 534 -174 -534
		mu 0 4 160 161 182 181
		f 4 154 535 -175 -535
		mu 0 4 161 162 183 182
		f 4 155 536 -176 -536
		mu 0 4 162 163 184 183
		f 4 156 537 -177 -537
		mu 0 4 163 164 185 184
		f 4 157 538 -178 -538
		mu 0 4 164 165 186 185
		f 4 158 539 -179 -539
		mu 0 4 165 166 187 186
		f 4 159 520 -180 -540
		mu 0 4 166 167 188 187
		f 4 160 541 -181 -541
		mu 0 4 168 169 190 189
		f 4 161 542 -182 -542
		mu 0 4 169 170 191 190
		f 4 162 543 -183 -543
		mu 0 4 170 171 192 191
		f 4 163 544 -184 -544
		mu 0 4 171 172 193 192
		f 4 164 545 -185 -545
		mu 0 4 172 173 194 193
		f 4 165 546 -186 -546
		mu 0 4 173 174 195 194
		f 4 166 547 -187 -547
		mu 0 4 174 175 196 195
		f 4 167 548 -188 -548
		mu 0 4 175 176 197 196
		f 4 168 549 -189 -549
		mu 0 4 176 177 198 197
		f 4 169 550 -190 -550
		mu 0 4 177 178 199 198
		f 4 170 551 -191 -551
		mu 0 4 178 179 200 199
		f 4 171 552 -192 -552
		mu 0 4 179 180 201 200
		f 4 172 553 -193 -553
		mu 0 4 180 181 202 201
		f 4 173 554 -194 -554
		mu 0 4 181 182 203 202
		f 4 174 555 -195 -555
		mu 0 4 182 183 204 203
		f 4 175 556 -196 -556
		mu 0 4 183 184 205 204
		f 4 176 557 -197 -557
		mu 0 4 184 185 206 205
		f 4 177 558 -198 -558
		mu 0 4 185 186 207 206
		f 4 178 559 -199 -559
		mu 0 4 186 187 208 207
		f 4 179 540 -200 -560
		mu 0 4 187 188 209 208
		f 4 180 561 -201 -561
		mu 0 4 189 190 211 210
		f 4 181 562 -202 -562
		mu 0 4 190 191 212 211
		f 4 182 563 -203 -563
		mu 0 4 191 192 213 212
		f 4 183 564 -204 -564
		mu 0 4 192 193 214 213
		f 4 184 565 -205 -565
		mu 0 4 193 194 215 214
		f 4 185 566 -206 -566
		mu 0 4 194 195 216 215
		f 4 186 567 -207 -567
		mu 0 4 195 196 217 216
		f 4 187 568 -208 -568
		mu 0 4 196 197 218 217
		f 4 188 569 -209 -569
		mu 0 4 197 198 219 218
		f 4 189 570 -210 -570
		mu 0 4 198 199 220 219
		f 4 190 571 -211 -571
		mu 0 4 199 200 221 220
		f 4 191 572 -212 -572
		mu 0 4 200 201 222 221
		f 4 192 573 -213 -573
		mu 0 4 201 202 223 222
		f 4 193 574 -214 -574
		mu 0 4 202 203 224 223
		f 4 194 575 -215 -575
		mu 0 4 203 204 225 224
		f 4 195 576 -216 -576
		mu 0 4 204 205 226 225
		f 4 196 577 -217 -577
		mu 0 4 205 206 227 226
		f 4 197 578 -218 -578
		mu 0 4 206 207 228 227
		f 4 198 579 -219 -579
		mu 0 4 207 208 229 228
		f 4 199 560 -220 -580
		mu 0 4 208 209 230 229
		f 4 200 581 -221 -581
		mu 0 4 210 211 232 231
		f 4 201 582 -222 -582
		mu 0 4 211 212 233 232
		f 4 202 583 -223 -583
		mu 0 4 212 213 234 233
		f 4 203 584 -224 -584
		mu 0 4 213 214 235 234
		f 4 204 585 -225 -585
		mu 0 4 214 215 236 235
		f 4 205 586 -226 -586
		mu 0 4 215 216 237 236
		f 4 206 587 -227 -587
		mu 0 4 216 217 238 237
		f 4 207 588 -228 -588
		mu 0 4 217 218 239 238
		f 4 208 589 -229 -589
		mu 0 4 218 219 240 239
		f 4 209 590 -230 -590
		mu 0 4 219 220 241 240
		f 4 210 591 -231 -591
		mu 0 4 220 221 242 241
		f 4 211 592 -232 -592
		mu 0 4 221 222 243 242
		f 4 212 593 -233 -593
		mu 0 4 222 223 244 243
		f 4 213 594 -234 -594
		mu 0 4 223 224 245 244
		f 4 214 595 -235 -595
		mu 0 4 224 225 246 245
		f 4 215 596 -236 -596
		mu 0 4 225 226 247 246
		f 4 216 597 -237 -597
		mu 0 4 226 227 248 247
		f 4 217 598 -238 -598
		mu 0 4 227 228 249 248
		f 4 218 599 -239 -599
		mu 0 4 228 229 250 249
		f 4 219 580 -240 -600
		mu 0 4 229 230 251 250
		f 4 220 601 -241 -601
		mu 0 4 231 232 253 252
		f 4 221 602 -242 -602
		mu 0 4 232 233 254 253
		f 4 222 603 -243 -603
		mu 0 4 233 234 255 254
		f 4 223 604 -244 -604
		mu 0 4 234 235 256 255
		f 4 224 605 -245 -605
		mu 0 4 235 236 257 256
		f 4 225 606 -246 -606
		mu 0 4 236 237 258 257
		f 4 226 607 -247 -607
		mu 0 4 237 238 259 258
		f 4 227 608 -248 -608
		mu 0 4 238 239 260 259
		f 4 228 609 -249 -609
		mu 0 4 239 240 261 260
		f 4 229 610 -250 -610
		mu 0 4 240 241 262 261
		f 4 230 611 -251 -611
		mu 0 4 241 242 263 262
		f 4 231 612 -252 -612
		mu 0 4 242 243 264 263
		f 4 232 613 -253 -613
		mu 0 4 243 244 265 264
		f 4 233 614 -254 -614
		mu 0 4 244 245 266 265
		f 4 234 615 -255 -615
		mu 0 4 245 246 267 266
		f 4 235 616 -256 -616
		mu 0 4 246 247 268 267
		f 4 236 617 -257 -617
		mu 0 4 247 248 269 268
		f 4 237 618 -258 -618
		mu 0 4 248 249 270 269
		f 4 238 619 -259 -619
		mu 0 4 249 250 271 270
		f 4 239 600 -260 -620
		mu 0 4 250 251 272 271
		f 4 240 621 -261 -621
		mu 0 4 252 253 274 273
		f 4 241 622 -262 -622
		mu 0 4 253 254 275 274
		f 4 242 623 -263 -623
		mu 0 4 254 255 276 275
		f 4 243 624 -264 -624
		mu 0 4 255 256 277 276
		f 4 244 625 -265 -625
		mu 0 4 256 257 278 277
		f 4 245 626 -266 -626
		mu 0 4 257 258 279 278
		f 4 246 627 -267 -627
		mu 0 4 258 259 280 279
		f 4 247 628 -268 -628
		mu 0 4 259 260 281 280
		f 4 248 629 -269 -629
		mu 0 4 260 261 282 281
		f 4 249 630 -270 -630
		mu 0 4 261 262 283 282
		f 4 250 631 -271 -631
		mu 0 4 262 263 284 283
		f 4 251 632 -272 -632
		mu 0 4 263 264 285 284
		f 4 252 633 -273 -633
		mu 0 4 264 265 286 285
		f 4 253 634 -274 -634
		mu 0 4 265 266 287 286
		f 4 254 635 -275 -635
		mu 0 4 266 267 288 287
		f 4 255 636 -276 -636
		mu 0 4 267 268 289 288
		f 4 256 637 -277 -637
		mu 0 4 268 269 290 289
		f 4 257 638 -278 -638
		mu 0 4 269 270 291 290
		f 4 258 639 -279 -639
		mu 0 4 270 271 292 291
		f 4 259 620 -280 -640
		mu 0 4 271 272 293 292
		f 4 260 641 -281 -641
		mu 0 4 273 274 295 294
		f 4 261 642 -282 -642
		mu 0 4 274 275 296 295
		f 4 262 643 -283 -643
		mu 0 4 275 276 297 296
		f 4 263 644 -284 -644
		mu 0 4 276 277 298 297
		f 4 264 645 -285 -645
		mu 0 4 277 278 299 298
		f 4 265 646 -286 -646
		mu 0 4 278 279 300 299
		f 4 266 647 -287 -647
		mu 0 4 279 280 301 300
		f 4 267 648 -288 -648
		mu 0 4 280 281 302 301
		f 4 268 649 -289 -649
		mu 0 4 281 282 303 302
		f 4 269 650 -290 -650
		mu 0 4 282 283 304 303
		f 4 270 651 -291 -651
		mu 0 4 283 284 305 304
		f 4 271 652 -292 -652
		mu 0 4 284 285 306 305
		f 4 272 653 -293 -653
		mu 0 4 285 286 307 306
		f 4 273 654 -294 -654
		mu 0 4 286 287 308 307
		f 4 274 655 -295 -655
		mu 0 4 287 288 309 308
		f 4 275 656 -296 -656
		mu 0 4 288 289 310 309
		f 4 276 657 -297 -657
		mu 0 4 289 290 311 310
		f 4 277 658 -298 -658
		mu 0 4 290 291 312 311
		f 4 278 659 -299 -659
		mu 0 4 291 292 313 312
		f 4 279 640 -300 -660
		mu 0 4 292 293 314 313
		f 4 280 661 -301 -661
		mu 0 4 294 295 316 315
		f 4 281 662 -302 -662
		mu 0 4 295 296 317 316
		f 4 282 663 -303 -663
		mu 0 4 296 297 318 317
		f 4 283 664 -304 -664
		mu 0 4 297 298 319 318
		f 4 284 665 -305 -665
		mu 0 4 298 299 320 319
		f 4 285 666 -306 -666
		mu 0 4 299 300 321 320
		f 4 286 667 -307 -667
		mu 0 4 300 301 322 321
		f 4 287 668 -308 -668
		mu 0 4 301 302 323 322
		f 4 288 669 -309 -669
		mu 0 4 302 303 324 323
		f 4 289 670 -310 -670
		mu 0 4 303 304 325 324
		f 4 290 671 -311 -671
		mu 0 4 304 305 326 325
		f 4 291 672 -312 -672
		mu 0 4 305 306 327 326
		f 4 292 673 -313 -673
		mu 0 4 306 307 328 327
		f 4 293 674 -314 -674
		mu 0 4 307 308 329 328
		f 4 294 675 -315 -675
		mu 0 4 308 309 330 329
		f 4 295 676 -316 -676
		mu 0 4 309 310 331 330
		f 4 296 677 -317 -677
		mu 0 4 310 311 332 331
		f 4 297 678 -318 -678
		mu 0 4 311 312 333 332
		f 4 298 679 -319 -679
		mu 0 4 312 313 334 333
		f 4 299 660 -320 -680
		mu 0 4 313 314 335 334
		f 4 300 681 -321 -681
		mu 0 4 315 316 337 336
		f 4 301 682 -322 -682
		mu 0 4 316 317 338 337
		f 4 302 683 -323 -683
		mu 0 4 317 318 339 338
		f 4 303 684 -324 -684
		mu 0 4 318 319 340 339
		f 4 304 685 -325 -685
		mu 0 4 319 320 341 340
		f 4 305 686 -326 -686
		mu 0 4 320 321 342 341
		f 4 306 687 -327 -687
		mu 0 4 321 322 343 342
		f 4 307 688 -328 -688
		mu 0 4 322 323 344 343
		f 4 308 689 -329 -689
		mu 0 4 323 324 345 344
		f 4 309 690 -330 -690
		mu 0 4 324 325 346 345
		f 4 310 691 -331 -691
		mu 0 4 325 326 347 346
		f 4 311 692 -332 -692
		mu 0 4 326 327 348 347
		f 4 312 693 -333 -693
		mu 0 4 327 328 349 348
		f 4 313 694 -334 -694
		mu 0 4 328 329 350 349
		f 4 314 695 -335 -695
		mu 0 4 329 330 351 350
		f 4 315 696 -336 -696
		mu 0 4 330 331 352 351
		f 4 316 697 -337 -697
		mu 0 4 331 332 353 352
		f 4 317 698 -338 -698
		mu 0 4 332 333 354 353
		f 4 318 699 -339 -699
		mu 0 4 333 334 355 354
		f 4 319 680 -340 -700
		mu 0 4 334 335 356 355
		f 4 320 701 -341 -701
		mu 0 4 336 337 358 357
		f 4 321 702 -342 -702
		mu 0 4 337 338 359 358
		f 4 322 703 -343 -703
		mu 0 4 338 339 360 359
		f 4 323 704 -344 -704
		mu 0 4 339 340 361 360
		f 4 324 705 -345 -705
		mu 0 4 340 341 362 361
		f 4 325 706 -346 -706
		mu 0 4 341 342 363 362
		f 4 326 707 -347 -707
		mu 0 4 342 343 364 363
		f 4 327 708 -348 -708
		mu 0 4 343 344 365 364
		f 4 328 709 -349 -709
		mu 0 4 344 345 366 365
		f 4 329 710 -350 -710
		mu 0 4 345 346 367 366
		f 4 330 711 -351 -711
		mu 0 4 346 347 368 367
		f 4 331 712 -352 -712
		mu 0 4 347 348 369 368
		f 4 332 713 -353 -713
		mu 0 4 348 349 370 369
		f 4 333 714 -354 -714
		mu 0 4 349 350 371 370
		f 4 334 715 -355 -715
		mu 0 4 350 351 372 371
		f 4 335 716 -356 -716
		mu 0 4 351 352 373 372
		f 4 336 717 -357 -717
		mu 0 4 352 353 374 373
		f 4 337 718 -358 -718
		mu 0 4 353 354 375 374
		f 4 338 719 -359 -719
		mu 0 4 354 355 376 375
		f 4 339 700 -360 -720
		mu 0 4 355 356 377 376
		f 4 340 721 -361 -721
		mu 0 4 357 358 379 378
		f 4 341 722 -362 -722
		mu 0 4 358 359 380 379
		f 4 342 723 -363 -723
		mu 0 4 359 360 381 380
		f 4 343 724 -364 -724
		mu 0 4 360 361 382 381
		f 4 344 725 -365 -725
		mu 0 4 361 362 383 382
		f 4 345 726 -366 -726
		mu 0 4 362 363 384 383
		f 4 346 727 -367 -727
		mu 0 4 363 364 385 384
		f 4 347 728 -368 -728
		mu 0 4 364 365 386 385
		f 4 348 729 -369 -729
		mu 0 4 365 366 387 386
		f 4 349 730 -370 -730
		mu 0 4 366 367 388 387
		f 4 350 731 -371 -731
		mu 0 4 367 368 389 388
		f 4 351 732 -372 -732
		mu 0 4 368 369 390 389
		f 4 352 733 -373 -733
		mu 0 4 369 370 391 390
		f 4 353 734 -374 -734
		mu 0 4 370 371 392 391
		f 4 354 735 -375 -735
		mu 0 4 371 372 393 392
		f 4 355 736 -376 -736
		mu 0 4 372 373 394 393
		f 4 356 737 -377 -737
		mu 0 4 373 374 395 394
		f 4 357 738 -378 -738
		mu 0 4 374 375 396 395
		f 4 358 739 -379 -739
		mu 0 4 375 376 397 396
		f 4 359 720 -380 -740
		mu 0 4 376 377 398 397
		f 3 -1 -741 741
		mu 0 3 1 0 399
		f 3 -2 -742 742
		mu 0 3 2 1 400
		f 3 -3 -743 743
		mu 0 3 3 2 401
		f 3 -4 -744 744
		mu 0 3 4 3 402
		f 3 -5 -745 745
		mu 0 3 5 4 403
		f 3 -6 -746 746
		mu 0 3 6 5 404
		f 3 -7 -747 747
		mu 0 3 7 6 405
		f 3 -8 -748 748
		mu 0 3 8 7 406
		f 3 -9 -749 749
		mu 0 3 9 8 407
		f 3 -10 -750 750
		mu 0 3 10 9 408
		f 3 -11 -751 751
		mu 0 3 11 10 409
		f 3 -12 -752 752
		mu 0 3 12 11 410
		f 3 -13 -753 753
		mu 0 3 13 12 411
		f 3 -14 -754 754
		mu 0 3 14 13 412
		f 3 -15 -755 755
		mu 0 3 15 14 413
		f 3 -16 -756 756
		mu 0 3 16 15 414
		f 3 -17 -757 757
		mu 0 3 17 16 415
		f 3 -18 -758 758
		mu 0 3 18 17 416
		f 3 -19 -759 759
		mu 0 3 19 18 417
		f 3 -20 -760 740
		mu 0 3 20 19 418
		f 3 360 761 -761
		mu 0 3 378 379 419
		f 3 361 762 -762
		mu 0 3 379 380 420
		f 3 362 763 -763
		mu 0 3 380 381 421
		f 3 363 764 -764
		mu 0 3 381 382 422
		f 3 364 765 -765
		mu 0 3 382 383 423
		f 3 365 766 -766
		mu 0 3 383 384 424
		f 3 366 767 -767
		mu 0 3 384 385 425
		f 3 367 768 -768
		mu 0 3 385 386 426
		f 3 368 769 -769
		mu 0 3 386 387 427
		f 3 369 770 -770
		mu 0 3 387 388 428
		f 3 370 771 -771
		mu 0 3 388 389 429
		f 3 371 772 -772
		mu 0 3 389 390 430
		f 3 372 773 -773
		mu 0 3 390 391 431
		f 3 373 774 -774
		mu 0 3 391 392 432
		f 3 374 775 -775
		mu 0 3 392 393 433
		f 3 375 776 -776
		mu 0 3 393 394 434
		f 3 376 777 -777
		mu 0 3 394 395 435
		f 3 377 778 -778
		mu 0 3 395 396 436
		f 3 378 779 -779
		mu 0 3 396 397 437
		f 3 379 760 -780
		mu 0 3 397 398 438;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".tessellate" yes;
createNode parentConstraint -n "REyeMesh_parentConstraint1" -p "REyeMesh";
	addAttr -ci true -k true -sn "w0" -ln "REyeJntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.00019378898257471633 0 4.4408920985006262e-016 ;
	setAttr ".tg[0].tor" -type "double3" 0 -5 0 ;
	setAttr ".lr" -type "double3" 0 -5 0 ;
	setAttr ".rst" -type "double3" -1.357 6.2774743325479854 2.1338703839812609 ;
	setAttr ".rsrr" -type "double3" 0 -5 0 ;
	setAttr -k on ".w0";
createNode transform -n "FaceMesh_LowRes" -p "Meshes";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FaceMesh_LowResShape" -p "FaceMesh_LowRes";
	addAttr -ci true -sn "textureAnim" -ln "textureAnim" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "Fadeable" -ln "Fadeable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "Fadeable3DS" -ln "Fadeable3DS" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "NoMerge" -ln "NoMerge" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "NoRecvRtShadows" -ln "NoRecvRtShadows" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noQuad" -ln "noQuad" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noLightmapCast" -ln "noLightmapCast" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noLightmapRecv" -ln "noLightmapRecv" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "vtxLightmapOnly" -ln "vtxLightmapOnly" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "clipMesh" -ln "clipMesh" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "tessellate" -ln "tessellate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noRender" -ln "noRender" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "earlyAlpha" -ln "earlyAlpha" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "reflectWater" -ln "reflectWater" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "billboardX" -ln "billboardX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "billboardY" -ln "billboardY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "billboardZ" -ln "billboardZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "recvSilhouette" -ln "recvSilhouette" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "depthBias" -ln "depthBias" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "pvsNonOccluder" -ln "pvsNonOccluder" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".tessellate" yes;
createNode mesh -n "FaceMesh_LowResShape69Orig" -p "FaceMesh_LowRes";
	addAttr -ci true -sn "textureAnim" -ln "textureAnim" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "Fadeable" -ln "Fadeable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "Fadeable3DS" -ln "Fadeable3DS" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "NoMerge" -ln "NoMerge" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "NoRecvRtShadows" -ln "NoRecvRtShadows" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noQuad" -ln "noQuad" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noLightmapCast" -ln "noLightmapCast" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noLightmapRecv" -ln "noLightmapRecv" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "vtxLightmapOnly" -ln "vtxLightmapOnly" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "clipMesh" -ln "clipMesh" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "tessellate" -ln "tessellate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noRender" -ln "noRender" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "earlyAlpha" -ln "earlyAlpha" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "reflectWater" -ln "reflectWater" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "billboardX" -ln "billboardX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "billboardY" -ln "billboardY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "billboardZ" -ln "billboardZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "recvSilhouette" -ln "recvSilhouette" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "depthBias" -ln "depthBias" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "pvsNonOccluder" -ln "pvsNonOccluder" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1616 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.99999994 4.5941797e-017 0.35083941
		 0.29972672 0 2.4624571e-015 0.8392598 0 0.5 0.5 0.5625 0.5 0.5625 0.5625 0.5 0.5625
		 0.5 0.625 0.5625 0.625 0.5625 0.75 0.5 0.75 0.5625 0.90625 0.5 0.90625 0.5 0.80761719
		 0.5625 0.80761719 0.5625 0.75 0.5 0.75 0.5 0.79296875 0.5625 0.79296875 0.5625 0.7734375
		 0.5 0.7734375 0.625 0.625 0.625 0.75 0.625 0.75 0.625 0.625 0.59147894 0.25 0.5842607
		 0.19164625 0.625 0.1875 0.625 0.25 0.50372946 0.4217537 0.53750002 0.42500001 0.55278003
		 0.44235998 0.50621581 0.43208945 0.5 0.44062501 0.52362013 0.45693994 0.5 0.46875
		 0.53767884 0.42508942 0.50335652 0.42020333 0.5 0.40625 0.55254406 0.35157561 0.52627206
		 0.34766281 0.54463071 0.21144374 0.56017643 0.28130251 0.53008819 0.26565126 0.52231538
		 0.19947186 0.625 0.125 0.57704246 0.13329248 0.57704246 0.13329248 0.625 0.125 0.52908498
		 0.14158496 0.51454246 0.13329248 0.51454246 0.13329248 0.52908498 0.14158496 0.5
		 0 0.5625 0 0.5625 0 0.5 0 0.625 0 0.59375 0.5 0.59375 0.5625 0.59375 0.625 0.59375
		 0.75 0.59375 0.75 0.59375 0.7734375 0.59375 0.80761719 0.59375 0.79296875 0.59375
		 0.90625 0.59375 0 0.59375 0 0.5 0.5 0.625 0.5 0.625 0.5625 0.625 0.5625 0.875 0.125
		 0.8515625 0 0.875 0 0.554515 0.4414925 0.53125 0.421875 0.55624998 0.44062501 0.85430574
		 0.24953243 0.8515625 0.1875 0.875 0.1875 0.5 0.46875 0.53056008 0.45346999 0.53750002
		 0.45000002 0.5 0.46875 0.81738281 0.25 0.71875 0.25 0.71875 0.1875 0.83203125 0.25
		 0.53056008 0.45346996 0.53750002 0.44999999 0.18449152 0.16289964 0.70128953 0.62899667
		 0.0059892558 0.5 0.3427361 0.32561141 1 0.32561141 0.98048192 0 0 0.38864788 0.087128699
		 0.25 0.20991451 0.22187769 0.2817995 0.40391099 0.1742574 0.5 0.625 0.7734375 0.625
		 0.79296875 0.625 0.80761719 0.625 0.90625 0.17802426 0.62040687 0.21038637 0.49081379
		 0.32366464 0.48162761 0.49151018 0.96325523 0.25873005 0.64464366 0.019451927 0.69315451
		 0.054465402 0.27726173 0.19421621 1 0.14566216 0.75 0.15981323 0.39333999 0.23974186
		 0.24081381 0.10924008 0.29586619 0.048554052 0.25 0.012138513 0.0625 0.15581907 0
		 0 1.0846302e-017 0.12132855 2.7115754e-018 0.55866641 0.3125 0.58849472 0.34375 0.55795789
		 0.25 0.5435214 0.19579248 0.55508816 0.32815126 0.52754408 0.32032561 0.625 0.34375
		 0.59375 1 0.625 1 0.5625 1 0.5 1 0.5 0.34375 0.5 0.3125 0.5 0.25 0.5 0.1875 0.5 0.125
		 0.5 0.125 0 0 0.45085955 0.71821523 0.1537426 0.75 0.31453627 1.093406e-016 0.30736145
		 0.99286556 0.1754197 0.14986336 0.91962987 2.2970898e-017 0.765625 0.25 0.765625
		 0.1875 0.625 0.859375 0.59375 0.859375 0.5625 0.859375 0.5 0.859375 0.7550773 1.7422155e-016
		 1 0.44610393 0.1165926 0.6371426 0.52279556 8.4738296e-008 0 0.35541818 0.80594867
		 1.478035e-016 1 0.23621063 0 0.14913437 0.78133589 2.0500973e-017 1 0 0.76943612
		 0.41101053 0 0.38516578 0.17437348 0 0.33799282 0 0.38645291 0.80274057 0.40758741
		 0.72244143 0.2613861 0.75 0.19420531 0.5556103 0.52181375 0.13743871 0.52181375 0.13743871
		 0.53347301 0.20545781 0.54513228 0.2734769 0.54131615 0.32423842 0.53940809 0.34961921
		 0.20627856 0 0.99999994 2.021788e-016 0.63367128 0.36320004 0.50497264 0.42692158
		 0.54514003 0.43368 0.5428825 0.43168375 0.10313928 0.24019639 0.54062498 0.4296875
		 0.076871298 0.375 0.81683564 0.18160002 0.39476094 0.35910761 0.16941342 0.9892984
		 0.15726814 1.640109e-016 0.30230108 0.73410761 0.23581612 0.36705381 0 0.17770909
		 0.34858453 4.2369148e-008 0.16899641 0.074567184 0.90297437 0.11810531 0.55381608
		 0.33986342 0.54036212 0.33692881 0.52690804 0.33399421 0.5 0.328125 0.10043941 0.98751485
		 0.078634068 1.9134604e-016 0.22802183 0.74205381 0.15634371 0.3710269 0 0.088854544
		 0.43569005 6.3553721e-008 0.084498204 0.11185078 0.95148718 0.17715797 0.55445212
		 0.33400732 0.54083914 0.33058363 0.52722609 0.32715991 0.5 0.3203125 0.609375 0.5
		 0.609375 0.5625 0.609375 0.625 0.609375 0.75 0.609375 0.75 0.609375 0.7734375 0.609375
		 0.79296875 0.609375 0.80761719 0.609375 0.859375 0.609375 0.90625 0.609375 0 0.609375
		 1 0.609375 0 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1;
	setAttr ".uvst[0].uvsp[250:499]" 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0.5 0.21875
		 0.52620178 0.23256156 0.53930265 0.23946735 0.55073965 0.22289625 0.55240357 0.24637312
		 0.58786982 0.22082312 0.625 0.21875 0.71875 0.21875 0.765625 0.21875 0.81738281 0.21875
		 0.83203125 0.21875 0.8515625 0.21875 0.625 0.53125 0.875 0.21875 0.625 0.53125 0.609375
		 0.53125 0.59375 0.53125 0.5625 0.53125 0.5 0.53125 0.625 0.23749998 0.625 0.51875001
		 0.8515625 0.23124999 0.81738281 0.23125 0.765625 0.23125 0.83203125 0.23125 0.71875
		 0.23125 0.578125 0.5 0.578125 0.53125 0.578125 0.5625 0.578125 0.625 0.578125 0.75
		 0.578125 0.75 0.578125 0.7734375 0.578125 0.79296875 0.578125 0.80761719 0.578125
		 0.859375 0.578125 0.90625 0.578125 0 0.578125 1 0.578125 0 0.625 0.5 0.625 0.50000006
		 0.625 0.5074811 0.61540639 0.34832752 0.73728645 0.54762185 0.93134022 0.46925607
		 0.875 0.23124999 0.87350839 0.24625944 0 1.3006358e-016 0.74883252 0.066270187 0.75443149
		 1.3914083e-009 0.073797219 0.065159857 0.73317468 0.2515986 0.55521339 0.32319695
		 0.49502045 0.29806635 0.49287969 0.084502697 0.609375 0.5 0.609375 0.5 0.31983015
		 0.32752293 0.59375 0.5 0.59375 0.5 0.578125 0.5 0.51620376 0.47285178 0.44639337
		 0.43085673 0.28843823 0.37984276 0.56249994 0.49999997 0.83990955 0.079459317 0.88298094
		 3.7016377e-016 0.71654963 -2.0761938e-008 0.65422046 0.10087771 0.69914514 2.8564863e-016
		 0.50726342 1.9743446e-016 0.56575978 0.44275117 0.49813911 0.46366826 0.47651803
		 0.45545232 0.42868549 0.44133151 0.3592861 0.41090468 0.90625763 3.8086482e-016 0.89430106
		 0.052737154 0.74592876 0.10063949 0.52873313 0.089174449 0.74296427 0.13572611 0.88298094
		 3.7016377e-016 0.71654963 -2.0761938e-008 0.65422046 0.10087771 0.83990955 0.079459317
		 0.69914514 2.8564863e-016 0.50726342 1.9743446e-016 0.49287969 0.084502697 0.59375
		 0.5 0.49813911 0.46366826 0.44639337 0.43085673 0.56575978 0.44275117 0.51620376
		 0.47285178 0.42868549 0.44133151 0.3592861 0.41090468 0.47651803 0.45545232 0.9124316
		 0.043829765 0.90625763 3.8086482e-016 0.74592876 0.10063949 0.52873313 0.089174449
		 0.74296427 0.13572611 0.625 0 0.71875006 0.087317422 0.8515625 0.125 0.83203125 0
		 0.83203125 0.1875 0.83203125 0.14713235 0.765625 0.14705178 0.765625 0 0.765625 0.096670143
		 0.71875 0 0.81738281 0.1875 0.81738281 0.14665864 0.81738281 0 0.70599127 0.13615288
		 0.81738281 0.099539421 0.83203125 0.10175201 0.84179592 0.125 0.70599133 0.10615871
		 0.625 0.0625 0.625 0.0625 0.46249998 0.34999996 0.375 0.25 0.5 0.25 0.5 0.3125 0.5
		 0.3125 0.52500004 0.33750004 0.5625 0.375 0.52500004 0.41250002 0.5 0.4375 0.48417547
		 0.42167544 0.44843751 0.37343749 0.46249998 0.34999996 0.45625001 0.39375001 0.375
		 0.4375 0.375 0.34375 0.44374999 0.36874998 0.63333333 0.25833333 0.52500004 0.33750004
		 0.625 0.5 0.52500004 0.41250002 0.5625 0.375 0.625 0.375 0.5 0.125 0.62916666 0.12916666
		 0.75 0.125 0.75 0.25 0.5 0.4375 0.47500002 0.41249999 0.46249998 0.34999996 0.46249998
		 0.34999996 0.44374999 0.36874998 0.44374999 0.36874998 0.375 0.125 0.5 0.875 0.625
		 1 0.5 1 0.625 0.875 0.375 1 0.375 0.89999998 0.375 0.80000365 0.375 0 0.5 0 0.625
		 0 0.75 0 0.5 0.5 0.375 0.5 0.625 0.625 0.5 0.625 0.875 0.125 0.875 0.25 0.625 0.75
		 0.37633789 0.73333335 0.5 0.72500002 0.875 0 0.82973027 0.56342769 0 0 0.99999994
		 0.5436067 0.99861455 0.56703275 0 4.1944602e-017 0.16064379 0 0.25231874 0.97866344
		 0.068673007 1 0.86527872 0.24766216 0.89777583 0.25299814 0.86328125 0.23124999 0.86328125
		 0.21875 0.86328125 0.1875 0.86328125 0.125 0.625 0.76171875 0.86328125 0 0.609375
		 0.76171875 0.59375 0.76171875 0.578125 0.76171875 0.5625 0.76171875 0.5 0.76171875
		 0.67634642 0.44797468 0.72765797 0.21389341 0.095936105 0.084707811 0.25569767 0.4871394
		 0.27955788 0.62234253 0.19178472 0.33232942 0.3034184 0.75754595 0.1650838 0.85000008
		 0.033987872 0.17500019 0.12787169 0.17751963 0.49416417 0.21264097 0.59481639 0.23426923
		 0.37045541 0.36885643 0.52331614 0.35594022 0.76491821 0.36998403 0.81490779 0.51627558
		 0.16301875 0.66404796 0.16061114 0.2973662 0.14805436 0.31829408 0.73709011 0.20524955
		 0.1490694 0.13162288 0.36741579 0.40534973 0.41790205 0.43317848 0.41790205 0.43317848
		 0.47244462 0.45709163 0.47244462 0.45709163 0.5703125 0.5 0.5703125 0.5 0.5703125
		 0.53125 0.5703125 0.5625 0.5703125 0.625 0.5703125 0.75 0.5703125 0.75 0.5703125
		 0.76171875 0.5703125 0.7734375 0.5703125 0.79296875 0.5703125 0.80761719 0.5703125
		 0.859375 0.5703125 0.90625 0.5703125 0 0.5703125 1 0.5703125 0 0.23701495 0.33851904
		 0 0;
	setAttr ".uvst[0].uvsp[500:749]" 1 0 0.99028218 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0.50916827 0.3270033 0.49459231
		 0.25535366 0.34514278 0.34818968 0.24022064 0.31244457 0.15537298 0.80000007 0.21087441
		 0.65434581 0.24072133 0.68897641 0.2368816 0.58897638 0.23304202 0.4889766 0.17579898
		 0.36283469 0.11855589 0.23669291 0.77609712 0.53194869 0.041270964 0.2125001 0.72063231
		 0.40897936 0.67153215 0.28111047 0.57501489 0.27873307 0.29268169 0.33031714 2.9802322e-008
		 0.60000026 0 0.59999967 1 0.60000098 0 0.6000005 0.99999928 0.59999955 1.7291799e-006
		 0.60000068 0.99999976 0.6000002 0 0.60000026 0.99999928 0.59999961 0.99999702 0.60000002
		 0.83984375 0.1875 0.83984375 0.21875 0.83984375 0.23124999 0.84094107 0.24981298
		 0.098346859 0.024999997 0.095012367 0.17663781 0.091506124 0.22822541 0.087999985
		 0.27981305 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0.54280043
		 0.25987306 0.52853358 0.25241536 0.58931351 0.23249388 0.55507058 0.23915851 0.5
		 0.2375 0.55706728 0.26733077 0.065952398 0.98662305 0.039317034 2.0501362e-016 0.19088221
		 0.74602687 0.1166075 0.37301344 0 0.044427272 0.4792428 7.4146008e-008 0.042249102
		 0.13049257 0.97574359 0.20668429 0.55477011 0.3310793 0.54107761 0.32741103 0.52738512
		 0.32374275 0.5 0.31640625 0.51507157 0.41378582 0.063208252 0.29571891 0.055298239
		 0.59197348 0.16455552 0.59357923 0.31023121 0.59571934 0.091717333 0.59251171 0.60000002
		 0 0.60000062 0.99999994 0.84362626 0.66593617 0 3.2668003e-017 0.01549678 0.37089843
		 0.049012963 3.7160572e-016 0.93687034 0 0 0.31533161 1 9.0465044e-017 0.52500004
		 0.41875002 0 0.48039278 0.53125 0.421875 1 0.57972634 0.99999994 5.0749943e-017 0.92318416
		 0.41003299 0 0.47315699 0.89371586 0 0.99999994 0.56096524 0.15258437 0.48121613
		 0.076292187 0.24060807 0.46214426 0.1578373 0.96843517 0.2629163 0.5 0.75 0.5625
		 0.75 0.5703125 0.75 0.578125 0.75 0.59375 0.75 0.609375 0.75 0.625 0.75 0.625 0.625
		 0.625 0.5625 0.625 0.53125 0.8515625 0.0625 0.86328125 0.0625 0.875 0.0625 0.625
		 0.6875 0.625 0.6875 0.625 0.6875 0.609375 0.6875 0.59375 0.6875 0.578125 0.6875 0.5703125
		 0.6875 0.5625 0.6875 0.5 0.6875 0.060044467 0.41422069 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0.5 1 0.5 0 0.5 1
		 0.5 0 0.51313603 0.3457064 0.51345402 0.3310596 0.51361305 0.32373619 0.51369256
		 0.3200745 0.51377201 0.31641281 0.51504409 0.25782561 0.51426679 0.24495769 0.51310086
		 0.22565578 0.51115769 0.19348593 0.50727123 0.12914625 0.50727123 0.12914625 1 0.5
		 0.60000032 0.49999997 1 0.5 0 0.5 1 0.5 0 0.5 1 0.5 0 0.5 1 0.5 0 0.5 1 0.5 0 0.5
		 1 0.5 0 0.5 1 0.5 0 0.5 0.5 0.5 0 0.5 1 0.5 1 0.5 0 0.5 1 0.5 0 0.5 1 0.5 0 0.5 0.75
		 0.5 0 0.5 1 0.5 0.25 0.5 1 0.5 0 0.5 1 0.5 0 0.5 0.5 0.5 0 0.5 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0;
	setAttr ".uvst[0].uvsp[750:999]" 0.70000029 0 1 0.5 0 0.5 1 0.5 0 0.5 0 0.5
		 0 9.0525118e-017 1 0 0.9977814 0.22075066 0.14426494 0.28125164 0.46249998 0.34999996
		 0.44374999 0.36874998 0.44374999 0.36874998 0.46249998 0.34999996 0 0 1 0 1 1 0 1
		 0.044278368 0.039095972 0 0 1 0 1 0.5 0 0.5 0 0 1 0 1 0.5 0 0.5 0 0 1 0 1 0.5 0 0.5
		 0 0 1 0 1 0.5 0 0.5 0 0 1 0.5 0 0.5 0.53472406 0.451388 0.5 0.46875 0.28910208 0.67642391
		 0.45794111 0.86692983 0.54220361 0.4476482 0.53472406 0.451388 0.31366336 0.90000015
		 0.35803184 0.95051557 0.18773288 0.5815289 0.23841748 0.62897635 0.59999937 0 1 0
		 0 0 1 0 0 0 1 0 0 0 1 0 0 0 0.36000016 0 0.5 0.625 0.5625 0.625 0.5625 0.6875 0.5
		 0.6875 0.5625 0.859375 0.5 0.859375 0.5 0.80761719 0.5625 0.80761719 0.5625 0.75
		 0.5 0.75 0.5 0.75 0.5625 0.75 0.5625 0.76171875 0.5 0.76171875 0.625 0.625 0.625
		 0.6875 0.625 0.6875 0.625 0.625 0.50497264 0.42692158 0.54514003 0.43368 0.55278003
		 0.44235998 0.50621581 0.43208945 0.52181375 0.13743871 0.51454246 0.13329248 0.51454246
		 0.13329248 0.52181375 0.13743871 0.5 0 0.5625 0 0.5625 0 0.5 0 0.5703125 0.625 0.5703125
		 0.6875 0.5703125 0.75 0.5703125 0.75 0.5703125 0.76171875 0.5703125 0.859375 0.5703125
		 0.80761719 0.5703125 0 0.5703125 0 0.81738281 0.099539421 0.765625 0.096670143 0.765625
		 0 0.81738281 0 0.5625 0.79296875 0.5 0.79296875 0.5 0.7734375 0.5625 0.7734375 0.5703125
		 0.79296875 0.5703125 0.7734375 0.59375 0.6875 0.59375 0.625 0.609375 0.625 0.609375
		 0.6875 0.609375 0.75 0.59375 0.75 0.59375 0.75 0.609375 0.75 0.609375 0.76171875
		 0.59375 0.76171875 0.609375 0.79296875 0.59375 0.79296875 0.59375 0.7734375 0.609375
		 0.7734375 0.609375 0.859375 0.59375 0.859375 0.59375 0.80761719 0.609375 0.80761719
		 0.57704246 0.13329248 0.57704246 0.13329248 0.52908498 0.14158496 0.52908498 0.14158496
		 0.53347301 0.20545781 0.52231538 0.19947186 0.5842607 0.19164625 0.5435214 0.19579248
		 0.81738281 0.1875 0.765625 0.1875 0.765625 0.14705178 0.81738281 0.14665864 0.59375
		 0.5625 0.609375 0.5625 0.5625 0.5625 0.5703125 0.5625 0.5 0.5625 0.5625 1 0.5625
		 0.90625 0.5703125 0.90625 0.5703125 1 0.5 1 0.5 0.90625 0.51115769 0.19348593 0.50727123
		 0.12914625 0.50727123 0.12914625 0.52754408 0.32032561 0.52738512 0.32374275 0.51369256
		 0.3200745 0.51377201 0.31641281 0.54131615 0.32423842 0.54107761 0.32741103 0.70599127
		 0.13615288 0.71875 0.1875 0.5 0.44062501 0.52362013 0.45693994 0.5 0.46875 0.54463071
		 0.21144374 0.55508816 0.32815126 0.55477011 0.3310793 0.52279556 8.4738296e-008 0.7550773
		 1.7422155e-016 1 0.44610393 0.1165926 0.6371426 0.042249102 0.13049257 0.97574359
		 0.20668429 1 0.23621063 0 0.14913437 0.78133589 2.0500973e-017 0 0.38516578 0.76943612
		 0.41101053 1 0 0.4792428 7.4146008e-008 0 0 0 0.044427272 0 0.17770909 0.23581612
		 0.36705381 0.39476094 0.35910761 0 0.35541818 0.17437348 0 0.34858453 4.2369148e-008
		 0.33799282 0 0.80594867 1.478035e-016 0.90297437 0.11810531 0.16899641 0.074567184
		 0.54036212 0.33692881 0.55381608 0.33986342 0.55254406 0.35157561 0.53940809 0.34961921
		 0.52690804 0.33399421 0.52627206 0.34766281 0.51345402 0.3310596 0.51313603 0.3457064
		 0 0.088854544 0.15634371 0.3710269 0.43569005 6.3553721e-008 0.95148718 0.17715797
		 0.084498204 0.11185078 0.54083914 0.33058363 0.55445212 0.33400732 0.52722609 0.32715991
		 0.51361305 0.32373619 0.625 0.625 0.625 0.6875 0.625 0.75 0.625 0.75 0.625 0.76171875
		 0.625 0.79296875 0.625 0.7734375 0.625 0.80761719 0.625 0.859375 0 0 1 0 1 0.5 0
		 0.5 0.5 0 1 0 1 0.5 0.5 0.5 0 0 1 0 1 0.5 0 0.5 0 0 1 0 1 0.5 0 0.5 0 0 1 0 1 0.5
		 0 0.5 0 0 1 0 1 0.5 0 0.5 0.59375 0.53125 0.609375 0.53125 0.5625 0.53125 0.5703125
		 0.53125 0.5 0.53125 0.91962987 2.2970898e-017 0.99999994 4.5941797e-017 0.35083941
		 0.29972672 0.1754197 0.14986336 0.81738281 0.23125;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.765625 0.23125 0.765625 0.21875 0.81738281
		 0.21875 0.59375 0.5 0.609375 0.5 0.5 0.5 0.5625 0.5 0.5703125 0.5 0.71875 0.21875
		 0.875 0.1875 0.875 0.21875 0.86328125 0.21875 0.86328125 0.1875 0.81738281 0.25 0.765625
		 0.25 0.59375 0.5 0.609375 0.5 0.578125 0.53125 0.578125 0.5 0.578125 0.5625 0.578125
		 0.625 0.578125 0.6875 0.578125 0.75 0.578125 0.75 0.578125 0.76171875 0.578125 0.79296875
		 0.578125 0.7734375 0.578125 0.80761719 0.578125 0.859375 0.59375 0.90625 0.578125
		 0.90625 0.578125 1 0.59375 1 0.578125 0 0.578125 0 0.59375 0 0.59375 0 0.59375 0.5
		 0.609375 0.5 0.578125 0.5 0.51620376 0.47285178 0.65422046 0.10087771 0.69914514
		 2.8564863e-016 0.50726342 1.9743446e-016 0.49287969 0.084502697 0.56575978 0.44275117
		 0.59375 0.5 0.49813911 0.46366826 0.44639337 0.43085673 0.69914514 2.8564863e-016
		 0.50726342 1.9743446e-016 0.49813911 0.46366826 0.625 0.125 0.625 0.125 0.625 0 0.625
		 0 0.625 0.0625 0.625 0.0625 0.609375 0 0.609375 0 0.625 0.1875 0.71875006 0.087317422
		 0.71875 0 0.609375 0.90625 0.609375 1 0.625 0.90625 0.625 1 0.70599133 0.10615871
		 0.45625001 0.39375001 0.375 0.4375 0.375 0.34375 0.44374999 0.36874998 0.5 0.25 0.5
		 0.125 0.62916666 0.12916666 0.63333333 0.25833333 0.75 0.125 0.75 0.25 0.375 0.125
		 0.375 0.25 0.5 0.875 0.625 1 0.5 1 0.625 0.875 0.375 1 0.375 0.89999998 0.375 0.80000365
		 0.375 0 0.5 0 0.625 0 0.75 0 0.875 0.125 0.875 0.25 0.625 0.75 0.875 0 0.86328125
		 0.23124999 0.8515625 0.23124999 0.8515625 0.21875 0.83990955 0.079459317 0.88298094
		 3.7016377e-016 0.71654963 -2.0761938e-008 0.90625763 3.8086482e-016 0.9124316 0.043829765
		 0.19178472 0.33232942 0.25569767 0.4871394 0.32366464 0.48162761 0.23974186 0.24081381
		 0.20991451 0.22187769 0.087128699 0.25 0.1742574 0.5 0.2817995 0.40391099 0.72765797
		 0.21389341 0.76491821 0.36998403 0.89777583 0.25299814 0.83990955 0.079459317 0.59481639
		 0.23426923 0.65422046 0.10087771 0.86527872 0.24766216 0.85430574 0.24953243 0.81490779
		 0.51627558 0.93134022 0.46925607 0.49416417 0.21264097 0.49287969 0.084502697 0.44639337
		 0.43085673 0.56575978 0.44275117 0.47244462 0.45709163 0.47244462 0.45709163 0.51620376
		 0.47285178 0.5703125 0.5 0.37045541 0.36885643 0.52331614 0.35594022 0.70128953 0.62899667
		 0.73317468 0.2515986 0.18449152 0.16289964 0.0059892558 0.5 0.16301875 0.66404796
		 0.16061114 0.2973662 0.054465402 0.27726173 0.019451927 0.69315451 0.36741579 0.40534973
		 0.23701495 0.33851904 0.73709011 0.20524955 0.1490694 0.13162288 0.3592861 0.41090468
		 0.3592861 0.41090468 0.41790205 0.43317848 0.41790205 0.43317848 0.74296427 0.13572611
		 0.095936105 0.084707811 0.47651803 0.45545232 0.47651803 0.45545232 0.28843823 0.37984276
		 0.14805436 0.31829408 0.50916827 0.3270033 0.34514278 0.34818968 0.24022064 0.31244457
		 0.29268169 0.33031714 0.21087441 0.65434581 0.17579898 0.36283469 0.23304202 0.4889766
		 0.67153215 0.28111047 0.72063231 0.40897936 0.57501489 0.27873307 0.49459231 0.25535366
		 0.67634642 0.44797468 0.61540639 0.34832752 0.55521339 0.32319695 0.49502045 0.29806635
		 0.31983015 0.32752293 0 0.59999967 1 0.60000098 1 1 0 1 0.77609712 0.53194869 0 0
		 1 0 0.8515625 0.1875 0 0 1 0 1 1 0 1 0.54280043 0.25987306 0.52853358 0.25241536
		 0.52620178 0.23256156 0.53930265 0.23946735 0.58931351 0.23249388 0.55507058 0.23915851
		 0.55073965 0.22289625 0.58786982 0.22082312 0.54513228 0.2734769 0.53008819 0.26565126
		 0.59147894 0.25 0.58849472 0.34375 0.55866641 0.3125 0.55795789 0.25 0.51504409 0.25782561
		 0.51426679 0.24495769 0.51310086 0.22565578 0.55706728 0.26733077 0.55240357 0.24637312
		 0.56017643 0.28130251 0.625 0.25 0.625 0.34375 0.71875 0.23125 0.625 0.23749998 0.625
		 0.21875 0.8392598 0 0 2.4624571e-015 0.71875 0.25 0.51507157 0.41378582 0.53767884
		 0.42508942 0.50335652 0.42020333 0.5 0.40625 0.50372946 0.4217537 0.53750002 0.42500001
		 0.53125 0.421875 0.5428825 0.43168375 0.16455552 0.59357923 0.31023121 0.59571934
		 0.31453627 1.093406e-016 0.15726814 1.640109e-016 0.30230108 0.73410761 0.45085955
		 0.71821523 0.091717333 0.59251171 0.078634068 1.9134604e-016 0.22802183 0.74205381
		 0.60000002 0 0.60000032 0.49999997 0 0.5 0 0 0 0 1 0 1 0.5 0 0.5 0.10043941 0.98751485
		 0.16941342 0.9892984 0.30736145 0.99286556 1 0 1 0.5 0.049012963 3.7160572e-016 0.93687034
		 0 0.96843517 0.2629163 0 0.31533161 0 3.2668003e-017 0.46214426 0.1578373 1 0.57972634
		 0.01549678 0.37089843 0.5 0.75 0.5625 0.75 0.5703125 0.75;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.578125 0.75 0.59375 0.75 0.609375 0.75 0.625
		 0.75 0.625 0.5625 0.625 0.5625 0.625 0.5625 0.625 0.51875001 0.625 0.53125 0.625
		 0.53125 0.625 0.5 0.875 0.23124999 0.625 0.5 0.625 0.53125 0.625 0.50000006 0.88298094
		 3.7016377e-016 0.71654963 -2.0761938e-008 0.625 0.5074811 0.89430106 0.052737154
		 0.90625763 3.8086482e-016 0.87350839 0.24625944 0.875 0.125 0.86328125 0.125 0.86328125
		 0.0625 0.875 0.0625 0.83203125 0 0.8515625 0 0.8515625 0.0625 0.83203125 0.10175201
		 0.5 0.5 0.625 0.5 0.625 0.625 0.5 0.625 0.5 0.72500002 0.37633789 0.73333335 0.8515625
		 0.125 0.86328125 0 0.875 0 0.076871298 0.375 0.1166075 0.37301344 0.52500004 0.41875002
		 0.54062498 0.4296875 0.53125 0.421875 0.63367128 0.36320004 0.81683564 0.18160002
		 0.10313928 0.24019639 0 0.48039278 0.1537426 0.75 0.19088221 0.74602687 0.055298239
		 0.59197348 0.039317034 2.0501362e-016 0.065952398 0.98662305 0 0.47315699 0.92318416
		 0.41003299 0.99999994 5.0749943e-017 0.15258437 0.48121613 0.076292187 0.24060807
		 0.89371586 0 0.99999994 0.56096524 0.84362626 0.66593617 0.060044467 0.41422069 1
		 9.0465044e-017 0.063208252 0.29571891 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 0.5
		 0 0.5 0.5 0 1 0 1 0.5 0.5 0.5 0 0 1 0 1 0.5 0 0.5 0 0 1 0 0.5 1 0.25 0.5 0 0 1 0
		 0.75 0.5 0.5 1 0 0 1 0 1 0.5 0 0.5 0 0 1 0 1 0.5 0 0.5 0 0 1 0 1 0.5 0 0.5 0 0 1
		 0 1 0.5 0 0.5 0 0 0 0.5 0 0 0 0.5 0.5 0.328125 0.5 0.34375 0.5 0.3203125 0.5 0.31640625
		 0.5 0.3125 0.5 0.25 0.5 0.2375 0.5 0.21875 0.5 0.1875 0.5 0.125 0.5 0.125 0.60000062
		 0.99999994 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0.5 1 0 1
		 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0.5 1 0 1 0.73728645 0.54762185
		 0 0.6000005 0.99999928 0.59999955 1 1 0 1 0 1 0 0.60000026 0.99999928 0.59999961
		 1 1 0.99999702 0.60000002 0.5 1 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0.25873005 0.64464366 1.7291799e-006 0.60000068 0.99999976 0.6000002 1 1 0
		 1 0 0 1 0 2.9802322e-008 0.60000026 0 0 1 0 0.99028218 1 0 1 0 0 1 0 1 1 0 0 1 0
		 1 0.5 0 0.5 0 0 1 0 1 0.5 0 0.5 0 0 0.70000029 0 1 0.5 0 0.5 0 0.5 1 0.5 1 1 0 1
		 0 9.0525118e-017 1 0 0.9977814 0.22075066 0.14426494 0.28125164 0.46249998 0.34999996
		 0.5 0.3125 0.52500004 0.33750004 0.44374999 0.36874998 0.46249998 0.34999996 0.46249998
		 0.34999996 0.44374999 0.36874998 0.44374999 0.36874998 0.46249998 0.34999996 0.5
		 0.3125 0.52500004 0.33750004 0.46249998 0.34999996 0.46249998 0.34999996 0.52500004
		 0.41250002 0.5 0.4375 0.5 0.4375 0.52500004 0.41250002 0.47500002 0.41249999 0.48417547
		 0.42167544 0.625 0.375 0.5625 0.375 0.44843751 0.37343749 0.5625 0.375 0.44374999
		 0.36874998 0 0 1 0 1 1 0 1 0.56249994 0.49999997 0.5 0.5 0.42868549 0.44133151 0.42868549
		 0.44133151 0.74883252 0.066270187 0.75443149 1.3914083e-009 0 1.3006358e-016;
	setAttr ".uvst[0].uvsp[1500:1615]" 0.044278368 0.039095972 0.74592876 0.10063949
		 0.52873313 0.089174449 0.52873313 0.089174449 0.74592876 0.10063949 0.74296427 0.13572611
		 0.073797219 0.065159857 0.554515 0.4414925 0.5 0.46875 0.53056008 0.45346999 0.53056008
		 0.45346996 0.55624998 0.44062501 0.53472406 0.451388 0.5 0.46875 0.27955788 0.62234253
		 0.40758741 0.72244143 0.28910208 0.67642391 0.45794111 0.86692983 0.2613861 0.75
		 0.38645291 0.80274057 0.54220361 0.4476482 0.53472406 0.451388 0.31366336 0.90000015
		 0.35803184 0.95051557 0.3427361 0.32561141 0 0.38864788 0.98048192 0 1 0.32561141
		 0.3034184 0.75754595 0.1650838 0.85000008 0.19421621 1 0.49151018 0.96325523 0.24072133
		 0.68897641 0.15537298 0.80000007 0.20627856 0 0.99999994 2.021788e-016 0.53750002
		 0.44999999 0.53750002 0.45000002 0.5 0.46875 0 0 1 0 0 1 0 0.5 1 0.5 1 1 0.23841748
		 0.62897635 0.2368816 0.58897638 0.14566216 0.75 0.17802426 0.62040687 0 0 1 0 0.21038637
		 0.49081379 0.15981323 0.39333999 0 0 1 0 1 0 0 0 1 0.5 0 0.5 0 0 1 0 0 0 1 0 0.19420531
		 0.5556103 0.18773288 0.5815289 0 0.5 0 0 1 0 1 0.5 0.59999937 0 0.36000016 0 0 0
		 0 0.5 0 0 1 0 1 0 1 0 0.12787169 0.17751963 0.15581907 0 0.12132855 2.7115754e-018
		 0 1.0846302e-017 0.83203125 0.23125 0.83203125 0.25 0.11855589 0.23669291 0.10924008
		 0.29586619 0.84094107 0.24981298 0.83984375 0.23124999 0.033987872 0.17500019 0.095012367
		 0.17663781 0.098346859 0.024999997 0.012138513 0.0625 0.041270964 0.2125001 0.091506124
		 0.22822541 0.83203125 0.1875 0.83203125 0.14713235 0.83203125 0.21875 0.375 0.5 0.83984375
		 0.21875 0.83984375 0.1875 0.84179592 0.125 0 0 0.82973027 0.56342769 0.99861455 0.56703275
		 0.99999994 0.5436067 0.16064379 0 0 4.1944602e-017 0.068673007 1 0.25231874 0.97866344
		 0.048554052 0.25 0.087999985 0.27981305 0 0 1 0 0 0 1 0 0 0 0 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 948 ".vt";
	setAttr ".vt[0:165]"  2.16697407 3.33502722 3.65008187 3.063524246 4.74676514 3.29810667
		 2.32388878 4.52458382 3.9446435 2.74160194 3.49543285 3.058717728 2.086346626 3.0094850063 -0.34366733
		 2.42435646 3.1016593 2.83630586 3.28194237 8.58194542 -1.49583054 0 8.38824463 3.90365529
		 0 8.87168503 -3.55434752 0 3.15294242 -1.54046249 0 2.54752159 4.3663249 3.53334045 7.98688984 0.4555355
		 0 2.087371111 1.85928917 2.12528324 2.75312233 0.41160125 0 4.62182903 -3.14192414
		 3.17814636 4.40085745 -1.081841826 0 9.75275517 3.23028493 0 11.055019379 0.79014122
		 2.68369102 9.32675171 2.42277837 2.87662125 9.7844162 0.57676232 2.82282734 9.75920105 -0.87234795
		 0 10.69157505 -1.58947444 0 5.91054201 -3.68846583 3.44089603 5.83642626 -1.74054718
		 0 4.59972191 4.55099869 0 5.92999458 4.30953503 0.81931019 5.010439396 4.21907663
		 0.47742748 5.1644311 5.2255559 0 5.41336441 5.16354704 0 4.89675522 5.24712181 0 7.48737621 -3.90213513
		 3.41042614 7.46205044 -1.79865718 3.64481735 6.87131977 0.32153189 3.26896286 6.42365932 2.74684978
		 0.49838543 5.55810547 4.16142416 0.39979744 5.27013922 5.17136288 0 5.22472715 5.35442495
		 1.24955893 2.20507288 1.43698394 1.5155859 2.69776154 3.83673024 0.53704166 4.68276072 4.38886738
		 0 5.016251564 5.37668324 0.3273325 4.99825048 5.28547001 0 5.51352644 4.72412586
		 0.44909096 5.27524471 4.65819979 0.66621208 5.072293758 4.64940929 0.51464272 4.8144784 4.72793627
		 0 4.71395588 4.78500509 2.011410713 0 0.47126275 1.25198078 0 1.3997159 0 0 1.83865249
		 0 0 -1.4737289 1.98962784 0 -0.35355616 0.53445816 8.38691521 3.83801341 0.65450668 9.72364044 3.15383482
		 0.88070917 10.9920826 0.76876658 0.93254566 10.59226418 -1.55891848 0.99703312 8.87578201 -3.38902712
		 1.070175171 7.53801727 -3.73046827 1.07668066 5.92085552 -3.51254702 1.04359436 4.62182903 -2.95279384
		 0.85792351 3.21478748 -1.38092911 0.83430147 0 -1.32672226 0.34104538 6.33383656 4.018930435
		 0 6.31894684 4.19144297 0 6.6441288 -3.92851496 1.077793121 6.66816998 -3.75540733
		 3.42566013 6.44635677 -1.82566428 3.15191841 5.41055965 3.12491798 1.652071 4.29927206 4.089471817
		 1.59726238 4.99669743 3.89008784 1.65803909 9.61333179 2.93564558 1.94874096 10.69874287 0.67956203
		 2.040104866 10.31771564 -1.30373573 2.25512505 8.79572201 -2.91351366 2.36484146 7.56333828 -3.11963296
		 2.37626648 6.61417866 -3.15261793 2.3876915 5.88095427 -3.0070412159 2.22852325 4.5553422 -2.28924179
		 1.68517494 3.19009972 -0.91188478 1.59355736 0 -0.88283902 2.88598204 6.4168396 2.93495393
		 0.75825423 6.39376736 3.67314434 1.52529716 5.31840229 3.51824212 1.45098543 7.38958883 3.46546316
		 2.47779274 7.25026131 3.075176954 0.91339207 5.81662655 3.63840342 0.85592842 7.066382408 3.56541395
		 2.51796818 5.58679247 3.15774012 0.41712856 7.18794537 3.90977478 0 7.2123661 4.011619091
		 2.15674782 5.36468077 3.32960987 2.2543602 5.11428452 3.79234052 2.033977509 2.82214904 3.45462728
		 1.67253113 2.4790976 1.083475709 1.65397072 0 1.066084623 0 2.09855938 2.85537457
		 1.23983383 2.20383072 2.49923944 1.77540588 2.48798895 2.067179918 2.34516907 2.88102555 1.5502032
		 3.26400757 3.79485083 1.57418442 3.46455383 5.091671944 1.65395868 3.53198433 5.60880756 1.66885173
		 3.62609673 6.60834694 1.69179392 3.49715614 7.80165958 1.72742498 2.85472393 9.6177721 1.78737164
		 1.81369603 10.44056988 1.80055416 0.80094528 10.69509983 1.84612405 0 10.77739716 1.93595159
		 0 3.026257277 4.34984684 1.67205238 3.19630289 3.98783302 0.55748081 4.42758083 4.42387629
		 0.48310947 3.038083076 4.24576283 0.49977684 2.57601523 4.32087994 0.48719692 2.11413527 2.67730713
		 0.48455238 2.10916233 1.7982291 0.48718357 0 1.7635591 1.11884212 3.72467136 4.25930548
		 0.43911076 3.76256084 4.54326057 0 3.75766277 4.60406828 0 3.67327499 4.57188177
		 0.42573941 3.66658688 4.52066612 1.086232185 3.71772909 4.23755598 1.24238873 3.71816492 4.12227678
		 2.29130268 3.87216949 3.82798576 2.93127155 4.055966377 3.27795553 3.4111824 4.4785738 1.62452662
		 3.40479851 5.18488503 -1.57172537 2.35879183 5.34644651 -2.82219648 1.071538925 5.41789198 -3.31905317
		 0 5.41273546 -3.52011132 1.95245075 3.75653791 3.98916459 1.0019187927 5.19797611 4.025756359
		 1.17320538 5.44727373 3.57832289 0.91164398 0 1.61353099 0.92840958 2.14476442 1.64378238
		 0.94255638 2.14662981 2.58827329 0.95670414 2.60540223 4.14074516 0.90971518 3.055634022 4.15961409
		 0.80923176 3.6748004 4.41599464 0 5.12352371 5.38554001 0.42022228 5.078526497 5.26676846
		 0.58963203 4.92980528 4.67824316 0.67817593 4.86113262 4.26790237 1.017464638 4.44597197 4.29624557
		 0.84721655 3.7261374 4.42705297 0 3.81148291 4.66510582 0.47707248 3.81416106 4.60705948
		 0.8789624 3.78171492 4.49670315 1.1353426 3.75865507 4.3421936 1.24485207 3.72728729 4.23090696
		 1.098647118 3.68022251 4.34830141 0.82565558 3.62900925 4.48192263 0.43370149 3.6173315 4.56365824
		 0 3.62142229 4.63017845 0 3.88659739 4.71773863 0.50456905 3.89655638 4.64667988
		 0.92128277 3.86855268 4.4930892 1.21823978 3.8334403 4.31804276 1.35682678 3.73258257 4.098239899
		 1.12619305 3.60305023 4.24065971 0.83619004 3.55525589 4.40361214 0.428404 3.53835964 4.52524519
		 0 3.53916168 4.61009026 2.15448666 7.41702938 3.21818566 2.27985954 9.47325706 2.68222475
		 2.35300064 10.11670208 1.79396296;
	setAttr ".vt[166:331]" 2.39287567 10.346241 0.62816215 2.43330956 10.10783005 -1.14684081
		 2.75980759 8.76477242 -2.4422307 2.89237309 7.51608372 -2.66553593 2.90570354 6.55920982 -2.66737103
		 2.919034 5.88763237 -2.55887604 2.89065552 5.26566601 -2.35272455 2.64494419 4.47584438 -1.88907254
		 1.94540596 3.09979248 -0.6077646 1.8426609 0 -0.59818614 1.62306499 4.22962713 3.39223742
		 1.087555885 4.33046532 3.54124355 0.57694912 4.36177063 3.66040182 0 4.36176968 3.73747444
		 0 3.23337698 3.66031957 0.53758335 3.22189546 3.63780737 1.038564682 3.22189546 3.53313589
		 1.38404274 3.33335114 3.40718722 1.65011883 3.72797489 3.30457997 0 2.12198257 3.52629614
		 0.49870014 2.13445091 3.48053026 0.94962978 2.16539145 3.40283799 1.31903267 2.22103858 3.25
		 1.77737713 2.4924345 2.80309772 2.42604828 2.99708319 2.068886042 3.035346985 3.63870215 2.28724861
		 3.1997261 4.26727009 2.45124102 3.26403809 4.91921902 2.47603273 3.38549304 5.50968361 2.39688492
		 3.51414108 6.51600361 2.21932173 3.33475304 7.74802589 2.1604557 2.80608749 9.50010109 2.085197926
		 2.30273771 9.86174107 2.26001763 1.71601248 10.06975174 2.38625979 0.72772598 10.27613163 2.54448676
		 0 10.33183765 2.62762547 2.44590378 3.066717625 2.45350885 2.96990776 8.020863533 2.90652108
		 3.17653847 7.72657204 2.65374827 3.39636326 6.4790659 2.4303329 3.11514282 4.18274832 2.78192687
		 3.18383408 4.85023737 2.80486226 3.29024839 5.47003412 2.68809819 2.9438839 3.56139398 2.65424109
		 2.25213051 8.26303291 3.36110377 1.60352993 8.36994839 3.6155026 0 7.922822 4.017343521
		 1.068994522 8.37843227 3.726758 1.15627289 9.69090939 3.071087599 1.22426891 10.20032406 2.46537328
		 1.29226494 10.59864044 1.8233391 1.4351716 10.87279606 0.72416431 1.65523815 10.45297337 -1.43575978
		 1.87993431 8.83575249 -3.11067533 1.97136307 7.55067825 -3.38445544 1.98088455 6.64117432 -3.42577267
		 1.99448395 5.90090466 -3.22461581 1.97397041 5.38216925 -3.029276371 1.92010021 4.60683727 -2.58086443
		 1.52175236 3.2024436 -1.052278161 1.44126225 0 -1.013510585 2.93692017 7.81081295 2.98436427
		 2.8287487 7.58824348 3.056317568 3.020771027 7.59120655 2.89234543 2.21952057 7.79723167 3.494524
		 2.24866486 8.0633955 3.46020532 1.56369877 8.1434679 3.72174501 1.49582005 7.85404873 3.74307275
		 1.019118309 7.8280344 3.85439229 1.049426079 8.13757896 3.84621835 0.54230976 8.071110725 3.9115448
		 0.36640549 7.91233444 3.97154498 0.50739479 7.7401247 3.93210721 2.8301754 7.6572361 3.10245943
		 2.91149712 7.76214314 3.030506134 2.26408005 7.98038101 3.51444364 2.23725891 7.85422325 3.54876232
		 1.5502224 8.078103065 3.78186393 1.51928139 7.92586231 3.80269027 1.041129112 8.082644463 3.91501331
		 1.023145676 7.90350628 3.92318702 0.55904675 8.019585609 3.97926879 0.52252102 7.83084011 3.99983096
		 2.94525909 7.64928246 2.92911887 0.44579983 7.92228603 4.0366745 3.48996353 3.96844435 0.432293
		 3.27065468 4.028675079 -0.43167865 3.30986595 5.0031147003 -0.73965871 3.56084824 4.77931023 0.47953525
		 3.60215378 5.35966873 0.52516723 3.40271568 5.58398438 -0.56443554 3.5419693 5.96435785 -0.16575748
		 3.60144424 6.10161304 0.18089017 3.68634987 5.90044737 0.41748607 3.35664558 3.86002445 0.026102424
		 2.15337849 2.88130355 -0.048146002 2.056658268 0 -0.02325967 4.57930946 3.99426103 -0.95092189
		 4.73497581 3.9461081 -0.49692672 4.93506241 5.80257702 -0.31647056 4.6779232 5.84264374 -0.77959472
		 4.35835838 6.051898956 0.043144077 4.038509369 6.089130878 -0.49409512 3.90651703 3.79663873 -0.50467038
		 4.10635948 3.75451684 -0.090493165 3.79013252 4.996418 -0.94019449 4.89141464 4.8571167 -1.20289767
		 5.10798836 4.81146812 -0.7540465 4.18215561 4.032300949 0.083034933 4.35776329 5.75225925 0.15648526
		 4.86610413 4.82505035 -0.43940651 3.71431541 5.014165878 0.36104894 3.85798454 5.59151506 0.43751281
		 3.79865265 4.22565937 0.3007181 4.68458176 5.50915241 -0.20203759 4.59782219 4.18670273 -0.28567693
		 4.12474632 4.32965994 -0.1193902 4.41532326 4.42841148 -0.42633668 4.61817551 4.86086082 -0.56573862
		 4.46742058 5.32663393 -0.36715728 4.24309921 5.49717236 -0.071262784 3.87006378 5.3971324 0.1476222
		 3.7102108 5.096200943 0.08466588 3.83826256 4.46979523 0.040585428 3.97725582 4.94578552 0.31343266
		 4.20481873 4.42938662 0.23889244 4.23321533 4.60442448 0.0523853 4.019435406 4.95809746 0.10239705
		 3.73682785 5.268713 0.42109835 4.006439209 3.57690978 -0.29758179 4.78969193 3.83415079 -0.75749236
		 5.094280243 4.81908607 -0.97847205 4.82442474 5.97921085 -0.59737146 4.22636223 6.27006006 -0.20155406
		 3.16171265 7.0074338913 2.81959772 3.29316521 7.10281849 2.54204059 3.44129181 7.13201427 2.19039774
		 3.57847214 7.20500278 1.70960951 3.60592461 7.4291048 0.38853371 3.37561321 8.034172058 -1.68197083
		 2.83577538 8.11024094 -2.57035685 2.29388046 8.17953014 -3.016573429 1.9095459 8.19321537 -3.24756527
		 1.033975601 8.20689964 -3.5597477 0 8.17953014 -3.72824144 2.71563387 6.83355045 3.0050654411
		 2.65327072 7.38303185 3.21233654 0 7.73905039 4.016198635 1.09568429 5.32274628 3.77798152
		 1.55408287 5.18972015 3.68766594 2.1887989 5.27143764 3.53538775 0.74738979 5.71321821 3.86829686
		 0.5113821 6.35071135 3.82885814 2.65814781 5.5415864 3.17161417 3.084197998 6.41956806 2.8803978
		 2.18556404 7.61759186 3.42915201 1.44760323 7.63406467 3.68054032 0.92000008 7.51239204 3.80534506
		 2.92349434 6.90310383 3.032104731 0.62806606 7.16508579 3.77195764 0.44970894 7.43296432 3.92840838
		 0 7.44236851 4.00045108795 0.76325703 7.78407955 3.89324975 0.77283382 7.86717319 3.96150899
		 0.80008793 8.051115036 3.94714117 0.79586792 8.10434532 3.87888145;
	setAttr ".vt[332:497]" 0.80172634 8.38267326 3.78238583 0.90538979 9.71288109 3.12375307
		 0.97599697 10.23822784 2.50493002 1.04660511 10.65371609 1.83473158 1.16871548 10.94613075 0.74646544
		 1.3412199 10.52363491 -1.51374078 1.41478205 8.85799599 -3.27035666 1.43982267 8.20228672 -3.42416191
		 1.49706793 7.5465765 -3.57796717 1.50563765 6.65690041 -3.60697699 1.51830053 5.91088009 -3.3685813
		 1.52989101 5.40003061 -3.17416477 1.50539112 4.61433315 -2.76682901 1.29138565 3.20861554 -1.22539067
		 1.21645927 0 -1.18176222 0.68582058 7.43814373 3.85412407 1.027112007 6.44004059 3.81307912
		 1.62287426 6.45650482 3.8673017 2.17967129 6.45636463 3.67162085 2.42311668 6.45858955 3.47645402
		 2.66228676 6.44944191 3.2443397 1.45512772 7.52440357 3.62796116 0.89194107 7.32121372 3.71300244
		 0.74912357 7.14227676 3.64819694 0.62428761 6.38227844 3.72524762 0.85105324 5.77873039 3.73022509
		 1.14465904 5.3997879 3.65664959 1.54504776 5.27889252 3.58307409 2.16599941 5.33643818 3.4162972
		 2.56538463 5.57487631 3.15940547 2.95166969 6.41791534 2.90279841 2.77700043 6.85832596 3.039124012
		 2.54875374 7.29697132 3.20140171 2.16178226 7.50290108 3.38869262 0.80806732 7.23382378 3.69919348
		 1.12749481 6.89881229 3.73649263 1.55291271 7.024617195 3.70199394 2.16959763 7.030614853 3.48950386
		 2.44498634 6.93756199 3.31520033 2.66702461 6.76538849 3.13164473 3.57904053 6.10857725 1.68032289
		 3.46116447 6.012843609 2.30810332 3.35748601 5.97455025 2.55921555 3.22110343 5.91710949 2.935884
		 2.93202591 5.87393141 3.026005983 2.81275749 5.87876558 3.031101942 2.75151777 5.88418674 3.037495375
		 1.027112007 6.44004059 3.71616268 1.62287426 6.45650482 3.72695398 2.17967129 6.45636463 3.53127313
		 2.42311668 6.45858955 3.3361063 2.63508844 6.44944191 3.13624763 0.95387459 2.30383039 3.96982384
		 0.50152874 2.28732562 4.048892498 1.41080379 2.39086127 3.64610934 1.88967323 2.60135746 3.16546726
		 0 2.26524186 4.097807884 0 4.08996582 4.57969236 0.53102493 4.10368681 4.51207399
		 0.9693737 4.081899166 4.39592886 1.43515491 4.0076880455 4.1928997 1.61558914 3.74499011 4.044743538
		 1.39912319 3.51126266 4.10338879 0.85301495 3.40867543 4.27075577 0.44762707 3.39461517 4.38891649
		 0 3.3901155 4.46911097 0.16720486 4.90831947 5.26019382 0.22537708 4.60942936 4.52384663
		 0.20751381 4.095454216 4.56327105 0.17747992 3.81255412 4.65543652 0.16388607 3.7596221 4.58950424
		 0.18964958 3.89058089 4.70330858 0.23368549 4.36176968 3.70664549 0.2209816 4.72609091 4.77246475
		 0 9.86803532 -2.84840894 0.96478939 9.82042885 -2.75047064 1.37800121 9.77722073 -2.66854668
		 1.76758623 9.7307682 -2.54971552 2.14761496 9.64312458 -2.38512278 2.60587311 9.52708244 -2.036471367
		 3.16146183 9.18274784 -1.18408918 3.3156662 8.93439007 0.51614892 3.26146889 8.67386723 1.68757701
		 3.18110466 8.46805954 2.11118984 3.61630058 7.038227081 -0.34248346 3.57944775 7.64599991 -0.42535248
		 3.49632072 8.25230312 -0.42380396 3.27197266 9.058568954 -0.33397013 2.88313293 9.77180862 -0.23680758
		 2.41309261 10.34943104 -0.28159302 1.99442291 10.63062477 -0.33434054 1.54520512 10.78528023 -0.37805143
		 1.25496769 10.85727787 -0.40589136 0.90662766 10.9145689 -0.41732964 0 10.99569225 -0.4219203
		 0.21823168 4.41272449 4.48249817 0 4.40383911 4.51375341 1.38404274 3.72487426 2.78245211
		 1.038564682 3.720438 2.71619272 0 3.72089481 2.76282644 0.53758335 3.720438 2.73795414
		 0.26879168 3.72066641 2.75157022 0.26879168 3.22763634 3.64906359 0.20479107 3.66993093 4.54627419
		 0.20862103 3.6193769 4.60459137 0.20607281 3.53876066 4.5849061 0.22381353 3.39236522 4.44067097
		 0.24155474 3.032170296 4.29780483 0.24988842 2.56176853 4.35893345 0.25076437 2.27628374 4.073349953
		 0.24935007 2.12821674 3.5034132 0.24359846 2.10634732 2.76634073 0.24227619 2.098266602 1.82875919
		 0.24359179 0 1.80110574 0 4.24523449 4.19098425 0.19878578 4.2468071 4.16015577 0.50802994 4.24916649 4.11391211
		 1.029635429 4.19480562 3.99622893 1.37095356 4.11269379 3.837852 1.44625378 3.7048316 3.72550917
		 1.23513746 3.38774586 3.83445215 0.92389822 3.26383281 3.98664594 0.47358274 3.2572403 4.091317654
		 0.23679137 3.26453209 4.10974932 0 3.27182341 4.12818146 0 4.21750879 3.25015044
		 0.25123858 4.21732426 3.22910786 0.55726624 4.21713972 3.19917798 1.063060284 4.19181395 3.12871814
		 1.50355387 4.1138258 3.087344646 1.38404274 3.38874602 3.094819546 1.038564682 3.2949903 3.12466431
		 0.53758335 3.2949903 3.18788075 0.26879168 3.29981947 3.20031691 0 3.3046484 3.21157312
		 2.80049348 6.38044882 2.54803324 2.67493868 5.87866306 2.65696144 0.9730894 5.82000542 3.20487309
		 0.82823086 6.35890579 3.23731208 2.83548164 6.39864445 2.89944077 2.70547247 5.8814249 3.012233734
		 0.94324076 5.81831598 3.57958531 0.79324257 6.37633657 3.61317539 4.24481821 4.72256565 0.14138371
		 4.16345644 4.85139847 0.15700933 4.15018702 4.84952831 0.2351864 4.23786879 4.66065168 0.21269538
		 0 8.065509796 3.9789145 2.49636006 5.76257563 3.27673912 2.13855743 5.63678837 3.50212312
		 2.45880127 5.76573753 3.24402571 2.12104559 5.64342737 3.44656706 1.094797969 5.7013669 3.68696237
		 1.24122691 5.64253378 3.70795727 1.24430299 5.65681076 3.63938355 1.12464666 5.71137619 3.62814426
		 1.5480448 5.58976793 3.67078114 1.5346905 5.60796309 3.61673951 0.47866762 5.44496107 4.3601346
		 0 5.63394928 4.53210163 0.95636642 5.49028778 3.81410766 0.69979864 5.41405392 4.10715723
		 0.60897011 5.40008163 4.22961855 1.027216673 5.53434038 3.70128345 1.069279909 5.59501505 3.602355
		 2.51357532 5.66333437 3.23348999;
	setAttr ".vt[498:663]" 2.14921522 5.50073433 3.44536519 1.53667092 5.45408535 3.62109065
		 1.20721614 5.55534935 3.66404486 1.079487085 5.6375556 3.64119673 -2.16697407 3.33502722 3.65008187
		 -3.063524246 4.74676514 3.29810667 -2.32388878 4.52458382 3.9446435 -2.74160194 3.49543285 3.058717728
		 -2.086346626 3.0094850063 -0.34366733 -2.42435646 3.1016593 2.83630586 -3.28194237 8.58194542 -1.49583054
		 -3.53334045 7.98688984 0.4555355 -2.12528324 2.75312233 0.41160125 -3.17814636 4.40085745 -1.081841826
		 -2.68369102 9.32675171 2.42277837 -2.87662125 9.7844162 0.57676232 -2.82282734 9.75920105 -0.87234795
		 -3.44089603 5.83642626 -1.74054718 -0.81931019 5.010439396 4.21907663 -0.47742748 5.1644311 5.2255559
		 -3.41042614 7.46205044 -1.79865718 -3.64481735 6.87131977 0.32153189 -3.26896286 6.42365932 2.74684978
		 -0.49838543 5.55810547 4.16142416 -0.39979744 5.27013922 5.17136288 -1.24955893 2.20507288 1.43698394
		 -1.5155859 2.69776154 3.83673024 -0.53704166 4.68276072 4.38886738 -0.3273325 4.99825048 5.28547001
		 -0.44909096 5.27524471 4.65819979 -0.66621208 5.072293758 4.64940929 -0.51464272 4.8144784 4.72793627
		 -2.011410713 0 0.47126275 -1.25198078 0 1.3997159 -1.98962784 0 -0.35355616 -0.53445816 8.38691521 3.83801341
		 -0.65450668 9.72364044 3.15383482 -0.88070917 10.9920826 0.76876658 -0.93254566 10.59226418 -1.55891848
		 -0.99703312 8.87578201 -3.38902712 -1.070175171 7.53801727 -3.73046827 -1.07668066 5.92085552 -3.51254702
		 -1.04359436 4.62182903 -2.95279384 -0.85792351 3.21478748 -1.38092911 -0.83430147 0 -1.32672226
		 -0.34104538 6.33383656 4.018930435 -1.077793121 6.66816998 -3.75540733 -3.42566013 6.44635677 -1.82566428
		 -3.15191841 5.41055965 3.12491798 -1.652071 4.29927206 4.089471817 -1.59726238 4.99669743 3.89008784
		 -1.65803909 9.61333179 2.93564558 -1.94874096 10.69874287 0.67956203 -2.040104866 10.31771564 -1.30373573
		 -2.25512505 8.79572201 -2.91351366 -2.36484146 7.56333828 -3.11963296 -2.37626648 6.61417866 -3.15261793
		 -2.3876915 5.88095427 -3.0070412159 -2.22852325 4.5553422 -2.28924179 -1.68517494 3.19009972 -0.91188478
		 -1.59355736 0 -0.88283902 -2.88598204 6.4168396 2.93495393 -0.75825423 6.39376736 3.67314434
		 -1.52529716 5.31840229 3.51824212 -1.45098543 7.38958883 3.46546316 -2.47779274 7.25026131 3.075176954
		 -0.91339207 5.81662655 3.63840342 -0.85592842 7.066382408 3.56541395 -2.51796818 5.58679247 3.15774012
		 -0.41712856 7.18794537 3.90977478 -2.15674782 5.36468077 3.32960987 -2.2543602 5.11428452 3.79234052
		 -2.033977509 2.82214904 3.45462728 -1.67253113 2.4790976 1.083475709 -1.65397072 0 1.066084623
		 -1.23983383 2.20383072 2.49923944 -1.77540588 2.48798895 2.067179918 -2.34516907 2.88102555 1.5502032
		 -3.26400757 3.79485083 1.57418442 -3.46455383 5.091671944 1.65395868 -3.53198433 5.60880756 1.66885173
		 -3.62609673 6.60834694 1.69179392 -3.49715614 7.80165958 1.72742498 -2.85472393 9.6177721 1.78737164
		 -1.81369603 10.44056988 1.80055416 -0.80094528 10.69509983 1.84612405 -1.67205238 3.19630289 3.98783302
		 -0.55748081 4.42758083 4.42387629 -0.48310947 3.038083076 4.24576283 -0.49977684 2.57601523 4.32087994
		 -0.48719692 2.11413527 2.67730713 -0.48455238 2.10916233 1.7982291 -0.48718357 0 1.7635591
		 -1.11884212 3.72467136 4.25930548 -0.43911076 3.76256084 4.54326057 -0.42573941 3.66658688 4.52066612
		 -1.086232185 3.71772909 4.23755598 -1.24238873 3.71816492 4.12227678 -2.29130268 3.87216949 3.82798576
		 -2.93127155 4.055966377 3.27795553 -3.4111824 4.4785738 1.62452662 -3.40479851 5.18488503 -1.57172537
		 -2.35879183 5.34644651 -2.82219648 -1.071538925 5.41789198 -3.31905317 -1.95245075 3.75653791 3.98916459
		 -1.0019187927 5.19797611 4.025756359 -1.17320538 5.44727373 3.57832289 -0.91164398 0 1.61353099
		 -0.92840958 2.14476442 1.64378238 -0.94255638 2.14662981 2.58827329 -0.95670414 2.60540223 4.14074516
		 -0.90971518 3.055634022 4.15961409 -0.80923176 3.6748004 4.41599464 -0.42022228 5.078526497 5.26676846
		 -0.58963203 4.92980528 4.67824316 -0.67817593 4.86113262 4.26790237 -1.017464638 4.44597197 4.29624557
		 -0.84721655 3.7261374 4.42705297 -0.47707248 3.81416106 4.60705948 -0.8789624 3.78171492 4.49670315
		 -1.1353426 3.75865507 4.3421936 -1.24485207 3.72728729 4.23090696 -1.098647118 3.68022251 4.34830141
		 -0.82565558 3.62900925 4.48192263 -0.43370149 3.6173315 4.56365824 -0.50456905 3.89655638 4.64667988
		 -0.92128277 3.86855268 4.4930892 -1.21823978 3.8334403 4.31804276 -1.35682678 3.73258257 4.098239899
		 -1.12619305 3.60305023 4.24065971 -0.83619004 3.55525589 4.40361214 -0.428404 3.53835964 4.52524519
		 -2.15448666 7.41702938 3.21818566 -2.27985954 9.47325706 2.68222475 -2.35300064 10.11670208 1.79396296
		 -2.39287567 10.346241 0.62816215 -2.43330956 10.10783005 -1.14684081 -2.75980759 8.76477242 -2.4422307
		 -2.89237309 7.51608372 -2.66553593 -2.90570354 6.55920982 -2.66737103 -2.919034 5.88763237 -2.55887604
		 -2.89065552 5.26566601 -2.35272455 -2.64494419 4.47584438 -1.88907254 -1.94540596 3.09979248 -0.6077646
		 -1.8426609 0 -0.59818614 -1.62306499 4.22962713 3.39223742 -1.087555885 4.33046532 3.54124355
		 -0.57694912 4.36177063 3.66040182 -0.53758335 3.22189546 3.63780737 -1.038564682 3.22189546 3.53313589
		 -1.38404274 3.33335114 3.40718722 -1.65011883 3.72797489 3.30457997 -0.49870014 2.13445091 3.48053026
		 -0.94962978 2.16539145 3.40283799 -1.31903267 2.22103858 3.25 -1.77737713 2.4924345 2.80309772
		 -2.42604828 2.99708319 2.068886042 -3.035346985 3.63870215 2.28724861 -3.1997261 4.26727009 2.45124102
		 -3.26403809 4.91921902 2.47603273 -3.38549304 5.50968361 2.39688492 -3.51414108 6.51600361 2.21932173
		 -3.33475304 7.74802589 2.1604557 -2.80608749 9.50010109 2.085197926 -2.30273771 9.86174107 2.26001763
		 -1.71601248 10.06975174 2.38625979;
	setAttr ".vt[664:829]" -0.72772598 10.27613163 2.54448676 -2.44590378 3.066717625 2.45350885
		 -2.96990776 8.020863533 2.90652108 -3.17653847 7.72657204 2.65374827 -3.39636326 6.4790659 2.4303329
		 -3.11514282 4.18274832 2.78192687 -3.18383408 4.85023737 2.80486226 -3.29024839 5.47003412 2.68809819
		 -2.9438839 3.56139398 2.65424109 -2.25213051 8.26303291 3.36110377 -1.60352993 8.36994839 3.6155026
		 -1.068994522 8.37843227 3.726758 -1.15627289 9.69090939 3.071087599 -1.22426891 10.20032406 2.46537328
		 -1.29226494 10.59864044 1.8233391 -1.4351716 10.87279606 0.72416431 -1.65523815 10.45297337 -1.43575978
		 -1.87993431 8.83575249 -3.11067533 -1.97136307 7.55067825 -3.38445544 -1.98088455 6.64117432 -3.42577267
		 -1.99448395 5.90090466 -3.22461581 -1.97397041 5.38216925 -3.029276371 -1.92010021 4.60683727 -2.58086443
		 -1.52175236 3.2024436 -1.052278161 -1.44126225 0 -1.013510585 -2.93692017 7.81081295 2.98436427
		 -2.8287487 7.58824348 3.056317568 -3.020771027 7.59120655 2.89234543 -2.21952057 7.79723167 3.494524
		 -2.24866486 8.0633955 3.46020532 -1.56369877 8.1434679 3.72174501 -1.49582005 7.85404873 3.74307275
		 -1.019118309 7.8280344 3.85439229 -1.049426079 8.13757896 3.84621835 -0.54230976 8.071110725 3.9115448
		 -0.36640549 7.91233444 3.97154498 -0.50739479 7.7401247 3.93210721 -2.8301754 7.6572361 3.10245943
		 -2.91149712 7.76214314 3.030506134 -2.26408005 7.98038101 3.51444364 -2.23725891 7.85422325 3.54876232
		 -1.5502224 8.078103065 3.78186393 -1.51928139 7.92586231 3.80269027 -1.041129112 8.082644463 3.91501331
		 -1.023145676 7.90350628 3.92318702 -0.55904675 8.019585609 3.97926879 -0.52252102 7.83084011 3.99983096
		 -2.94525909 7.64928246 2.92911887 -0.44579983 7.92228603 4.0366745 -3.48996353 3.96844435 0.432293
		 -3.27065468 4.028675079 -0.43167865 -3.30986595 5.0031147003 -0.73965871 -3.56084824 4.77931023 0.47953525
		 -3.60215378 5.35966873 0.52516723 -3.40271568 5.58398438 -0.56443554 -3.5419693 5.96435785 -0.16575748
		 -3.60144424 6.10161304 0.18089017 -3.68634987 5.90044737 0.41748607 -3.35664558 3.86002445 0.026102424
		 -2.15337849 2.88130355 -0.048146002 -2.056658268 0 -0.02325967 -4.57930946 3.99426103 -0.95092189
		 -4.73497581 3.9461081 -0.49692672 -4.93506241 5.80257702 -0.31647056 -4.6779232 5.84264374 -0.77959472
		 -4.35835838 6.051898956 0.043144077 -4.038509369 6.089130878 -0.49409512 -3.90651703 3.79663873 -0.50467038
		 -4.10635948 3.75451684 -0.090493165 -3.79013252 4.996418 -0.94019449 -4.89141464 4.8571167 -1.20289767
		 -5.10798836 4.81146812 -0.7540465 -4.18215561 4.032300949 0.083034933 -4.35776329 5.75225925 0.15648526
		 -4.86610413 4.82505035 -0.43940651 -3.71431541 5.014165878 0.36104894 -3.85798454 5.59151506 0.43751281
		 -3.79865265 4.22565937 0.3007181 -4.68458176 5.50915241 -0.20203759 -4.59782219 4.18670273 -0.28567693
		 -4.12474632 4.32965994 -0.1193902 -4.41532326 4.42841148 -0.42633668 -4.61817551 4.86086082 -0.56573862
		 -4.46742058 5.32663393 -0.36715728 -4.24309921 5.49717236 -0.071262784 -3.87006378 5.3971324 0.1476222
		 -3.7102108 5.096200943 0.08466588 -3.83826256 4.46979523 0.040585428 -3.97725582 4.94578552 0.31343266
		 -4.20481873 4.42938662 0.23889244 -4.23321533 4.60442448 0.0523853 -4.019435406 4.95809746 0.10239705
		 -3.73682785 5.268713 0.42109835 -4.006439209 3.57690978 -0.29758179 -4.78969193 3.83415079 -0.75749236
		 -5.094280243 4.81908607 -0.97847205 -4.82442474 5.97921085 -0.59737146 -4.22636223 6.27006006 -0.20155406
		 -3.16171265 7.0074338913 2.81959772 -3.29316521 7.10281849 2.54204059 -3.44129181 7.13201427 2.19039774
		 -3.57847214 7.20500278 1.70960951 -3.60592461 7.4291048 0.38853371 -3.37561321 8.034172058 -1.68197083
		 -2.83577538 8.11024094 -2.57035685 -2.29388046 8.17953014 -3.016573429 -1.9095459 8.19321537 -3.24756527
		 -1.033975601 8.20689964 -3.5597477 -2.71563387 6.83355045 3.0050654411 -2.65327072 7.38303185 3.21233654
		 -1.09568429 5.32274628 3.77798152 -1.55408287 5.18972015 3.68766594 -2.1887989 5.27143764 3.53538775
		 -0.74738979 5.71321821 3.86829686 -0.5113821 6.35071135 3.82885814 -2.65814781 5.5415864 3.17161417
		 -3.084197998 6.41956806 2.8803978 -2.18556404 7.61759186 3.42915201 -1.44760323 7.63406467 3.68054032
		 -0.92000008 7.51239204 3.80534506 -2.92349434 6.90310383 3.032104731 -0.62806606 7.16508579 3.77195764
		 -0.44970894 7.43296432 3.92840838 -0.76325703 7.78407955 3.89324975 -0.77283382 7.86717319 3.96150899
		 -0.80008793 8.051115036 3.94714117 -0.79586792 8.10434532 3.87888145 -0.80172634 8.38267326 3.78238583
		 -0.90538979 9.71288109 3.12375307 -0.97599697 10.23822784 2.50493002 -1.04660511 10.65371609 1.83473158
		 -1.16871548 10.94613075 0.74646544 -1.3412199 10.52363491 -1.51374078 -1.41478205 8.85799599 -3.27035666
		 -1.43982267 8.20228672 -3.42416191 -1.49706793 7.5465765 -3.57796717 -1.50563765 6.65690041 -3.60697699
		 -1.51830053 5.91088009 -3.3685813 -1.52989101 5.40003061 -3.17416477 -1.50539112 4.61433315 -2.76682901
		 -1.29138565 3.20861554 -1.22539067 -1.21645927 0 -1.18176222 -0.68582058 7.43814373 3.85412407
		 -1.027112007 6.44004059 3.81307912 -1.62287426 6.45650482 3.8673017 -2.17967129 6.45636463 3.67162085
		 -2.42311668 6.45858955 3.47645402 -2.66228676 6.44944191 3.2443397 -1.45512772 7.52440357 3.62796116
		 -0.89194107 7.32121372 3.71300244 -0.74912357 7.14227676 3.64819694 -0.62428761 6.38227844 3.72524762
		 -0.85105324 5.77873039 3.73022509 -1.14465904 5.3997879 3.65664959 -1.54504776 5.27889252 3.58307409
		 -2.16599941 5.33643818 3.4162972 -2.56538463 5.57487631 3.15940547 -2.95166969 6.41791534 2.90279841
		 -2.77700043 6.85832596 3.039124012 -2.54875374 7.29697132 3.20140171 -2.16178226 7.50290108 3.38869262
		 -0.80806732 7.23382378 3.69919348 -1.12749481 6.89881229 3.73649263 -1.55291271 7.024617195 3.70199394
		 -2.16959763 7.030614853 3.48950386 -2.44498634 6.93756199 3.31520033;
	setAttr ".vt[830:947]" -2.66702461 6.76538849 3.13164473 -3.57904053 6.10857725 1.68032289
		 -3.46116447 6.012843609 2.30810332 -3.35748601 5.97455025 2.55921555 -3.22110343 5.91710949 2.935884
		 -2.93202591 5.87393141 3.026005983 -2.81275749 5.87876558 3.031101942 -2.75151777 5.88418674 3.037495375
		 -1.027112007 6.44004059 3.71616268 -1.62287426 6.45650482 3.72695398 -2.17967129 6.45636463 3.53127313
		 -2.42311668 6.45858955 3.3361063 -2.63508844 6.44944191 3.13624763 -0.95387459 2.30383039 3.96982384
		 -0.50152874 2.28732562 4.048892498 -1.41080379 2.39086127 3.64610934 -1.88967323 2.60135746 3.16546726
		 -0.53102493 4.10368681 4.51207399 -0.9693737 4.081899166 4.39592886 -1.43515491 4.0076880455 4.1928997
		 -1.61558914 3.74499011 4.044743538 -1.39912319 3.51126266 4.10338879 -0.85301495 3.40867543 4.27075577
		 -0.44762707 3.39461517 4.38891649 -0.16720486 4.90831947 5.26019382 -0.22537708 4.60942936 4.52384663
		 -0.20751381 4.095454216 4.56327105 -0.17747992 3.81255412 4.65543652 -0.16388607 3.7596221 4.58950424
		 -0.18964958 3.89058089 4.70330858 -0.23368549 4.36176968 3.70664549 -0.2209816 4.72609091 4.77246475
		 -0.96478939 9.82042885 -2.75047064 -1.37800121 9.77722073 -2.66854668 -1.76758623 9.7307682 -2.54971552
		 -2.14761496 9.64312458 -2.38512278 -2.60587311 9.52708244 -2.036471367 -3.16146183 9.18274784 -1.18408918
		 -3.3156662 8.93439007 0.51614892 -3.26146889 8.67386723 1.68757701 -3.18110466 8.46805954 2.11118984
		 -3.61630058 7.038227081 -0.34248346 -3.57944775 7.64599991 -0.42535248 -3.49632072 8.25230312 -0.42380396
		 -3.27197266 9.058568954 -0.33397013 -2.88313293 9.77180862 -0.23680758 -2.41309261 10.34943104 -0.28159302
		 -1.99442291 10.63062477 -0.33434054 -1.54520512 10.78528023 -0.37805143 -1.25496769 10.85727787 -0.40589136
		 -0.90662766 10.9145689 -0.41732964 -0.21823168 4.41272449 4.48249817 -1.38404274 3.72487426 2.78245211
		 -1.038564682 3.720438 2.71619272 -0.53758335 3.720438 2.73795414 -0.26879168 3.72066641 2.75157022
		 -0.26879168 3.22763634 3.64906359 -0.20479107 3.66993093 4.54627419 -0.20862103 3.6193769 4.60459137
		 -0.20607281 3.53876066 4.5849061 -0.22381353 3.39236522 4.44067097 -0.24155474 3.032170296 4.29780483
		 -0.24988842 2.56176853 4.35893345 -0.25076437 2.27628374 4.073349953 -0.24935007 2.12821674 3.5034132
		 -0.24359846 2.10634732 2.76634073 -0.24227619 2.098266602 1.82875919 -0.24359179 0 1.80110574
		 -0.19878578 4.2468071 4.16015577 -0.50802994 4.24916649 4.11391211 -1.029635429 4.19480562 3.99622893
		 -1.37095356 4.11269379 3.837852 -1.44625378 3.7048316 3.72550917 -1.23513746 3.38774586 3.83445215
		 -0.92389822 3.26383281 3.98664594 -0.47358274 3.2572403 4.091317654 -0.23679137 3.26453209 4.10974932
		 -0.25123858 4.21732426 3.22910786 -0.55726624 4.21713972 3.19917798 -1.063060284 4.19181395 3.12871814
		 -1.50355387 4.1138258 3.087344646 -1.38404274 3.38874602 3.094819546 -1.038564682 3.2949903 3.12466431
		 -0.53758335 3.2949903 3.18788075 -0.26879168 3.29981947 3.20031691 -2.80049348 6.38044882 2.54803324
		 -2.67493868 5.87866306 2.65696144 -0.9730894 5.82000542 3.20487309 -0.82823086 6.35890579 3.23731208
		 -2.83548164 6.39864445 2.89944077 -2.70547247 5.8814249 3.012233734 -0.94324076 5.81831598 3.57958531
		 -0.79324257 6.37633657 3.61317539 -4.24481821 4.72256565 0.14138371 -4.16345644 4.85139847 0.15700933
		 -4.15018702 4.84952831 0.2351864 -4.23786879 4.66065168 0.21269538 -2.49636006 5.76257563 3.27673912
		 -2.13855743 5.63678837 3.50212312 -2.45880127 5.76573753 3.24402571 -2.12104559 5.64342737 3.44656706
		 -1.094797969 5.7013669 3.68696237 -1.24122691 5.64253378 3.70795727 -1.24430299 5.65681076 3.63938355
		 -1.12464666 5.71137619 3.62814426 -1.5480448 5.58976793 3.67078114 -1.5346905 5.60796309 3.61673951
		 -0.47866762 5.44496107 4.3601346 -0.95636642 5.49028778 3.81410766 -0.69979864 5.41405392 4.10715723
		 -0.60897011 5.40008163 4.22961855 -1.027216673 5.53434038 3.70128345 -1.069279909 5.59501505 3.602355
		 -2.51357532 5.66333437 3.23348999 -2.14921522 5.50073433 3.44536519 -1.53667092 5.45408535 3.62109065
		 -1.20721614 5.55534935 3.66404486 -1.079487085 5.6375556 3.64119673;
	setAttr -s 1877 ".ed";
	setAttr ".ed[0:165]"  6 305 1 8 56 1 9 60 1 8 310 1 10 108 1 12 95 1 14 59 1
		 16 201 1 19 166 1 6 412 1 19 420 1 8 406 1 21 55 1 17 426 1 22 129 1 23 126 1 22 58 1
		 30 64 1 31 66 1 30 57 1 11 413 1 6 418 1 28 36 1 28 35 1 12 444 1 36 139 1 27 36 1
		 27 140 1 42 28 1 37 48 1 47 94 0 12 49 1 49 445 0 9 50 1 50 61 0 51 262 0 54 17 1
		 55 337 1 54 425 1 56 338 1 55 407 1 57 340 1 56 309 1 58 342 1 57 65 1 59 344 1 58 128 1
		 60 345 1 61 346 0 60 61 1 23 256 1 25 63 1 64 22 1 65 58 1 64 65 1 66 23 1 65 341 1
		 71 217 1 72 167 1 71 422 1 73 168 1 72 410 1 74 169 1 73 307 1 75 170 1 74 75 1 76 171 1
		 75 76 1 76 127 1 79 175 0 78 79 1 63 89 1 93 37 1 94 48 0 93 94 1 95 185 1 96 37 1
		 95 443 1 97 93 1 96 97 1 97 98 1 99 251 1 98 99 1 99 125 1 103 11 1 105 71 1 106 54 1
		 105 216 1 107 17 1 106 107 1 108 397 1 108 439 1 109 0 1 77 78 1 59 60 1 14 9 1 111 137 1
		 113 135 1 114 134 1 113 114 1 115 133 0 114 115 1 116 144 1 118 145 1 120 152 1 119 435 1
		 121 150 1 120 138 1 0 123 1 121 122 1 123 2 1 125 100 1 125 254 1 127 77 1 126 172 1
		 128 59 1 127 223 1 129 14 1 128 129 1 122 116 1 27 35 1 133 48 0 134 37 1 133 134 1
		 135 96 1 134 135 1 137 109 1 138 121 1 137 395 1 139 40 1 139 140 1 140 141 1 141 142 1
		 2 68 1 68 130 1 122 149 1 109 130 1 123 130 1 68 392 1 145 154 1 147 144 1 148 116 1
		 147 148 1 149 158 1 148 149 1 150 159 1 149 150 1 151 138 1 150 151 1 152 161 1 151 152 1
		 153 119 1 152 436 1 154 389 1 156 147 1 157 148 1 156 157 1 158 393 1 157 158 1 159 394 1
		 158 159 1 160 151 1 159 160 1 161 396 1 160 161 1 162 153 1;
	setAttr ".ed[166:331]" 161 437 1 165 105 1 166 71 1 165 166 1 167 20 1 166 421 1
		 168 6 1 167 411 1 169 31 1 168 306 1 170 66 1 169 170 1 171 23 1 170 171 1 172 127 1
		 171 172 1 175 51 0 116 450 1 144 449 1 176 177 1 118 446 1 119 456 1 120 454 1 180 434 1
		 138 453 1 181 182 1 121 452 1 122 451 1 183 184 1 184 176 1 182 183 1 177 178 1 198 165 1
		 199 105 1 198 199 1 200 106 1 199 215 1 201 107 1 200 201 1 1 2 1 123 124 1 195 302 1
		 1 124 1 124 206 1 192 193 1 193 207 1 195 205 1 192 206 1 191 192 1 1 207 1 70 164 1
		 164 198 1 164 210 1 16 53 1 53 200 1 53 333 1 70 199 1 99 191 1 125 192 1 100 193 1
		 103 196 1 206 207 1 70 211 1 210 211 1 214 70 1 215 334 1 214 215 1 216 335 1 215 216 1
		 217 336 1 216 217 1 218 72 1 217 423 1 219 73 1 218 409 1 220 74 1 219 308 1 221 75 1
		 220 221 1 222 76 1 221 222 1 223 343 1 222 223 1 224 77 1 223 224 1 225 78 1 224 225 1
		 226 79 0 225 226 1 213 214 1 211 213 1 231 210 1 232 211 1 235 213 1 232 231 1 235 232 1
		 231 241 1 241 240 1 241 242 1 232 243 1 243 241 1 243 244 1 242 244 1 235 245 1 245 243 1
		 245 246 1 244 246 1 252 260 1 253 126 1 255 100 1 251 254 1 254 255 1 253 252 1 256 253 1
		 13 93 1 4 261 1 13 47 1 78 174 1 174 175 1 13 98 1 4 15 1 15 252 1 77 173 1 173 174 1
		 15 126 1 172 173 1 15 173 1 4 174 1 4 51 1 13 251 1 4 252 1 260 251 1 261 13 1 260 261 1
		 262 47 0 261 262 1 277 294 1 251 270 1 275 278 1 254 277 1 264 270 1 264 273 1 272 297 1
		 265 273 1 269 295 1 263 296 1 263 269 1 263 272 1 294 278 1 294 255 1 252 269 1 269 271 1
		 263 271 1 271 272 1 252 271 1 271 256 1 295 270 1 260 295 1 296 264 1 295 296 1 297 273 1
		 296 297 1 265 267 1 267 275 1 265 298 1 297 298 1;
	setAttr ".ed[332:497]" 266 272 1 266 271 1 266 298 1 301 205 1 302 196 1 301 302 1
		 303 103 1 302 303 1 305 31 1 306 169 1 305 306 1 307 74 1 306 307 1 308 220 1 307 308 1
		 309 57 1 308 339 1 310 30 1 309 310 1 239 240 1 239 249 1 239 242 1 240 249 1 69 315 1
		 69 91 1 91 316 1 2 91 1 68 69 1 62 63 1 33 320 1 90 360 1 230 242 1 228 312 1 228 230 1
		 230 321 1 300 301 1 228 239 1 33 205 1 300 324 1 33 300 1 228 300 1 62 318 1 312 321 1
		 312 324 1 320 324 1 315 316 1 230 233 1 233 322 1 233 234 1 233 244 1 313 327 1 234 246 1
		 321 322 1 327 89 1 330 245 1 331 235 1 330 331 1 332 213 1 331 332 1 333 214 1 332 333 1
		 334 200 1 333 334 1 335 106 1 334 335 1 336 54 1 335 336 1 337 218 1 336 424 1 338 219 1
		 337 408 1 339 309 1 338 339 1 340 220 1 339 340 1 341 221 1 340 341 1 342 222 1 341 342 1
		 343 128 1 342 343 1 344 224 1 343 344 1 345 225 1 344 345 1 346 226 0 345 346 1 329 330 1
		 248 329 1 234 323 1 62 88 1 88 89 1 318 325 1 234 328 1 238 326 1 326 347 1 326 327 1
		 88 326 1 238 328 1 328 329 1 238 248 1 322 323 1 323 347 1 88 325 1 238 313 1 246 329 1
		 328 347 1 325 347 1 349 350 1 353 322 1 354 323 1 353 354 1 355 325 1 354 366 1 356 318 1
		 355 356 1 359 315 1 360 316 1 359 360 1 363 324 1 364 312 1 363 364 1 365 321 1 364 365 1
		 365 353 1 366 355 1 366 347 1 84 311 1 311 363 1 362 363 1 84 364 1 83 163 1 163 365 1
		 86 355 1 86 354 1 83 353 1 83 368 1 350 369 1 83 86 1 349 368 1 84 163 1 163 369 1
		 320 362 1 368 369 1 102 303 1 102 195 1 349 380 1 350 381 1 380 381 0 382 383 0 379 380 0
		 381 382 0 187 384 1 112 385 1 186 187 1 38 386 1 188 189 1 189 387 1 136 137 1 111 112 1
		 112 136 1 38 92 1 10 440 1 186 385 1 10 388 1 185 442 1;
	setAttr ".ed[498:663]" 188 386 1 38 136 1 136 384 1 187 188 1 38 109 1 113 186 1
		 135 187 1 96 188 1 97 189 1 5 92 1 92 387 1 189 190 1 190 202 1 0 92 1 190 191 1
		 191 209 1 3 124 1 0 3 1 206 209 1 98 190 1 3 209 1 202 209 1 3 5 1 5 202 1 388 185 1
		 202 387 1 386 387 1 384 386 1 384 385 1 385 441 1 392 157 1 393 130 1 392 393 1 394 109 1
		 393 394 1 395 160 1 394 395 1 396 111 1 395 396 1 397 162 1 396 438 1 29 398 1 45 405 1
		 41 398 1 40 41 1 41 140 1 45 141 1 146 401 1 118 402 1 117 146 1 117 144 1 155 403 1
		 145 401 1 146 155 1 146 147 1 117 402 1 179 404 1 117 448 1 154 403 1 155 156 1 46 405 1
		 40 29 1 404 178 1 401 403 1 401 402 1 402 447 1 398 405 1 29 46 1 41 45 1 24 46 1
		 406 21 1 407 56 1 406 407 1 408 338 1 407 408 1 409 219 1 408 409 1 410 73 1 409 410 1
		 411 168 1 410 411 1 412 20 1 411 412 1 413 19 1 412 419 1 413 414 1 203 204 1 196 415 1
		 18 203 1 204 301 1 196 204 1 18 164 1 18 197 1 197 198 1 103 414 1 414 415 1 104 165 1
		 203 210 1 227 231 1 203 227 1 227 229 1 227 240 1 204 229 1 229 300 1 228 229 1 229 249 1
		 104 414 1 19 104 1 197 415 1 104 197 1 203 415 1 418 11 1 419 413 1 418 419 1 420 20 1
		 419 420 1 421 167 1 420 421 1 422 72 1 421 422 1 423 218 1 422 423 1 424 337 1 423 424 1
		 425 55 1 424 425 1 426 21 1 425 426 1 11 304 1 304 417 1 417 418 1 303 304 1 31 416 1
		 32 102 1 66 257 1 298 299 1 268 271 1 256 257 1 257 268 1 266 268 1 268 299 1 267 299 1
		 32 304 1 416 417 1 32 416 1 305 417 1 257 416 1 68 143 1 143 391 1 391 392 1 142 143 1
		 399 427 1 39 399 1 39 142 1 110 143 1 39 110 1 110 390 1 390 391 1 400 403 1 155 390 1
		 390 400 1 156 391 1 24 399 1 399 405 1 39 45 1 389 400 1;
	setAttr ".ed[664:829]" 400 427 1 110 427 1 427 428 1 24 428 1 389 428 1 176 461 1
		 177 460 1 429 430 1 180 466 1 181 464 1 182 463 1 432 430 1 183 462 1 184 429 1 178 459 1
		 179 457 1 404 458 1 431 433 1 433 432 1 434 181 1 433 465 1 435 120 1 434 455 1 436 153 1
		 435 436 1 437 162 1 436 437 1 438 397 1 437 438 1 439 111 1 438 439 1 440 112 1 439 440 1
		 441 388 1 440 441 1 442 186 1 441 442 1 443 113 1 442 443 1 444 114 1 443 444 1 445 115 0
		 444 445 1 446 179 1 447 404 1 446 447 1 448 178 1 447 448 1 449 177 1 448 449 1 450 176 1
		 449 450 1 451 184 1 450 451 1 452 183 1 451 452 1 453 182 1 452 453 1 454 181 1 453 454 1
		 455 435 1 454 455 1 456 180 1 455 456 1 457 431 1 458 433 1 457 458 1 459 432 1 458 459 1
		 460 430 1 459 460 1 461 429 1 460 461 1 462 429 1 463 430 1 462 463 1 464 432 1 463 464 1
		 465 434 1 464 465 1 466 431 1 465 466 1 80 362 1 351 352 1 352 371 1 350 351 1 351 370 1
		 80 311 1 311 371 1 370 371 1 84 370 1 369 370 1 351 382 1 80 352 1 352 383 1 81 356 1
		 81 86 1 81 348 1 348 367 1 348 349 1 367 368 1 86 367 1 348 379 1 80 471 1 467 468 0
		 81 474 1 469 470 0 471 467 0 472 468 0 471 472 1 473 469 0 474 470 0 474 379 0 270 274 1
		 274 279 1 264 281 1 251 279 1 277 279 1 279 291 1 290 291 1 291 292 1 292 293 1 274 281 1
		 281 283 1 274 282 1 282 289 1 279 289 1 289 292 1 277 290 1 290 293 1 282 283 1 283 289 1
		 275 280 1 275 286 1 278 287 1 265 280 1 276 281 1 273 276 1 287 288 1 284 285 1 285 286 1
		 286 287 1 276 284 1 276 280 1 280 285 1 277 288 1 288 294 1 288 293 1 283 284 1 284 288 1
		 288 289 1 285 287 1 292 475 1 293 476 1 475 476 1 290 477 1 477 476 1 291 478 1 477 478 1
		 478 475 1 383 471 0 52 332 1 52 53 1 7 52 1 52 236 1 236 331 1;
	setAttr ".ed[830:995]" 236 247 1 247 330 1 7 479 1 212 237 1 236 237 1 237 250 1
		 247 248 1 247 250 1 237 238 1 248 250 1 212 313 1 7 16 1 212 479 1 236 479 1 90 498 1
		 480 481 1 480 482 1 482 483 0 481 483 1 473 487 0 486 487 0 481 488 1 483 489 0 488 489 1
		 489 486 0 378 480 1 472 482 0 35 43 1 27 44 1 44 141 1 26 44 1 42 43 1 43 490 1 25 491 1
		 314 492 1 34 493 1 131 314 1 69 131 1 26 68 1 43 44 1 26 494 1 34 490 1 131 493 1
		 26 131 1 25 34 1 34 62 1 317 318 1 34 317 1 317 357 1 317 492 1 314 315 1 26 142 1
		 356 357 1 491 42 1 492 493 1 493 494 1 490 494 1 490 491 1 497 480 1 498 481 1 497 498 1
		 358 359 1 314 358 1 358 495 1 81 85 1 85 473 1 473 474 1 85 357 1 357 495 1 492 495 1
		 82 359 1 82 90 1 498 499 1 485 488 1 488 499 1 485 500 1 132 358 1 82 132 1 132 496 1
		 484 485 1 485 486 1 496 501 1 85 496 1 85 484 1 484 487 1 82 499 1 499 500 1 495 496 1
		 484 501 1 132 500 1 500 501 1 67 375 1 375 376 1 67 319 1 1 67 1 67 91 1 208 374 1
		 374 375 1 67 208 1 207 208 1 361 377 1 377 378 1 87 361 1 360 361 1 87 90 1 316 319 1
		 319 361 1 319 376 1 376 377 1 33 375 1 320 376 1 362 377 1 255 259 1 194 373 1 373 374 1
		 193 194 1 194 208 1 100 101 1 101 194 1 101 372 1 372 373 1 259 278 1 195 373 1 205 374 1
		 102 372 1 258 259 1 259 267 1 257 258 1 258 299 1 258 372 1 101 259 1 32 258 1 80 378 1
		 87 497 1 87 378 1 378 472 1 508 767 1 8 537 1 9 541 1 14 540 1 513 633 1 508 867 1
		 513 875 1 21 536 1 515 599 1 22 539 1 518 545 1 30 538 1 509 868 1 508 873 1 28 522 1
		 12 896 1 517 36 1 517 611 1 523 531 1 530 572 0 49 897 0 50 542 0 532 724 0 535 17 1
		 536 796 1 535 880 1 537 797 1 536 862 1 538 799 1 537 771 1;
	setAttr ".ed[996:1161]" 539 801 1 538 544 1 540 803 1 539 601 1 541 804 1 542 805 0
		 541 542 1 515 718 1 544 539 1 64 544 1 545 515 1 544 800 1 550 679 1 551 634 1 550 877 1
		 552 635 1 551 865 1 553 636 1 552 769 1 554 637 1 553 554 1 555 638 1 554 555 1 555 600 1
		 558 642 0 557 558 1 571 523 1 572 531 0 571 572 1 573 523 1 95 895 1 574 571 1 573 574 1
		 574 575 1 576 713 1 575 576 1 576 598 1 580 509 1 582 550 1 583 535 1 582 678 1 583 107 1
		 108 891 1 584 502 1 556 557 1 540 541 1 586 609 1 588 607 1 589 606 1 588 589 1 590 605 0
		 589 590 1 591 615 1 593 622 1 119 887 1 594 620 1 593 610 1 502 596 1 594 595 1 596 504 1
		 598 577 1 598 716 1 600 556 1 599 639 1 601 540 1 600 685 1 601 129 1 595 591 1 517 522 1
		 605 531 0 606 523 1 605 606 1 607 573 1 606 607 1 609 584 1 610 594 1 609 852 1 139 611 1
		 611 612 1 612 613 1 504 547 1 547 602 1 595 619 1 584 602 1 596 602 1 547 849 1 617 615 1
		 618 591 1 617 618 1 619 626 1 618 619 1 620 627 1 619 620 1 621 610 1 620 621 1 622 629 1
		 621 622 1 622 888 1 624 617 1 625 618 1 624 625 1 626 850 1 625 626 1 627 851 1 626 627 1
		 628 621 1 627 628 1 629 853 1 628 629 1 629 889 1 632 582 1 633 550 1 632 633 1 634 514 1
		 633 876 1 635 508 1 634 866 1 636 518 1 635 768 1 637 545 1 636 637 1 638 515 1 637 638 1
		 639 600 1 638 639 1 642 532 0 591 901 1 615 900 1 643 644 1 593 905 1 180 886 1 610 904 1
		 646 647 1 594 903 1 595 902 1 648 649 1 649 643 1 647 648 1 644 645 1 662 632 1 663 582 1
		 662 663 1 664 583 1 663 677 1 664 201 1 503 504 1 596 597 1 659 764 1 503 597 1 597 669 1
		 656 657 1 657 670 1 659 668 1 656 669 1 655 656 1 503 670 1 549 631 1 631 662 1 631 673 1
		 16 534 1 534 664 1 534 792 1 549 663 1 576 655 1 598 656 1 577 657 1;
	setAttr ".ed[1162:1327]" 580 660 1 669 670 1 549 674 1 673 674 1 676 549 1 677 793 1
		 676 677 1 678 794 1 677 678 1 679 795 1 678 679 1 680 551 1 679 878 1 681 552 1 680 864 1
		 682 553 1 681 770 1 683 554 1 682 683 1 684 555 1 683 684 1 685 802 1 684 685 1 686 556 1
		 685 686 1 687 557 1 686 687 1 688 558 0 687 688 1 675 676 1 674 675 1 693 673 1 694 674 1
		 697 675 1 694 693 1 697 694 1 693 703 1 703 702 1 703 704 1 694 705 1 705 703 1 705 706 1
		 704 706 1 697 707 1 707 705 1 707 708 1 706 708 1 714 722 1 715 599 1 717 577 1 713 716 1
		 716 717 1 715 714 1 718 715 1 510 571 1 506 723 1 510 530 1 557 641 1 641 642 1 510 575 1
		 506 511 1 511 714 1 556 640 1 640 641 1 511 599 1 639 640 1 511 640 1 506 641 1 506 532 1
		 510 713 1 506 714 1 722 713 1 723 510 1 722 723 1 724 530 0 723 724 1 739 756 1 713 732 1
		 737 740 1 716 739 1 726 732 1 726 735 1 734 759 1 727 735 1 731 757 1 725 758 1 725 731 1
		 725 734 1 756 740 1 756 717 1 714 731 1 731 733 1 725 733 1 733 734 1 714 733 1 733 718 1
		 757 732 1 722 757 1 758 726 1 757 758 1 759 735 1 758 759 1 727 729 1 729 737 1 727 760 1
		 759 760 1 728 734 1 728 733 1 728 760 1 763 668 1 764 660 1 763 764 1 765 580 1 764 765 1
		 767 518 1 768 636 1 767 768 1 769 553 1 768 769 1 770 682 1 769 770 1 771 538 1 770 798 1
		 771 310 1 701 702 1 701 711 1 701 704 1 702 711 1 548 775 1 548 569 1 569 776 1 504 569 1
		 547 548 1 543 63 1 520 780 1 568 819 1 692 704 1 690 773 1 690 692 1 692 781 1 762 763 1
		 690 701 1 520 668 1 762 784 1 520 762 1 690 762 1 543 778 1 773 781 1 773 784 1 780 784 1
		 775 776 1 692 695 1 695 782 1 695 696 1 695 706 1 696 708 1 781 782 1 789 707 1 790 697 1
		 789 790 1 791 675 1 790 791 1 792 676 1 791 792 1 793 664 1 792 793 1;
	setAttr ".ed[1328:1493]" 794 583 1 793 794 1 795 535 1 794 795 1 796 680 1 795 879 1
		 797 681 1 796 863 1 798 771 1 797 798 1 799 682 1 798 799 1 800 683 1 799 800 1 801 684 1
		 800 801 1 802 601 1 801 802 1 803 686 1 802 803 1 804 687 1 803 804 1 805 688 0 804 805 1
		 788 789 1 710 788 1 696 783 1 543 567 1 567 89 1 778 785 1 696 787 1 700 786 1 786 806 1
		 786 327 1 567 786 1 700 787 1 787 788 1 700 710 1 782 783 1 783 806 1 567 785 1 700 313 1
		 708 788 1 787 806 1 785 806 1 808 809 1 812 782 1 813 783 1 812 813 1 814 785 1 813 825 1
		 815 778 1 814 815 1 818 775 1 819 776 1 818 819 1 822 784 1 823 773 1 822 823 1 824 781 1
		 823 824 1 824 812 1 825 814 1 825 806 1 563 772 1 772 822 1 821 822 1 563 823 1 562 630 1
		 630 824 1 565 814 1 565 813 1 562 812 1 562 827 1 809 828 1 562 565 1 808 827 1 563 630 1
		 630 828 1 780 821 1 827 828 1 579 765 1 579 659 1 808 839 1 809 840 1 839 840 0 841 842 0
		 838 839 0 840 841 0 651 843 1 587 844 1 650 651 1 524 845 1 652 653 1 653 846 1 608 609 1
		 586 587 1 587 608 1 524 570 1 10 892 1 650 844 1 185 894 1 652 845 1 524 608 1 608 843 1
		 651 652 1 524 584 1 588 650 1 607 651 1 573 652 1 574 653 1 507 570 1 570 846 1 653 654 1
		 654 665 1 502 570 1 654 655 1 655 672 1 505 597 1 502 505 1 669 672 1 575 654 1 505 672 1
		 665 672 1 505 507 1 507 665 1 665 846 1 845 846 1 843 845 1 843 844 1 844 893 1 849 625 1
		 850 602 1 849 850 1 851 584 1 850 851 1 852 628 1 851 852 1 853 586 1 852 853 1 853 890 1
		 29 854 1 529 861 1 526 854 1 40 526 1 526 611 1 529 612 1 616 857 1 118 858 1 592 616 1
		 592 615 1 623 859 1 145 857 1 616 623 1 616 617 1 592 858 1 179 860 1 592 899 1 154 859 1
		 623 624 1 46 861 1 860 645 1 857 859 1 857 858 1 858 898 1 854 861 1;
	setAttr ".ed[1494:1659]" 526 529 1 862 537 1 406 862 1 863 797 1 862 863 1 864 681 1
		 863 864 1 865 552 1 864 865 1 866 635 1 865 866 1 867 514 1 866 867 1 868 513 1 867 874 1
		 868 869 1 666 667 1 660 870 1 512 666 1 667 763 1 660 667 1 512 631 1 512 661 1 661 662 1
		 580 869 1 869 870 1 581 632 1 666 673 1 689 693 1 666 689 1 689 691 1 689 702 1 667 691 1
		 691 762 1 690 691 1 691 711 1 581 869 1 513 581 1 661 870 1 581 661 1 666 870 1 873 509 1
		 874 868 1 873 874 1 875 514 1 874 875 1 876 634 1 875 876 1 877 551 1 876 877 1 878 680 1
		 877 878 1 879 796 1 878 879 1 880 536 1 879 880 1 880 426 1 509 766 1 766 872 1 872 873 1
		 765 766 1 518 871 1 519 579 1 545 719 1 760 761 1 730 733 1 718 719 1 719 730 1 728 730 1
		 730 761 1 729 761 1 519 766 1 871 872 1 519 871 1 767 872 1 719 871 1 547 614 1 614 848 1
		 848 849 1 613 614 1 855 881 1 525 855 1 525 613 1 585 614 1 525 585 1 585 847 1 847 848 1
		 856 859 1 623 847 1 847 856 1 624 848 1 24 855 1 855 861 1 525 529 1 389 856 1 856 881 1
		 585 881 1 881 428 1 643 910 1 644 909 1 882 883 1 646 913 1 647 912 1 884 883 1 648 911 1
		 649 882 1 645 908 1 860 907 1 431 885 1 885 884 1 886 646 1 885 914 1 887 593 1 886 906 1
		 888 153 1 887 888 1 889 162 1 888 889 1 890 397 1 889 890 1 891 586 1 890 891 1 892 587 1
		 891 892 1 893 388 1 892 893 1 894 650 1 893 894 1 895 588 1 894 895 1 896 589 1 895 896 1
		 897 590 0 896 897 1 898 860 1 446 898 1 899 645 1 898 899 1 900 644 1 899 900 1 901 643 1
		 900 901 1 902 649 1 901 902 1 903 648 1 902 903 1 904 647 1 903 904 1 905 646 1 904 905 1
		 906 887 1 905 906 1 906 456 1 907 885 1 457 907 1 908 884 1 907 908 1 909 883 1 908 909 1
		 910 882 1 909 910 1 911 882 1 912 883 1 911 912 1 913 884 1 912 913 1;
	setAttr ".ed[1660:1825]" 914 886 1 913 914 1 914 466 1 559 821 1 810 811 1 811 830 1
		 809 810 1 810 829 1 559 772 1 772 830 1 829 830 1 563 829 1 828 829 1 810 841 1 559 811 1
		 811 842 1 560 815 1 560 565 1 560 807 1 807 826 1 807 808 1 826 827 1 565 826 1 807 838 1
		 559 919 1 915 916 0 560 922 1 917 918 0 919 915 0 920 916 0 919 920 1 921 917 0 922 918 0
		 922 838 0 732 736 1 736 741 1 726 743 1 713 741 1 739 741 1 741 753 1 752 753 1 753 754 1
		 754 755 1 736 743 1 743 745 1 736 744 1 744 751 1 741 751 1 751 754 1 739 752 1 752 755 1
		 744 745 1 745 751 1 737 742 1 737 748 1 740 749 1 727 742 1 738 743 1 735 738 1 749 750 1
		 746 747 1 747 748 1 748 749 1 738 746 1 738 742 1 742 747 1 739 750 1 750 756 1 750 755 1
		 745 746 1 746 750 1 750 751 1 747 749 1 754 923 1 755 924 1 923 924 1 752 925 1 925 924 1
		 753 926 1 925 926 1 926 923 1 842 919 0 533 791 1 533 534 1 7 533 1 533 698 1 698 790 1
		 698 709 1 709 789 1 212 699 1 698 699 1 699 712 1 709 710 1 709 712 1 699 700 1 710 712 1
		 698 479 1 568 944 1 927 928 1 927 929 1 929 930 0 928 930 1 921 934 0 933 934 0 928 935 1
		 930 936 0 935 936 1 936 933 0 837 927 1 920 929 0 522 527 1 517 528 1 528 612 1 516 528 1
		 42 527 1 527 937 1 774 938 1 521 939 1 603 774 1 548 603 1 516 547 1 527 528 1 516 940 1
		 521 937 1 603 939 1 516 603 1 25 521 1 521 543 1 777 778 1 521 777 1 777 816 1 777 938 1
		 774 775 1 516 613 1 815 816 1 938 939 1 939 940 1 937 940 1 937 491 1 943 927 1 944 928 1
		 943 944 1 817 818 1 774 817 1 817 941 1 560 564 1 564 921 1 921 922 1 564 816 1 816 941 1
		 938 941 1 561 818 1 561 568 1 944 945 1 932 935 1 935 945 1 932 946 1 604 817 1 561 604 1
		 604 942 1 931 932 1 932 933 1 942 947 1 564 942 1 564 931 1 931 934 1;
	setAttr ".ed[1826:1876]" 561 945 1 945 946 1 941 942 1 931 947 1 604 946 1 946 947 1
		 546 834 1 834 835 1 546 779 1 503 546 1 546 569 1 671 833 1 833 834 1 546 671 1 670 671 1
		 820 836 1 836 837 1 566 820 1 819 820 1 566 568 1 776 779 1 779 820 1 779 835 1 835 836 1
		 520 834 1 780 835 1 821 836 1 717 721 1 658 832 1 832 833 1 657 658 1 658 671 1 577 578 1
		 578 658 1 578 831 1 831 832 1 721 740 1 659 832 1 668 833 1 579 831 1 720 721 1 721 729 1
		 719 720 1 720 761 1 720 831 1 578 721 1 519 720 1 559 837 1 566 943 1 566 837 1 837 920 1;
	setAttr -s 928 -ch 3690 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 -37 38 625 -14
		mu 0 4 8 9 638 639
		f 4 118 -15 16 46
		mu 0 4 153 154 14 15
		f 4 -2 11 570 569
		mu 0 4 16 17 618 619
		f 4 350 -4 1 42
		mu 0 4 454 455 17 16
		f 4 -610 611 610 -21
		mu 0 4 22 631 632 625
		f 4 130 -28 26 25
		mu 0 4 182 183 32 33
		f 4 -99 101 100 123
		mu 0 4 174 51 52 173
		f 4 2 49 -35 -34
		mu 0 4 54 55 56 57
		f 4 -39 -398 400 623
		mu 0 4 638 9 486 637
		f 4 -40 -570 572 571
		mu 0 4 488 16 619 620
		f 4 403 -43 39 404
		mu 0 4 489 454 16 488
		f 4 411 -47 43 412
		mu 0 4 493 153 15 492
		f 4 -50 47 418 -49
		mu 0 4 56 55 495 497
		f 4 279 274 -16 50
		mu 0 4 375 369 368 373
		f 4 -55 -18 19 44
		mu 0 4 19 18 21 20
		f 4 -57 -45 41 408
		mu 0 4 491 19 20 490
		f 4 -60 -169 171 617
		mu 0 4 635 61 216 634
		f 4 -61 -576 578 577
		mu 0 4 218 63 622 623
		f 4 344 -64 60 175
		mu 0 4 451 452 63 218
		f 4 -65 -66 62 177
		mu 0 4 220 66 64 219
		f 4 180 -69 66 181
		mu 0 4 222 152 65 221
		f 4 -75 72 29 -74
		mu 0 4 48 47 50 53
		f 4 125 -98 99 98
		mu 0 4 174 175 45 51
		f 4 -80 76 -73 -79
		mu 0 4 27 128 50 47
		f 4 -112 112 277 275
		mu 0 4 371 150 367 372
		f 4 -86 -168 169 168
		mu 0 4 61 60 215 216
		f 4 -87 -396 398 397
		mu 0 4 9 6 485 486
		f 4 -90 86 36 -89
		mu 0 4 7 6 9 8
		f 4 -95 45 416 -48
		mu 0 4 134 12 494 496
		f 4 -96 6 94 -3
		mu 0 4 135 13 12 134
		f 4 -100 -702 704 703
		mu 0 4 51 45 695 696
		f 4 -102 -704 706 705
		mu 0 4 52 51 696 697
		f 4 -536 538 694 693
		mu 0 4 130 588 690 691
		f 4 128 536 535 96
		mu 0 4 177 587 588 130
		f 4 276 -113 -84 81
		mu 0 4 374 367 150 89
		f 4 -46 -116 -412 414
		mu 0 4 494 12 153 493
		f 4 -7 -118 -119 115
		mu 0 4 12 13 154 153
		f 4 -17 -53 54 53
		mu 0 4 15 14 18 19
		f 4 -44 -54 56 410
		mu 0 4 492 15 19 491
		f 4 -67 -68 64 179
		mu 0 4 221 65 66 220
		f 4 -27 120 -24 22
		mu 0 4 34 32 35 36
		f 4 -123 -124 121 -30
		mu 0 4 50 174 173 53
		f 4 -77 -125 -126 122
		mu 0 4 50 42 175 174
		f 4 -532 534 -129 126
		mu 0 4 129 586 587 177
		f 4 -138 110 133 134
		mu 0 4 158 155 156 157
		f 4 532 531 136 -530
		mu 0 4 584 585 161 162
		f 4 -137 92 108 137
		mu 0 4 163 166 165 164
		f 4 529 -135 138 530
		mu 0 4 583 158 142 582
		f 4 -143 140 -103 -142
		mu 0 4 194 193 189 159
		f 4 135 -145 141 -120
		mu 0 4 167 195 194 159
		f 4 -110 106 -147 -136
		mu 0 4 168 160 197 196
		f 4 -149 -107 -128 -148
		mu 0 4 199 198 40 178
		f 4 -151 147 -108 104
		mu 0 4 200 199 178 41
		f 4 -153 -105 -686 688
		mu 0 4 688 200 41 687
		f 4 -157 154 142 -156
		mu 0 4 206 205 193 194
		f 4 143 -159 155 144
		mu 0 4 195 207 206 194
		f 4 146 145 -161 -144
		mu 0 4 196 197 209 208
		f 4 -163 -146 148 -162
		mu 0 4 211 210 198 199
		f 4 -165 161 150 149
		mu 0 4 212 211 199 200
		f 4 -167 -150 152 690
		mu 0 4 689 212 200 688
		f 4 -172 -9 10 615
		mu 0 4 634 216 25 633
		f 4 -173 -578 580 -10
		mu 0 4 23 218 623 624
		f 4 342 -176 172 0
		mu 0 4 449 451 218 23
		f 4 -177 -178 174 18
		mu 0 4 105 220 219 104
		f 4 -179 -180 176 55
		mu 0 4 106 221 220 105
		f 4 114 -182 178 15
		mu 0 4 151 222 221 106
		f 4 102 184 715 -184
		mu 0 4 227 228 702 705
		f 4 685 188 725 724
		mu 0 4 686 236 712 714
		f 4 107 190 723 -189
		mu 0 4 239 240 710 713
		f 4 109 193 719 -193
		mu 0 4 243 244 706 709
		f 4 119 183 717 -194
		mu 0 4 247 248 704 707
		f 4 127 192 721 -191
		mu 0 4 251 252 708 711
		f 4 -200 -201 198 167
		mu 0 4 60 275 274 215
		f 4 -202 -394 396 395
		mu 0 4 6 276 484 485
		f 4 -204 -205 201 89
		mu 0 4 7 277 276 6
		f 4 -209 205 -111 206
		mu 0 4 148 0 1 147
		f 4 -228 -214 210 211
		mu 0 4 281 282 267 268
		f 4 -223 216 217 200
		mu 0 4 275 59 214 274
		f 4 -8 219 220 204
		mu 0 4 277 4 5 276
		f 4 -221 221 394 393
		mu 0 4 276 5 483 484
		f 4 83 224 -215 -224
		mu 0 4 89 150 267 266
		f 4 -211 -225 111 225
		mu 0 4 268 267 150 371
		f 4 226 -337 339 338
		mu 0 4 82 272 446 447
		f 4 227 -216 208 209
		mu 0 4 282 281 87 149
		f 4 228 -230 -219 -217
		mu 0 4 59 319 315 214
		f 4 -233 230 222 202
		mu 0 4 286 285 59 275
		f 4 -235 -203 199 87
		mu 0 4 287 286 275 60
		f 4 -237 -88 85 57
		mu 0 4 288 287 60 61
		f 4 -239 -58 59 619
		mu 0 4 636 288 61 635
		f 4 -240 -574 576 575
		mu 0 4 63 290 621 622
		f 4 346 -243 239 63
		mu 0 4 452 453 290 63
		f 4 -244 -245 241 65
		mu 0 4 66 292 291 64
		f 4 -246 -247 243 67
		mu 0 4 65 293 292 66
		f 4 116 -249 245 68
		mu 0 4 152 294 293 65
		f 4 -250 -251 -117 113
		mu 0 4 67 295 294 152
		f 4 -253 249 93 -252
		mu 0 4 297 295 67 132
		f 4 -255 251 70 -254
		mu 0 4 298 296 68 69
		f 4 260 257 229 -259
		mu 0 4 318 316 315 319
		f 4 -260 261 258 256
		mu 0 4 320 321 318 319
		f 4 -256 -257 -229 -231
		mu 0 4 285 320 319 59
		f 4 -265 -267 267 -269
		mu 0 4 343 345 346 347
		f 4 -268 -271 271 -273
		mu 0 4 351 348 349 350
		f 4 -261 265 266 -263
		mu 0 4 329 330 346 345
		f 4 -262 269 270 -266
		mu 0 4 318 332 349 348
		f 4 -283 280 74 -31
		mu 0 4 49 46 47 48
		f 4 -295 281 301 -36
		mu 0 4 58 361 379 380
		f 4 -71 283 284 -70
		mu 0 4 69 68 224 226
		f 4 -81 78 -281 285
		mu 0 4 28 27 47 46
		f 3 -297 286 287
		mu 0 3 362 361 370
		f 4 -94 288 289 -284
		mu 0 4 132 67 223 225
		f 4 290 -275 278 -288
		mu 0 4 370 368 369 362
		f 4 291 -289 -114 -181
		mu 0 4 222 223 67 152
		f 4 -291 292 -292 -115
		mu 0 4 151 107 223 222
		f 4 -290 -293 -287 293
		mu 0 4 225 223 107 133
		f 4 -285 -294 294 -183
		mu 0 4 226 224 361 58
		f 4 -82 -83 -286 295
		mu 0 4 374 89 28 46
		f 4 273 299 -282 296
		mu 0 4 362 378 379 361
		f 4 297 -296 -299 -300
		mu 0 4 378 374 46 379
		f 4 -302 298 282 -301
		mu 0 4 380 379 46 49
		f 4 315 -278 305 302
		mu 0 4 393 394 395 396
		f 4 -323 325 324 306
		mu 0 4 383 403 404 397
		f 4 327 326 -308 -325
		mu 0 4 404 405 406 397
		f 4 323 322 -304 -298
		mu 0 4 413 403 383 382
		f 3 -319 312 317
		mu 0 3 414 415 416
		f 3 318 319 -314
		mu 0 3 415 414 417
		f 3 320 -318 -317
		mu 0 3 418 414 416
		f 4 -321 -279 -280 -322
		mu 0 4 414 418 419 420
		f 4 316 310 -324 -274
		mu 0 4 421 422 403 413
		f 4 -326 -311 -313 311
		mu 0 4 404 403 422 423
		f 4 313 308 -328 -312
		mu 0 4 423 424 405 404
		f 4 -327 331 -331 309
		mu 0 4 406 405 429 430
		f 3 -334 332 -320
		mu 0 3 414 431 417
		f 4 334 -332 -309 -333
		mu 0 4 434 429 405 424
		f 4 -338 335 -213 207
		mu 0 4 446 445 280 270
		f 4 -175 -342 -343 340
		mu 0 4 104 219 451 449
		f 4 -63 -344 -345 341
		mu 0 4 219 64 452 451
		f 4 -242 -346 -347 343
		mu 0 4 64 291 453 452
		f 4 -42 -348 -404 406
		mu 0 4 490 20 454 489
		f 4 -20 -350 -351 347
		mu 0 4 20 21 455 454
		f 4 351 -264 264 -354
		mu 0 4 344 341 342 343
		f 3 -352 352 -355
		mu 0 3 357 344 356
		f 4 -378 -356 356 357
		mu 0 4 461 459 110 118
		f 4 358 -357 -360 -134
		mu 0 4 101 100 103 102
		f 4 375 -371 -373 364
		mu 0 4 457 470 444 325
		f 4 -375 -365 365 366
		mu 0 4 467 457 325 328
		f 4 -366 368 353 -364
		mu 0 4 328 325 344 343
		f 4 -336 -368 -372 369
		mu 0 4 280 445 443 80
		f 4 -377 -362 371 370
		mu 0 4 470 471 304 444
		f 4 -385 -367 378 379
		mu 0 4 466 467 328 314
		f 4 -379 363 268 -382
		mu 0 4 314 328 343 347
		f 4 -381 381 272 -384
		mu 0 4 322 331 351 350
		f 4 -388 -389 386 -270
		mu 0 4 321 481 480 352
		f 4 -391 387 259 -390
		mu 0 4 482 481 321 320
		f 4 -393 389 255 -392
		mu 0 4 483 482 320 285
		f 4 -395 391 232 231
		mu 0 4 484 483 285 286
		f 4 -397 -232 234 233
		mu 0 4 485 484 286 287
		f 4 -399 -234 236 235
		mu 0 4 486 485 287 288
		f 4 -401 -236 238 621
		mu 0 4 637 486 288 636
		f 4 -402 -572 574 573
		mu 0 4 290 488 620 621
		f 4 348 -405 401 242
		mu 0 4 453 489 488 290
		f 4 -406 -407 -349 345
		mu 0 4 291 490 489 453
		f 4 -408 -409 405 244
		mu 0 4 292 491 490 291
		f 4 -410 -411 407 246
		mu 0 4 293 492 491 292
		f 4 247 -413 409 248
		mu 0 4 294 493 492 293
		f 4 -414 -415 -248 250
		mu 0 4 295 494 493 294
		f 4 -417 413 252 -416
		mu 0 4 496 494 295 297
		f 4 -419 415 254 -418
		mu 0 4 497 495 296 298
		f 4 421 -434 -380 380
		mu 0 4 322 468 469 331
		f 4 422 423 -72 -361
		mu 0 4 94 311 93 95
		f 4 424 -436 -423 373
		mu 0 4 472 473 114 113
		f 4 -422 425 438 -435
		mu 0 4 468 322 477 498
		f 4 428 385 -424 429
		mu 0 4 475 476 93 311
		f 4 -433 430 431 -421
		mu 0 4 354 335 478 479
		f 4 -429 -427 436 382
		mu 0 4 476 475 340 458
		f 4 -432 -426 383 437
		mu 0 4 479 478 333 355
		f 4 -272 -387 -420 -438
		mu 0 4 355 352 480 479
		f 4 -439 -431 426 427
		mu 0 4 498 477 323 474
		f 4 439 -428 -430 435
		mu 0 4 473 498 474 114
		f 4 441 433 -443 -444
		mu 0 4 521 469 468 523
		f 4 -445 -458 458 -440
		mu 0 4 473 524 537 498
		f 4 -425 -447 -448 444
		mu 0 4 473 472 526 524
		f 4 377 -450 -451 448
		mu 0 4 459 461 530 529
		f 4 -376 -453 -454 451
		mu 0 4 470 457 535 534
		f 4 374 -455 -456 452
		mu 0 4 457 467 536 535
		f 4 384 -442 -457 454
		mu 0 4 467 466 522 536
		f 4 -459 -446 442 434
		mu 0 4 498 537 523 468
		f 4 460 453 -463 459
		mu 0 4 456 534 535 302
		f 4 455 -465 -473 462
		mu 0 4 535 536 312 302
		f 4 456 -468 463 464
		mu 0 4 536 522 313 312
		f 4 457 -466 466 445
		mu 0 4 537 524 317 523
		f 4 467 443 -467 -471
		mu 0 4 313 521 523 317
		f 4 -476 -472 440 469
		mu 0 4 539 540 504 505
		f 4 -475 376 -452 -462
		mu 0 4 532 471 470 534
		f 4 475 -474 -464 468
		mu 0 4 540 539 502 503
		f 4 476 -340 -208 -478
		mu 0 4 81 447 446 270
		f 4 -441 478 480 -480
		mu 0 4 556 557 558 559
		f 4 526 -496 486 484
		mu 0 4 572 573 260 261
		f 4 -525 -499 488 489
		mu 0 4 574 575 262 264
		f 4 490 -97 491 492
		mu 0 4 176 177 130 44
		f 4 -512 -93 -503 493
		mu 0 4 26 126 125 127
		f 4 695 -492 -694 696
		mu 0 4 692 44 130 691
		f 4 527 700 699 495
		mu 0 4 573 693 694 260
		f 4 -526 -485 501 498
		mu 0 4 577 572 261 263
		f 4 502 -127 -491 -500
		mu 0 4 43 129 177 176
		f 4 701 503 -700 702
		mu 0 4 695 45 260 694
		f 4 97 504 -487 -504
		mu 0 4 45 175 261 260
		f 4 124 505 -502 -505
		mu 0 4 175 42 263 261
		f 4 -489 -506 79 506
		mu 0 4 264 262 128 27
		f 4 -521 -516 511 -508
		mu 0 4 29 131 126 26
		f 4 513 -520 -511 512
		mu 0 4 266 284 278 265
		f 4 514 -207 -109 515
		mu 0 4 3 148 147 2
		f 4 516 -514 214 213
		mu 0 4 282 284 266 267
		f 4 -510 -507 80 517
		mu 0 4 265 264 27 28
		f 4 -513 -518 82 223
		mu 0 4 266 265 28 89
		f 4 -517 -210 -515 518
		mu 0 4 284 282 149 88
		f 4 521 519 -519 520
		mu 0 4 29 278 284 88
		f 4 509 510 523 -490
		mu 0 4 264 265 278 574
		f 4 -524 -522 507 508
		mu 0 4 574 278 29 26
		f 4 524 -509 -494 487
		mu 0 4 575 574 26 127
		f 4 525 -488 499 500
		mu 0 4 572 577 43 176
		f 4 -527 -501 -493 485
		mu 0 4 573 572 176 44
		f 4 -528 -486 -696 698
		mu 0 4 693 573 44 692
		f 4 157 -531 528 158
		mu 0 4 207 583 582 206
		f 4 160 159 -533 -158
		mu 0 4 208 209 585 584
		f 4 -535 -160 162 -534
		mu 0 4 587 586 210 211
		f 4 -537 533 164 163
		mu 0 4 588 587 211 212
		f 4 -539 -164 166 692
		mu 0 4 690 588 212 689
		f 4 -542 -543 559 539
		mu 0 4 590 37 38 39
		f 4 129 542 543 -131
		mu 0 4 182 30 31 183
		f 4 544 -132 -544 566
		mu 0 4 607 184 183 31
		f 4 562 -554 547 545
		mu 0 4 593 594 145 191
		f 4 -548 548 -141 -553
		mu 0 4 192 143 189 193
		f 4 -562 -546 551 549
		mu 0 4 595 593 191 203
		f 4 552 -155 -558 -552
		mu 0 4 192 193 205 204
		f 4 563 711 -556 553
		mu 0 4 596 699 701 231
		f 4 -549 555 713 -185
		mu 0 4 255 256 700 703
		f 4 561 -557 -140 550
		mu 0 4 593 595 202 190
		f 4 -563 -551 -104 546
		mu 0 4 594 593 190 146
		f 4 -564 -547 186 709
		mu 0 4 699 596 232 698
		f 4 565 558 -565 -540
		mu 0 4 601 602 617 603
		f 4 564 -541 -567 541
		mu 0 4 599 616 608 600
		f 4 -571 568 12 40
		mu 0 4 619 618 11 10
		f 4 -573 -41 37 402
		mu 0 4 620 619 10 487
		f 4 -575 -403 399 240
		mu 0 4 621 620 487 289
		f 4 -577 -241 237 61
		mu 0 4 622 621 289 62
		f 4 -579 -62 58 173
		mu 0 4 623 622 62 217
		f 4 -581 -174 170 -580
		mu 0 4 624 623 217 24
		f 4 -611 613 -11 -582
		mu 0 4 625 632 633 25
		f 4 -593 84 20 583
		mu 0 4 626 72 22 625
		f 4 8 -170 -595 -606
		mu 0 4 25 216 215 73
		f 4 -589 585 -609 584
		mu 0 4 279 271 627 299
		f 4 588 587 337 336
		mu 0 4 272 305 445 446
		f 4 -596 -587 589 218
		mu 0 4 315 299 71 214
		f 4 -218 -590 590 591
		mu 0 4 274 214 71 273
		f 4 -586 -227 592 593
		mu 0 4 627 271 72 626
		f 4 594 -199 -592 -608
		mu 0 4 73 215 274 273
		f 4 595 -258 -597 -598
		mu 0 4 299 315 316 300
		f 4 -600 596 262 263
		mu 0 4 341 326 327 342
		f 4 -585 597 598 -601
		mu 0 4 279 299 300 301
		f 4 -604 -599 599 354
		mu 0 4 356 337 336 357
		f 4 -588 600 601 367
		mu 0 4 445 305 306 443
		f 4 602 603 -353 -369
		mu 0 4 325 337 356 344
		f 3 372 -602 -603
		mu 0 3 325 444 337
		f 4 604 -584 581 605
		mu 0 4 73 626 625 25
		f 4 606 -594 -605 607
		mu 0 4 273 627 626 73
		f 4 -607 -591 586 608
		mu 0 4 627 273 71 299
		f 4 -612 -22 9 582
		mu 0 4 632 631 23 624
		f 4 -614 -583 579 -613
		mu 0 4 633 632 624 24
		f 4 -615 -616 612 -171
		mu 0 4 217 634 633 24
		f 4 -617 -618 614 -59
		mu 0 4 62 635 634 217
		f 4 -619 -620 616 -238
		mu 0 4 289 636 635 62
		f 4 -621 -622 618 -400
		mu 0 4 487 637 636 289
		f 4 -623 -624 620 -38
		mu 0 4 10 638 637 487
		f 4 -626 622 -13 -625
		mu 0 4 639 638 10 11
		f 4 626 627 628 609
		mu 0 4 74 448 629 630
		f 4 -339 629 -627 -85
		mu 0 4 82 447 448 74
		f 4 -19 630 -645 -633
		mu 0 4 364 75 628 376
		f 4 632 -636 -51 -56
		mu 0 4 364 376 375 373
		f 4 -329 330 633 -640
		mu 0 4 425 399 427 428
		f 4 634 321 635 636
		mu 0 4 433 414 420 432
		f 3 333 -635 -638
		mu 0 3 431 414 433
		f 4 638 -634 -335 637
		mu 0 4 433 428 427 431
		f 4 640 -630 -477 -632
		mu 0 4 363 448 447 81
		f 4 641 -628 -641 642
		mu 0 4 628 629 448 363
		f 4 -341 643 -642 -631
		mu 0 4 75 450 629 628
		f 4 -629 -644 -1 21
		mu 0 4 630 629 450 76
		f 4 -139 645 646 647
		mu 0 4 582 142 187 581
		f 4 -529 -648 -660 156
		mu 0 4 206 582 581 205
		f 4 651 -133 -545 -663
		mu 0 4 605 186 184 78
		f 4 652 -649 -652 653
		mu 0 4 181 188 185 606
		f 4 654 655 -647 -653
		mu 0 4 144 580 581 187
		f 4 656 -550 657 658
		mu 0 4 592 595 203 579
		f 4 -658 557 659 -656
		mu 0 4 580 204 205 581
		f 4 -657 -664 -154 556
		mu 0 4 595 592 578 202
		f 4 -559 -568 660 661
		mu 0 4 616 611 610 609
		f 4 540 -662 -651 662
		mu 0 4 614 615 612 613
		f 4 665 -665 -659 -655
		mu 0 4 598 640 592 579
		f 4 -666 -654 650 649
		mu 0 4 640 598 604 591
		f 4 -650 -661 667 -667
		mu 0 4 641 642 643 644
		f 4 664 666 -669 663
		mu 0 4 645 646 647 648
		f 4 185 670 736 -670
		mu 0 4 649 650 721 724
		f 4 683 673 743 742
		mu 0 4 684 654 729 731
		f 4 191 674 741 -674
		mu 0 4 657 658 727 730
		f 4 194 677 -738 -677
		mu 0 4 661 662 663 726
		f 4 195 669 735 -678
		mu 0 4 664 665 723 666
		f 4 196 676 739 -675
		mu 0 4 667 668 725 728
		f 4 197 678 734 -671
		mu 0 4 671 672 719 722
		f 4 -555 679 730 -681
		mu 0 4 675 676 716 718
		f 4 -561 680 732 -679
		mu 0 4 679 680 717 720
		f 4 189 -743 745 -673
		mu 0 4 653 684 731 732
		f 4 105 -725 727 -188
		mu 0 4 235 686 714 715
		f 4 -688 -689 -106 -152
		mu 0 4 201 688 687 136
		f 4 -690 -691 687 -166
		mu 0 4 213 689 688 201
		f 4 -692 -693 689 -538
		mu 0 4 589 690 689 213
		f 4 -695 691 -91 91
		mu 0 4 691 690 589 137
		f 4 494 -697 -92 -5
		mu 0 4 138 692 691 137
		f 4 -698 -699 -495 496
		mu 0 4 576 693 692 138
		f 4 -701 697 522 497
		mu 0 4 694 693 576 259
		f 4 77 -703 -498 -76
		mu 0 4 139 695 694 259
		f 4 -705 -78 -6 24
		mu 0 4 696 695 139 140
		f 4 -707 -25 31 32
		mu 0 4 697 696 140 141
		f 4 -709 -710 707 554
		mu 0 4 597 699 698 233
		f 4 -712 708 560 -711
		mu 0 4 701 699 597 234
		f 4 -714 710 -198 -713
		mu 0 4 703 700 257 258
		f 4 -716 712 -186 -715
		mu 0 4 705 702 229 230
		f 4 -718 714 -196 -717
		mu 0 4 707 704 249 250
		f 4 -720 716 -195 -719
		mu 0 4 709 706 245 246
		f 4 -722 718 -197 -721
		mu 0 4 711 708 253 254
		f 4 -724 720 -192 -723
		mu 0 4 713 710 241 242
		f 4 -726 722 -684 686
		mu 0 4 714 712 237 685
		f 4 -728 -687 -190 -727
		mu 0 4 715 714 685 238
		f 4 -731 728 681 -730
		mu 0 4 718 716 677 678
		f 4 -733 729 682 -732
		mu 0 4 720 717 681 682
		f 4 -735 731 675 -734
		mu 0 4 722 719 673 674
		f 4 -737 733 -672 -736
		mu 0 4 724 721 651 652
		f 4 -740 737 671 -739
		mu 0 4 728 725 669 670
		f 4 -742 738 -676 -741
		mu 0 4 730 727 659 660
		f 4 -744 740 -683 684
		mu 0 4 731 729 655 683
		f 4 -746 -685 -682 -745
		mu 0 4 732 731 683 656
		f 4 746 461 -461 -752
		mu 0 4 303 532 534 456
		f 4 -754 -751 747 748
		mu 0 4 541 542 508 509
		f 4 750 -756 -470 749
		mu 0 4 517 545 546 516
		f 4 -749 -758 751 752
		mu 0 4 547 520 518 519
		f 4 753 -753 -460 754
		mu 0 4 542 541 506 507
		f 4 755 -755 472 473
		mu 0 4 546 545 514 515
		f 4 -748 756 481 -759
		mu 0 4 560 561 562 563
		f 4 -750 479 483 -757
		mu 0 4 568 569 570 571
		f 4 465 447 -760 760
		mu 0 4 317 524 526 112
		f 4 -765 -763 763 471
		mu 0 4 543 544 512 513
		f 4 764 -469 470 765
		mu 0 4 544 543 510 511
		f 4 -766 -761 761 762
		mu 0 4 538 499 500 501
		f 4 -479 -764 766 482
		mu 0 4 567 564 565 566
		f 4 -846 846 847 -849
		mu 0 4 769 770 771 772
		f 4 -852 848 852 -854
		mu 0 4 777 778 779 780
		f 4 -856 965 856 -847
		mu 0 4 785 750 786 787
		f 4 -774 771 768 -773
		mu 0 4 752 751 735 736
		f 4 -762 769 776 -767
		mu 0 4 756 757 758 759
		f 4 -781 303 777 778
		mu 0 4 381 382 383 384
		f 4 -307 779 -787 -778
		mu 0 4 383 397 398 384
		f 4 -277 780 -782 -306
		mu 0 4 395 382 381 396
		f 4 -793 781 782 -784
		mu 0 4 411 396 381 410
		f 4 818 -821 822 823
		mu 0 4 760 761 762 763
		f 4 -789 786 787 -795
		mu 0 4 385 384 398 386
		f 4 -779 788 789 -791
		mu 0 4 381 384 385 392
		f 4 -783 790 791 -785
		mu 0 4 410 381 392 409
		f 3 795 -790 794
		mu 0 3 386 392 385
		f 4 -800 328 329 796
		mu 0 4 400 399 425 407
		f 4 -797 797 -805 -809
		mu 0 4 400 407 389 388
		f 4 304 798 -806 -798
		mu 0 4 407 408 390 389
		f 4 -310 799 -808 -802
		mu 0 4 402 399 400 401
		f 4 800 -780 307 801
		mu 0 4 401 398 397 402
		f 4 802 -814 803 815
		mu 0 4 390 391 387 388
		f 4 -788 -801 806 -813
		mu 0 4 386 398 401 387
		f 4 807 808 -804 -807
		mu 0 4 401 400 388 387
		f 3 -303 809 810
		mu 0 3 393 396 391
		f 4 -810 792 793 -812
		mu 0 4 391 396 411 412
		f 4 -799 -315 -811 -803
		mu 0 4 390 408 393 391
		f 4 -815 811 -786 -792
		mu 0 4 392 391 412 409
		f 4 -796 812 813 814
		mu 0 4 392 386 387 391
		f 3 -816 804 805
		mu 0 3 390 388 389
		f 4 785 817 -819 -817
		mu 0 4 409 412 761 760
		f 4 -794 819 820 -818
		mu 0 4 412 411 762 761
		f 4 783 821 -823 -820
		mu 0 4 411 410 763 762
		f 4 784 816 -824 -822
		mu 0 4 410 409 760 763
		f 4 758 824 -768 757
		mu 0 4 764 765 766 767
		f 4 -827 825 392 -222
		mu 0 4 5 324 482 483
		f 4 826 -220 -842 827
		mu 0 4 324 5 4 70
		f 4 828 829 390 -826
		mu 0 4 324 334 481 482
		f 4 388 -830 830 831
		mu 0 4 480 481 334 353
		f 4 -829 -828 832 -844
		mu 0 4 308 309 307 768
		f 4 834 835 -838 -831
		mu 0 4 338 339 359 358
		f 4 419 -832 836 420
		mu 0 4 479 480 353 354
		f 3 837 -840 -837
		mu 0 3 358 359 360
		f 4 838 432 839 -836
		mu 0 4 339 340 360 359
		f 4 -437 -839 -834 840
		mu 0 4 458 340 339 310
		f 4 843 -843 833 -835
		mu 0 4 308 768 310 339
		f 4 27 131 -860 -859
		mu 0 4 32 183 184 77
		f 4 28 23 857 -862
		mu 0 4 83 36 35 84
		f 4 -858 -121 858 -870
		mu 0 4 91 35 32 77
		f 4 859 132 -882 860
		mu 0 4 77 184 186 79
		f 4 887 883 861 862
		mu 0 4 788 789 83 84
		f 4 355 -881 -867 -868
		mu 0 4 110 459 460 170
		f 4 884 -873 866 864
		mu 0 4 790 791 170 460
		f 4 867 -874 868 359
		mu 0 4 103 171 169 102
		f 5 869 -861 870 -887 -863
		mu 0 5 91 77 79 792 793
		f 4 885 -871 873 872
		mu 0 4 794 795 169 171
		f 4 874 875 360 -52
		mu 0 4 96 99 98 97
		f 4 876 -374 -876 877
		mu 0 4 462 463 115 111
		f 4 -877 878 -883 446
		mu 0 4 463 462 527 525
		f 4 881 648 -646 -869
		mu 0 4 179 185 188 180
		f 4 -885 -880 -878 865
		mu 0 4 791 790 462 111
		f 4 -886 -866 871 886
		mu 0 4 795 794 92 793
		f 4 -888 -872 -875 863
		mu 0 4 789 788 85 86
		f 4 -891 888 845 -890
		mu 0 4 802 799 770 769
		f 4 -776 -897 774 770
		mu 0 4 740 755 753 739
		f 4 -900 -865 892 893
		mu 0 4 797 790 460 528
		f 4 -893 880 -449 -892
		mu 0 4 528 460 459 529
		f 4 759 882 -898 -895
		mu 0 4 116 525 527 108
		f 4 -770 894 895 896
		mu 0 4 755 737 738 753
		f 4 899 -899 -879 879
		mu 0 4 790 797 527 462
		f 4 900 450 -363 -902
		mu 0 4 109 529 530 117
		f 4 901 844 902 -916
		mu 0 4 745 746 801 804
		f 4 854 -911 903 853
		mu 0 4 783 784 781 782
		f 4 -903 889 851 904
		mu 0 4 804 801 778 777
		f 4 -917 -905 -904 905
		mu 0 4 806 803 782 781
		f 4 906 891 -901 907
		mu 0 4 172 528 529 109
		f 4 908 -918 -894 -907
		mu 0 4 172 796 797 528
		f 4 -915 909 910 850
		mu 0 4 776 773 774 775
		f 4 911 -919 -914 912
		mu 0 4 798 807 773 743
		f 4 -896 913 914 -850
		mu 0 4 754 743 773 776
		f 4 -908 915 916 -920
		mu 0 4 747 748 803 806
		f 4 917 -913 897 898
		mu 0 4 797 796 108 527
		f 4 920 -912 -909 919
		mu 0 4 805 807 798 744
		f 4 -921 -906 -910 918
		mu 0 4 807 805 774 773
		f 4 -936 -358 -926 923
		mu 0 4 465 461 118 122
		f 4 924 925 -359 -206
		mu 0 4 124 123 100 101
		f 4 929 -929 -925 215
		mu 0 4 281 283 90 87
		f 4 362 933 -933 934
		mu 0 4 117 530 531 119
		f 4 449 935 936 -934
		mu 0 4 530 461 465 531
		f 4 939 -928 -954 -370
		mu 0 4 80 551 550 280
		f 4 940 -923 -940 361
		mu 0 4 464 553 552 121
		f 4 941 -939 -941 474
		mu 0 4 533 554 553 464
		f 4 -948 -276 942 -961
		mu 0 4 365 371 372 366
		f 4 -930 -212 945 946
		mu 0 4 283 281 268 269
		f 4 -946 -226 947 948
		mu 0 4 269 268 371 365
		f 4 -330 -957 951 -305
		mu 0 4 407 425 426 408
		f 4 -952 -943 -316 314
		mu 0 4 408 426 394 393
		f 4 952 -951 -955 477
		mu 0 4 270 549 548 81
		f 4 953 -945 -953 212
		mu 0 4 280 550 549 270
		f 4 631 954 -960 -962
		mu 0 4 363 81 548 377
		f 4 955 956 639 -959
		mu 0 4 436 435 438 437
		f 4 957 958 -639 -637
		mu 0 4 440 439 442 441
		f 4 644 -643 961 -958
		mu 0 4 376 628 363 377
		f 4 962 -932 -942 -747
		mu 0 4 120 555 554 533
		f 4 -963 767 773 -966
		mu 0 4 733 734 751 752
		f 4 -935 963 890 -845
		mu 0 4 741 742 799 802
		f 4 964 855 -889 -964
		mu 0 4 749 750 785 800
		f 4 931 -965 932 930
		mu 0 4 554 555 119 531
		f 4 938 -931 -937 937
		mu 0 4 553 554 531 465
		f 4 922 -938 -924 921
		mu 0 4 552 553 465 122
		f 4 927 -922 928 926
		mu 0 4 550 551 90 283
		f 4 944 -927 -947 943
		mu 0 4 549 550 283 269
		f 4 950 -944 -949 949
		mu 0 4 548 549 269 365
		f 4 959 -950 960 -956
		mu 0 4 377 548 365 366
		f 4 13 -1551 -992 989
		mu 0 4 808 811 810 809
		f 4 -1000 -976 14 -1063
		mu 0 4 812 815 814 813
		f 4 -1496 -1497 -12 967
		mu 0 4 816 819 818 817
		f 4 -996 -968 3 -1286
		mu 0 4 820 816 817 821
		f 4 978 -1537 -1538 1535
		mu 0 4 822 825 824 823
		f 4 -26 -983 983 -1074
		mu 0 4 826 829 828 827
		f 4 -1068 -1047 -1048 1044
		mu 0 4 830 833 832 831
		f 4 33 987 -1003 -969
		mu 0 4 834 837 836 835
		f 4 -1550 -1334 1330 991
		mu 0 4 810 839 838 809
		f 4 -1498 -1499 1495 992
		mu 0 4 840 841 819 816
		f 4 -1338 -993 995 -1337
		mu 0 4 842 840 816 820
		f 4 -1346 -997 999 -1345
		mu 0 4 843 844 815 812
		f 4 1001 -1352 -1001 1002
		mu 0 4 836 846 845 835
		f 4 -1004 974 -1211 -1216
		mu 0 4 847 850 849 848
		f 4 -998 -978 17 1005
		mu 0 4 851 854 853 852
		f 4 -1342 -995 997 1007
		mu 0 4 855 856 854 851
		f 4 -1544 -1111 1107 1010
		mu 0 4 857 860 859 858
		f 4 -1504 -1505 1501 1011
		mu 0 4 861 864 863 862
		f 4 -1115 -1012 1014 -1281
		mu 0 4 865 861 862 866
		f 4 -1117 -1014 1016 1015
		mu 0 4 867 870 869 868
		f 4 -1121 -1018 1019 -1120
		mu 0 4 871 874 873 872
		f 4 1023 -985 -1023 1024
		mu 0 4 875 878 877 876
		f 4 -1045 -1046 1043 -1070
		mu 0 4 830 831 880 879
		f 4 1027 1022 -1026 1028
		mu 0 4 881 876 877 882
		f 4 -1212 -1214 -1058 1056
		mu 0 4 883 886 885 884
		f 4 -1108 -1109 1106 1034
		mu 0 4 858 859 888 887
		f 4 -1331 -1332 1328 1035
		mu 0 4 809 838 890 889
		f 4 88 -990 -1036 1037
		mu 0 4 891 808 809 889
		f 4 1000 -1350 -999 1041
		mu 0 4 892 895 894 893
		f 4 968 -1042 -970 95
		mu 0 4 896 892 893 897
		f 4 -1625 -1626 1622 1045
		mu 0 4 831 899 898 880
		f 4 -1627 -1628 1624 1047
		mu 0 4 832 900 899 831
		f 4 -1615 -1616 -1469 1466
		mu 0 4 901 904 903 902
		f 4 -1043 -1467 -1468 -1073
		mu 0 4 905 901 902 906
		f 4 -1031 1032 1057 -1213
		mu 0 4 907 908 884 885
		f 4 -1348 1344 1060 998
		mu 0 4 894 843 812 893;
	setAttr ".fc[500:927]"
		f 4 -1061 1062 117 969
		mu 0 4 893 812 813 897
		f 4 -1005 -1006 52 975
		mu 0 4 815 851 852 814
		f 4 -1344 -1008 1004 996
		mu 0 4 844 855 851 815
		f 4 -1119 -1016 1018 1017
		mu 0 4 874 867 868 873
		f 4 -23 980 -1065 982
		mu 0 4 909 911 910 828
		f 4 984 -1066 1067 1066
		mu 0 4 877 878 833 830
		f 4 -1067 1069 1068 1025
		mu 0 4 877 830 879 912
		f 4 -1071 1072 -1466 1462
		mu 0 4 913 905 906 914
		f 4 -1078 -1077 -1056 1080
		mu 0 4 915 918 917 916
		f 4 1460 -1080 -1463 -1464
		mu 0 4 919 922 921 920
		f 4 -1081 -1054 -1040 1079
		mu 0 4 923 926 925 924
		f 4 -1462 -1082 1077 -1461
		mu 0 4 927 929 928 915
		f 4 1083 1048 -1083 1084
		mu 0 4 930 933 932 931
		f 4 1063 -1084 1086 -1079
		mu 0 4 934 933 930 935
		f 4 1078 1088 -1052 1054
		mu 0 4 936 939 938 937
		f 4 1089 1071 1051 1090
		mu 0 4 940 943 942 941
		f 4 -1050 1052 -1090 1092
		mu 0 4 944 945 943 940
		f 4 -1610 1606 1049 1093
		mu 0 4 946 947 945 944
		f 4 1095 -1085 -1095 1096
		mu 0 4 948 930 931 949
		f 4 -1087 -1096 1098 -1086
		mu 0 4 935 930 948 950
		f 4 1085 1100 -1088 -1089
		mu 0 4 939 952 951 938
		f 4 1101 -1091 1087 1102
		mu 0 4 953 940 941 954
		f 4 -1092 -1093 -1102 1104
		mu 0 4 955 944 940 953
		f 4 -1612 -1094 1091 1105
		mu 0 4 956 946 944 955
		f 4 -1542 -973 970 1110
		mu 0 4 860 958 957 859
		f 4 971 -1507 1503 1111
		mu 0 4 959 960 864 861
		f 4 -967 -1112 1114 -1279
		mu 0 4 961 959 861 865
		f 4 -977 -1114 1116 1115
		mu 0 4 962 963 870 867
		f 4 -1007 -1116 1118 1117
		mu 0 4 964 962 867 874
		f 4 -975 -1118 1120 -1060
		mu 0 4 965 964 874 871
		f 4 1122 -1636 -1124 -1049
		mu 0 4 966 969 968 967
		f 4 -1645 -1646 -1126 -1607
		mu 0 4 970 973 972 971
		f 4 1125 -1644 -1128 -1053
		mu 0 4 974 977 976 975
		f 4 1129 -1640 -1131 -1055
		mu 0 4 978 981 980 979
		f 4 1130 -1638 -1123 -1064
		mu 0 4 982 985 984 983
		f 4 1127 -1642 -1130 -1072
		mu 0 4 986 989 988 987
		f 4 -1107 -1136 1137 1136
		mu 0 4 887 888 991 990
		f 4 -1329 -1330 1326 1138
		mu 0 4 889 890 993 992
		f 4 -1038 -1139 1140 203
		mu 0 4 891 889 992 994
		f 4 -1143 1055 -1142 1144
		mu 0 4 995 998 997 996
		f 4 -1148 -1147 1149 1163
		mu 0 4 999 1002 1001 1000
		f 4 -1138 -1154 -1153 1158
		mu 0 4 990 991 1004 1003
		f 4 -1141 -1157 -1156 7
		mu 0 4 994 992 1006 1005
		f 4 -1327 -1328 -1158 1156
		mu 0 4 992 993 1007 1006
		f 4 1159 1150 -1161 -1033
		mu 0 4 908 1008 1001 884
		f 4 -1162 -1057 1160 1146
		mu 0 4 1002 883 884 1001
		f 4 -1275 -1276 1272 -1163
		mu 0 4 1009 1012 1011 1010
		f 4 -1146 -1145 1151 -1164
		mu 0 4 1000 1014 1013 999
		f 4 1152 1154 1165 -1165
		mu 0 4 1003 1004 1016 1015
		f 4 -1140 -1159 -1167 1168
		mu 0 4 1017 990 1003 1018
		f 4 -1037 -1137 1139 1170
		mu 0 4 1019 887 990 1017
		f 4 -1009 -1035 1036 1172
		mu 0 4 1020 858 887 1019
		f 4 -1546 -1011 1008 1174
		mu 0 4 1021 857 858 1020
		f 4 -1502 -1503 1499 1175
		mu 0 4 862 863 1023 1022
		f 4 -1015 -1176 1178 -1283
		mu 0 4 866 862 1022 1024
		f 4 -1017 -1178 1180 1179
		mu 0 4 868 869 1026 1025
		f 4 -1019 -1180 1182 1181
		mu 0 4 873 868 1025 1027
		f 4 -1020 -1182 1184 -1062
		mu 0 4 872 873 1027 1028
		f 4 -1059 1061 1186 1185
		mu 0 4 1029 872 1028 1030
		f 4 1187 -1041 -1186 1188
		mu 0 4 1031 1032 1029 1030
		f 4 1189 -1022 -1188 1190
		mu 0 4 1033 1036 1035 1034
		f 4 1194 -1166 -1194 -1197
		mu 0 4 1037 1015 1016 1038
		f 4 -1193 -1195 -1198 1195
		mu 0 4 1039 1015 1037 1040
		f 4 1166 1164 1192 1191
		mu 0 4 1018 1003 1015 1039
		f 4 1204 -1204 1202 1200
		mu 0 4 1041 1044 1043 1042
		f 4 1208 -1208 1206 1203
		mu 0 4 1045 1048 1047 1046
		f 4 1198 -1203 -1202 1196
		mu 0 4 1049 1042 1043 1050
		f 4 1201 -1207 -1206 1197
		mu 0 4 1037 1046 1047 1051
		f 4 985 -1025 -1217 1218
		mu 0 4 1052 875 876 1053
		f 4 988 -1238 -1218 1230
		mu 0 4 1054 1057 1056 1055
		f 4 1020 -1221 -1220 1021
		mu 0 4 1036 1059 1058 1035
		f 4 -1222 1216 -1028 1029
		mu 0 4 1060 1053 876 881
		f 3 -1224 -1223 1232
		mu 0 3 1061 1062 1055
		f 4 1219 -1226 -1225 1040
		mu 0 4 1032 1064 1063 1029
		f 4 1223 -1215 1210 -1227
		mu 0 4 1062 1061 848 849
		f 4 1119 1058 1224 -1228
		mu 0 4 871 872 1029 1063
		f 4 1059 1227 -1229 1226
		mu 0 4 965 871 1063 1065
		f 4 -1230 1222 1228 1225
		mu 0 4 1064 1066 1065 1063
		f 4 1121 -1231 1229 1220
		mu 0 4 1059 1054 1055 1058
		f 4 -1232 1221 1031 1030
		mu 0 4 907 1053 1060 908
		f 4 -1233 1217 -1236 -1210
		mu 0 4 1061 1055 1056 1067
		f 4 1235 1234 1231 -1234
		mu 0 4 1067 1056 1053 907
		f 4 1236 -1219 -1235 1237
		mu 0 4 1057 1052 1053 1056
		f 4 -1239 -1242 1213 -1252
		mu 0 4 1068 1071 1070 1069
		f 4 -1243 -1261 -1262 1258
		mu 0 4 1072 1075 1074 1073
		f 4 1260 1243 -1263 -1264
		mu 0 4 1074 1075 1077 1076
		f 4 1233 1239 -1259 -1260
		mu 0 4 1078 1079 1072 1073
		f 3 -1254 -1249 1254
		mu 0 3 1080 1082 1081
		f 3 1249 -1256 -1255
		mu 0 3 1081 1083 1080
		f 3 1252 1253 -1257
		mu 0 3 1084 1082 1080
		f 4 1257 1215 1214 1256
		mu 0 4 1080 1086 1085 1084
		f 4 1209 1259 -1247 -1253
		mu 0 4 1087 1078 1073 1088
		f 4 -1248 1248 1246 1261
		mu 0 4 1074 1089 1088 1073
		f 4 1247 1263 -1245 -1250
		mu 0 4 1089 1074 1076 1090
		f 4 -1246 1266 -1268 1262
		mu 0 4 1077 1092 1091 1076
		f 3 1255 -1269 1269
		mu 0 3 1080 1083 1093
		f 4 1268 1244 1267 -1271
		mu 0 4 1094 1090 1076 1091
		f 4 -1144 1148 -1272 1273
		mu 0 4 1011 1097 1096 1095
		f 4 -1277 1278 1277 1113
		mu 0 4 963 961 865 870
		f 4 -1278 1280 1279 1013
		mu 0 4 870 865 866 869
		f 4 -1280 1282 1281 1177
		mu 0 4 869 866 1024 1026
		f 4 -1340 1336 1283 994
		mu 0 4 856 842 820 854
		f 4 -1284 1285 349 977
		mu 0 4 854 820 821 853
		f 4 1288 -1201 1199 -1287
		mu 0 4 1098 1041 1100 1099
		f 3 1289 -1288 1286
		mu 0 3 1101 1102 1098
		f 4 -1293 -1292 1290 1312
		mu 0 4 1103 1106 1105 1104
		f 4 1076 1294 1291 -1294
		mu 0 4 1107 1110 1109 1108
		f 4 -1300 1307 1305 -1311
		mu 0 4 1111 1114 1113 1112
		f 4 -1302 -1301 1299 1309
		mu 0 4 1115 1116 1114 1111
		f 4 1298 -1289 -1304 1300
		mu 0 4 1116 1041 1098 1114
		f 4 -1305 1306 1302 1271
		mu 0 4 1096 1118 1117 1095
		f 4 -1306 -1307 1296 1311
		mu 0 4 1112 1113 1120 1119
		f 4 -1315 -1314 1301 1318
		mu 0 4 1121 1122 1116 1115
		f 4 1316 -1205 -1299 1313
		mu 0 4 1122 1044 1041 1116
		f 4 1317 -1209 -1317 1315
		mu 0 4 1123 1048 1045 1124
		f 4 1205 -1320 1321 1320
		mu 0 4 1040 1127 1126 1125
		f 4 1322 -1196 -1321 1323
		mu 0 4 1128 1039 1040 1125
		f 4 1324 -1192 -1323 1325
		mu 0 4 1007 1018 1039 1128
		f 4 -1168 -1169 -1325 1327
		mu 0 4 993 1017 1018 1007
		f 4 -1170 -1171 1167 1329
		mu 0 4 890 1019 1017 993
		f 4 -1172 -1173 1169 1331
		mu 0 4 838 1020 1019 890
		f 4 -1548 -1175 1171 1333
		mu 0 4 839 1021 1020 838
		f 4 -1500 -1501 1497 1334
		mu 0 4 1022 1023 841 840
		f 4 -1179 -1335 1337 -1285
		mu 0 4 1024 1022 840 842
		f 4 -1282 1284 1339 1338
		mu 0 4 1026 1024 842 856
		f 4 -1181 -1339 1341 1340
		mu 0 4 1025 1026 856 855
		f 4 -1183 -1341 1343 1342
		mu 0 4 1027 1025 855 844
		f 4 -1185 -1343 1345 -1184
		mu 0 4 1028 1027 844 843
		f 4 -1187 1183 1347 1346
		mu 0 4 1030 1028 843 894
		f 4 1348 -1189 -1347 1349
		mu 0 4 895 1031 1030 894
		f 4 1350 -1191 -1349 1351
		mu 0 4 846 1033 1034 845
		f 4 -1316 1314 1366 -1355
		mu 0 4 1123 1124 1130 1129
		f 4 1295 71 -1357 -1356
		mu 0 4 1131 1134 1133 1132
		f 4 -1309 1355 1368 -1358
		mu 0 4 1135 1138 1137 1136
		f 4 1367 -1372 -1359 1354
		mu 0 4 1129 1140 1139 1123
		f 4 -1363 1356 -386 -1362
		mu 0 4 1141 1132 1133 1142
		f 4 1353 -1365 -1364 1365
		mu 0 4 1143 1146 1145 1144
		f 4 -383 -1370 1359 1361
		mu 0 4 1142 1148 1147 1141
		f 4 -1371 -1318 1358 1364
		mu 0 4 1146 1150 1149 1145
		f 4 1370 1352 1319 1207
		mu 0 4 1150 1146 1126 1127
		f 4 -1361 -1360 1363 1371
		mu 0 4 1140 1152 1151 1139
		f 4 -1369 1362 1360 -1373
		mu 0 4 1136 1137 1152 1140
		f 4 1376 1375 -1367 -1375
		mu 0 4 1153 1154 1129 1130
		f 4 1372 -1392 1390 1377
		mu 0 4 1136 1140 1156 1155
		f 4 -1378 1380 1379 1357
		mu 0 4 1136 1155 1157 1135
		f 4 -1382 1383 1382 -1313
		mu 0 4 1104 1159 1158 1103
		f 4 -1385 1386 1385 1310
		mu 0 4 1112 1161 1160 1111
		f 4 -1386 1388 1387 -1310
		mu 0 4 1111 1160 1162 1115
		f 4 -1388 1389 1374 -1319
		mu 0 4 1115 1162 1163 1121
		f 4 -1368 -1376 1378 1391
		mu 0 4 1140 1129 1154 1156
		f 4 -1393 1395 -1387 -1394
		mu 0 4 1164 1165 1160 1161
		f 4 -1396 1405 1397 -1389
		mu 0 4 1160 1165 1166 1162
		f 4 -1398 -1397 1400 -1390
		mu 0 4 1162 1166 1167 1163
		f 4 -1379 -1400 1398 -1391
		mu 0 4 1156 1154 1168 1155
		f 4 1403 1399 -1377 -1401
		mu 0 4 1167 1168 1154 1153
		f 4 -1403 -1374 1404 1408
		mu 0 4 1169 1172 1171 1170
		f 4 1394 1384 -1312 1407
		mu 0 4 1173 1161 1112 1119
		f 4 -1402 1396 1406 -1409
		mu 0 4 1170 1175 1174 1169
		f 4 1410 1143 1275 -1410
		mu 0 4 1176 1097 1011 1012
		f 4 1412 -1414 -1412 1373
		mu 0 4 1177 1180 1179 1178
		f 4 -1418 -1420 1428 -1458
		mu 0 4 1181 1184 1183 1182
		f 4 -1423 -1422 1430 1455
		mu 0 4 1185 1188 1187 1186
		f 4 -1426 -1425 1042 -1424
		mu 0 4 1189 1190 901 905
		f 4 -1427 1434 1039 1443
		mu 0 4 1191 1194 1193 1192
		f 4 -1618 1614 1424 -1617
		mu 0 4 1195 904 901 1190
		f 4 -1429 -1621 -1622 -1459
		mu 0 4 1182 1183 1197 1196
		f 4 -1431 -1434 1417 1456
		mu 0 4 1198 1199 1184 1181
		f 4 1431 1423 1070 -1435
		mu 0 4 1200 1189 905 913
		f 4 -1624 1620 -1436 -1623
		mu 0 4 898 1197 1183 880
		f 4 1435 1419 -1437 -1044
		mu 0 4 880 1183 1184 879
		f 4 1436 1433 -1438 -1069
		mu 0 4 879 1184 1199 912
		f 4 -1439 -1029 1437 1421
		mu 0 4 1188 881 882 1187
		f 4 1439 -1444 1447 1452
		mu 0 4 1201 1191 1192 1202
		f 4 -1445 1442 1451 -1446
		mu 0 4 1008 1205 1204 1203
		f 4 -1448 1053 1142 -1447
		mu 0 4 1206 1207 998 995
		f 4 -1150 -1151 1445 -1449
		mu 0 4 1000 1001 1008 1203
		f 4 -1450 -1030 1438 1441
		mu 0 4 1205 1060 881 1188
		f 4 -1160 -1032 1449 1444
		mu 0 4 1008 908 1060 1205
		f 4 -1451 1446 1145 1448
		mu 0 4 1203 1208 1014 1000
		f 4 -1453 1450 -1452 -1454
		mu 0 4 1201 1208 1203 1204
		f 4 1422 -1455 -1443 -1442
		mu 0 4 1188 1185 1204 1205
		f 4 -1441 -1440 1453 1454
		mu 0 4 1185 1191 1201 1204
		f 4 -1421 1426 1440 -1456
		mu 0 4 1186 1194 1191 1185
		f 4 -1433 -1432 1420 -1457
		mu 0 4 1181 1189 1200 1198
		f 4 -1419 1425 1432 1457
		mu 0 4 1182 1190 1189 1181
		f 4 -1620 1616 1418 1458
		mu 0 4 1196 1195 1190 1182
		f 4 -1099 -1460 1461 -1098
		mu 0 4 950 948 929 927
		f 4 1097 1463 -1100 -1101
		mu 0 4 952 919 920 951
		f 4 1464 -1103 1099 1465
		mu 0 4 906 953 954 914
		f 4 -1104 -1105 -1465 1467
		mu 0 4 902 955 953 906
		f 4 -1614 -1106 1103 1468
		mu 0 4 903 956 955 902
		f 4 -1470 -560 1472 1471
		mu 0 4 1209 1212 1211 1210
		f 4 1073 -1474 -1473 -130
		mu 0 4 826 827 1214 1213
		f 4 -1495 1473 1074 -1475
		mu 0 4 1215 1214 827 1216
		f 4 -1476 -1478 1483 -1492
		mu 0 4 1217 1220 1219 1218
		f 4 1482 1082 -1479 1477
		mu 0 4 1221 931 932 1222
		f 4 -1480 -1482 1475 1490
		mu 0 4 1223 1224 1220 1217
		f 4 1481 1487 1094 -1483
		mu 0 4 1221 1225 949 931
		f 4 -1484 1485 -1632 -1493
		mu 0 4 1226 1229 1228 1227
		f 4 1123 -1634 -1486 1478
		mu 0 4 1230 1233 1232 1231
		f 4 -1481 139 1486 -1491
		mu 0 4 1217 1235 1234 1223
		f 4 -1477 103 1480 1491
		mu 0 4 1218 1236 1235 1217
		f 4 -1630 -187 1476 1492
		mu 0 4 1227 1238 1237 1226
		f 4 1469 1493 -1489 -566
		mu 0 4 1239 1242 1241 1240
		f 4 -1472 1494 1470 -1494
		mu 0 4 1243 1246 1245 1244
		f 4 -994 -974 -569 1496
		mu 0 4 819 1248 1247 818
		f 4 -1336 -991 993 1498
		mu 0 4 841 1249 1248 819
		f 4 -1177 -1333 1335 1500
		mu 0 4 1023 1250 1249 841
		f 4 -1013 -1174 1176 1502
		mu 0 4 863 1251 1250 1023
		f 4 -1113 -1010 1012 1504
		mu 0 4 864 1252 1251 863
		f 4 1505 -1110 1112 1506
		mu 0 4 960 1253 1252 864
		f 4 1507 972 -1540 1536
		mu 0 4 825 957 958 824
		f 4 -1510 -979 -1034 1518
		mu 0 4 1254 825 822 1255
		f 4 1531 1520 1108 -971
		mu 0 4 957 1256 888 859
		f 4 -1511 1534 -1512 1514
		mu 0 4 1257 1260 1259 1258
		f 4 -1273 -1274 -1514 -1515
		mu 0 4 1010 1011 1095 1261
		f 4 -1155 -1516 1512 1521
		mu 0 4 1016 1004 1262 1260
		f 4 -1518 -1517 1515 1153
		mu 0 4 991 1263 1262 1004
		f 4 -1520 -1519 1162 1511
		mu 0 4 1259 1254 1255 1258
		f 4 1533 1517 1135 -1521
		mu 0 4 1256 1263 991 888
		f 4 1523 1522 1193 -1522
		mu 0 4 1260 1264 1038 1016
		f 4 -1200 -1199 -1523 1525
		mu 0 4 1099 1100 1266 1265
		f 4 1526 -1525 -1524 1510
		mu 0 4 1257 1267 1264 1260
		f 4 -1290 -1526 1524 1529
		mu 0 4 1102 1101 1269 1268
		f 4 -1303 -1528 -1527 1513
		mu 0 4 1095 1117 1270 1261
		f 4 1303 1287 -1530 -1529
		mu 0 4 1114 1098 1102 1268
		f 3 1528 1527 -1308
		mu 0 3 1114 1268 1113
		f 4 -1532 -1508 1509 -1531
		mu 0 4 1256 957 825 1254
		f 4 -1534 1530 1519 -1533
		mu 0 4 1263 1256 1254 1259
		f 4 -1535 -1513 1516 1532
		mu 0 4 1259 1260 1262 1263
		f 4 -1509 -972 979 1537
		mu 0 4 824 960 959 823
		f 4 1538 -1506 1508 1539
		mu 0 4 958 1253 960 824
		f 4 1109 -1539 1541 1540
		mu 0 4 1252 1253 958 860
		f 4 1009 -1541 1543 1542
		mu 0 4 1251 1252 860 857
		f 4 1173 -1543 1545 1544
		mu 0 4 1250 1251 857 1021
		f 4 1332 -1545 1547 1546
		mu 0 4 1249 1250 1021 839
		f 4 990 -1547 1549 1548
		mu 0 4 1248 1249 839 810
		f 4 624 973 -1549 1550
		mu 0 4 811 1247 1248 810
		f 4 -1536 -1554 -1553 -1552
		mu 0 4 1271 1274 1273 1272
		f 4 1033 1551 -1555 1274
		mu 0 4 1009 1271 1272 1012
		f 4 1557 1569 -1556 976
		mu 0 4 1275 1278 1277 1276
		f 4 1006 1003 1560 -1558
		mu 0 4 1275 850 847 1278
		f 4 1564 -1559 -1267 1264
		mu 0 4 1279 1282 1281 1280
		f 4 -1562 -1561 -1258 -1560
		mu 0 4 1283 1284 1086 1080
		f 3 1562 1559 -1270
		mu 0 3 1093 1283 1080
		f 4 -1563 1270 1558 -1564
		mu 0 4 1283 1093 1281 1282
		f 4 1556 1409 1554 -1566
		mu 0 4 1285 1176 1012 1272
		f 4 -1568 1565 1552 -1567
		mu 0 4 1277 1285 1272 1273
		f 4 1555 1566 -1569 1276
		mu 0 4 1276 1277 1273 1286
		f 4 -980 966 1568 1553
		mu 0 4 1274 1287 1286 1273
		f 4 -1573 -1572 -1571 1081
		mu 0 4 929 1289 1288 928
		f 4 -1097 1584 1572 1459
		mu 0 4 948 949 1289 929
		f 4 1587 1474 1075 -1577
		mu 0 4 1290 1292 1216 1291
		f 4 -1579 1576 1573 -1578
		mu 0 4 1293 1296 1295 1294
		f 4 1577 1571 -1581 -1580
		mu 0 4 1297 1288 1289 1298
		f 4 -1584 -1583 1479 -1582
		mu 0 4 1299 1300 1224 1223
		f 4 1580 -1585 -1488 1582
		mu 0 4 1298 1289 949 1225
		f 4 -1487 153 1588 1581
		mu 0 4 1223 1234 1301 1299
		f 4 -1587 -1586 567 1488
		mu 0 4 1244 1304 1303 1302
		f 4 -1588 1575 1586 -1471
		mu 0 4 1305 1308 1307 1306
		f 4 1579 1583 1589 -1591
		mu 0 4 1309 1300 1299 1310
		f 4 -1575 -1576 1578 1590
		mu 0 4 1310 1312 1311 1309
		f 4 1591 -668 1585 1574
		mu 0 4 1313 1316 1315 1314
		f 4 -1589 668 -1592 -1590
		mu 0 4 1317 1320 1319 1318
		f 4 1592 -1655 -1594 -1125
		mu 0 4 1321 1324 1323 1322
		f 4 -1661 -1662 -1596 -1605
		mu 0 4 1325 1328 1327 1326
		f 4 1595 -1660 -1597 -1129
		mu 0 4 1329 1332 1331 1330
		f 4 1598 1655 -1600 -1132
		mu 0 4 1333 1336 1335 1334
		f 4 1599 -1654 -1593 -1133
		mu 0 4 1337 1340 1339 1338
		f 4 1596 -1658 -1599 -1134
		mu 0 4 1341 1344 1343 1342
		f 4 1593 -1653 -1601 -1135
		mu 0 4 1345 1348 1347 1346
		f 4 1601 -1649 -680 1484
		mu 0 4 1349 1352 1351 1350
		f 4 1600 -1651 -1602 1489
		mu 0 4 1353 1356 1355 1354
		f 4 672 -1663 1660 -1127
		mu 0 4 1357 1358 1328 1325
		f 4 187 -1647 1644 -1051
		mu 0 4 1359 1360 973 970
		f 4 151 1050 1609 1608
		mu 0 4 1361 1362 947 946
		f 4 165 -1609 1611 1610
		mu 0 4 1363 1361 946 956
		f 4 537 -1611 1613 1612
		mu 0 4 1364 1363 956 903
		f 4 -1039 90 -1613 1615
		mu 0 4 904 1365 1364 903
		f 4 4 1038 1617 -1428
		mu 0 4 1366 1365 904 1195
		f 4 -497 1427 1619 1618
		mu 0 4 1367 1366 1195 1196
		f 4 -1430 -523 -1619 1621
		mu 0 4 1197 1368 1367 1196
		f 4 75 1429 1623 -1027
		mu 0 4 1369 1368 1197 898
		f 4 -982 5 1026 1625
		mu 0 4 899 1370 1369 898
		f 4 -987 -32 981 1627
		mu 0 4 900 1371 1370 899
		f 4 -1485 -708 1629 1628
		mu 0 4 1372 1373 1238 1227
		f 4 1630 -1490 -1629 1631
		mu 0 4 1228 1374 1372 1227
		f 4 1632 1134 -1631 1633
		mu 0 4 1233 1376 1375 1232
		f 4 1634 1124 -1633 1635
		mu 0 4 969 1378 1377 968
		f 4 1636 1132 -1635 1637
		mu 0 4 985 1380 1379 984
		f 4 1638 1131 -1637 1639
		mu 0 4 981 1382 1381 980
		f 4 1640 1133 -1639 1641
		mu 0 4 989 1384 1383 988
		f 4 1642 1128 -1641 1643
		mu 0 4 977 1386 1385 976
		f 4 -1608 1604 -1643 1645
		mu 0 4 973 1388 1387 972
		f 4 726 1126 1607 1646
		mu 0 4 1360 1389 1388 973
		f 4 1647 -1603 -729 1648
		mu 0 4 1352 1391 1390 1351
		f 4 1649 -1604 -1648 1650
		mu 0 4 1356 1393 1392 1355
		f 4 1651 -1598 -1650 1652
		mu 0 4 1348 1395 1394 1347
		f 4 1653 1594 -1652 1654
		mu 0 4 1324 1397 1396 1323
		f 4 1656 -1595 -1656 1657
		mu 0 4 1344 1399 1398 1343
		f 4 1658 1597 -1657 1659
		mu 0 4 1332 1401 1400 1331
		f 4 -1606 1603 -1659 1661
		mu 0 4 1328 1403 1402 1327
		f 4 744 1602 1605 1662
		mu 0 4 1358 1404 1403 1328
		f 4 1668 1393 -1395 -1664
		mu 0 4 1405 1164 1161 1173
		f 4 -1666 -1665 1667 1670
		mu 0 4 1406 1409 1408 1407
		f 4 -1667 1402 1672 -1668
		mu 0 4 1410 1413 1412 1411
		f 4 -1670 -1669 1674 1665
		mu 0 4 1414 1417 1416 1415
		f 4 -1672 1392 1669 -1671
		mu 0 4 1407 1419 1418 1406
		f 4 -1407 -1406 1671 -1673
		mu 0 4 1412 1421 1420 1411
		f 4 1675 -1415 -1674 1664
		mu 0 4 1422 1425 1424 1423
		f 4 1673 -1417 -1413 1666
		mu 0 4 1426 1429 1428 1427
		f 4 -1678 1676 -1381 -1399
		mu 0 4 1168 1430 1157 1155
		f 4 -1405 -1681 1679 1681
		mu 0 4 1431 1434 1433 1432
		f 4 -1683 -1404 1401 -1682
		mu 0 4 1432 1436 1435 1431
		f 4 -1680 -1679 1677 1682
		mu 0 4 1437 1440 1439 1438
		f 4 -1416 -1684 1680 1411
		mu 0 4 1441 1444 1443 1442
		f 4 1761 -1761 -1760 1758
		mu 0 4 1445 1448 1447 1446
		f 4 1766 -1766 -1762 1764
		mu 0 4 1449 1452 1451 1450
		f 4 1759 -1770 -1877 1768
		mu 0 4 1453 1456 1455 1454
		f 4 1689 -1686 -1689 1690
		mu 0 4 1457 1460 1459 1458
		f 4 1683 -1694 -1687 1678
		mu 0 4 1461 1464 1463 1462
		f 4 -1696 -1695 -1240 1697
		mu 0 4 1465 1466 1072 1079
		f 4 1694 1703 -1697 1242
		mu 0 4 1072 1466 1467 1075
		f 4 1241 1698 -1698 1212
		mu 0 4 1070 1071 1465 1079
		f 4 1700 -1700 -1699 1709
		mu 0 4 1468 1469 1465 1071
		f 4 -1741 -1740 1737 -1736
		mu 0 4 1470 1473 1472 1471
		f 4 1711 -1705 -1704 1705
		mu 0 4 1474 1475 1467 1466
		f 4 1707 -1707 -1706 1695
		mu 0 4 1465 1476 1474 1466
		f 4 1701 -1709 -1708 1699
		mu 0 4 1469 1477 1476 1465
		f 3 -1712 1706 -1713
		mu 0 3 1475 1474 1476
		f 4 -1714 -1266 -1265 1716
		mu 0 4 1478 1479 1279 1280
		f 4 1725 1721 -1715 1713
		mu 0 4 1478 1481 1480 1479
		f 4 1714 1722 -1716 -1241
		mu 0 4 1479 1480 1483 1482
		f 4 1718 1724 -1717 1245
		mu 0 4 1484 1485 1478 1280
		f 4 -1719 -1244 1696 -1718
		mu 0 4 1485 1484 1075 1467
		f 4 -1733 -1721 1730 -1720
		mu 0 4 1483 1481 1487 1486
		f 4 1729 -1724 1717 1704
		mu 0 4 1475 1487 1485 1467
		f 4 1723 1720 -1726 -1725
		mu 0 4 1485 1487 1481 1478
		f 3 -1728 -1727 1238
		mu 0 3 1068 1486 1071
		f 4 1728 -1711 -1710 1726
		mu 0 4 1486 1488 1468 1071
		f 4 1719 1727 1250 1715
		mu 0 4 1483 1486 1068 1482
		f 4 1708 1702 -1729 1731
		mu 0 4 1476 1477 1488 1486
		f 4 -1732 -1731 -1730 1712
		mu 0 4 1476 1486 1487 1475
		f 3 -1723 -1722 1732
		mu 0 3 1483 1480 1481
		f 4 1733 1735 -1735 -1703
		mu 0 4 1477 1470 1471 1488
		f 4 1734 -1738 -1737 1710
		mu 0 4 1488 1471 1472 1468
		f 4 1736 1739 -1739 -1701
		mu 0 4 1468 1472 1473 1469
		f 4 1738 1740 -1734 -1702
		mu 0 4 1469 1473 1470 1477
		f 4 -1675 1684 -1742 -1676
		mu 0 4 1489 1492 1491 1490
		f 4 1157 -1326 -1743 1743
		mu 0 4 1006 1007 1128 1493
		f 4 -1745 841 1155 -1744
		mu 0 4 1493 1494 1005 1006
		f 4 1742 -1324 -1747 -1746
		mu 0 4 1493 1128 1125 1495
		f 4 -1749 -1748 1746 -1322
		mu 0 4 1126 1496 1495 1125
		f 4 1756 -833 1744 1745
		mu 0 4 1497 1500 1499 1498
		f 4 1747 1753 -1752 -1751
		mu 0 4 1501 1504 1503 1502
		f 4 -1354 -1753 1748 -1353
		mu 0 4 1146 1143 1496 1126
		f 3 1752 1755 -1754
		mu 0 3 1504 1505 1503
		f 4 1751 -1756 -1366 -1755
		mu 0 4 1502 1503 1505 1147
		f 4 -841 1749 1754 1369
		mu 0 4 1148 1506 1502 1147
		f 4 1750 -1750 842 -1757
		mu 0 4 1497 1502 1506 1500
		f 4 1771 1772 -1075 -984
		mu 0 4 828 1507 1216 827
		f 4 1774 -1771 -981 -29
		mu 0 4 1508 1509 910 911
		f 4 1781 -1772 1064 1770
		mu 0 4 1510 1507 828 910
		f 4 -1774 1793 -1076 -1773
		mu 0 4 1507 1511 1291 1216
		f 4 -1776 -1775 -884 -1799
		mu 0 4 1512 1509 1508 1513
		f 4 1779 1778 1792 -1291
		mu 0 4 1105 1515 1514 1104
		f 4 -1777 -1779 1784 -1796
		mu 0 4 1516 1514 1515 1517
		f 4 -1295 -1781 1785 -1780
		mu 0 4 1109 1110 1519 1518
		f 5 1775 1797 -1783 1773 -1782
		mu 0 5 1510 1521 1520 1511 1507
		f 4 -1785 -1786 1782 -1797
		mu 0 4 1522 1518 1519 1523
		f 4 51 -1296 -1788 -1787
		mu 0 4 1524 1527 1526 1525
		f 4 -1790 1787 1308 -1789
		mu 0 4 1528 1531 1530 1529
		f 4 -1380 1794 -1791 1788
		mu 0 4 1529 1533 1532 1528
		f 4 1780 1570 -1574 -1794
		mu 0 4 1534 1535 1294 1295
		f 4 -1778 1789 1791 1795
		mu 0 4 1517 1531 1528 1516
		f 4 -1798 -1784 1777 1796
		mu 0 4 1523 1521 1536 1522
		f 4 -864 1786 1783 1798
		mu 0 4 1513 1538 1537 1512
		f 4 1800 -1759 -1800 1801
		mu 0 4 1539 1445 1446 1540
		f 4 -1688 -1692 1807 1692
		mu 0 4 1541 1544 1543 1542
		f 4 -1805 -1804 1776 1810
		mu 0 4 1545 1546 1514 1516
		f 4 1802 1381 -1793 1803
		mu 0 4 1546 1159 1104 1514
		f 4 1805 1808 -1795 -1677
		mu 0 4 1547 1548 1532 1533
		f 4 -1808 -1807 -1806 1686
		mu 0 4 1542 1543 1550 1549
		f 4 -1792 1790 1809 -1811
		mu 0 4 1516 1528 1532 1545
		f 4 1812 1297 -1384 -1812
		mu 0 4 1551 1552 1158 1159
		f 4 1826 -1814 -1758 -1813
		mu 0 4 1553 1556 1555 1554
		f 4 -1767 -1815 1821 -1768
		mu 0 4 1557 1560 1559 1558
		f 4 -1816 -1765 -1801 1813
		mu 0 4 1556 1449 1450 1555
		f 4 -1817 1814 1815 1827
		mu 0 4 1561 1559 1560 1562
		f 4 -1819 1811 -1803 -1818
		mu 0 4 1563 1551 1159 1546
		f 4 1817 1804 1828 -1820
		mu 0 4 1563 1546 1545 1564
		f 4 -1764 -1822 -1821 1825
		mu 0 4 1565 1568 1567 1566
		f 4 -1824 1824 1829 -1823
		mu 0 4 1569 1571 1566 1570
		f 4 1762 -1826 -1825 1806
		mu 0 4 1572 1565 1566 1571
		f 4 1830 -1828 -1827 1818
		mu 0 4 1573 1561 1562 1574
		f 4 -1810 -1809 1823 -1829
		mu 0 4 1545 1532 1548 1564
		f 4 -1831 1819 1822 -1832
		mu 0 4 1575 1576 1569 1570
		f 4 -1830 1820 1816 1831
		mu 0 4 1570 1566 1567 1575
		f 4 -1835 1836 1292 1846
		mu 0 4 1577 1578 1106 1103
		f 4 1141 1293 -1837 -1836
		mu 0 4 1579 1107 1108 1580
		f 4 -1152 1835 1839 -1841
		mu 0 4 999 1013 1582 1581
		f 4 -1846 1843 -1845 -1298
		mu 0 4 1552 1584 1583 1158
		f 4 1844 -1848 -1847 -1383
		mu 0 4 1158 1583 1577 1103
		f 4 1304 1864 1838 -1851
		mu 0 4 1118 1096 1586 1585
		f 4 -1297 1850 1833 -1852
		mu 0 4 1587 1590 1589 1588
		f 4 -1408 1851 1849 -1853
		mu 0 4 1591 1587 1588 1592
		f 4 1871 -1854 1211 1858
		mu 0 4 1593 1594 886 883
		f 4 -1858 -1857 1147 1840
		mu 0 4 1581 1595 1002 999
		f 4 -1860 -1859 1161 1856
		mu 0 4 1595 1593 883 1002
		f 4 1240 -1863 1867 1265
		mu 0 4 1479 1482 1596 1279
		f 4 -1251 1251 1853 1862
		mu 0 4 1482 1068 1069 1596
		f 4 -1411 1865 1861 -1864
		mu 0 4 1097 1176 1598 1597
		f 4 -1149 1863 1855 -1865
		mu 0 4 1096 1097 1597 1586
		f 4 1872 1870 -1866 -1557
		mu 0 4 1285 1599 1598 1176
		f 4 1869 -1565 -1868 -1867
		mu 0 4 1600 1603 1602 1601
		f 4 1561 1563 -1870 -1869
		mu 0 4 1604 1607 1606 1605
		f 4 1868 -1873 1567 -1570
		mu 0 4 1278 1599 1285 1277
		f 4 1663 1852 1842 -1874
		mu 0 4 1608 1591 1592 1609
		f 4 1876 -1691 -1685 1873
		mu 0 4 1610 1457 1458 1611
		f 4 1757 -1802 -1875 1845
		mu 0 4 1612 1539 1540 1613
		f 4 1874 1799 -1769 -1876
		mu 0 4 1614 1615 1453 1454
		f 4 -1842 -1844 1875 -1843
		mu 0 4 1592 1583 1584 1609
		f 4 -1849 1847 1841 -1850
		mu 0 4 1588 1577 1583 1592
		f 4 -1833 1834 1848 -1834
		mu 0 4 1589 1578 1577 1588
		f 4 -1838 -1840 1832 -1839
		mu 0 4 1586 1581 1582 1585
		f 4 -1855 1857 1837 -1856
		mu 0 4 1597 1595 1581 1586
		f 4 -1861 1859 1854 -1862
		mu 0 4 1598 1593 1595 1597
		f 4 1866 -1872 1860 -1871
		mu 0 4 1599 1594 1593 1598;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 8 
		45 
		50 
		56 
		223 
		509 
		514 
		520 
		687 ;
	setAttr ".tessellate" yes;
createNode transform -n "FaceMesh_HighRes" -p "Meshes";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FaceMesh_HighResShape" -p "FaceMesh_HighRes";
	addAttr -ci true -sn "textureAnim" -ln "textureAnim" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "Fadeable" -ln "Fadeable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "Fadeable3DS" -ln "Fadeable3DS" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "NoMerge" -ln "NoMerge" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "NoRecvRtShadows" -ln "NoRecvRtShadows" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noQuad" -ln "noQuad" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noLightmapCast" -ln "noLightmapCast" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noLightmapRecv" -ln "noLightmapRecv" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "vtxLightmapOnly" -ln "vtxLightmapOnly" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "clipMesh" -ln "clipMesh" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "tessellate" -ln "tessellate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noRender" -ln "noRender" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "earlyAlpha" -ln "earlyAlpha" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "reflectWater" -ln "reflectWater" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "billboardX" -ln "billboardX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "billboardY" -ln "billboardY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "billboardZ" -ln "billboardZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "recvSilhouette" -ln "recvSilhouette" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "depthBias" -ln "depthBias" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "pvsNonOccluder" -ln "pvsNonOccluder" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".tessellate" yes;
createNode mesh -n "FaceMesh_HighResShape69Orig" -p "FaceMesh_HighRes";
	addAttr -ci true -sn "textureAnim" -ln "textureAnim" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "Fadeable" -ln "Fadeable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "Fadeable3DS" -ln "Fadeable3DS" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "NoMerge" -ln "NoMerge" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "NoRecvRtShadows" -ln "NoRecvRtShadows" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noQuad" -ln "noQuad" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noLightmapCast" -ln "noLightmapCast" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noLightmapRecv" -ln "noLightmapRecv" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "vtxLightmapOnly" -ln "vtxLightmapOnly" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "clipMesh" -ln "clipMesh" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "tessellate" -ln "tessellate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noRender" -ln "noRender" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "earlyAlpha" -ln "earlyAlpha" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "reflectWater" -ln "reflectWater" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "billboardX" -ln "billboardX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "billboardY" -ln "billboardY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "billboardZ" -ln "billboardZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "recvSilhouette" -ln "recvSilhouette" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "depthBias" -ln "depthBias" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "pvsNonOccluder" -ln "pvsNonOccluder" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1616 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.99999994 4.5941797e-017 0.35083941
		 0.29972672 0 2.4624571e-015 0.8392598 0 0.5 0.5 0.5625 0.5 0.5625 0.5625 0.5 0.5625
		 0.5 0.625 0.5625 0.625 0.5625 0.75 0.5 0.75 0.5625 0.90625 0.5 0.90625 0.5 0.80761719
		 0.5625 0.80761719 0.5625 0.75 0.5 0.75 0.5 0.79296875 0.5625 0.79296875 0.5625 0.7734375
		 0.5 0.7734375 0.625 0.625 0.625 0.75 0.625 0.75 0.625 0.625 0.59147894 0.25 0.5842607
		 0.19164625 0.625 0.1875 0.625 0.25 0.50372946 0.4217537 0.53750002 0.42500001 0.55278003
		 0.44235998 0.50621581 0.43208945 0.5 0.44062501 0.52362013 0.45693994 0.5 0.46875
		 0.53767884 0.42508942 0.50335652 0.42020333 0.5 0.40625 0.55254406 0.35157561 0.52627206
		 0.34766281 0.54463071 0.21144374 0.56017643 0.28130251 0.53008819 0.26565126 0.52231538
		 0.19947186 0.625 0.125 0.57704246 0.13329248 0.57704246 0.13329248 0.625 0.125 0.52908498
		 0.14158496 0.51454246 0.13329248 0.51454246 0.13329248 0.52908498 0.14158496 0.5
		 0 0.5625 0 0.5625 0 0.5 0 0.625 0 0.59375 0.5 0.59375 0.5625 0.59375 0.625 0.59375
		 0.75 0.59375 0.75 0.59375 0.7734375 0.59375 0.80761719 0.59375 0.79296875 0.59375
		 0.90625 0.59375 0 0.59375 0 0.5 0.5 0.625 0.5 0.625 0.5625 0.625 0.5625 0.875 0.125
		 0.8515625 0 0.875 0 0.554515 0.4414925 0.53125 0.421875 0.55624998 0.44062501 0.85430574
		 0.24953243 0.8515625 0.1875 0.875 0.1875 0.5 0.46875 0.53056008 0.45346999 0.53750002
		 0.45000002 0.5 0.46875 0.81738281 0.25 0.71875 0.25 0.71875 0.1875 0.83203125 0.25
		 0.53056008 0.45346996 0.53750002 0.44999999 0.18449152 0.16289964 0.70128953 0.62899667
		 0.0059892558 0.5 0.3427361 0.32561141 1 0.32561141 0.98048192 0 0 0.38864788 0.087128699
		 0.25 0.20991451 0.22187769 0.2817995 0.40391099 0.1742574 0.5 0.625 0.7734375 0.625
		 0.79296875 0.625 0.80761719 0.625 0.90625 0.17802426 0.62040687 0.21038637 0.49081379
		 0.32366464 0.48162761 0.49151018 0.96325523 0.25873005 0.64464366 0.019451927 0.69315451
		 0.054465402 0.27726173 0.19421621 1 0.14566216 0.75 0.15981323 0.39333999 0.23974186
		 0.24081381 0.10924008 0.29586619 0.048554052 0.25 0.012138513 0.0625 0.15581907 0
		 0 1.0846302e-017 0.12132855 2.7115754e-018 0.55866641 0.3125 0.58849472 0.34375 0.55795789
		 0.25 0.5435214 0.19579248 0.55508816 0.32815126 0.52754408 0.32032561 0.625 0.34375
		 0.59375 1 0.625 1 0.5625 1 0.5 1 0.5 0.34375 0.5 0.3125 0.5 0.25 0.5 0.1875 0.5 0.125
		 0.5 0.125 0 0 0.45085955 0.71821523 0.1537426 0.75 0.31453627 1.093406e-016 0.30736145
		 0.99286556 0.1754197 0.14986336 0.91962987 2.2970898e-017 0.765625 0.25 0.765625
		 0.1875 0.625 0.859375 0.59375 0.859375 0.5625 0.859375 0.5 0.859375 0.7550773 1.7422155e-016
		 1 0.44610393 0.1165926 0.6371426 0.52279556 8.4738296e-008 0 0.35541818 0.80594867
		 1.478035e-016 1 0.23621063 0 0.14913437 0.78133589 2.0500973e-017 1 0 0.76943612
		 0.41101053 0 0.38516578 0.17437348 0 0.33799282 0 0.38645291 0.80274057 0.40758741
		 0.72244143 0.2613861 0.75 0.19420531 0.5556103 0.52181375 0.13743871 0.52181375 0.13743871
		 0.53347301 0.20545781 0.54513228 0.2734769 0.54131615 0.32423842 0.53940809 0.34961921
		 0.20627856 0 0.99999994 2.021788e-016 0.63367128 0.36320004 0.50497264 0.42692158
		 0.54514003 0.43368 0.5428825 0.43168375 0.10313928 0.24019639 0.54062498 0.4296875
		 0.076871298 0.375 0.81683564 0.18160002 0.39476094 0.35910761 0.16941342 0.9892984
		 0.15726814 1.640109e-016 0.30230108 0.73410761 0.23581612 0.36705381 0 0.17770909
		 0.34858453 4.2369148e-008 0.16899641 0.074567184 0.90297437 0.11810531 0.55381608
		 0.33986342 0.54036212 0.33692881 0.52690804 0.33399421 0.5 0.328125 0.10043941 0.98751485
		 0.078634068 1.9134604e-016 0.22802183 0.74205381 0.15634371 0.3710269 0 0.088854544
		 0.43569005 6.3553721e-008 0.084498204 0.11185078 0.95148718 0.17715797 0.55445212
		 0.33400732 0.54083914 0.33058363 0.52722609 0.32715991 0.5 0.3203125 0.609375 0.5
		 0.609375 0.5625 0.609375 0.625 0.609375 0.75 0.609375 0.75 0.609375 0.7734375 0.609375
		 0.79296875 0.609375 0.80761719 0.609375 0.859375 0.609375 0.90625 0.609375 0 0.609375
		 1 0.609375 0 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1;
	setAttr ".uvst[0].uvsp[250:499]" 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0.5 0.21875
		 0.52620178 0.23256156 0.53930265 0.23946735 0.55073965 0.22289625 0.55240357 0.24637312
		 0.58786982 0.22082312 0.625 0.21875 0.71875 0.21875 0.765625 0.21875 0.81738281 0.21875
		 0.83203125 0.21875 0.8515625 0.21875 0.625 0.53125 0.875 0.21875 0.625 0.53125 0.609375
		 0.53125 0.59375 0.53125 0.5625 0.53125 0.5 0.53125 0.625 0.23749998 0.625 0.51875001
		 0.8515625 0.23124999 0.81738281 0.23125 0.765625 0.23125 0.83203125 0.23125 0.71875
		 0.23125 0.578125 0.5 0.578125 0.53125 0.578125 0.5625 0.578125 0.625 0.578125 0.75
		 0.578125 0.75 0.578125 0.7734375 0.578125 0.79296875 0.578125 0.80761719 0.578125
		 0.859375 0.578125 0.90625 0.578125 0 0.578125 1 0.578125 0 0.625 0.5 0.625 0.50000006
		 0.625 0.5074811 0.61540639 0.34832752 0.73728645 0.54762185 0.93134022 0.46925607
		 0.875 0.23124999 0.87350839 0.24625944 0 1.3006358e-016 0.74883252 0.066270187 0.75443149
		 1.3914083e-009 0.073797219 0.065159857 0.73317468 0.2515986 0.55521339 0.32319695
		 0.49502045 0.29806635 0.49287969 0.084502697 0.609375 0.5 0.609375 0.5 0.31983015
		 0.32752293 0.59375 0.5 0.59375 0.5 0.578125 0.5 0.51620376 0.47285178 0.44639337
		 0.43085673 0.28843823 0.37984276 0.56249994 0.49999997 0.83990955 0.079459317 0.88298094
		 3.7016377e-016 0.71654963 -2.0761938e-008 0.65422046 0.10087771 0.69914514 2.8564863e-016
		 0.50726342 1.9743446e-016 0.56575978 0.44275117 0.49813911 0.46366826 0.47651803
		 0.45545232 0.42868549 0.44133151 0.3592861 0.41090468 0.90625763 3.8086482e-016 0.89430106
		 0.052737154 0.74592876 0.10063949 0.52873313 0.089174449 0.74296427 0.13572611 0.88298094
		 3.7016377e-016 0.71654963 -2.0761938e-008 0.65422046 0.10087771 0.83990955 0.079459317
		 0.69914514 2.8564863e-016 0.50726342 1.9743446e-016 0.49287969 0.084502697 0.59375
		 0.5 0.49813911 0.46366826 0.44639337 0.43085673 0.56575978 0.44275117 0.51620376
		 0.47285178 0.42868549 0.44133151 0.3592861 0.41090468 0.47651803 0.45545232 0.9124316
		 0.043829765 0.90625763 3.8086482e-016 0.74592876 0.10063949 0.52873313 0.089174449
		 0.74296427 0.13572611 0.625 0 0.71875006 0.087317422 0.8515625 0.125 0.83203125 0
		 0.83203125 0.1875 0.83203125 0.14713235 0.765625 0.14705178 0.765625 0 0.765625 0.096670143
		 0.71875 0 0.81738281 0.1875 0.81738281 0.14665864 0.81738281 0 0.70599127 0.13615288
		 0.81738281 0.099539421 0.83203125 0.10175201 0.84179592 0.125 0.70599133 0.10615871
		 0.625 0.0625 0.625 0.0625 0.46249998 0.34999996 0.375 0.25 0.5 0.25 0.5 0.3125 0.5
		 0.3125 0.52500004 0.33750004 0.5625 0.375 0.52500004 0.41250002 0.5 0.4375 0.48417547
		 0.42167544 0.44843751 0.37343749 0.46249998 0.34999996 0.45625001 0.39375001 0.375
		 0.4375 0.375 0.34375 0.44374999 0.36874998 0.63333333 0.25833333 0.52500004 0.33750004
		 0.625 0.5 0.52500004 0.41250002 0.5625 0.375 0.625 0.375 0.5 0.125 0.62916666 0.12916666
		 0.75 0.125 0.75 0.25 0.5 0.4375 0.47500002 0.41249999 0.46249998 0.34999996 0.46249998
		 0.34999996 0.44374999 0.36874998 0.44374999 0.36874998 0.375 0.125 0.5 0.875 0.625
		 1 0.5 1 0.625 0.875 0.375 1 0.375 0.89999998 0.375 0.80000365 0.375 0 0.5 0 0.625
		 0 0.75 0 0.5 0.5 0.375 0.5 0.625 0.625 0.5 0.625 0.875 0.125 0.875 0.25 0.625 0.75
		 0.37633789 0.73333335 0.5 0.72500002 0.875 0 0.82973027 0.56342769 0 0 0.99999994
		 0.5436067 0.99861455 0.56703275 0 4.1944602e-017 0.16064379 0 0.25231874 0.97866344
		 0.068673007 1 0.86527872 0.24766216 0.89777583 0.25299814 0.86328125 0.23124999 0.86328125
		 0.21875 0.86328125 0.1875 0.86328125 0.125 0.625 0.76171875 0.86328125 0 0.609375
		 0.76171875 0.59375 0.76171875 0.578125 0.76171875 0.5625 0.76171875 0.5 0.76171875
		 0.67634642 0.44797468 0.72765797 0.21389341 0.095936105 0.084707811 0.25569767 0.4871394
		 0.27955788 0.62234253 0.19178472 0.33232942 0.3034184 0.75754595 0.1650838 0.85000008
		 0.033987872 0.17500019 0.12787169 0.17751963 0.49416417 0.21264097 0.59481639 0.23426923
		 0.37045541 0.36885643 0.52331614 0.35594022 0.76491821 0.36998403 0.81490779 0.51627558
		 0.16301875 0.66404796 0.16061114 0.2973662 0.14805436 0.31829408 0.73709011 0.20524955
		 0.1490694 0.13162288 0.36741579 0.40534973 0.41790205 0.43317848 0.41790205 0.43317848
		 0.47244462 0.45709163 0.47244462 0.45709163 0.5703125 0.5 0.5703125 0.5 0.5703125
		 0.53125 0.5703125 0.5625 0.5703125 0.625 0.5703125 0.75 0.5703125 0.75 0.5703125
		 0.76171875 0.5703125 0.7734375 0.5703125 0.79296875 0.5703125 0.80761719 0.5703125
		 0.859375 0.5703125 0.90625 0.5703125 0 0.5703125 1 0.5703125 0 0.23701495 0.33851904
		 0 0;
	setAttr ".uvst[0].uvsp[500:749]" 1 0 0.99028218 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0.50916827 0.3270033 0.49459231
		 0.25535366 0.34514278 0.34818968 0.24022064 0.31244457 0.15537298 0.80000007 0.21087441
		 0.65434581 0.24072133 0.68897641 0.2368816 0.58897638 0.23304202 0.4889766 0.17579898
		 0.36283469 0.11855589 0.23669291 0.77609712 0.53194869 0.041270964 0.2125001 0.72063231
		 0.40897936 0.67153215 0.28111047 0.57501489 0.27873307 0.29268169 0.33031714 2.9802322e-008
		 0.60000026 0 0.59999967 1 0.60000098 0 0.6000005 0.99999928 0.59999955 1.7291799e-006
		 0.60000068 0.99999976 0.6000002 0 0.60000026 0.99999928 0.59999961 0.99999702 0.60000002
		 0.83984375 0.1875 0.83984375 0.21875 0.83984375 0.23124999 0.84094107 0.24981298
		 0.098346859 0.024999997 0.095012367 0.17663781 0.091506124 0.22822541 0.087999985
		 0.27981305 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0.54280043
		 0.25987306 0.52853358 0.25241536 0.58931351 0.23249388 0.55507058 0.23915851 0.5
		 0.2375 0.55706728 0.26733077 0.065952398 0.98662305 0.039317034 2.0501362e-016 0.19088221
		 0.74602687 0.1166075 0.37301344 0 0.044427272 0.4792428 7.4146008e-008 0.042249102
		 0.13049257 0.97574359 0.20668429 0.55477011 0.3310793 0.54107761 0.32741103 0.52738512
		 0.32374275 0.5 0.31640625 0.51507157 0.41378582 0.063208252 0.29571891 0.055298239
		 0.59197348 0.16455552 0.59357923 0.31023121 0.59571934 0.091717333 0.59251171 0.60000002
		 0 0.60000062 0.99999994 0.84362626 0.66593617 0 3.2668003e-017 0.01549678 0.37089843
		 0.049012963 3.7160572e-016 0.93687034 0 0 0.31533161 1 9.0465044e-017 0.52500004
		 0.41875002 0 0.48039278 0.53125 0.421875 1 0.57972634 0.99999994 5.0749943e-017 0.92318416
		 0.41003299 0 0.47315699 0.89371586 0 0.99999994 0.56096524 0.15258437 0.48121613
		 0.076292187 0.24060807 0.46214426 0.1578373 0.96843517 0.2629163 0.5 0.75 0.5625
		 0.75 0.5703125 0.75 0.578125 0.75 0.59375 0.75 0.609375 0.75 0.625 0.75 0.625 0.625
		 0.625 0.5625 0.625 0.53125 0.8515625 0.0625 0.86328125 0.0625 0.875 0.0625 0.625
		 0.6875 0.625 0.6875 0.625 0.6875 0.609375 0.6875 0.59375 0.6875 0.578125 0.6875 0.5703125
		 0.6875 0.5625 0.6875 0.5 0.6875 0.060044467 0.41422069 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0.5 1 0.5 0 0.5 1
		 0.5 0 0.51313603 0.3457064 0.51345402 0.3310596 0.51361305 0.32373619 0.51369256
		 0.3200745 0.51377201 0.31641281 0.51504409 0.25782561 0.51426679 0.24495769 0.51310086
		 0.22565578 0.51115769 0.19348593 0.50727123 0.12914625 0.50727123 0.12914625 1 0.5
		 0.60000032 0.49999997 1 0.5 0 0.5 1 0.5 0 0.5 1 0.5 0 0.5 1 0.5 0 0.5 1 0.5 0 0.5
		 1 0.5 0 0.5 1 0.5 0 0.5 0.5 0.5 0 0.5 1 0.5 1 0.5 0 0.5 1 0.5 0 0.5 1 0.5 0 0.5 0.75
		 0.5 0 0.5 1 0.5 0.25 0.5 1 0.5 0 0.5 1 0.5 0 0.5 0.5 0.5 0 0.5 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0;
	setAttr ".uvst[0].uvsp[750:999]" 0.70000029 0 1 0.5 0 0.5 1 0.5 0 0.5 0 0.5
		 0 9.0525118e-017 1 0 0.9977814 0.22075066 0.14426494 0.28125164 0.46249998 0.34999996
		 0.44374999 0.36874998 0.44374999 0.36874998 0.46249998 0.34999996 0 0 1 0 1 1 0 1
		 0.044278368 0.039095972 0 0 1 0 1 0.5 0 0.5 0 0 1 0 1 0.5 0 0.5 0 0 1 0 1 0.5 0 0.5
		 0 0 1 0 1 0.5 0 0.5 0 0 1 0.5 0 0.5 0.53472406 0.451388 0.5 0.46875 0.28910208 0.67642391
		 0.45794111 0.86692983 0.54220361 0.4476482 0.53472406 0.451388 0.31366336 0.90000015
		 0.35803184 0.95051557 0.18773288 0.5815289 0.23841748 0.62897635 0.59999937 0 1 0
		 0 0 1 0 0 0 1 0 0 0 1 0 0 0 0.36000016 0 0.5 0.625 0.5625 0.625 0.5625 0.6875 0.5
		 0.6875 0.5625 0.859375 0.5 0.859375 0.5 0.80761719 0.5625 0.80761719 0.5625 0.75
		 0.5 0.75 0.5 0.75 0.5625 0.75 0.5625 0.76171875 0.5 0.76171875 0.625 0.625 0.625
		 0.6875 0.625 0.6875 0.625 0.625 0.50497264 0.42692158 0.54514003 0.43368 0.55278003
		 0.44235998 0.50621581 0.43208945 0.52181375 0.13743871 0.51454246 0.13329248 0.51454246
		 0.13329248 0.52181375 0.13743871 0.5 0 0.5625 0 0.5625 0 0.5 0 0.5703125 0.625 0.5703125
		 0.6875 0.5703125 0.75 0.5703125 0.75 0.5703125 0.76171875 0.5703125 0.859375 0.5703125
		 0.80761719 0.5703125 0 0.5703125 0 0.81738281 0.099539421 0.765625 0.096670143 0.765625
		 0 0.81738281 0 0.5625 0.79296875 0.5 0.79296875 0.5 0.7734375 0.5625 0.7734375 0.5703125
		 0.79296875 0.5703125 0.7734375 0.59375 0.6875 0.59375 0.625 0.609375 0.625 0.609375
		 0.6875 0.609375 0.75 0.59375 0.75 0.59375 0.75 0.609375 0.75 0.609375 0.76171875
		 0.59375 0.76171875 0.609375 0.79296875 0.59375 0.79296875 0.59375 0.7734375 0.609375
		 0.7734375 0.609375 0.859375 0.59375 0.859375 0.59375 0.80761719 0.609375 0.80761719
		 0.57704246 0.13329248 0.57704246 0.13329248 0.52908498 0.14158496 0.52908498 0.14158496
		 0.53347301 0.20545781 0.52231538 0.19947186 0.5842607 0.19164625 0.5435214 0.19579248
		 0.81738281 0.1875 0.765625 0.1875 0.765625 0.14705178 0.81738281 0.14665864 0.59375
		 0.5625 0.609375 0.5625 0.5625 0.5625 0.5703125 0.5625 0.5 0.5625 0.5625 1 0.5625
		 0.90625 0.5703125 0.90625 0.5703125 1 0.5 1 0.5 0.90625 0.51115769 0.19348593 0.50727123
		 0.12914625 0.50727123 0.12914625 0.52754408 0.32032561 0.52738512 0.32374275 0.51369256
		 0.3200745 0.51377201 0.31641281 0.54131615 0.32423842 0.54107761 0.32741103 0.70599127
		 0.13615288 0.71875 0.1875 0.5 0.44062501 0.52362013 0.45693994 0.5 0.46875 0.54463071
		 0.21144374 0.55508816 0.32815126 0.55477011 0.3310793 0.52279556 8.4738296e-008 0.7550773
		 1.7422155e-016 1 0.44610393 0.1165926 0.6371426 0.042249102 0.13049257 0.97574359
		 0.20668429 1 0.23621063 0 0.14913437 0.78133589 2.0500973e-017 0 0.38516578 0.76943612
		 0.41101053 1 0 0.4792428 7.4146008e-008 0 0 0 0.044427272 0 0.17770909 0.23581612
		 0.36705381 0.39476094 0.35910761 0 0.35541818 0.17437348 0 0.34858453 4.2369148e-008
		 0.33799282 0 0.80594867 1.478035e-016 0.90297437 0.11810531 0.16899641 0.074567184
		 0.54036212 0.33692881 0.55381608 0.33986342 0.55254406 0.35157561 0.53940809 0.34961921
		 0.52690804 0.33399421 0.52627206 0.34766281 0.51345402 0.3310596 0.51313603 0.3457064
		 0 0.088854544 0.15634371 0.3710269 0.43569005 6.3553721e-008 0.95148718 0.17715797
		 0.084498204 0.11185078 0.54083914 0.33058363 0.55445212 0.33400732 0.52722609 0.32715991
		 0.51361305 0.32373619 0.625 0.625 0.625 0.6875 0.625 0.75 0.625 0.75 0.625 0.76171875
		 0.625 0.79296875 0.625 0.7734375 0.625 0.80761719 0.625 0.859375 0 0 1 0 1 0.5 0
		 0.5 0.5 0 1 0 1 0.5 0.5 0.5 0 0 1 0 1 0.5 0 0.5 0 0 1 0 1 0.5 0 0.5 0 0 1 0 1 0.5
		 0 0.5 0 0 1 0 1 0.5 0 0.5 0.59375 0.53125 0.609375 0.53125 0.5625 0.53125 0.5703125
		 0.53125 0.5 0.53125 0.91962987 2.2970898e-017 0.99999994 4.5941797e-017 0.35083941
		 0.29972672 0.1754197 0.14986336 0.81738281 0.23125;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.765625 0.23125 0.765625 0.21875 0.81738281
		 0.21875 0.59375 0.5 0.609375 0.5 0.5 0.5 0.5625 0.5 0.5703125 0.5 0.71875 0.21875
		 0.875 0.1875 0.875 0.21875 0.86328125 0.21875 0.86328125 0.1875 0.81738281 0.25 0.765625
		 0.25 0.59375 0.5 0.609375 0.5 0.578125 0.53125 0.578125 0.5 0.578125 0.5625 0.578125
		 0.625 0.578125 0.6875 0.578125 0.75 0.578125 0.75 0.578125 0.76171875 0.578125 0.79296875
		 0.578125 0.7734375 0.578125 0.80761719 0.578125 0.859375 0.59375 0.90625 0.578125
		 0.90625 0.578125 1 0.59375 1 0.578125 0 0.578125 0 0.59375 0 0.59375 0 0.59375 0.5
		 0.609375 0.5 0.578125 0.5 0.51620376 0.47285178 0.65422046 0.10087771 0.69914514
		 2.8564863e-016 0.50726342 1.9743446e-016 0.49287969 0.084502697 0.56575978 0.44275117
		 0.59375 0.5 0.49813911 0.46366826 0.44639337 0.43085673 0.69914514 2.8564863e-016
		 0.50726342 1.9743446e-016 0.49813911 0.46366826 0.625 0.125 0.625 0.125 0.625 0 0.625
		 0 0.625 0.0625 0.625 0.0625 0.609375 0 0.609375 0 0.625 0.1875 0.71875006 0.087317422
		 0.71875 0 0.609375 0.90625 0.609375 1 0.625 0.90625 0.625 1 0.70599133 0.10615871
		 0.45625001 0.39375001 0.375 0.4375 0.375 0.34375 0.44374999 0.36874998 0.5 0.25 0.5
		 0.125 0.62916666 0.12916666 0.63333333 0.25833333 0.75 0.125 0.75 0.25 0.375 0.125
		 0.375 0.25 0.5 0.875 0.625 1 0.5 1 0.625 0.875 0.375 1 0.375 0.89999998 0.375 0.80000365
		 0.375 0 0.5 0 0.625 0 0.75 0 0.875 0.125 0.875 0.25 0.625 0.75 0.875 0 0.86328125
		 0.23124999 0.8515625 0.23124999 0.8515625 0.21875 0.83990955 0.079459317 0.88298094
		 3.7016377e-016 0.71654963 -2.0761938e-008 0.90625763 3.8086482e-016 0.9124316 0.043829765
		 0.19178472 0.33232942 0.25569767 0.4871394 0.32366464 0.48162761 0.23974186 0.24081381
		 0.20991451 0.22187769 0.087128699 0.25 0.1742574 0.5 0.2817995 0.40391099 0.72765797
		 0.21389341 0.76491821 0.36998403 0.89777583 0.25299814 0.83990955 0.079459317 0.59481639
		 0.23426923 0.65422046 0.10087771 0.86527872 0.24766216 0.85430574 0.24953243 0.81490779
		 0.51627558 0.93134022 0.46925607 0.49416417 0.21264097 0.49287969 0.084502697 0.44639337
		 0.43085673 0.56575978 0.44275117 0.47244462 0.45709163 0.47244462 0.45709163 0.51620376
		 0.47285178 0.5703125 0.5 0.37045541 0.36885643 0.52331614 0.35594022 0.70128953 0.62899667
		 0.73317468 0.2515986 0.18449152 0.16289964 0.0059892558 0.5 0.16301875 0.66404796
		 0.16061114 0.2973662 0.054465402 0.27726173 0.019451927 0.69315451 0.36741579 0.40534973
		 0.23701495 0.33851904 0.73709011 0.20524955 0.1490694 0.13162288 0.3592861 0.41090468
		 0.3592861 0.41090468 0.41790205 0.43317848 0.41790205 0.43317848 0.74296427 0.13572611
		 0.095936105 0.084707811 0.47651803 0.45545232 0.47651803 0.45545232 0.28843823 0.37984276
		 0.14805436 0.31829408 0.50916827 0.3270033 0.34514278 0.34818968 0.24022064 0.31244457
		 0.29268169 0.33031714 0.21087441 0.65434581 0.17579898 0.36283469 0.23304202 0.4889766
		 0.67153215 0.28111047 0.72063231 0.40897936 0.57501489 0.27873307 0.49459231 0.25535366
		 0.67634642 0.44797468 0.61540639 0.34832752 0.55521339 0.32319695 0.49502045 0.29806635
		 0.31983015 0.32752293 0 0.59999967 1 0.60000098 1 1 0 1 0.77609712 0.53194869 0 0
		 1 0 0.8515625 0.1875 0 0 1 0 1 1 0 1 0.54280043 0.25987306 0.52853358 0.25241536
		 0.52620178 0.23256156 0.53930265 0.23946735 0.58931351 0.23249388 0.55507058 0.23915851
		 0.55073965 0.22289625 0.58786982 0.22082312 0.54513228 0.2734769 0.53008819 0.26565126
		 0.59147894 0.25 0.58849472 0.34375 0.55866641 0.3125 0.55795789 0.25 0.51504409 0.25782561
		 0.51426679 0.24495769 0.51310086 0.22565578 0.55706728 0.26733077 0.55240357 0.24637312
		 0.56017643 0.28130251 0.625 0.25 0.625 0.34375 0.71875 0.23125 0.625 0.23749998 0.625
		 0.21875 0.8392598 0 0 2.4624571e-015 0.71875 0.25 0.51507157 0.41378582 0.53767884
		 0.42508942 0.50335652 0.42020333 0.5 0.40625 0.50372946 0.4217537 0.53750002 0.42500001
		 0.53125 0.421875 0.5428825 0.43168375 0.16455552 0.59357923 0.31023121 0.59571934
		 0.31453627 1.093406e-016 0.15726814 1.640109e-016 0.30230108 0.73410761 0.45085955
		 0.71821523 0.091717333 0.59251171 0.078634068 1.9134604e-016 0.22802183 0.74205381
		 0.60000002 0 0.60000032 0.49999997 0 0.5 0 0 0 0 1 0 1 0.5 0 0.5 0.10043941 0.98751485
		 0.16941342 0.9892984 0.30736145 0.99286556 1 0 1 0.5 0.049012963 3.7160572e-016 0.93687034
		 0 0.96843517 0.2629163 0 0.31533161 0 3.2668003e-017 0.46214426 0.1578373 1 0.57972634
		 0.01549678 0.37089843 0.5 0.75 0.5625 0.75 0.5703125 0.75;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.578125 0.75 0.59375 0.75 0.609375 0.75 0.625
		 0.75 0.625 0.5625 0.625 0.5625 0.625 0.5625 0.625 0.51875001 0.625 0.53125 0.625
		 0.53125 0.625 0.5 0.875 0.23124999 0.625 0.5 0.625 0.53125 0.625 0.50000006 0.88298094
		 3.7016377e-016 0.71654963 -2.0761938e-008 0.625 0.5074811 0.89430106 0.052737154
		 0.90625763 3.8086482e-016 0.87350839 0.24625944 0.875 0.125 0.86328125 0.125 0.86328125
		 0.0625 0.875 0.0625 0.83203125 0 0.8515625 0 0.8515625 0.0625 0.83203125 0.10175201
		 0.5 0.5 0.625 0.5 0.625 0.625 0.5 0.625 0.5 0.72500002 0.37633789 0.73333335 0.8515625
		 0.125 0.86328125 0 0.875 0 0.076871298 0.375 0.1166075 0.37301344 0.52500004 0.41875002
		 0.54062498 0.4296875 0.53125 0.421875 0.63367128 0.36320004 0.81683564 0.18160002
		 0.10313928 0.24019639 0 0.48039278 0.1537426 0.75 0.19088221 0.74602687 0.055298239
		 0.59197348 0.039317034 2.0501362e-016 0.065952398 0.98662305 0 0.47315699 0.92318416
		 0.41003299 0.99999994 5.0749943e-017 0.15258437 0.48121613 0.076292187 0.24060807
		 0.89371586 0 0.99999994 0.56096524 0.84362626 0.66593617 0.060044467 0.41422069 1
		 9.0465044e-017 0.063208252 0.29571891 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 0.5
		 0 0.5 0.5 0 1 0 1 0.5 0.5 0.5 0 0 1 0 1 0.5 0 0.5 0 0 1 0 0.5 1 0.25 0.5 0 0 1 0
		 0.75 0.5 0.5 1 0 0 1 0 1 0.5 0 0.5 0 0 1 0 1 0.5 0 0.5 0 0 1 0 1 0.5 0 0.5 0 0 1
		 0 1 0.5 0 0.5 0 0 0 0.5 0 0 0 0.5 0.5 0.328125 0.5 0.34375 0.5 0.3203125 0.5 0.31640625
		 0.5 0.3125 0.5 0.25 0.5 0.2375 0.5 0.21875 0.5 0.1875 0.5 0.125 0.5 0.125 0.60000062
		 0.99999994 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0.5 1 0 1
		 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0.5 1 0 1 0.73728645 0.54762185
		 0 0.6000005 0.99999928 0.59999955 1 1 0 1 0 1 0 0.60000026 0.99999928 0.59999961
		 1 1 0.99999702 0.60000002 0.5 1 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0.25873005 0.64464366 1.7291799e-006 0.60000068 0.99999976 0.6000002 1 1 0
		 1 0 0 1 0 2.9802322e-008 0.60000026 0 0 1 0 0.99028218 1 0 1 0 0 1 0 1 1 0 0 1 0
		 1 0.5 0 0.5 0 0 1 0 1 0.5 0 0.5 0 0 0.70000029 0 1 0.5 0 0.5 0 0.5 1 0.5 1 1 0 1
		 0 9.0525118e-017 1 0 0.9977814 0.22075066 0.14426494 0.28125164 0.46249998 0.34999996
		 0.5 0.3125 0.52500004 0.33750004 0.44374999 0.36874998 0.46249998 0.34999996 0.46249998
		 0.34999996 0.44374999 0.36874998 0.44374999 0.36874998 0.46249998 0.34999996 0.5
		 0.3125 0.52500004 0.33750004 0.46249998 0.34999996 0.46249998 0.34999996 0.52500004
		 0.41250002 0.5 0.4375 0.5 0.4375 0.52500004 0.41250002 0.47500002 0.41249999 0.48417547
		 0.42167544 0.625 0.375 0.5625 0.375 0.44843751 0.37343749 0.5625 0.375 0.44374999
		 0.36874998 0 0 1 0 1 1 0 1 0.56249994 0.49999997 0.5 0.5 0.42868549 0.44133151 0.42868549
		 0.44133151 0.74883252 0.066270187 0.75443149 1.3914083e-009 0 1.3006358e-016;
	setAttr ".uvst[0].uvsp[1500:1615]" 0.044278368 0.039095972 0.74592876 0.10063949
		 0.52873313 0.089174449 0.52873313 0.089174449 0.74592876 0.10063949 0.74296427 0.13572611
		 0.073797219 0.065159857 0.554515 0.4414925 0.5 0.46875 0.53056008 0.45346999 0.53056008
		 0.45346996 0.55624998 0.44062501 0.53472406 0.451388 0.5 0.46875 0.27955788 0.62234253
		 0.40758741 0.72244143 0.28910208 0.67642391 0.45794111 0.86692983 0.2613861 0.75
		 0.38645291 0.80274057 0.54220361 0.4476482 0.53472406 0.451388 0.31366336 0.90000015
		 0.35803184 0.95051557 0.3427361 0.32561141 0 0.38864788 0.98048192 0 1 0.32561141
		 0.3034184 0.75754595 0.1650838 0.85000008 0.19421621 1 0.49151018 0.96325523 0.24072133
		 0.68897641 0.15537298 0.80000007 0.20627856 0 0.99999994 2.021788e-016 0.53750002
		 0.44999999 0.53750002 0.45000002 0.5 0.46875 0 0 1 0 0 1 0 0.5 1 0.5 1 1 0.23841748
		 0.62897635 0.2368816 0.58897638 0.14566216 0.75 0.17802426 0.62040687 0 0 1 0 0.21038637
		 0.49081379 0.15981323 0.39333999 0 0 1 0 1 0 0 0 1 0.5 0 0.5 0 0 1 0 0 0 1 0 0.19420531
		 0.5556103 0.18773288 0.5815289 0 0.5 0 0 1 0 1 0.5 0.59999937 0 0.36000016 0 0 0
		 0 0.5 0 0 1 0 1 0 1 0 0.12787169 0.17751963 0.15581907 0 0.12132855 2.7115754e-018
		 0 1.0846302e-017 0.83203125 0.23125 0.83203125 0.25 0.11855589 0.23669291 0.10924008
		 0.29586619 0.84094107 0.24981298 0.83984375 0.23124999 0.033987872 0.17500019 0.095012367
		 0.17663781 0.098346859 0.024999997 0.012138513 0.0625 0.041270964 0.2125001 0.091506124
		 0.22822541 0.83203125 0.1875 0.83203125 0.14713235 0.83203125 0.21875 0.375 0.5 0.83984375
		 0.21875 0.83984375 0.1875 0.84179592 0.125 0 0 0.82973027 0.56342769 0.99861455 0.56703275
		 0.99999994 0.5436067 0.16064379 0 0 4.1944602e-017 0.068673007 1 0.25231874 0.97866344
		 0.048554052 0.25 0.087999985 0.27981305 0 0 1 0 0 0 1 0 0 0 0 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 19 ".pt";
	setAttr ".pt[120]" -type "float3" 0.016157262 0 0 ;
	setAttr ".pt[144]" -type "float3" -0.12449843 0 0 ;
	setAttr ".pt[146]" -type "float3" -0.042853586 0 0 ;
	setAttr ".pt[147]" -type "float3" -0.079321019 0 0 ;
	setAttr ".pt[151]" -type "float3" 0.031334504 0 0 ;
	setAttr ".pt[152]" -type "float3" 0.016459431 0 0 ;
	setAttr ".pt[160]" -type "float3" 0.031734299 0 0 ;
	setAttr ".pt[161]" -type "float3" 0.016258385 0 0 ;
	setAttr ".pt[401]" -type "float3" -0.018313237 0 0 ;
	setAttr ".pt[491]" -type "float3" 0 -0.046164416 -0.026188109 ;
	setAttr ".pt[593]" -type "float3" -0.016157262 0 0 ;
	setAttr ".pt[615]" -type "float3" 0.12449843 0 0 ;
	setAttr ".pt[616]" -type "float3" 0.042853586 0 0 ;
	setAttr ".pt[617]" -type "float3" 0.079321019 0 0 ;
	setAttr ".pt[621]" -type "float3" -0.031334504 0 0 ;
	setAttr ".pt[622]" -type "float3" -0.016459431 0 0 ;
	setAttr ".pt[628]" -type "float3" -0.031734299 0 0 ;
	setAttr ".pt[629]" -type "float3" -0.016258385 0 0 ;
	setAttr ".pt[857]" -type "float3" 0.018313237 0 0 ;
	setAttr -s 948 ".vt";
	setAttr ".vt[0:165]"  2.16697407 3.33502722 3.65008187 3.063524246 4.74676514 3.29810667
		 2.32388878 4.52458382 3.9446435 2.74160194 3.49543285 3.058717728 2.086346626 3.0094850063 -0.34366733
		 2.42435646 3.1016593 2.83630586 3.28194237 8.58194542 -1.49583054 0 8.38824463 3.90365529
		 0 8.87168503 -3.55434752 0 3.15294242 -1.54046249 0 2.54752159 4.3663249 3.53334045 7.98688984 0.4555355
		 0 2.087371111 1.85928917 2.12528324 2.75312233 0.41160125 0 4.62182903 -3.14192414
		 3.17814636 4.40085745 -1.081841826 0 9.75275517 3.23028493 0 11.055019379 0.79014122
		 2.68369102 9.32675171 2.42277837 2.87662125 9.7844162 0.57676232 2.82282734 9.75920105 -0.87234795
		 0 10.69157505 -1.58947444 0 5.91054201 -3.68846583 3.44089603 5.83642626 -1.74054718
		 0 4.59972191 4.55099869 0 5.92999458 4.30953503 0.81931019 5.010439396 4.21907663
		 0.47742748 5.1644311 5.2255559 0 5.41336441 5.16354704 0 4.89675522 5.24712181 0 7.48737621 -3.90213513
		 3.41042614 7.46205044 -1.79865718 3.64481735 6.87131977 0.32153189 3.26896286 6.42365932 2.74684978
		 0.49838543 5.55810547 4.16142416 0.39979744 5.27013922 5.17136288 0 5.22472715 5.35442495
		 1.24955893 2.20507288 1.43698394 1.5155859 2.69776154 3.83673024 0.53704166 4.68276072 4.38886738
		 0 5.016251564 5.37668324 0.3273325 4.99825048 5.28547001 0 5.51352644 4.72412586
		 0.44909096 5.27524471 4.65819979 0.66621208 5.072293758 4.64940929 0.51464272 4.8144784 4.72793627
		 0 4.71395588 4.78500509 2.011410713 0 0.47126275 1.25198078 0 1.3997159 0 0 1.83865249
		 0 0 -1.4737289 1.98962784 0 -0.35355616 0.53445816 8.38691521 3.83801341 0.65450668 9.72364044 3.15383482
		 0.88070917 10.9920826 0.76876658 0.93254566 10.59226418 -1.55891848 0.99703312 8.87578201 -3.38902712
		 1.070175171 7.53801727 -3.73046827 1.07668066 5.92085552 -3.51254702 1.04359436 4.62182903 -2.95279384
		 0.85792351 3.21478748 -1.38092911 0.83430147 0 -1.32672226 0.34104538 6.33383656 4.018930435
		 0 6.31894684 4.19144297 0 6.6441288 -3.92851496 1.077793121 6.66816998 -3.75540733
		 3.42566013 6.44635677 -1.82566428 3.15191841 5.41055965 3.12491798 1.652071 4.29927206 4.089471817
		 1.59726238 4.99669743 3.89008784 1.65803909 9.61333179 2.93564558 1.94874096 10.69874287 0.67956203
		 2.040104866 10.31771564 -1.30373573 2.25512505 8.79572201 -2.91351366 2.36484146 7.56333828 -3.11963296
		 2.37626648 6.61417866 -3.15261793 2.3876915 5.88095427 -3.0070412159 2.22852325 4.5553422 -2.28924179
		 1.68517494 3.19009972 -0.91188478 1.59355736 0 -0.88283902 2.88598204 6.4168396 2.93495393
		 0.75825423 6.39376736 3.67314434 1.52529716 5.31840229 3.51824212 1.45098543 7.38958883 3.46546316
		 2.47779274 7.25026131 3.075176954 0.91339207 5.81662655 3.63840342 0.85592842 7.066382408 3.56541395
		 2.51796818 5.58679247 3.15774012 0.41712856 7.18794537 3.90977478 0 7.2123661 4.011619091
		 2.15674782 5.36468077 3.32960987 2.2543602 5.11428452 3.79234052 2.033977509 2.82214904 3.45462728
		 1.67253113 2.4790976 1.083475709 1.65397072 0 1.066084623 0 2.09855938 2.85537457
		 1.23983383 2.20383072 2.49923944 1.77540588 2.48798895 2.067179918 2.34516907 2.88102555 1.5502032
		 3.26400757 3.79485083 1.57418442 3.46455383 5.091671944 1.65395868 3.53198433 5.60880756 1.66885173
		 3.62609673 6.60834694 1.69179392 3.49715614 7.80165958 1.72742498 2.85472393 9.6177721 1.78737164
		 1.81369603 10.44056988 1.80055416 0.80094528 10.69509983 1.84612405 0 10.77739716 1.93595159
		 0 3.026257277 4.34984684 1.67205238 3.19630289 3.98783302 0.55748081 4.42758083 4.42387629
		 0.48310947 3.038083076 4.24576283 0.49977684 2.57601523 4.32087994 0.48719692 2.11413527 2.67730713
		 0.48455238 2.10916233 1.7982291 0.48718357 0 1.7635591 1.11884212 3.72467136 4.25930548
		 0.43911076 3.76256084 4.54326057 0 3.75766277 4.60406828 0 3.67327499 4.57188177
		 0.40958214 3.66658688 4.52066612 1.086232185 3.71772909 4.23755598 1.24238873 3.71816492 4.12227678
		 2.29130268 3.87216949 3.82798576 2.93127155 4.055966377 3.27795553 3.4111824 4.4785738 1.62452662
		 3.40479851 5.18488503 -1.57172537 2.35879183 5.34644651 -2.82219648 1.071538925 5.41789198 -3.31905317
		 0 5.41273546 -3.52011132 1.95245075 3.75653791 3.98916459 1.0019187927 5.19797611 4.025756359
		 1.17320538 5.44727373 3.57832289 0.91164398 0 1.61353099 0.92840958 2.14476442 1.64378238
		 0.94255638 2.14662981 2.58827329 0.95670414 2.60540223 4.14074516 0.90971518 3.055634022 4.15961409
		 0.80923176 3.6748004 4.41599464 0 5.12352371 5.38554001 0.42022228 5.078526497 5.26676846
		 0.58963203 4.92980528 4.67824316 0.67817593 4.86113262 4.26790237 1.017464638 4.44597197 4.29624557
		 0.97171497 3.7261374 4.42705297 0 3.81148291 4.66510582 0.51992607 3.81416106 4.60705948
		 0.95828342 3.78171492 4.49670315 1.1353426 3.75865507 4.3421936 1.24485207 3.72728729 4.23090696
		 1.098647118 3.68022251 4.34830141 0.79432106 3.62900925 4.48192263 0.41724205 3.6173315 4.56365824
		 0 3.62142229 4.63017845 0 3.88659739 4.71773863 0.50456905 3.89655638 4.64667988
		 0.92128277 3.86855268 4.4930892 1.21823978 3.8334403 4.31804276 1.35682678 3.73258257 4.098239899
		 1.12619305 3.60305023 4.24065971 0.80445576 3.55525589 4.40361214 0.41214561 3.53835964 4.52524519
		 0 3.53916168 4.61009026 2.15448666 7.41702938 3.21818566 2.27985954 9.47325706 2.68222475
		 2.35300064 10.11670208 1.79396296;
	setAttr ".vt[166:331]" 2.39287567 10.346241 0.62816215 2.43330956 10.10783005 -1.14684081
		 2.75980759 8.76477242 -2.4422307 2.89237309 7.51608372 -2.66553593 2.90570354 6.55920982 -2.66737103
		 2.919034 5.88763237 -2.55887604 2.89065552 5.26566601 -2.35272455 2.64494419 4.47584438 -1.88907254
		 1.94540596 3.09979248 -0.6077646 1.8426609 0 -0.59818614 1.62306499 4.22962713 3.39223742
		 1.087555885 4.33046532 3.54124355 0.57694912 4.36177063 3.66040182 0 4.36176968 3.73747444
		 0 3.23337698 3.66031957 0.53758335 3.22189546 3.63780737 1.038564682 3.22189546 3.53313589
		 1.38404274 3.33335114 3.40718722 1.65011883 3.72797489 3.30457997 0 2.12198257 3.52629614
		 0.49870014 2.13445091 3.48053026 0.94962978 2.16539145 3.40283799 1.31903267 2.22103858 3.25
		 1.77737713 2.4924345 2.80309772 2.42604828 2.99708319 2.068886042 3.035346985 3.63870215 2.28724861
		 3.1997261 4.26727009 2.45124102 3.26403809 4.91921902 2.47603273 3.38549304 5.50968361 2.39688492
		 3.51414108 6.51600361 2.21932173 3.33475304 7.74802589 2.1604557 2.80608749 9.50010109 2.085197926
		 2.30273771 9.86174107 2.26001763 1.71601248 10.06975174 2.38625979 0.72772598 10.27613163 2.54448676
		 0 10.33183765 2.62762547 2.44590378 3.066717625 2.45350885 2.96990776 8.020863533 2.90652108
		 3.17653847 7.72657204 2.65374827 3.39636326 6.4790659 2.4303329 3.11514282 4.18274832 2.78192687
		 3.18383408 4.85023737 2.80486226 3.29024839 5.47003412 2.68809819 2.9438839 3.56139398 2.65424109
		 2.25213051 8.26303291 3.36110377 1.60352993 8.36994839 3.6155026 0 7.922822 4.017343521
		 1.068994522 8.37843227 3.726758 1.15627289 9.69090939 3.071087599 1.22426891 10.20032406 2.46537328
		 1.29226494 10.59864044 1.8233391 1.4351716 10.87279606 0.72416431 1.65523815 10.45297337 -1.43575978
		 1.87993431 8.83575249 -3.11067533 1.97136307 7.55067825 -3.38445544 1.98088455 6.64117432 -3.42577267
		 1.99448395 5.90090466 -3.22461581 1.97397041 5.38216925 -3.029276371 1.92010021 4.60683727 -2.58086443
		 1.52175236 3.2024436 -1.052278161 1.44126225 0 -1.013510585 2.93692017 7.81081295 2.98436427
		 2.8287487 7.58824348 3.056317568 3.020771027 7.59120655 2.89234543 2.21952057 7.79723167 3.494524
		 2.24866486 8.0633955 3.46020532 1.56369877 8.1434679 3.72174501 1.49582005 7.85404873 3.74307275
		 1.019118309 7.8280344 3.85439229 1.049426079 8.13757896 3.84621835 0.54230976 8.071110725 3.9115448
		 0.36640549 7.91233444 3.97154498 0.50739479 7.7401247 3.93210721 2.8301754 7.6572361 3.10245943
		 2.91149712 7.76214314 3.030506134 2.26408005 7.98038101 3.51444364 2.23725891 7.85422325 3.54876232
		 1.5502224 8.078103065 3.78186393 1.51928139 7.92586231 3.80269027 1.041129112 8.082644463 3.91501331
		 1.023145676 7.90350628 3.92318702 0.55904675 8.019585609 3.97926879 0.52252102 7.83084011 3.99983096
		 2.94525909 7.64928246 2.92911887 0.44579983 7.92228603 4.0366745 3.48996353 3.96844435 0.432293
		 3.27065468 4.028675079 -0.43167865 3.30986595 5.0031147003 -0.73965871 3.56084824 4.77931023 0.47953525
		 3.60215378 5.35966873 0.52516723 3.40271568 5.58398438 -0.56443554 3.5419693 5.96435785 -0.16575748
		 3.60144424 6.10161304 0.18089017 3.68634987 5.90044737 0.41748607 3.35664558 3.86002445 0.026102424
		 2.15337849 2.88130355 -0.048146002 2.056658268 0 -0.02325967 4.57930946 3.99426103 -0.95092189
		 4.73497581 3.9461081 -0.49692672 4.93506241 5.80257702 -0.31647056 4.6779232 5.84264374 -0.77959472
		 4.35835838 6.051898956 0.043144077 4.038509369 6.089130878 -0.49409512 3.90651703 3.79663873 -0.50467038
		 4.10635948 3.75451684 -0.090493165 3.79013252 4.996418 -0.94019449 4.89141464 4.8571167 -1.20289767
		 5.10798836 4.81146812 -0.7540465 4.18215561 4.032300949 0.083034933 4.35776329 5.75225925 0.15648526
		 4.86610413 4.82505035 -0.43940651 3.71431541 5.014165878 0.36104894 3.85798454 5.59151506 0.43751281
		 3.79865265 4.22565937 0.3007181 4.68458176 5.50915241 -0.20203759 4.59782219 4.18670273 -0.28567693
		 4.12474632 4.32965994 -0.1193902 4.41532326 4.42841148 -0.42633668 4.61817551 4.86086082 -0.56573862
		 4.46742058 5.32663393 -0.36715728 4.24309921 5.49717236 -0.071262784 3.87006378 5.3971324 0.1476222
		 3.7102108 5.096200943 0.08466588 3.83826256 4.46979523 0.040585428 3.97725582 4.94578552 0.31343266
		 4.20481873 4.42938662 0.23889244 4.23321533 4.60442448 0.0523853 4.019435406 4.95809746 0.10239705
		 3.73682785 5.268713 0.42109835 4.006439209 3.57690978 -0.29758179 4.78969193 3.83415079 -0.75749236
		 5.094280243 4.81908607 -0.97847205 4.82442474 5.97921085 -0.59737146 4.22636223 6.27006006 -0.20155406
		 3.16171265 7.0074338913 2.81959772 3.29316521 7.10281849 2.54204059 3.44129181 7.13201427 2.19039774
		 3.57847214 7.20500278 1.70960951 3.60592461 7.4291048 0.38853371 3.37561321 8.034172058 -1.68197083
		 2.83577538 8.11024094 -2.57035685 2.29388046 8.17953014 -3.016573429 1.9095459 8.19321537 -3.24756527
		 1.033975601 8.20689964 -3.5597477 0 8.17953014 -3.72824144 2.71563387 6.83355045 3.0050654411
		 2.65327072 7.38303185 3.21233654 0 7.73905039 4.016198635 1.09568429 5.32274628 3.77798152
		 1.55408287 5.18972015 3.68766594 2.1887989 5.27143764 3.53538775 0.74738979 5.71321821 3.86829686
		 0.5113821 6.35071135 3.82885814 2.65814781 5.5415864 3.17161417 3.084197998 6.41956806 2.8803978
		 2.18556404 7.61759186 3.42915201 1.44760323 7.63406467 3.68054032 0.92000008 7.51239204 3.80534506
		 2.92349434 6.90310383 3.032104731 0.62806606 7.16508579 3.77195764 0.44970894 7.43296432 3.92840838
		 0 7.44236851 4.00045108795 0.76325703 7.78407955 3.89324975 0.77283382 7.86717319 3.96150899
		 0.80008793 8.051115036 3.94714117 0.79586792 8.10434532 3.87888145;
	setAttr ".vt[332:497]" 0.80172634 8.38267326 3.78238583 0.90538979 9.71288109 3.12375307
		 0.97599697 10.23822784 2.50493002 1.04660511 10.65371609 1.83473158 1.16871548 10.94613075 0.74646544
		 1.3412199 10.52363491 -1.51374078 1.41478205 8.85799599 -3.27035666 1.43982267 8.20228672 -3.42416191
		 1.49706793 7.5465765 -3.57796717 1.50563765 6.65690041 -3.60697699 1.51830053 5.91088009 -3.3685813
		 1.52989101 5.40003061 -3.17416477 1.50539112 4.61433315 -2.76682901 1.29138565 3.20861554 -1.22539067
		 1.21645927 0 -1.18176222 0.68582058 7.43814373 3.85412407 1.027112007 6.44004059 3.81307912
		 1.62287426 6.45650482 3.8673017 2.17967129 6.45636463 3.67162085 2.42311668 6.45858955 3.47645402
		 2.66228676 6.44944191 3.2443397 1.45512772 7.52440357 3.62796116 0.89194107 7.32121372 3.71300244
		 0.74912357 7.14227676 3.64819694 0.62428761 6.38227844 3.72524762 0.85105324 5.77873039 3.73022509
		 1.14465904 5.3997879 3.65664959 1.54504776 5.27889252 3.58307409 2.16599941 5.33643818 3.4162972
		 2.56538463 5.57487631 3.15940547 2.95166969 6.41791534 2.90279841 2.77700043 6.85832596 3.039124012
		 2.54875374 7.29697132 3.20140171 2.16178226 7.50290108 3.38869262 0.80806732 7.23382378 3.69919348
		 1.12749481 6.89881229 3.73649263 1.55291271 7.024617195 3.70199394 2.16959763 7.030614853 3.48950386
		 2.44498634 6.93756199 3.31520033 2.66702461 6.76538849 3.13164473 3.57904053 6.10857725 1.68032289
		 3.46116447 6.012843609 2.30810332 3.35748601 5.97455025 2.55921555 3.22110343 5.91710949 2.935884
		 2.93202591 5.87393141 3.026005983 2.81275749 5.87876558 3.031101942 2.75151777 5.88418674 3.037495375
		 1.027112007 6.44004059 3.71616268 1.62287426 6.45650482 3.72695398 2.17967129 6.45636463 3.53127313
		 2.42311668 6.45858955 3.3361063 2.63508844 6.44944191 3.13624763 0.95387459 2.30383039 3.96982384
		 0.50152874 2.28732562 4.048892498 1.41080379 2.39086127 3.64610934 1.88967323 2.60135746 3.16546726
		 0 2.26524186 4.097807884 0 4.08996582 4.57969236 0.53102493 4.10368681 4.51207399
		 0.9693737 4.081899166 4.39592886 1.43515491 4.0076880455 4.1928997 1.61558914 3.74499011 4.044743538
		 1.39912319 3.51126266 4.10338879 0.85301495 3.40867543 4.27075577 0.44762707 3.39461517 4.38891649
		 0 3.3901155 4.46911097 0.16720486 4.90831947 5.26019382 0.22537708 4.60942936 4.52384663
		 0.20751381 4.095454216 4.56327105 0.19579315 3.81255412 4.65543652 0.16388607 3.7596221 4.58950424
		 0.18964958 3.89058089 4.70330858 0.23368549 4.36176968 3.70664549 0.2209816 4.72609091 4.77246475
		 0 9.86803532 -2.84840894 0.96478939 9.82042885 -2.75047064 1.37800121 9.77722073 -2.66854668
		 1.76758623 9.7307682 -2.54971552 2.14761496 9.64312458 -2.38512278 2.60587311 9.52708244 -2.036471367
		 3.16146183 9.18274784 -1.18408918 3.3156662 8.93439007 0.51614892 3.26146889 8.67386723 1.68757701
		 3.18110466 8.46805954 2.11118984 3.61630058 7.038227081 -0.34248346 3.57944775 7.64599991 -0.42535248
		 3.49632072 8.25230312 -0.42380396 3.27197266 9.058568954 -0.33397013 2.88313293 9.77180862 -0.23680758
		 2.41309261 10.34943104 -0.28159302 1.99442291 10.63062477 -0.33434054 1.54520512 10.78528023 -0.37805143
		 1.25496769 10.85727787 -0.40589136 0.90662766 10.9145689 -0.41732964 0 10.99569225 -0.4219203
		 0.21823168 4.41272449 4.48249817 0 4.40383911 4.51375341 1.38404274 3.72487426 2.78245211
		 1.038564682 3.720438 2.71619272 0 3.72089481 2.76282644 0.53758335 3.720438 2.73795414
		 0.26879168 3.72066641 2.75157022 0.26879168 3.22763634 3.64906359 0.20479107 3.66993093 4.54627419
		 0.20862103 3.6193769 4.60459137 0.20607281 3.53876066 4.5849061 0.22381353 3.39236522 4.44067097
		 0.24155474 3.032170296 4.29780483 0.24988842 2.56176853 4.35893345 0.25076437 2.27628374 4.073349953
		 0.24935007 2.12821674 3.5034132 0.24359846 2.10634732 2.76634073 0.24227619 2.098266602 1.82875919
		 0.24359179 0 1.80110574 0 4.24523449 4.19098425 0.19878578 4.2468071 4.16015577 0.50802994 4.24916649 4.11391211
		 1.029635429 4.19480562 3.99622893 1.37095356 4.11269379 3.837852 1.44625378 3.7048316 3.72550917
		 1.23513746 3.38774586 3.83445215 0.92389822 3.26383281 3.98664594 0.47358274 3.2572403 4.091317654
		 0.23679137 3.26453209 4.10974932 0 3.27182341 4.12818146 0 4.21750879 3.25015044
		 0.25123858 4.21732426 3.22910786 0.55726624 4.21713972 3.19917798 1.063060284 4.19181395 3.12871814
		 1.50355387 4.1138258 3.087344646 1.38404274 3.38874602 3.094819546 1.038564682 3.2949903 3.12466431
		 0.53758335 3.2949903 3.18788075 0.26879168 3.29981947 3.20031691 0 3.3046484 3.21157312
		 2.80049348 6.38044882 2.54803324 2.67493868 5.87866306 2.65696144 0.9730894 5.82000542 3.20487309
		 0.82823086 6.35890579 3.23731208 2.83548164 6.39864445 2.89944077 2.70547247 5.8814249 3.012233734
		 0.94324076 5.81831598 3.57958531 0.79324257 6.37633657 3.61317539 4.24481821 4.72256565 0.14138371
		 4.16345644 4.85139847 0.15700933 4.15018702 4.84952831 0.2351864 4.23786879 4.66065168 0.21269538
		 0 8.065509796 3.9789145 2.49636006 5.76257563 3.27673912 2.13855743 5.63678837 3.50212312
		 2.45880127 5.76573753 3.24402571 2.12104559 5.64342737 3.44656706 1.094797969 5.7013669 3.68696237
		 1.24122691 5.64253378 3.70795727 1.24430299 5.65681076 3.63938355 1.12464666 5.71137619 3.62814426
		 1.5480448 5.58976793 3.67078114 1.5346905 5.60796309 3.61673951 0.47866762 5.44496107 4.3601346
		 0 5.68011379 4.55828953 0.95636642 5.49028778 3.81410766 0.69979864 5.41405392 4.10715723
		 0.60897011 5.40008163 4.22961855 1.027216673 5.53434038 3.70128345 1.069279909 5.59501505 3.602355
		 2.51357532 5.66333437 3.23348999;
	setAttr ".vt[498:663]" 2.14921522 5.50073433 3.44536519 1.53667092 5.45408535 3.62109065
		 1.20721614 5.55534935 3.66404486 1.079487085 5.6375556 3.64119673 -2.16697407 3.33502722 3.65008187
		 -3.063524246 4.74676514 3.29810667 -2.32388878 4.52458382 3.9446435 -2.74160194 3.49543285 3.058717728
		 -2.086346626 3.0094850063 -0.34366733 -2.42435646 3.1016593 2.83630586 -3.28194237 8.58194542 -1.49583054
		 -3.53334045 7.98688984 0.4555355 -2.12528324 2.75312233 0.41160125 -3.17814636 4.40085745 -1.081841826
		 -2.68369102 9.32675171 2.42277837 -2.87662125 9.7844162 0.57676232 -2.82282734 9.75920105 -0.87234795
		 -3.44089603 5.83642626 -1.74054718 -0.81931019 5.010439396 4.21907663 -0.47742748 5.1644311 5.2255559
		 -3.41042614 7.46205044 -1.79865718 -3.64481735 6.87131977 0.32153189 -3.26896286 6.42365932 2.74684978
		 -0.49838543 5.55810547 4.16142416 -0.39979744 5.27013922 5.17136288 -1.24955893 2.20507288 1.43698394
		 -1.5155859 2.69776154 3.83673024 -0.53704166 4.68276072 4.38886738 -0.3273325 4.99825048 5.28547001
		 -0.44909096 5.27524471 4.65819979 -0.66621208 5.072293758 4.64940929 -0.51464272 4.8144784 4.72793627
		 -2.011410713 0 0.47126275 -1.25198078 0 1.3997159 -1.98962784 0 -0.35355616 -0.53445816 8.38691521 3.83801341
		 -0.65450668 9.72364044 3.15383482 -0.88070917 10.9920826 0.76876658 -0.93254566 10.59226418 -1.55891848
		 -0.99703312 8.87578201 -3.38902712 -1.070175171 7.53801727 -3.73046827 -1.07668066 5.92085552 -3.51254702
		 -1.04359436 4.62182903 -2.95279384 -0.85792351 3.21478748 -1.38092911 -0.83430147 0 -1.32672226
		 -0.34104538 6.33383656 4.018930435 -1.077793121 6.66816998 -3.75540733 -3.42566013 6.44635677 -1.82566428
		 -3.15191841 5.41055965 3.12491798 -1.652071 4.29927206 4.089471817 -1.59726238 4.99669743 3.89008784
		 -1.65803909 9.61333179 2.93564558 -1.94874096 10.69874287 0.67956203 -2.040104866 10.31771564 -1.30373573
		 -2.25512505 8.79572201 -2.91351366 -2.36484146 7.56333828 -3.11963296 -2.37626648 6.61417866 -3.15261793
		 -2.3876915 5.88095427 -3.0070412159 -2.22852325 4.5553422 -2.28924179 -1.68517494 3.19009972 -0.91188478
		 -1.59355736 0 -0.88283902 -2.88598204 6.4168396 2.93495393 -0.75825423 6.39376736 3.67314434
		 -1.52529716 5.31840229 3.51824212 -1.45098543 7.38958883 3.46546316 -2.47779274 7.25026131 3.075176954
		 -0.91339207 5.81662655 3.63840342 -0.85592842 7.066382408 3.56541395 -2.51796818 5.58679247 3.15774012
		 -0.41712856 7.18794537 3.90977478 -2.15674782 5.36468077 3.32960987 -2.2543602 5.11428452 3.79234052
		 -2.033977509 2.82214904 3.45462728 -1.67253113 2.4790976 1.083475709 -1.65397072 0 1.066084623
		 -1.23983383 2.20383072 2.49923944 -1.77540588 2.48798895 2.067179918 -2.34516907 2.88102555 1.5502032
		 -3.26400757 3.79485083 1.57418442 -3.46455383 5.091671944 1.65395868 -3.53198433 5.60880756 1.66885173
		 -3.62609673 6.60834694 1.69179392 -3.49715614 7.80165958 1.72742498 -2.85472393 9.6177721 1.78737164
		 -1.81369603 10.44056988 1.80055416 -0.80094528 10.69509983 1.84612405 -1.67205238 3.19630289 3.98783302
		 -0.55748081 4.42758083 4.42387629 -0.48310947 3.038083076 4.24576283 -0.49977684 2.57601523 4.32087994
		 -0.48719692 2.11413527 2.67730713 -0.48455238 2.10916233 1.7982291 -0.48718357 0 1.7635591
		 -1.11884212 3.72467136 4.25930548 -0.43911076 3.76256084 4.54326057 -0.40958214 3.66658688 4.52066612
		 -1.086232185 3.71772909 4.23755598 -1.24238873 3.71816492 4.12227678 -2.29130268 3.87216949 3.82798576
		 -2.93127155 4.055966377 3.27795553 -3.4111824 4.4785738 1.62452662 -3.40479851 5.18488503 -1.57172537
		 -2.35879183 5.34644651 -2.82219648 -1.071538925 5.41789198 -3.31905317 -1.95245075 3.75653791 3.98916459
		 -1.0019187927 5.19797611 4.025756359 -1.17320538 5.44727373 3.57832289 -0.91164398 0 1.61353099
		 -0.92840958 2.14476442 1.64378238 -0.94255638 2.14662981 2.58827329 -0.95670414 2.60540223 4.14074516
		 -0.90971518 3.055634022 4.15961409 -0.80923176 3.6748004 4.41599464 -0.42022228 5.078526497 5.26676846
		 -0.58963203 4.92980528 4.67824316 -0.67817593 4.86113262 4.26790237 -1.017464638 4.44597197 4.29624557
		 -0.97171497 3.7261374 4.42705297 -0.51992607 3.81416106 4.60705948 -0.95828342 3.78171492 4.49670315
		 -1.1353426 3.75865507 4.3421936 -1.24485207 3.72728729 4.23090696 -1.098647118 3.68022251 4.34830141
		 -0.79432106 3.62900925 4.48192263 -0.41724205 3.6173315 4.56365824 -0.50456905 3.89655638 4.64667988
		 -0.92128277 3.86855268 4.4930892 -1.21823978 3.8334403 4.31804276 -1.35682678 3.73258257 4.098239899
		 -1.12619305 3.60305023 4.24065971 -0.80445576 3.55525589 4.40361214 -0.41214561 3.53835964 4.52524519
		 -2.15448666 7.41702938 3.21818566 -2.27985954 9.47325706 2.68222475 -2.35300064 10.11670208 1.79396296
		 -2.39287567 10.346241 0.62816215 -2.43330956 10.10783005 -1.14684081 -2.75980759 8.76477242 -2.4422307
		 -2.89237309 7.51608372 -2.66553593 -2.90570354 6.55920982 -2.66737103 -2.919034 5.88763237 -2.55887604
		 -2.89065552 5.26566601 -2.35272455 -2.64494419 4.47584438 -1.88907254 -1.94540596 3.09979248 -0.6077646
		 -1.8426609 0 -0.59818614 -1.62306499 4.22962713 3.39223742 -1.087555885 4.33046532 3.54124355
		 -0.57694912 4.36177063 3.66040182 -0.53758335 3.22189546 3.63780737 -1.038564682 3.22189546 3.53313589
		 -1.38404274 3.33335114 3.40718722 -1.65011883 3.72797489 3.30457997 -0.49870014 2.13445091 3.48053026
		 -0.94962978 2.16539145 3.40283799 -1.31903267 2.22103858 3.25 -1.77737713 2.4924345 2.80309772
		 -2.42604828 2.99708319 2.068886042 -3.035346985 3.63870215 2.28724861 -3.1997261 4.26727009 2.45124102
		 -3.26403809 4.91921902 2.47603273 -3.38549304 5.50968361 2.39688492 -3.51414108 6.51600361 2.21932173
		 -3.33475304 7.74802589 2.1604557 -2.80608749 9.50010109 2.085197926 -2.30273771 9.86174107 2.26001763
		 -1.71601248 10.06975174 2.38625979;
	setAttr ".vt[664:829]" -0.72772598 10.27613163 2.54448676 -2.44590378 3.066717625 2.45350885
		 -2.96990776 8.020863533 2.90652108 -3.17653847 7.72657204 2.65374827 -3.39636326 6.4790659 2.4303329
		 -3.11514282 4.18274832 2.78192687 -3.18383408 4.85023737 2.80486226 -3.29024839 5.47003412 2.68809819
		 -2.9438839 3.56139398 2.65424109 -2.25213051 8.26303291 3.36110377 -1.60352993 8.36994839 3.6155026
		 -1.068994522 8.37843227 3.726758 -1.15627289 9.69090939 3.071087599 -1.22426891 10.20032406 2.46537328
		 -1.29226494 10.59864044 1.8233391 -1.4351716 10.87279606 0.72416431 -1.65523815 10.45297337 -1.43575978
		 -1.87993431 8.83575249 -3.11067533 -1.97136307 7.55067825 -3.38445544 -1.98088455 6.64117432 -3.42577267
		 -1.99448395 5.90090466 -3.22461581 -1.97397041 5.38216925 -3.029276371 -1.92010021 4.60683727 -2.58086443
		 -1.52175236 3.2024436 -1.052278161 -1.44126225 0 -1.013510585 -2.93692017 7.81081295 2.98436427
		 -2.8287487 7.58824348 3.056317568 -3.020771027 7.59120655 2.89234543 -2.21952057 7.79723167 3.494524
		 -2.24866486 8.0633955 3.46020532 -1.56369877 8.1434679 3.72174501 -1.49582005 7.85404873 3.74307275
		 -1.019118309 7.8280344 3.85439229 -1.049426079 8.13757896 3.84621835 -0.54230976 8.071110725 3.9115448
		 -0.36640549 7.91233444 3.97154498 -0.50739479 7.7401247 3.93210721 -2.8301754 7.6572361 3.10245943
		 -2.91149712 7.76214314 3.030506134 -2.26408005 7.98038101 3.51444364 -2.23725891 7.85422325 3.54876232
		 -1.5502224 8.078103065 3.78186393 -1.51928139 7.92586231 3.80269027 -1.041129112 8.082644463 3.91501331
		 -1.023145676 7.90350628 3.92318702 -0.55904675 8.019585609 3.97926879 -0.52252102 7.83084011 3.99983096
		 -2.94525909 7.64928246 2.92911887 -0.44579983 7.92228603 4.0366745 -3.48996353 3.96844435 0.432293
		 -3.27065468 4.028675079 -0.43167865 -3.30986595 5.0031147003 -0.73965871 -3.56084824 4.77931023 0.47953525
		 -3.60215378 5.35966873 0.52516723 -3.40271568 5.58398438 -0.56443554 -3.5419693 5.96435785 -0.16575748
		 -3.60144424 6.10161304 0.18089017 -3.68634987 5.90044737 0.41748607 -3.35664558 3.86002445 0.026102424
		 -2.15337849 2.88130355 -0.048146002 -2.056658268 0 -0.02325967 -4.57930946 3.99426103 -0.95092189
		 -4.73497581 3.9461081 -0.49692672 -4.93506241 5.80257702 -0.31647056 -4.6779232 5.84264374 -0.77959472
		 -4.35835838 6.051898956 0.043144077 -4.038509369 6.089130878 -0.49409512 -3.90651703 3.79663873 -0.50467038
		 -4.10635948 3.75451684 -0.090493165 -3.79013252 4.996418 -0.94019449 -4.89141464 4.8571167 -1.20289767
		 -5.10798836 4.81146812 -0.7540465 -4.18215561 4.032300949 0.083034933 -4.35776329 5.75225925 0.15648526
		 -4.86610413 4.82505035 -0.43940651 -3.71431541 5.014165878 0.36104894 -3.85798454 5.59151506 0.43751281
		 -3.79865265 4.22565937 0.3007181 -4.68458176 5.50915241 -0.20203759 -4.59782219 4.18670273 -0.28567693
		 -4.12474632 4.32965994 -0.1193902 -4.41532326 4.42841148 -0.42633668 -4.61817551 4.86086082 -0.56573862
		 -4.46742058 5.32663393 -0.36715728 -4.24309921 5.49717236 -0.071262784 -3.87006378 5.3971324 0.1476222
		 -3.7102108 5.096200943 0.08466588 -3.83826256 4.46979523 0.040585428 -3.97725582 4.94578552 0.31343266
		 -4.20481873 4.42938662 0.23889244 -4.23321533 4.60442448 0.0523853 -4.019435406 4.95809746 0.10239705
		 -3.73682785 5.268713 0.42109835 -4.006439209 3.57690978 -0.29758179 -4.78969193 3.83415079 -0.75749236
		 -5.094280243 4.81908607 -0.97847205 -4.82442474 5.97921085 -0.59737146 -4.22636223 6.27006006 -0.20155406
		 -3.16171265 7.0074338913 2.81959772 -3.29316521 7.10281849 2.54204059 -3.44129181 7.13201427 2.19039774
		 -3.57847214 7.20500278 1.70960951 -3.60592461 7.4291048 0.38853371 -3.37561321 8.034172058 -1.68197083
		 -2.83577538 8.11024094 -2.57035685 -2.29388046 8.17953014 -3.016573429 -1.9095459 8.19321537 -3.24756527
		 -1.033975601 8.20689964 -3.5597477 -2.71563387 6.83355045 3.0050654411 -2.65327072 7.38303185 3.21233654
		 -1.09568429 5.32274628 3.77798152 -1.55408287 5.18972015 3.68766594 -2.1887989 5.27143764 3.53538775
		 -0.74738979 5.71321821 3.86829686 -0.5113821 6.35071135 3.82885814 -2.65814781 5.5415864 3.17161417
		 -3.084197998 6.41956806 2.8803978 -2.18556404 7.61759186 3.42915201 -1.44760323 7.63406467 3.68054032
		 -0.92000008 7.51239204 3.80534506 -2.92349434 6.90310383 3.032104731 -0.62806606 7.16508579 3.77195764
		 -0.44970894 7.43296432 3.92840838 -0.76325703 7.78407955 3.89324975 -0.77283382 7.86717319 3.96150899
		 -0.80008793 8.051115036 3.94714117 -0.79586792 8.10434532 3.87888145 -0.80172634 8.38267326 3.78238583
		 -0.90538979 9.71288109 3.12375307 -0.97599697 10.23822784 2.50493002 -1.04660511 10.65371609 1.83473158
		 -1.16871548 10.94613075 0.74646544 -1.3412199 10.52363491 -1.51374078 -1.41478205 8.85799599 -3.27035666
		 -1.43982267 8.20228672 -3.42416191 -1.49706793 7.5465765 -3.57796717 -1.50563765 6.65690041 -3.60697699
		 -1.51830053 5.91088009 -3.3685813 -1.52989101 5.40003061 -3.17416477 -1.50539112 4.61433315 -2.76682901
		 -1.29138565 3.20861554 -1.22539067 -1.21645927 0 -1.18176222 -0.68582058 7.43814373 3.85412407
		 -1.027112007 6.44004059 3.81307912 -1.62287426 6.45650482 3.8673017 -2.17967129 6.45636463 3.67162085
		 -2.42311668 6.45858955 3.47645402 -2.66228676 6.44944191 3.2443397 -1.45512772 7.52440357 3.62796116
		 -0.89194107 7.32121372 3.71300244 -0.74912357 7.14227676 3.64819694 -0.62428761 6.38227844 3.72524762
		 -0.85105324 5.77873039 3.73022509 -1.14465904 5.3997879 3.65664959 -1.54504776 5.27889252 3.58307409
		 -2.16599941 5.33643818 3.4162972 -2.56538463 5.57487631 3.15940547 -2.95166969 6.41791534 2.90279841
		 -2.77700043 6.85832596 3.039124012 -2.54875374 7.29697132 3.20140171 -2.16178226 7.50290108 3.38869262
		 -0.80806732 7.23382378 3.69919348 -1.12749481 6.89881229 3.73649263 -1.55291271 7.024617195 3.70199394
		 -2.16959763 7.030614853 3.48950386 -2.44498634 6.93756199 3.31520033;
	setAttr ".vt[830:947]" -2.66702461 6.76538849 3.13164473 -3.57904053 6.10857725 1.68032289
		 -3.46116447 6.012843609 2.30810332 -3.35748601 5.97455025 2.55921555 -3.22110343 5.91710949 2.935884
		 -2.93202591 5.87393141 3.026005983 -2.81275749 5.87876558 3.031101942 -2.75151777 5.88418674 3.037495375
		 -1.027112007 6.44004059 3.71616268 -1.62287426 6.45650482 3.72695398 -2.17967129 6.45636463 3.53127313
		 -2.42311668 6.45858955 3.3361063 -2.63508844 6.44944191 3.13624763 -0.95387459 2.30383039 3.96982384
		 -0.50152874 2.28732562 4.048892498 -1.41080379 2.39086127 3.64610934 -1.88967323 2.60135746 3.16546726
		 -0.53102493 4.10368681 4.51207399 -0.9693737 4.081899166 4.39592886 -1.43515491 4.0076880455 4.1928997
		 -1.61558914 3.74499011 4.044743538 -1.39912319 3.51126266 4.10338879 -0.85301495 3.40867543 4.27075577
		 -0.44762707 3.39461517 4.38891649 -0.16720486 4.90831947 5.26019382 -0.22537708 4.60942936 4.52384663
		 -0.20751381 4.095454216 4.56327105 -0.19579315 3.81255412 4.65543652 -0.16388607 3.7596221 4.58950424
		 -0.18964958 3.89058089 4.70330858 -0.23368549 4.36176968 3.70664549 -0.2209816 4.72609091 4.77246475
		 -0.96478939 9.82042885 -2.75047064 -1.37800121 9.77722073 -2.66854668 -1.76758623 9.7307682 -2.54971552
		 -2.14761496 9.64312458 -2.38512278 -2.60587311 9.52708244 -2.036471367 -3.16146183 9.18274784 -1.18408918
		 -3.3156662 8.93439007 0.51614892 -3.26146889 8.67386723 1.68757701 -3.18110466 8.46805954 2.11118984
		 -3.61630058 7.038227081 -0.34248346 -3.57944775 7.64599991 -0.42535248 -3.49632072 8.25230312 -0.42380396
		 -3.27197266 9.058568954 -0.33397013 -2.88313293 9.77180862 -0.23680758 -2.41309261 10.34943104 -0.28159302
		 -1.99442291 10.63062477 -0.33434054 -1.54520512 10.78528023 -0.37805143 -1.25496769 10.85727787 -0.40589136
		 -0.90662766 10.9145689 -0.41732964 -0.21823168 4.41272449 4.48249817 -1.38404274 3.72487426 2.78245211
		 -1.038564682 3.720438 2.71619272 -0.53758335 3.720438 2.73795414 -0.26879168 3.72066641 2.75157022
		 -0.26879168 3.22763634 3.64906359 -0.20479107 3.66993093 4.54627419 -0.20862103 3.6193769 4.60459137
		 -0.20607281 3.53876066 4.5849061 -0.22381353 3.39236522 4.44067097 -0.24155474 3.032170296 4.29780483
		 -0.24988842 2.56176853 4.35893345 -0.25076437 2.27628374 4.073349953 -0.24935007 2.12821674 3.5034132
		 -0.24359846 2.10634732 2.76634073 -0.24227619 2.098266602 1.82875919 -0.24359179 0 1.80110574
		 -0.19878578 4.2468071 4.16015577 -0.50802994 4.24916649 4.11391211 -1.029635429 4.19480562 3.99622893
		 -1.37095356 4.11269379 3.837852 -1.44625378 3.7048316 3.72550917 -1.23513746 3.38774586 3.83445215
		 -0.92389822 3.26383281 3.98664594 -0.47358274 3.2572403 4.091317654 -0.23679137 3.26453209 4.10974932
		 -0.25123858 4.21732426 3.22910786 -0.55726624 4.21713972 3.19917798 -1.063060284 4.19181395 3.12871814
		 -1.50355387 4.1138258 3.087344646 -1.38404274 3.38874602 3.094819546 -1.038564682 3.2949903 3.12466431
		 -0.53758335 3.2949903 3.18788075 -0.26879168 3.29981947 3.20031691 -2.80049348 6.38044882 2.54803324
		 -2.67493868 5.87866306 2.65696144 -0.9730894 5.82000542 3.20487309 -0.82823086 6.35890579 3.23731208
		 -2.83548164 6.39864445 2.89944077 -2.70547247 5.8814249 3.012233734 -0.94324076 5.81831598 3.57958531
		 -0.79324257 6.37633657 3.61317539 -4.24481821 4.72256565 0.14138371 -4.16345644 4.85139847 0.15700933
		 -4.15018702 4.84952831 0.2351864 -4.23786879 4.66065168 0.21269538 -2.49636006 5.76257563 3.27673912
		 -2.13855743 5.63678837 3.50212312 -2.45880127 5.76573753 3.24402571 -2.12104559 5.64342737 3.44656706
		 -1.094797969 5.7013669 3.68696237 -1.24122691 5.64253378 3.70795727 -1.24430299 5.65681076 3.63938355
		 -1.12464666 5.71137619 3.62814426 -1.5480448 5.58976793 3.67078114 -1.5346905 5.60796309 3.61673951
		 -0.47866762 5.44496107 4.3601346 -0.95636642 5.49028778 3.81410766 -0.69979864 5.41405392 4.10715723
		 -0.60897011 5.40008163 4.22961855 -1.027216673 5.53434038 3.70128345 -1.069279909 5.59501505 3.602355
		 -2.51357532 5.66333437 3.23348999 -2.14921522 5.50073433 3.44536519 -1.53667092 5.45408535 3.62109065
		 -1.20721614 5.55534935 3.66404486 -1.079487085 5.6375556 3.64119673;
	setAttr -s 1877 ".ed";
	setAttr ".ed[0:165]"  6 305 1 8 56 1 9 60 1 8 310 1 10 108 1 12 95 1 14 59 1
		 16 201 1 19 166 1 6 412 1 19 420 1 8 406 1 21 55 1 17 426 1 22 129 1 23 126 1 22 58 1
		 30 64 1 31 66 1 30 57 1 11 413 1 6 418 1 28 36 1 28 35 1 12 444 1 36 139 1 27 36 1
		 27 140 1 42 28 1 37 48 1 47 94 0 12 49 1 49 445 0 9 50 1 50 61 0 51 262 0 54 17 1
		 55 337 1 54 425 1 56 338 1 55 407 1 57 340 1 56 309 1 58 342 1 57 65 1 59 344 1 58 128 1
		 60 345 1 61 346 0 60 61 1 23 256 1 25 63 1 64 22 1 65 58 1 64 65 1 66 23 1 65 341 1
		 71 217 1 72 167 1 71 422 1 73 168 1 72 410 1 74 169 1 73 307 1 75 170 1 74 75 1 76 171 1
		 75 76 1 76 127 1 79 175 0 78 79 1 63 89 1 93 37 1 94 48 0 93 94 1 95 185 1 96 37 1
		 95 443 1 97 93 1 96 97 1 97 98 1 99 251 1 98 99 1 99 125 1 103 11 1 105 71 1 106 54 1
		 105 216 1 107 17 1 106 107 1 108 397 1 108 439 1 109 0 1 77 78 1 59 60 1 14 9 1 111 137 1
		 113 135 1 114 134 1 113 114 1 115 133 0 114 115 1 116 144 1 118 145 1 120 152 1 119 435 1
		 121 150 1 120 138 1 0 123 1 121 122 1 123 2 1 125 100 1 125 254 1 127 77 1 126 172 1
		 128 59 1 127 223 1 129 14 1 128 129 1 122 116 1 27 35 1 133 48 0 134 37 1 133 134 1
		 135 96 1 134 135 1 137 109 1 138 121 1 137 395 1 139 40 1 139 140 1 140 141 1 141 142 1
		 2 68 1 68 130 1 122 149 1 109 130 1 123 130 1 68 392 1 145 154 1 147 144 1 148 116 1
		 147 148 1 149 158 1 148 149 1 150 159 1 149 150 1 151 138 1 150 151 1 152 161 1 151 152 1
		 153 119 1 152 436 1 154 389 1 156 147 1 157 148 1 156 157 1 158 393 1 157 158 1 159 394 1
		 158 159 1 160 151 1 159 160 1 161 396 1 160 161 1 162 153 1;
	setAttr ".ed[166:331]" 161 437 1 165 105 1 166 71 1 165 166 1 167 20 1 166 421 1
		 168 6 1 167 411 1 169 31 1 168 306 1 170 66 1 169 170 1 171 23 1 170 171 1 172 127 1
		 171 172 1 175 51 0 116 450 1 144 449 1 176 177 1 118 446 1 119 456 1 120 454 1 180 434 1
		 138 453 1 181 182 1 121 452 1 122 451 1 183 184 1 184 176 1 182 183 1 177 178 1 198 165 1
		 199 105 1 198 199 1 200 106 1 199 215 1 201 107 1 200 201 1 1 2 1 123 124 1 195 302 1
		 1 124 1 124 206 1 192 193 1 193 207 1 195 205 1 192 206 1 191 192 1 1 207 1 70 164 1
		 164 198 1 164 210 1 16 53 1 53 200 1 53 333 1 70 199 1 99 191 1 125 192 1 100 193 1
		 103 196 1 206 207 1 70 211 1 210 211 1 214 70 1 215 334 1 214 215 1 216 335 1 215 216 1
		 217 336 1 216 217 1 218 72 1 217 423 1 219 73 1 218 409 1 220 74 1 219 308 1 221 75 1
		 220 221 1 222 76 1 221 222 1 223 343 1 222 223 1 224 77 1 223 224 1 225 78 1 224 225 1
		 226 79 0 225 226 1 213 214 1 211 213 1 231 210 1 232 211 1 235 213 1 232 231 1 235 232 1
		 231 241 1 241 240 1 241 242 1 232 243 1 243 241 1 243 244 1 242 244 1 235 245 1 245 243 1
		 245 246 1 244 246 1 252 260 1 253 126 1 255 100 1 251 254 1 254 255 1 253 252 1 256 253 1
		 13 93 1 4 261 1 13 47 1 78 174 1 174 175 1 13 98 1 4 15 1 15 252 1 77 173 1 173 174 1
		 15 126 1 172 173 1 15 173 1 4 174 1 4 51 1 13 251 1 4 252 1 260 251 1 261 13 1 260 261 1
		 262 47 0 261 262 1 277 294 1 251 270 1 275 278 1 254 277 1 264 270 1 264 273 1 272 297 1
		 265 273 1 269 295 1 263 296 1 263 269 1 263 272 1 294 278 1 294 255 1 252 269 1 269 271 1
		 263 271 1 271 272 1 252 271 1 271 256 1 295 270 1 260 295 1 296 264 1 295 296 1 297 273 1
		 296 297 1 265 267 1 267 275 1 265 298 1 297 298 1;
	setAttr ".ed[332:497]" 266 272 1 266 271 1 266 298 1 301 205 1 302 196 1 301 302 1
		 303 103 1 302 303 1 305 31 1 306 169 1 305 306 1 307 74 1 306 307 1 308 220 1 307 308 1
		 309 57 1 308 339 1 310 30 1 309 310 1 239 240 1 239 249 1 239 242 1 240 249 1 69 315 1
		 69 91 1 91 316 1 2 91 1 68 69 1 62 63 1 33 320 1 90 360 1 230 242 1 228 312 1 228 230 1
		 230 321 1 300 301 1 228 239 1 33 205 1 300 324 1 33 300 1 228 300 1 62 318 1 312 321 1
		 312 324 1 320 324 1 315 316 1 230 233 1 233 322 1 233 234 1 233 244 1 313 327 1 234 246 1
		 321 322 1 327 89 1 330 245 1 331 235 1 330 331 1 332 213 1 331 332 1 333 214 1 332 333 1
		 334 200 1 333 334 1 335 106 1 334 335 1 336 54 1 335 336 1 337 218 1 336 424 1 338 219 1
		 337 408 1 339 309 1 338 339 1 340 220 1 339 340 1 341 221 1 340 341 1 342 222 1 341 342 1
		 343 128 1 342 343 1 344 224 1 343 344 1 345 225 1 344 345 1 346 226 0 345 346 1 329 330 1
		 248 329 1 234 323 1 62 88 1 88 89 1 318 325 1 234 328 1 238 326 1 326 347 1 326 327 1
		 88 326 1 238 328 1 328 329 1 238 248 1 322 323 1 323 347 1 88 325 1 238 313 1 246 329 1
		 328 347 1 325 347 1 349 350 1 353 322 1 354 323 1 353 354 1 355 325 1 354 366 1 356 318 1
		 355 356 1 359 315 1 360 316 1 359 360 1 363 324 1 364 312 1 363 364 1 365 321 1 364 365 1
		 365 353 1 366 355 1 366 347 1 84 311 1 311 363 1 362 363 1 84 364 1 83 163 1 163 365 1
		 86 355 1 86 354 1 83 353 1 83 368 1 350 369 1 83 86 1 349 368 1 84 163 1 163 369 1
		 320 362 1 368 369 1 102 303 1 102 195 1 349 380 1 350 381 1 380 381 0 382 383 0 379 380 0
		 381 382 0 187 384 1 112 385 1 186 187 1 38 386 1 188 189 1 189 387 1 136 137 1 111 112 1
		 112 136 1 38 92 1 10 440 1 186 385 1 10 388 1 185 442 1;
	setAttr ".ed[498:663]" 188 386 1 38 136 1 136 384 1 187 188 1 38 109 1 113 186 1
		 135 187 1 96 188 1 97 189 1 5 92 1 92 387 1 189 190 1 190 202 1 0 92 1 190 191 1
		 191 209 1 3 124 1 0 3 1 206 209 1 98 190 1 3 209 1 202 209 1 3 5 1 5 202 1 388 185 1
		 202 387 1 386 387 1 384 386 1 384 385 1 385 441 1 392 157 1 393 130 1 392 393 1 394 109 1
		 393 394 1 395 160 1 394 395 1 396 111 1 395 396 1 397 162 1 396 438 1 29 398 1 45 405 1
		 41 398 1 40 41 1 41 140 1 45 141 1 146 401 1 118 402 1 117 146 1 117 144 1 155 403 1
		 145 401 1 146 155 1 146 147 1 117 402 1 179 404 1 117 448 1 154 403 1 155 156 1 46 405 1
		 40 29 1 404 178 1 401 403 1 401 402 1 402 447 1 398 405 1 29 46 1 41 45 1 24 46 1
		 406 21 1 407 56 1 406 407 1 408 338 1 407 408 1 409 219 1 408 409 1 410 73 1 409 410 1
		 411 168 1 410 411 1 412 20 1 411 412 1 413 19 1 412 419 1 413 414 1 203 204 1 196 415 1
		 18 203 1 204 301 1 196 204 1 18 164 1 18 197 1 197 198 1 103 414 1 414 415 1 104 165 1
		 203 210 1 227 231 1 203 227 1 227 229 1 227 240 1 204 229 1 229 300 1 228 229 1 229 249 1
		 104 414 1 19 104 1 197 415 1 104 197 1 203 415 1 418 11 1 419 413 1 418 419 1 420 20 1
		 419 420 1 421 167 1 420 421 1 422 72 1 421 422 1 423 218 1 422 423 1 424 337 1 423 424 1
		 425 55 1 424 425 1 426 21 1 425 426 1 11 304 1 304 417 1 417 418 1 303 304 1 31 416 1
		 32 102 1 66 257 1 298 299 1 268 271 1 256 257 1 257 268 1 266 268 1 268 299 1 267 299 1
		 32 304 1 416 417 1 32 416 1 305 417 1 257 416 1 68 143 1 143 391 1 391 392 1 142 143 1
		 399 427 1 39 399 1 39 142 1 110 143 1 39 110 1 110 390 1 390 391 1 400 403 1 155 390 1
		 390 400 1 156 391 1 24 399 1 399 405 1 39 45 1 389 400 1;
	setAttr ".ed[664:829]" 400 427 1 110 427 1 427 428 1 24 428 1 389 428 1 176 461 1
		 177 460 1 429 430 1 180 466 1 181 464 1 182 463 1 432 430 1 183 462 1 184 429 1 178 459 1
		 179 457 1 404 458 1 431 433 1 433 432 1 434 181 1 433 465 1 435 120 1 434 455 1 436 153 1
		 435 436 1 437 162 1 436 437 1 438 397 1 437 438 1 439 111 1 438 439 1 440 112 1 439 440 1
		 441 388 1 440 441 1 442 186 1 441 442 1 443 113 1 442 443 1 444 114 1 443 444 1 445 115 0
		 444 445 1 446 179 1 447 404 1 446 447 1 448 178 1 447 448 1 449 177 1 448 449 1 450 176 1
		 449 450 1 451 184 1 450 451 1 452 183 1 451 452 1 453 182 1 452 453 1 454 181 1 453 454 1
		 455 435 1 454 455 1 456 180 1 455 456 1 457 431 1 458 433 1 457 458 1 459 432 1 458 459 1
		 460 430 1 459 460 1 461 429 1 460 461 1 462 429 1 463 430 1 462 463 1 464 432 1 463 464 1
		 465 434 1 464 465 1 466 431 1 465 466 1 80 362 1 351 352 1 352 371 1 350 351 1 351 370 1
		 80 311 1 311 371 1 370 371 1 84 370 1 369 370 1 351 382 1 80 352 1 352 383 1 81 356 1
		 81 86 1 81 348 1 348 367 1 348 349 1 367 368 1 86 367 1 348 379 1 80 471 1 467 468 0
		 81 474 1 469 470 0 471 467 0 472 468 0 471 472 1 473 469 0 474 470 0 474 379 0 270 274 1
		 274 279 1 264 281 1 251 279 1 277 279 1 279 291 1 290 291 1 291 292 1 292 293 1 274 281 1
		 281 283 1 274 282 1 282 289 1 279 289 1 289 292 1 277 290 1 290 293 1 282 283 1 283 289 1
		 275 280 1 275 286 1 278 287 1 265 280 1 276 281 1 273 276 1 287 288 1 284 285 1 285 286 1
		 286 287 1 276 284 1 276 280 1 280 285 1 277 288 1 288 294 1 288 293 1 283 284 1 284 288 1
		 288 289 1 285 287 1 292 475 1 293 476 1 475 476 1 290 477 1 477 476 1 291 478 1 477 478 1
		 478 475 1 383 471 0 52 332 1 52 53 1 7 52 1 52 236 1 236 331 1;
	setAttr ".ed[830:995]" 236 247 1 247 330 1 7 479 1 212 237 1 236 237 1 237 250 1
		 247 248 1 247 250 1 237 238 1 248 250 1 212 313 1 7 16 1 212 479 1 236 479 1 90 498 1
		 480 481 1 480 482 1 482 483 0 481 483 1 473 487 0 486 487 0 481 488 1 483 489 0 488 489 1
		 489 486 0 378 480 1 472 482 0 35 43 1 27 44 1 44 141 1 26 44 1 42 43 1 43 490 1 25 491 1
		 314 492 1 34 493 1 131 314 1 69 131 1 26 68 1 43 44 1 26 494 1 34 490 1 131 493 1
		 26 131 1 25 34 1 34 62 1 317 318 1 34 317 1 317 357 1 317 492 1 314 315 1 26 142 1
		 356 357 1 491 42 1 492 493 1 493 494 1 490 494 1 490 491 1 497 480 1 498 481 1 497 498 1
		 358 359 1 314 358 1 358 495 1 81 85 1 85 473 1 473 474 1 85 357 1 357 495 1 492 495 1
		 82 359 1 82 90 1 498 499 1 485 488 1 488 499 1 485 500 1 132 358 1 82 132 1 132 496 1
		 484 485 1 485 486 1 496 501 1 85 496 1 85 484 1 484 487 1 82 499 1 499 500 1 495 496 1
		 484 501 1 132 500 1 500 501 1 67 375 1 375 376 1 67 319 1 1 67 1 67 91 1 208 374 1
		 374 375 1 67 208 1 207 208 1 361 377 1 377 378 1 87 361 1 360 361 1 87 90 1 316 319 1
		 319 361 1 319 376 1 376 377 1 33 375 1 320 376 1 362 377 1 255 259 1 194 373 1 373 374 1
		 193 194 1 194 208 1 100 101 1 101 194 1 101 372 1 372 373 1 259 278 1 195 373 1 205 374 1
		 102 372 1 258 259 1 259 267 1 257 258 1 258 299 1 258 372 1 101 259 1 32 258 1 80 378 1
		 87 497 1 87 378 1 378 472 1 508 767 1 8 537 1 9 541 1 14 540 1 513 633 1 508 867 1
		 513 875 1 21 536 1 515 599 1 22 539 1 518 545 1 30 538 1 509 868 1 508 873 1 28 522 1
		 12 896 1 517 36 1 517 611 1 523 531 1 530 572 0 49 897 0 50 542 0 532 724 0 535 17 1
		 536 796 1 535 880 1 537 797 1 536 862 1 538 799 1 537 771 1;
	setAttr ".ed[996:1161]" 539 801 1 538 544 1 540 803 1 539 601 1 541 804 1 542 805 0
		 541 542 1 515 718 1 544 539 1 64 544 1 545 515 1 544 800 1 550 679 1 551 634 1 550 877 1
		 552 635 1 551 865 1 553 636 1 552 769 1 554 637 1 553 554 1 555 638 1 554 555 1 555 600 1
		 558 642 0 557 558 1 571 523 1 572 531 0 571 572 1 573 523 1 95 895 1 574 571 1 573 574 1
		 574 575 1 576 713 1 575 576 1 576 598 1 580 509 1 582 550 1 583 535 1 582 678 1 583 107 1
		 108 891 1 584 502 1 556 557 1 540 541 1 586 609 1 588 607 1 589 606 1 588 589 1 590 605 0
		 589 590 1 591 615 1 593 622 1 119 887 1 594 620 1 593 610 1 502 596 1 594 595 1 596 504 1
		 598 577 1 598 716 1 600 556 1 599 639 1 601 540 1 600 685 1 601 129 1 595 591 1 517 522 1
		 605 531 0 606 523 1 605 606 1 607 573 1 606 607 1 609 584 1 610 594 1 609 852 1 139 611 1
		 611 612 1 612 613 1 504 547 1 547 602 1 595 619 1 584 602 1 596 602 1 547 849 1 617 615 1
		 618 591 1 617 618 1 619 626 1 618 619 1 620 627 1 619 620 1 621 610 1 620 621 1 622 629 1
		 621 622 1 622 888 1 624 617 1 625 618 1 624 625 1 626 850 1 625 626 1 627 851 1 626 627 1
		 628 621 1 627 628 1 629 853 1 628 629 1 629 889 1 632 582 1 633 550 1 632 633 1 634 514 1
		 633 876 1 635 508 1 634 866 1 636 518 1 635 768 1 637 545 1 636 637 1 638 515 1 637 638 1
		 639 600 1 638 639 1 642 532 0 591 901 1 615 900 1 643 644 1 593 905 1 180 886 1 610 904 1
		 646 647 1 594 903 1 595 902 1 648 649 1 649 643 1 647 648 1 644 645 1 662 632 1 663 582 1
		 662 663 1 664 583 1 663 677 1 664 201 1 503 504 1 596 597 1 659 764 1 503 597 1 597 669 1
		 656 657 1 657 670 1 659 668 1 656 669 1 655 656 1 503 670 1 549 631 1 631 662 1 631 673 1
		 16 534 1 534 664 1 534 792 1 549 663 1 576 655 1 598 656 1 577 657 1;
	setAttr ".ed[1162:1327]" 580 660 1 669 670 1 549 674 1 673 674 1 676 549 1 677 793 1
		 676 677 1 678 794 1 677 678 1 679 795 1 678 679 1 680 551 1 679 878 1 681 552 1 680 864 1
		 682 553 1 681 770 1 683 554 1 682 683 1 684 555 1 683 684 1 685 802 1 684 685 1 686 556 1
		 685 686 1 687 557 1 686 687 1 688 558 0 687 688 1 675 676 1 674 675 1 693 673 1 694 674 1
		 697 675 1 694 693 1 697 694 1 693 703 1 703 702 1 703 704 1 694 705 1 705 703 1 705 706 1
		 704 706 1 697 707 1 707 705 1 707 708 1 706 708 1 714 722 1 715 599 1 717 577 1 713 716 1
		 716 717 1 715 714 1 718 715 1 510 571 1 506 723 1 510 530 1 557 641 1 641 642 1 510 575 1
		 506 511 1 511 714 1 556 640 1 640 641 1 511 599 1 639 640 1 511 640 1 506 641 1 506 532 1
		 510 713 1 506 714 1 722 713 1 723 510 1 722 723 1 724 530 0 723 724 1 739 756 1 713 732 1
		 737 740 1 716 739 1 726 732 1 726 735 1 734 759 1 727 735 1 731 757 1 725 758 1 725 731 1
		 725 734 1 756 740 1 756 717 1 714 731 1 731 733 1 725 733 1 733 734 1 714 733 1 733 718 1
		 757 732 1 722 757 1 758 726 1 757 758 1 759 735 1 758 759 1 727 729 1 729 737 1 727 760 1
		 759 760 1 728 734 1 728 733 1 728 760 1 763 668 1 764 660 1 763 764 1 765 580 1 764 765 1
		 767 518 1 768 636 1 767 768 1 769 553 1 768 769 1 770 682 1 769 770 1 771 538 1 770 798 1
		 771 310 1 701 702 1 701 711 1 701 704 1 702 711 1 548 775 1 548 569 1 569 776 1 504 569 1
		 547 548 1 543 63 1 520 780 1 568 819 1 692 704 1 690 773 1 690 692 1 692 781 1 762 763 1
		 690 701 1 520 668 1 762 784 1 520 762 1 690 762 1 543 778 1 773 781 1 773 784 1 780 784 1
		 775 776 1 692 695 1 695 782 1 695 696 1 695 706 1 696 708 1 781 782 1 789 707 1 790 697 1
		 789 790 1 791 675 1 790 791 1 792 676 1 791 792 1 793 664 1 792 793 1;
	setAttr ".ed[1328:1493]" 794 583 1 793 794 1 795 535 1 794 795 1 796 680 1 795 879 1
		 797 681 1 796 863 1 798 771 1 797 798 1 799 682 1 798 799 1 800 683 1 799 800 1 801 684 1
		 800 801 1 802 601 1 801 802 1 803 686 1 802 803 1 804 687 1 803 804 1 805 688 0 804 805 1
		 788 789 1 710 788 1 696 783 1 543 567 1 567 89 1 778 785 1 696 787 1 700 786 1 786 806 1
		 786 327 1 567 786 1 700 787 1 787 788 1 700 710 1 782 783 1 783 806 1 567 785 1 700 313 1
		 708 788 1 787 806 1 785 806 1 808 809 1 812 782 1 813 783 1 812 813 1 814 785 1 813 825 1
		 815 778 1 814 815 1 818 775 1 819 776 1 818 819 1 822 784 1 823 773 1 822 823 1 824 781 1
		 823 824 1 824 812 1 825 814 1 825 806 1 563 772 1 772 822 1 821 822 1 563 823 1 562 630 1
		 630 824 1 565 814 1 565 813 1 562 812 1 562 827 1 809 828 1 562 565 1 808 827 1 563 630 1
		 630 828 1 780 821 1 827 828 1 579 765 1 579 659 1 808 839 1 809 840 1 839 840 0 841 842 0
		 838 839 0 840 841 0 651 843 1 587 844 1 650 651 1 524 845 1 652 653 1 653 846 1 608 609 1
		 586 587 1 587 608 1 524 570 1 10 892 1 650 844 1 185 894 1 652 845 1 524 608 1 608 843 1
		 651 652 1 524 584 1 588 650 1 607 651 1 573 652 1 574 653 1 507 570 1 570 846 1 653 654 1
		 654 665 1 502 570 1 654 655 1 655 672 1 505 597 1 502 505 1 669 672 1 575 654 1 505 672 1
		 665 672 1 505 507 1 507 665 1 665 846 1 845 846 1 843 845 1 843 844 1 844 893 1 849 625 1
		 850 602 1 849 850 1 851 584 1 850 851 1 852 628 1 851 852 1 853 586 1 852 853 1 853 890 1
		 29 854 1 529 861 1 526 854 1 40 526 1 526 611 1 529 612 1 616 857 1 118 858 1 592 616 1
		 592 615 1 623 859 1 145 857 1 616 623 1 616 617 1 592 858 1 179 860 1 592 899 1 154 859 1
		 623 624 1 46 861 1 860 645 1 857 859 1 857 858 1 858 898 1 854 861 1;
	setAttr ".ed[1494:1659]" 526 529 1 862 537 1 406 862 1 863 797 1 862 863 1 864 681 1
		 863 864 1 865 552 1 864 865 1 866 635 1 865 866 1 867 514 1 866 867 1 868 513 1 867 874 1
		 868 869 1 666 667 1 660 870 1 512 666 1 667 763 1 660 667 1 512 631 1 512 661 1 661 662 1
		 580 869 1 869 870 1 581 632 1 666 673 1 689 693 1 666 689 1 689 691 1 689 702 1 667 691 1
		 691 762 1 690 691 1 691 711 1 581 869 1 513 581 1 661 870 1 581 661 1 666 870 1 873 509 1
		 874 868 1 873 874 1 875 514 1 874 875 1 876 634 1 875 876 1 877 551 1 876 877 1 878 680 1
		 877 878 1 879 796 1 878 879 1 880 536 1 879 880 1 880 426 1 509 766 1 766 872 1 872 873 1
		 765 766 1 518 871 1 519 579 1 545 719 1 760 761 1 730 733 1 718 719 1 719 730 1 728 730 1
		 730 761 1 729 761 1 519 766 1 871 872 1 519 871 1 767 872 1 719 871 1 547 614 1 614 848 1
		 848 849 1 613 614 1 855 881 1 525 855 1 525 613 1 585 614 1 525 585 1 585 847 1 847 848 1
		 856 859 1 623 847 1 847 856 1 624 848 1 24 855 1 855 861 1 525 529 1 389 856 1 856 881 1
		 585 881 1 881 428 1 643 910 1 644 909 1 882 883 1 646 913 1 647 912 1 884 883 1 648 911 1
		 649 882 1 645 908 1 860 907 1 431 885 1 885 884 1 886 646 1 885 914 1 887 593 1 886 906 1
		 888 153 1 887 888 1 889 162 1 888 889 1 890 397 1 889 890 1 891 586 1 890 891 1 892 587 1
		 891 892 1 893 388 1 892 893 1 894 650 1 893 894 1 895 588 1 894 895 1 896 589 1 895 896 1
		 897 590 0 896 897 1 898 860 1 446 898 1 899 645 1 898 899 1 900 644 1 899 900 1 901 643 1
		 900 901 1 902 649 1 901 902 1 903 648 1 902 903 1 904 647 1 903 904 1 905 646 1 904 905 1
		 906 887 1 905 906 1 906 456 1 907 885 1 457 907 1 908 884 1 907 908 1 909 883 1 908 909 1
		 910 882 1 909 910 1 911 882 1 912 883 1 911 912 1 913 884 1 912 913 1;
	setAttr ".ed[1660:1825]" 914 886 1 913 914 1 914 466 1 559 821 1 810 811 1 811 830 1
		 809 810 1 810 829 1 559 772 1 772 830 1 829 830 1 563 829 1 828 829 1 810 841 1 559 811 1
		 811 842 1 560 815 1 560 565 1 560 807 1 807 826 1 807 808 1 826 827 1 565 826 1 807 838 1
		 559 919 1 915 916 0 560 922 1 917 918 0 919 915 0 920 916 0 919 920 1 921 917 0 922 918 0
		 922 838 0 732 736 1 736 741 1 726 743 1 713 741 1 739 741 1 741 753 1 752 753 1 753 754 1
		 754 755 1 736 743 1 743 745 1 736 744 1 744 751 1 741 751 1 751 754 1 739 752 1 752 755 1
		 744 745 1 745 751 1 737 742 1 737 748 1 740 749 1 727 742 1 738 743 1 735 738 1 749 750 1
		 746 747 1 747 748 1 748 749 1 738 746 1 738 742 1 742 747 1 739 750 1 750 756 1 750 755 1
		 745 746 1 746 750 1 750 751 1 747 749 1 754 923 1 755 924 1 923 924 1 752 925 1 925 924 1
		 753 926 1 925 926 1 926 923 1 842 919 0 533 791 1 533 534 1 7 533 1 533 698 1 698 790 1
		 698 709 1 709 789 1 212 699 1 698 699 1 699 712 1 709 710 1 709 712 1 699 700 1 710 712 1
		 698 479 1 568 944 1 927 928 1 927 929 1 929 930 0 928 930 1 921 934 0 933 934 0 928 935 1
		 930 936 0 935 936 1 936 933 0 837 927 1 920 929 0 522 527 1 517 528 1 528 612 1 516 528 1
		 42 527 1 527 937 1 774 938 1 521 939 1 603 774 1 548 603 1 516 547 1 527 528 1 516 940 1
		 521 937 1 603 939 1 516 603 1 25 521 1 521 543 1 777 778 1 521 777 1 777 816 1 777 938 1
		 774 775 1 516 613 1 815 816 1 938 939 1 939 940 1 937 940 1 937 491 1 943 927 1 944 928 1
		 943 944 1 817 818 1 774 817 1 817 941 1 560 564 1 564 921 1 921 922 1 564 816 1 816 941 1
		 938 941 1 561 818 1 561 568 1 944 945 1 932 935 1 935 945 1 932 946 1 604 817 1 561 604 1
		 604 942 1 931 932 1 932 933 1 942 947 1 564 942 1 564 931 1 931 934 1;
	setAttr ".ed[1826:1876]" 561 945 1 945 946 1 941 942 1 931 947 1 604 946 1 946 947 1
		 546 834 1 834 835 1 546 779 1 503 546 1 546 569 1 671 833 1 833 834 1 546 671 1 670 671 1
		 820 836 1 836 837 1 566 820 1 819 820 1 566 568 1 776 779 1 779 820 1 779 835 1 835 836 1
		 520 834 1 780 835 1 821 836 1 717 721 1 658 832 1 832 833 1 657 658 1 658 671 1 577 578 1
		 578 658 1 578 831 1 831 832 1 721 740 1 659 832 1 668 833 1 579 831 1 720 721 1 721 729 1
		 719 720 1 720 761 1 720 831 1 578 721 1 519 720 1 559 837 1 566 943 1 566 837 1 837 920 1;
	setAttr -s 928 -ch 3690 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 -37 38 625 -14
		mu 0 4 8 9 638 639
		f 4 118 -15 16 46
		mu 0 4 153 154 14 15
		f 4 -2 11 570 569
		mu 0 4 16 17 618 619
		f 4 350 -4 1 42
		mu 0 4 454 455 17 16
		f 4 -610 611 610 -21
		mu 0 4 22 631 632 625
		f 4 130 -28 26 25
		mu 0 4 182 183 32 33
		f 4 -99 101 100 123
		mu 0 4 174 51 52 173
		f 4 2 49 -35 -34
		mu 0 4 54 55 56 57
		f 4 -39 -398 400 623
		mu 0 4 638 9 486 637
		f 4 -40 -570 572 571
		mu 0 4 488 16 619 620
		f 4 403 -43 39 404
		mu 0 4 489 454 16 488
		f 4 411 -47 43 412
		mu 0 4 493 153 15 492
		f 4 -50 47 418 -49
		mu 0 4 56 55 495 497
		f 4 279 274 -16 50
		mu 0 4 375 369 368 373
		f 4 -55 -18 19 44
		mu 0 4 19 18 21 20
		f 4 -57 -45 41 408
		mu 0 4 491 19 20 490
		f 4 -60 -169 171 617
		mu 0 4 635 61 216 634
		f 4 -61 -576 578 577
		mu 0 4 218 63 622 623
		f 4 344 -64 60 175
		mu 0 4 451 452 63 218
		f 4 -65 -66 62 177
		mu 0 4 220 66 64 219
		f 4 180 -69 66 181
		mu 0 4 222 152 65 221
		f 4 -75 72 29 -74
		mu 0 4 48 47 50 53
		f 4 125 -98 99 98
		mu 0 4 174 175 45 51
		f 4 -80 76 -73 -79
		mu 0 4 27 128 50 47
		f 4 -112 112 277 275
		mu 0 4 371 150 367 372
		f 4 -86 -168 169 168
		mu 0 4 61 60 215 216
		f 4 -87 -396 398 397
		mu 0 4 9 6 485 486
		f 4 -90 86 36 -89
		mu 0 4 7 6 9 8
		f 4 -95 45 416 -48
		mu 0 4 134 12 494 496
		f 4 -96 6 94 -3
		mu 0 4 135 13 12 134
		f 4 -100 -702 704 703
		mu 0 4 51 45 695 696
		f 4 -102 -704 706 705
		mu 0 4 52 51 696 697
		f 4 -536 538 694 693
		mu 0 4 130 588 690 691
		f 4 128 536 535 96
		mu 0 4 177 587 588 130
		f 4 276 -113 -84 81
		mu 0 4 374 367 150 89
		f 4 -46 -116 -412 414
		mu 0 4 494 12 153 493
		f 4 -7 -118 -119 115
		mu 0 4 12 13 154 153
		f 4 -17 -53 54 53
		mu 0 4 15 14 18 19
		f 4 -44 -54 56 410
		mu 0 4 492 15 19 491
		f 4 -67 -68 64 179
		mu 0 4 221 65 66 220
		f 4 -27 120 -24 22
		mu 0 4 34 32 35 36
		f 4 -123 -124 121 -30
		mu 0 4 50 174 173 53
		f 4 -77 -125 -126 122
		mu 0 4 50 42 175 174
		f 4 -532 534 -129 126
		mu 0 4 129 586 587 177
		f 4 -138 110 133 134
		mu 0 4 158 155 156 157
		f 4 532 531 136 -530
		mu 0 4 584 585 161 162
		f 4 -137 92 108 137
		mu 0 4 163 166 165 164
		f 4 529 -135 138 530
		mu 0 4 583 158 142 582
		f 4 -143 140 -103 -142
		mu 0 4 194 193 189 159
		f 4 135 -145 141 -120
		mu 0 4 167 195 194 159
		f 4 -110 106 -147 -136
		mu 0 4 168 160 197 196
		f 4 -149 -107 -128 -148
		mu 0 4 199 198 40 178
		f 4 -151 147 -108 104
		mu 0 4 200 199 178 41
		f 4 -153 -105 -686 688
		mu 0 4 688 200 41 687
		f 4 -157 154 142 -156
		mu 0 4 206 205 193 194
		f 4 143 -159 155 144
		mu 0 4 195 207 206 194
		f 4 146 145 -161 -144
		mu 0 4 196 197 209 208
		f 4 -163 -146 148 -162
		mu 0 4 211 210 198 199
		f 4 -165 161 150 149
		mu 0 4 212 211 199 200
		f 4 -167 -150 152 690
		mu 0 4 689 212 200 688
		f 4 -172 -9 10 615
		mu 0 4 634 216 25 633
		f 4 -173 -578 580 -10
		mu 0 4 23 218 623 624
		f 4 342 -176 172 0
		mu 0 4 449 451 218 23
		f 4 -177 -178 174 18
		mu 0 4 105 220 219 104
		f 4 -179 -180 176 55
		mu 0 4 106 221 220 105
		f 4 114 -182 178 15
		mu 0 4 151 222 221 106
		f 4 102 184 715 -184
		mu 0 4 227 228 702 705
		f 4 685 188 725 724
		mu 0 4 686 236 712 714
		f 4 107 190 723 -189
		mu 0 4 239 240 710 713
		f 4 109 193 719 -193
		mu 0 4 243 244 706 709
		f 4 119 183 717 -194
		mu 0 4 247 248 704 707
		f 4 127 192 721 -191
		mu 0 4 251 252 708 711
		f 4 -200 -201 198 167
		mu 0 4 60 275 274 215
		f 4 -202 -394 396 395
		mu 0 4 6 276 484 485
		f 4 -204 -205 201 89
		mu 0 4 7 277 276 6
		f 4 -209 205 -111 206
		mu 0 4 148 0 1 147
		f 4 -228 -214 210 211
		mu 0 4 281 282 267 268
		f 4 -223 216 217 200
		mu 0 4 275 59 214 274
		f 4 -8 219 220 204
		mu 0 4 277 4 5 276
		f 4 -221 221 394 393
		mu 0 4 276 5 483 484
		f 4 83 224 -215 -224
		mu 0 4 89 150 267 266
		f 4 -211 -225 111 225
		mu 0 4 268 267 150 371
		f 4 226 -337 339 338
		mu 0 4 82 272 446 447
		f 4 227 -216 208 209
		mu 0 4 282 281 87 149
		f 4 228 -230 -219 -217
		mu 0 4 59 319 315 214
		f 4 -233 230 222 202
		mu 0 4 286 285 59 275
		f 4 -235 -203 199 87
		mu 0 4 287 286 275 60
		f 4 -237 -88 85 57
		mu 0 4 288 287 60 61
		f 4 -239 -58 59 619
		mu 0 4 636 288 61 635
		f 4 -240 -574 576 575
		mu 0 4 63 290 621 622
		f 4 346 -243 239 63
		mu 0 4 452 453 290 63
		f 4 -244 -245 241 65
		mu 0 4 66 292 291 64
		f 4 -246 -247 243 67
		mu 0 4 65 293 292 66
		f 4 116 -249 245 68
		mu 0 4 152 294 293 65
		f 4 -250 -251 -117 113
		mu 0 4 67 295 294 152
		f 4 -253 249 93 -252
		mu 0 4 297 295 67 132
		f 4 -255 251 70 -254
		mu 0 4 298 296 68 69
		f 4 260 257 229 -259
		mu 0 4 318 316 315 319
		f 4 -260 261 258 256
		mu 0 4 320 321 318 319
		f 4 -256 -257 -229 -231
		mu 0 4 285 320 319 59
		f 4 -265 -267 267 -269
		mu 0 4 343 345 346 347
		f 4 -268 -271 271 -273
		mu 0 4 351 348 349 350
		f 4 -261 265 266 -263
		mu 0 4 329 330 346 345
		f 4 -262 269 270 -266
		mu 0 4 318 332 349 348
		f 4 -283 280 74 -31
		mu 0 4 49 46 47 48
		f 4 -295 281 301 -36
		mu 0 4 58 361 379 380
		f 4 -71 283 284 -70
		mu 0 4 69 68 224 226
		f 4 -81 78 -281 285
		mu 0 4 28 27 47 46
		f 3 -297 286 287
		mu 0 3 362 361 370
		f 4 -94 288 289 -284
		mu 0 4 132 67 223 225
		f 4 290 -275 278 -288
		mu 0 4 370 368 369 362
		f 4 291 -289 -114 -181
		mu 0 4 222 223 67 152
		f 4 -291 292 -292 -115
		mu 0 4 151 107 223 222
		f 4 -290 -293 -287 293
		mu 0 4 225 223 107 133
		f 4 -285 -294 294 -183
		mu 0 4 226 224 361 58
		f 4 -82 -83 -286 295
		mu 0 4 374 89 28 46
		f 4 273 299 -282 296
		mu 0 4 362 378 379 361
		f 4 297 -296 -299 -300
		mu 0 4 378 374 46 379
		f 4 -302 298 282 -301
		mu 0 4 380 379 46 49
		f 4 315 -278 305 302
		mu 0 4 393 394 395 396
		f 4 -323 325 324 306
		mu 0 4 383 403 404 397
		f 4 327 326 -308 -325
		mu 0 4 404 405 406 397
		f 4 323 322 -304 -298
		mu 0 4 413 403 383 382
		f 3 -319 312 317
		mu 0 3 414 415 416
		f 3 318 319 -314
		mu 0 3 415 414 417
		f 3 320 -318 -317
		mu 0 3 418 414 416
		f 4 -321 -279 -280 -322
		mu 0 4 414 418 419 420
		f 4 316 310 -324 -274
		mu 0 4 421 422 403 413
		f 4 -326 -311 -313 311
		mu 0 4 404 403 422 423
		f 4 313 308 -328 -312
		mu 0 4 423 424 405 404
		f 4 -327 331 -331 309
		mu 0 4 406 405 429 430
		f 3 -334 332 -320
		mu 0 3 414 431 417
		f 4 334 -332 -309 -333
		mu 0 4 434 429 405 424
		f 4 -338 335 -213 207
		mu 0 4 446 445 280 270
		f 4 -175 -342 -343 340
		mu 0 4 104 219 451 449
		f 4 -63 -344 -345 341
		mu 0 4 219 64 452 451
		f 4 -242 -346 -347 343
		mu 0 4 64 291 453 452
		f 4 -42 -348 -404 406
		mu 0 4 490 20 454 489
		f 4 -20 -350 -351 347
		mu 0 4 20 21 455 454
		f 4 351 -264 264 -354
		mu 0 4 344 341 342 343
		f 3 -352 352 -355
		mu 0 3 357 344 356
		f 4 -378 -356 356 357
		mu 0 4 461 459 110 118
		f 4 358 -357 -360 -134
		mu 0 4 101 100 103 102
		f 4 375 -371 -373 364
		mu 0 4 457 470 444 325
		f 4 -375 -365 365 366
		mu 0 4 467 457 325 328
		f 4 -366 368 353 -364
		mu 0 4 328 325 344 343
		f 4 -336 -368 -372 369
		mu 0 4 280 445 443 80
		f 4 -377 -362 371 370
		mu 0 4 470 471 304 444
		f 4 -385 -367 378 379
		mu 0 4 466 467 328 314
		f 4 -379 363 268 -382
		mu 0 4 314 328 343 347
		f 4 -381 381 272 -384
		mu 0 4 322 331 351 350
		f 4 -388 -389 386 -270
		mu 0 4 321 481 480 352
		f 4 -391 387 259 -390
		mu 0 4 482 481 321 320
		f 4 -393 389 255 -392
		mu 0 4 483 482 320 285
		f 4 -395 391 232 231
		mu 0 4 484 483 285 286
		f 4 -397 -232 234 233
		mu 0 4 485 484 286 287
		f 4 -399 -234 236 235
		mu 0 4 486 485 287 288
		f 4 -401 -236 238 621
		mu 0 4 637 486 288 636
		f 4 -402 -572 574 573
		mu 0 4 290 488 620 621
		f 4 348 -405 401 242
		mu 0 4 453 489 488 290
		f 4 -406 -407 -349 345
		mu 0 4 291 490 489 453
		f 4 -408 -409 405 244
		mu 0 4 292 491 490 291
		f 4 -410 -411 407 246
		mu 0 4 293 492 491 292
		f 4 247 -413 409 248
		mu 0 4 294 493 492 293
		f 4 -414 -415 -248 250
		mu 0 4 295 494 493 294
		f 4 -417 413 252 -416
		mu 0 4 496 494 295 297
		f 4 -419 415 254 -418
		mu 0 4 497 495 296 298
		f 4 421 -434 -380 380
		mu 0 4 322 468 469 331
		f 4 422 423 -72 -361
		mu 0 4 94 311 93 95
		f 4 424 -436 -423 373
		mu 0 4 472 473 114 113
		f 4 -422 425 438 -435
		mu 0 4 468 322 477 498
		f 4 428 385 -424 429
		mu 0 4 475 476 93 311
		f 4 -433 430 431 -421
		mu 0 4 354 335 478 479
		f 4 -429 -427 436 382
		mu 0 4 476 475 340 458
		f 4 -432 -426 383 437
		mu 0 4 479 478 333 355
		f 4 -272 -387 -420 -438
		mu 0 4 355 352 480 479
		f 4 -439 -431 426 427
		mu 0 4 498 477 323 474
		f 4 439 -428 -430 435
		mu 0 4 473 498 474 114
		f 4 441 433 -443 -444
		mu 0 4 521 469 468 523
		f 4 -445 -458 458 -440
		mu 0 4 473 524 537 498
		f 4 -425 -447 -448 444
		mu 0 4 473 472 526 524
		f 4 377 -450 -451 448
		mu 0 4 459 461 530 529
		f 4 -376 -453 -454 451
		mu 0 4 470 457 535 534
		f 4 374 -455 -456 452
		mu 0 4 457 467 536 535
		f 4 384 -442 -457 454
		mu 0 4 467 466 522 536
		f 4 -459 -446 442 434
		mu 0 4 498 537 523 468
		f 4 460 453 -463 459
		mu 0 4 456 534 535 302
		f 4 455 -465 -473 462
		mu 0 4 535 536 312 302
		f 4 456 -468 463 464
		mu 0 4 536 522 313 312
		f 4 457 -466 466 445
		mu 0 4 537 524 317 523
		f 4 467 443 -467 -471
		mu 0 4 313 521 523 317
		f 4 -476 -472 440 469
		mu 0 4 539 540 504 505
		f 4 -475 376 -452 -462
		mu 0 4 532 471 470 534
		f 4 475 -474 -464 468
		mu 0 4 540 539 502 503
		f 4 476 -340 -208 -478
		mu 0 4 81 447 446 270
		f 4 -441 478 480 -480
		mu 0 4 556 557 558 559
		f 4 526 -496 486 484
		mu 0 4 572 573 260 261
		f 4 -525 -499 488 489
		mu 0 4 574 575 262 264
		f 4 490 -97 491 492
		mu 0 4 176 177 130 44
		f 4 -512 -93 -503 493
		mu 0 4 26 126 125 127
		f 4 695 -492 -694 696
		mu 0 4 692 44 130 691
		f 4 527 700 699 495
		mu 0 4 573 693 694 260
		f 4 -526 -485 501 498
		mu 0 4 577 572 261 263
		f 4 502 -127 -491 -500
		mu 0 4 43 129 177 176
		f 4 701 503 -700 702
		mu 0 4 695 45 260 694
		f 4 97 504 -487 -504
		mu 0 4 45 175 261 260
		f 4 124 505 -502 -505
		mu 0 4 175 42 263 261
		f 4 -489 -506 79 506
		mu 0 4 264 262 128 27
		f 4 -521 -516 511 -508
		mu 0 4 29 131 126 26
		f 4 513 -520 -511 512
		mu 0 4 266 284 278 265
		f 4 514 -207 -109 515
		mu 0 4 3 148 147 2
		f 4 516 -514 214 213
		mu 0 4 282 284 266 267
		f 4 -510 -507 80 517
		mu 0 4 265 264 27 28
		f 4 -513 -518 82 223
		mu 0 4 266 265 28 89
		f 4 -517 -210 -515 518
		mu 0 4 284 282 149 88
		f 4 521 519 -519 520
		mu 0 4 29 278 284 88
		f 4 509 510 523 -490
		mu 0 4 264 265 278 574
		f 4 -524 -522 507 508
		mu 0 4 574 278 29 26
		f 4 524 -509 -494 487
		mu 0 4 575 574 26 127
		f 4 525 -488 499 500
		mu 0 4 572 577 43 176
		f 4 -527 -501 -493 485
		mu 0 4 573 572 176 44
		f 4 -528 -486 -696 698
		mu 0 4 693 573 44 692
		f 4 157 -531 528 158
		mu 0 4 207 583 582 206
		f 4 160 159 -533 -158
		mu 0 4 208 209 585 584
		f 4 -535 -160 162 -534
		mu 0 4 587 586 210 211
		f 4 -537 533 164 163
		mu 0 4 588 587 211 212
		f 4 -539 -164 166 692
		mu 0 4 690 588 212 689
		f 4 -542 -543 559 539
		mu 0 4 590 37 38 39
		f 4 129 542 543 -131
		mu 0 4 182 30 31 183
		f 4 544 -132 -544 566
		mu 0 4 607 184 183 31
		f 4 562 -554 547 545
		mu 0 4 593 594 145 191
		f 4 -548 548 -141 -553
		mu 0 4 192 143 189 193
		f 4 -562 -546 551 549
		mu 0 4 595 593 191 203
		f 4 552 -155 -558 -552
		mu 0 4 192 193 205 204
		f 4 563 711 -556 553
		mu 0 4 596 699 701 231
		f 4 -549 555 713 -185
		mu 0 4 255 256 700 703
		f 4 561 -557 -140 550
		mu 0 4 593 595 202 190
		f 4 -563 -551 -104 546
		mu 0 4 594 593 190 146
		f 4 -564 -547 186 709
		mu 0 4 699 596 232 698
		f 4 565 558 -565 -540
		mu 0 4 601 602 617 603
		f 4 564 -541 -567 541
		mu 0 4 599 616 608 600
		f 4 -571 568 12 40
		mu 0 4 619 618 11 10
		f 4 -573 -41 37 402
		mu 0 4 620 619 10 487
		f 4 -575 -403 399 240
		mu 0 4 621 620 487 289
		f 4 -577 -241 237 61
		mu 0 4 622 621 289 62
		f 4 -579 -62 58 173
		mu 0 4 623 622 62 217
		f 4 -581 -174 170 -580
		mu 0 4 624 623 217 24
		f 4 -611 613 -11 -582
		mu 0 4 625 632 633 25
		f 4 -593 84 20 583
		mu 0 4 626 72 22 625
		f 4 8 -170 -595 -606
		mu 0 4 25 216 215 73
		f 4 -589 585 -609 584
		mu 0 4 279 271 627 299
		f 4 588 587 337 336
		mu 0 4 272 305 445 446
		f 4 -596 -587 589 218
		mu 0 4 315 299 71 214
		f 4 -218 -590 590 591
		mu 0 4 274 214 71 273
		f 4 -586 -227 592 593
		mu 0 4 627 271 72 626
		f 4 594 -199 -592 -608
		mu 0 4 73 215 274 273
		f 4 595 -258 -597 -598
		mu 0 4 299 315 316 300
		f 4 -600 596 262 263
		mu 0 4 341 326 327 342
		f 4 -585 597 598 -601
		mu 0 4 279 299 300 301
		f 4 -604 -599 599 354
		mu 0 4 356 337 336 357
		f 4 -588 600 601 367
		mu 0 4 445 305 306 443
		f 4 602 603 -353 -369
		mu 0 4 325 337 356 344
		f 3 372 -602 -603
		mu 0 3 325 444 337
		f 4 604 -584 581 605
		mu 0 4 73 626 625 25
		f 4 606 -594 -605 607
		mu 0 4 273 627 626 73
		f 4 -607 -591 586 608
		mu 0 4 627 273 71 299
		f 4 -612 -22 9 582
		mu 0 4 632 631 23 624
		f 4 -614 -583 579 -613
		mu 0 4 633 632 624 24
		f 4 -615 -616 612 -171
		mu 0 4 217 634 633 24
		f 4 -617 -618 614 -59
		mu 0 4 62 635 634 217
		f 4 -619 -620 616 -238
		mu 0 4 289 636 635 62
		f 4 -621 -622 618 -400
		mu 0 4 487 637 636 289
		f 4 -623 -624 620 -38
		mu 0 4 10 638 637 487
		f 4 -626 622 -13 -625
		mu 0 4 639 638 10 11
		f 4 626 627 628 609
		mu 0 4 74 448 629 630
		f 4 -339 629 -627 -85
		mu 0 4 82 447 448 74
		f 4 -19 630 -645 -633
		mu 0 4 364 75 628 376
		f 4 632 -636 -51 -56
		mu 0 4 364 376 375 373
		f 4 -329 330 633 -640
		mu 0 4 425 399 427 428
		f 4 634 321 635 636
		mu 0 4 433 414 420 432
		f 3 333 -635 -638
		mu 0 3 431 414 433
		f 4 638 -634 -335 637
		mu 0 4 433 428 427 431
		f 4 640 -630 -477 -632
		mu 0 4 363 448 447 81
		f 4 641 -628 -641 642
		mu 0 4 628 629 448 363
		f 4 -341 643 -642 -631
		mu 0 4 75 450 629 628
		f 4 -629 -644 -1 21
		mu 0 4 630 629 450 76
		f 4 -139 645 646 647
		mu 0 4 582 142 187 581
		f 4 -529 -648 -660 156
		mu 0 4 206 582 581 205
		f 4 651 -133 -545 -663
		mu 0 4 605 186 184 78
		f 4 652 -649 -652 653
		mu 0 4 181 188 185 606
		f 4 654 655 -647 -653
		mu 0 4 144 580 581 187
		f 4 656 -550 657 658
		mu 0 4 592 595 203 579
		f 4 -658 557 659 -656
		mu 0 4 580 204 205 581
		f 4 -657 -664 -154 556
		mu 0 4 595 592 578 202
		f 4 -559 -568 660 661
		mu 0 4 616 611 610 609
		f 4 540 -662 -651 662
		mu 0 4 614 615 612 613
		f 4 665 -665 -659 -655
		mu 0 4 598 640 592 579
		f 4 -666 -654 650 649
		mu 0 4 640 598 604 591
		f 4 -650 -661 667 -667
		mu 0 4 641 642 643 644
		f 4 664 666 -669 663
		mu 0 4 645 646 647 648
		f 4 185 670 736 -670
		mu 0 4 649 650 721 724
		f 4 683 673 743 742
		mu 0 4 684 654 729 731
		f 4 191 674 741 -674
		mu 0 4 657 658 727 730
		f 4 194 677 -738 -677
		mu 0 4 661 662 663 726
		f 4 195 669 735 -678
		mu 0 4 664 665 723 666
		f 4 196 676 739 -675
		mu 0 4 667 668 725 728
		f 4 197 678 734 -671
		mu 0 4 671 672 719 722
		f 4 -555 679 730 -681
		mu 0 4 675 676 716 718
		f 4 -561 680 732 -679
		mu 0 4 679 680 717 720
		f 4 189 -743 745 -673
		mu 0 4 653 684 731 732
		f 4 105 -725 727 -188
		mu 0 4 235 686 714 715
		f 4 -688 -689 -106 -152
		mu 0 4 201 688 687 136
		f 4 -690 -691 687 -166
		mu 0 4 213 689 688 201
		f 4 -692 -693 689 -538
		mu 0 4 589 690 689 213
		f 4 -695 691 -91 91
		mu 0 4 691 690 589 137
		f 4 494 -697 -92 -5
		mu 0 4 138 692 691 137
		f 4 -698 -699 -495 496
		mu 0 4 576 693 692 138
		f 4 -701 697 522 497
		mu 0 4 694 693 576 259
		f 4 77 -703 -498 -76
		mu 0 4 139 695 694 259
		f 4 -705 -78 -6 24
		mu 0 4 696 695 139 140
		f 4 -707 -25 31 32
		mu 0 4 697 696 140 141
		f 4 -709 -710 707 554
		mu 0 4 597 699 698 233
		f 4 -712 708 560 -711
		mu 0 4 701 699 597 234
		f 4 -714 710 -198 -713
		mu 0 4 703 700 257 258
		f 4 -716 712 -186 -715
		mu 0 4 705 702 229 230
		f 4 -718 714 -196 -717
		mu 0 4 707 704 249 250
		f 4 -720 716 -195 -719
		mu 0 4 709 706 245 246
		f 4 -722 718 -197 -721
		mu 0 4 711 708 253 254
		f 4 -724 720 -192 -723
		mu 0 4 713 710 241 242
		f 4 -726 722 -684 686
		mu 0 4 714 712 237 685
		f 4 -728 -687 -190 -727
		mu 0 4 715 714 685 238
		f 4 -731 728 681 -730
		mu 0 4 718 716 677 678
		f 4 -733 729 682 -732
		mu 0 4 720 717 681 682
		f 4 -735 731 675 -734
		mu 0 4 722 719 673 674
		f 4 -737 733 -672 -736
		mu 0 4 724 721 651 652
		f 4 -740 737 671 -739
		mu 0 4 728 725 669 670
		f 4 -742 738 -676 -741
		mu 0 4 730 727 659 660
		f 4 -744 740 -683 684
		mu 0 4 731 729 655 683
		f 4 -746 -685 -682 -745
		mu 0 4 732 731 683 656
		f 4 746 461 -461 -752
		mu 0 4 303 532 534 456
		f 4 -754 -751 747 748
		mu 0 4 541 542 508 509
		f 4 750 -756 -470 749
		mu 0 4 517 545 546 516
		f 4 -749 -758 751 752
		mu 0 4 547 520 518 519
		f 4 753 -753 -460 754
		mu 0 4 542 541 506 507
		f 4 755 -755 472 473
		mu 0 4 546 545 514 515
		f 4 -748 756 481 -759
		mu 0 4 560 561 562 563
		f 4 -750 479 483 -757
		mu 0 4 568 569 570 571
		f 4 465 447 -760 760
		mu 0 4 317 524 526 112
		f 4 -765 -763 763 471
		mu 0 4 543 544 512 513
		f 4 764 -469 470 765
		mu 0 4 544 543 510 511
		f 4 -766 -761 761 762
		mu 0 4 538 499 500 501
		f 4 -479 -764 766 482
		mu 0 4 567 564 565 566
		f 4 -846 846 847 -849
		mu 0 4 769 770 771 772
		f 4 -852 848 852 -854
		mu 0 4 777 778 779 780
		f 4 -856 965 856 -847
		mu 0 4 785 750 786 787
		f 4 -774 771 768 -773
		mu 0 4 752 751 735 736
		f 4 -762 769 776 -767
		mu 0 4 756 757 758 759
		f 4 -781 303 777 778
		mu 0 4 381 382 383 384
		f 4 -307 779 -787 -778
		mu 0 4 383 397 398 384
		f 4 -277 780 -782 -306
		mu 0 4 395 382 381 396
		f 4 -793 781 782 -784
		mu 0 4 411 396 381 410
		f 4 818 -821 822 823
		mu 0 4 760 761 762 763
		f 4 -789 786 787 -795
		mu 0 4 385 384 398 386
		f 4 -779 788 789 -791
		mu 0 4 381 384 385 392
		f 4 -783 790 791 -785
		mu 0 4 410 381 392 409
		f 3 795 -790 794
		mu 0 3 386 392 385
		f 4 -800 328 329 796
		mu 0 4 400 399 425 407
		f 4 -797 797 -805 -809
		mu 0 4 400 407 389 388
		f 4 304 798 -806 -798
		mu 0 4 407 408 390 389
		f 4 -310 799 -808 -802
		mu 0 4 402 399 400 401
		f 4 800 -780 307 801
		mu 0 4 401 398 397 402
		f 4 802 -814 803 815
		mu 0 4 390 391 387 388
		f 4 -788 -801 806 -813
		mu 0 4 386 398 401 387
		f 4 807 808 -804 -807
		mu 0 4 401 400 388 387
		f 3 -303 809 810
		mu 0 3 393 396 391
		f 4 -810 792 793 -812
		mu 0 4 391 396 411 412
		f 4 -799 -315 -811 -803
		mu 0 4 390 408 393 391
		f 4 -815 811 -786 -792
		mu 0 4 392 391 412 409
		f 4 -796 812 813 814
		mu 0 4 392 386 387 391
		f 3 -816 804 805
		mu 0 3 390 388 389
		f 4 785 817 -819 -817
		mu 0 4 409 412 761 760
		f 4 -794 819 820 -818
		mu 0 4 412 411 762 761
		f 4 783 821 -823 -820
		mu 0 4 411 410 763 762
		f 4 784 816 -824 -822
		mu 0 4 410 409 760 763
		f 4 758 824 -768 757
		mu 0 4 764 765 766 767
		f 4 -827 825 392 -222
		mu 0 4 5 324 482 483
		f 4 826 -220 -842 827
		mu 0 4 324 5 4 70
		f 4 828 829 390 -826
		mu 0 4 324 334 481 482
		f 4 388 -830 830 831
		mu 0 4 480 481 334 353
		f 4 -829 -828 832 -844
		mu 0 4 308 309 307 768
		f 4 834 835 -838 -831
		mu 0 4 338 339 359 358
		f 4 419 -832 836 420
		mu 0 4 479 480 353 354
		f 3 837 -840 -837
		mu 0 3 358 359 360
		f 4 838 432 839 -836
		mu 0 4 339 340 360 359
		f 4 -437 -839 -834 840
		mu 0 4 458 340 339 310
		f 4 843 -843 833 -835
		mu 0 4 308 768 310 339
		f 4 27 131 -860 -859
		mu 0 4 32 183 184 77
		f 4 28 23 857 -862
		mu 0 4 83 36 35 84
		f 4 -858 -121 858 -870
		mu 0 4 91 35 32 77
		f 4 859 132 -882 860
		mu 0 4 77 184 186 79
		f 4 887 883 861 862
		mu 0 4 788 789 83 84
		f 4 355 -881 -867 -868
		mu 0 4 110 459 460 170
		f 4 884 -873 866 864
		mu 0 4 790 791 170 460
		f 4 867 -874 868 359
		mu 0 4 103 171 169 102
		f 5 869 -861 870 -887 -863
		mu 0 5 91 77 79 792 793
		f 4 885 -871 873 872
		mu 0 4 794 795 169 171
		f 4 874 875 360 -52
		mu 0 4 96 99 98 97
		f 4 876 -374 -876 877
		mu 0 4 462 463 115 111
		f 4 -877 878 -883 446
		mu 0 4 463 462 527 525
		f 4 881 648 -646 -869
		mu 0 4 179 185 188 180
		f 4 -885 -880 -878 865
		mu 0 4 791 790 462 111
		f 4 -886 -866 871 886
		mu 0 4 795 794 92 793
		f 4 -888 -872 -875 863
		mu 0 4 789 788 85 86
		f 4 -891 888 845 -890
		mu 0 4 802 799 770 769
		f 4 -776 -897 774 770
		mu 0 4 740 755 753 739
		f 4 -900 -865 892 893
		mu 0 4 797 790 460 528
		f 4 -893 880 -449 -892
		mu 0 4 528 460 459 529
		f 4 759 882 -898 -895
		mu 0 4 116 525 527 108
		f 4 -770 894 895 896
		mu 0 4 755 737 738 753
		f 4 899 -899 -879 879
		mu 0 4 790 797 527 462
		f 4 900 450 -363 -902
		mu 0 4 109 529 530 117
		f 4 901 844 902 -916
		mu 0 4 745 746 801 804
		f 4 854 -911 903 853
		mu 0 4 783 784 781 782
		f 4 -903 889 851 904
		mu 0 4 804 801 778 777
		f 4 -917 -905 -904 905
		mu 0 4 806 803 782 781
		f 4 906 891 -901 907
		mu 0 4 172 528 529 109
		f 4 908 -918 -894 -907
		mu 0 4 172 796 797 528
		f 4 -915 909 910 850
		mu 0 4 776 773 774 775
		f 4 911 -919 -914 912
		mu 0 4 798 807 773 743
		f 4 -896 913 914 -850
		mu 0 4 754 743 773 776
		f 4 -908 915 916 -920
		mu 0 4 747 748 803 806
		f 4 917 -913 897 898
		mu 0 4 797 796 108 527
		f 4 920 -912 -909 919
		mu 0 4 805 807 798 744
		f 4 -921 -906 -910 918
		mu 0 4 807 805 774 773
		f 4 -936 -358 -926 923
		mu 0 4 465 461 118 122
		f 4 924 925 -359 -206
		mu 0 4 124 123 100 101
		f 4 929 -929 -925 215
		mu 0 4 281 283 90 87
		f 4 362 933 -933 934
		mu 0 4 117 530 531 119
		f 4 449 935 936 -934
		mu 0 4 530 461 465 531
		f 4 939 -928 -954 -370
		mu 0 4 80 551 550 280
		f 4 940 -923 -940 361
		mu 0 4 464 553 552 121
		f 4 941 -939 -941 474
		mu 0 4 533 554 553 464
		f 4 -948 -276 942 -961
		mu 0 4 365 371 372 366
		f 4 -930 -212 945 946
		mu 0 4 283 281 268 269
		f 4 -946 -226 947 948
		mu 0 4 269 268 371 365
		f 4 -330 -957 951 -305
		mu 0 4 407 425 426 408
		f 4 -952 -943 -316 314
		mu 0 4 408 426 394 393
		f 4 952 -951 -955 477
		mu 0 4 270 549 548 81
		f 4 953 -945 -953 212
		mu 0 4 280 550 549 270
		f 4 631 954 -960 -962
		mu 0 4 363 81 548 377
		f 4 955 956 639 -959
		mu 0 4 436 435 438 437
		f 4 957 958 -639 -637
		mu 0 4 440 439 442 441
		f 4 644 -643 961 -958
		mu 0 4 376 628 363 377
		f 4 962 -932 -942 -747
		mu 0 4 120 555 554 533
		f 4 -963 767 773 -966
		mu 0 4 733 734 751 752
		f 4 -935 963 890 -845
		mu 0 4 741 742 799 802
		f 4 964 855 -889 -964
		mu 0 4 749 750 785 800
		f 4 931 -965 932 930
		mu 0 4 554 555 119 531
		f 4 938 -931 -937 937
		mu 0 4 553 554 531 465
		f 4 922 -938 -924 921
		mu 0 4 552 553 465 122
		f 4 927 -922 928 926
		mu 0 4 550 551 90 283
		f 4 944 -927 -947 943
		mu 0 4 549 550 283 269
		f 4 950 -944 -949 949
		mu 0 4 548 549 269 365
		f 4 959 -950 960 -956
		mu 0 4 377 548 365 366
		f 4 13 -1551 -992 989
		mu 0 4 808 811 810 809
		f 4 -1000 -976 14 -1063
		mu 0 4 812 815 814 813
		f 4 -1496 -1497 -12 967
		mu 0 4 816 819 818 817
		f 4 -996 -968 3 -1286
		mu 0 4 820 816 817 821
		f 4 978 -1537 -1538 1535
		mu 0 4 822 825 824 823
		f 4 -26 -983 983 -1074
		mu 0 4 826 829 828 827
		f 4 -1068 -1047 -1048 1044
		mu 0 4 830 833 832 831
		f 4 33 987 -1003 -969
		mu 0 4 834 837 836 835
		f 4 -1550 -1334 1330 991
		mu 0 4 810 839 838 809
		f 4 -1498 -1499 1495 992
		mu 0 4 840 841 819 816
		f 4 -1338 -993 995 -1337
		mu 0 4 842 840 816 820
		f 4 -1346 -997 999 -1345
		mu 0 4 843 844 815 812
		f 4 1001 -1352 -1001 1002
		mu 0 4 836 846 845 835
		f 4 -1004 974 -1211 -1216
		mu 0 4 847 850 849 848
		f 4 -998 -978 17 1005
		mu 0 4 851 854 853 852
		f 4 -1342 -995 997 1007
		mu 0 4 855 856 854 851
		f 4 -1544 -1111 1107 1010
		mu 0 4 857 860 859 858
		f 4 -1504 -1505 1501 1011
		mu 0 4 861 864 863 862
		f 4 -1115 -1012 1014 -1281
		mu 0 4 865 861 862 866
		f 4 -1117 -1014 1016 1015
		mu 0 4 867 870 869 868
		f 4 -1121 -1018 1019 -1120
		mu 0 4 871 874 873 872
		f 4 1023 -985 -1023 1024
		mu 0 4 875 878 877 876
		f 4 -1045 -1046 1043 -1070
		mu 0 4 830 831 880 879
		f 4 1027 1022 -1026 1028
		mu 0 4 881 876 877 882
		f 4 -1212 -1214 -1058 1056
		mu 0 4 883 886 885 884
		f 4 -1108 -1109 1106 1034
		mu 0 4 858 859 888 887
		f 4 -1331 -1332 1328 1035
		mu 0 4 809 838 890 889
		f 4 88 -990 -1036 1037
		mu 0 4 891 808 809 889
		f 4 1000 -1350 -999 1041
		mu 0 4 892 895 894 893
		f 4 968 -1042 -970 95
		mu 0 4 896 892 893 897
		f 4 -1625 -1626 1622 1045
		mu 0 4 831 899 898 880
		f 4 -1627 -1628 1624 1047
		mu 0 4 832 900 899 831
		f 4 -1615 -1616 -1469 1466
		mu 0 4 901 904 903 902
		f 4 -1043 -1467 -1468 -1073
		mu 0 4 905 901 902 906
		f 4 -1031 1032 1057 -1213
		mu 0 4 907 908 884 885
		f 4 -1348 1344 1060 998
		mu 0 4 894 843 812 893;
	setAttr ".fc[500:927]"
		f 4 -1061 1062 117 969
		mu 0 4 893 812 813 897
		f 4 -1005 -1006 52 975
		mu 0 4 815 851 852 814
		f 4 -1344 -1008 1004 996
		mu 0 4 844 855 851 815
		f 4 -1119 -1016 1018 1017
		mu 0 4 874 867 868 873
		f 4 -23 980 -1065 982
		mu 0 4 909 911 910 828
		f 4 984 -1066 1067 1066
		mu 0 4 877 878 833 830
		f 4 -1067 1069 1068 1025
		mu 0 4 877 830 879 912
		f 4 -1071 1072 -1466 1462
		mu 0 4 913 905 906 914
		f 4 -1078 -1077 -1056 1080
		mu 0 4 915 918 917 916
		f 4 1460 -1080 -1463 -1464
		mu 0 4 919 922 921 920
		f 4 -1081 -1054 -1040 1079
		mu 0 4 923 926 925 924
		f 4 -1462 -1082 1077 -1461
		mu 0 4 927 929 928 915
		f 4 1083 1048 -1083 1084
		mu 0 4 930 933 932 931
		f 4 1063 -1084 1086 -1079
		mu 0 4 934 933 930 935
		f 4 1078 1088 -1052 1054
		mu 0 4 936 939 938 937
		f 4 1089 1071 1051 1090
		mu 0 4 940 943 942 941
		f 4 -1050 1052 -1090 1092
		mu 0 4 944 945 943 940
		f 4 -1610 1606 1049 1093
		mu 0 4 946 947 945 944
		f 4 1095 -1085 -1095 1096
		mu 0 4 948 930 931 949
		f 4 -1087 -1096 1098 -1086
		mu 0 4 935 930 948 950
		f 4 1085 1100 -1088 -1089
		mu 0 4 939 952 951 938
		f 4 1101 -1091 1087 1102
		mu 0 4 953 940 941 954
		f 4 -1092 -1093 -1102 1104
		mu 0 4 955 944 940 953
		f 4 -1612 -1094 1091 1105
		mu 0 4 956 946 944 955
		f 4 -1542 -973 970 1110
		mu 0 4 860 958 957 859
		f 4 971 -1507 1503 1111
		mu 0 4 959 960 864 861
		f 4 -967 -1112 1114 -1279
		mu 0 4 961 959 861 865
		f 4 -977 -1114 1116 1115
		mu 0 4 962 963 870 867
		f 4 -1007 -1116 1118 1117
		mu 0 4 964 962 867 874
		f 4 -975 -1118 1120 -1060
		mu 0 4 965 964 874 871
		f 4 1122 -1636 -1124 -1049
		mu 0 4 966 969 968 967
		f 4 -1645 -1646 -1126 -1607
		mu 0 4 970 973 972 971
		f 4 1125 -1644 -1128 -1053
		mu 0 4 974 977 976 975
		f 4 1129 -1640 -1131 -1055
		mu 0 4 978 981 980 979
		f 4 1130 -1638 -1123 -1064
		mu 0 4 982 985 984 983
		f 4 1127 -1642 -1130 -1072
		mu 0 4 986 989 988 987
		f 4 -1107 -1136 1137 1136
		mu 0 4 887 888 991 990
		f 4 -1329 -1330 1326 1138
		mu 0 4 889 890 993 992
		f 4 -1038 -1139 1140 203
		mu 0 4 891 889 992 994
		f 4 -1143 1055 -1142 1144
		mu 0 4 995 998 997 996
		f 4 -1148 -1147 1149 1163
		mu 0 4 999 1002 1001 1000
		f 4 -1138 -1154 -1153 1158
		mu 0 4 990 991 1004 1003
		f 4 -1141 -1157 -1156 7
		mu 0 4 994 992 1006 1005
		f 4 -1327 -1328 -1158 1156
		mu 0 4 992 993 1007 1006
		f 4 1159 1150 -1161 -1033
		mu 0 4 908 1008 1001 884
		f 4 -1162 -1057 1160 1146
		mu 0 4 1002 883 884 1001
		f 4 -1275 -1276 1272 -1163
		mu 0 4 1009 1012 1011 1010
		f 4 -1146 -1145 1151 -1164
		mu 0 4 1000 1014 1013 999
		f 4 1152 1154 1165 -1165
		mu 0 4 1003 1004 1016 1015
		f 4 -1140 -1159 -1167 1168
		mu 0 4 1017 990 1003 1018
		f 4 -1037 -1137 1139 1170
		mu 0 4 1019 887 990 1017
		f 4 -1009 -1035 1036 1172
		mu 0 4 1020 858 887 1019
		f 4 -1546 -1011 1008 1174
		mu 0 4 1021 857 858 1020
		f 4 -1502 -1503 1499 1175
		mu 0 4 862 863 1023 1022
		f 4 -1015 -1176 1178 -1283
		mu 0 4 866 862 1022 1024
		f 4 -1017 -1178 1180 1179
		mu 0 4 868 869 1026 1025
		f 4 -1019 -1180 1182 1181
		mu 0 4 873 868 1025 1027
		f 4 -1020 -1182 1184 -1062
		mu 0 4 872 873 1027 1028
		f 4 -1059 1061 1186 1185
		mu 0 4 1029 872 1028 1030
		f 4 1187 -1041 -1186 1188
		mu 0 4 1031 1032 1029 1030
		f 4 1189 -1022 -1188 1190
		mu 0 4 1033 1036 1035 1034
		f 4 1194 -1166 -1194 -1197
		mu 0 4 1037 1015 1016 1038
		f 4 -1193 -1195 -1198 1195
		mu 0 4 1039 1015 1037 1040
		f 4 1166 1164 1192 1191
		mu 0 4 1018 1003 1015 1039
		f 4 1204 -1204 1202 1200
		mu 0 4 1041 1044 1043 1042
		f 4 1208 -1208 1206 1203
		mu 0 4 1045 1048 1047 1046
		f 4 1198 -1203 -1202 1196
		mu 0 4 1049 1042 1043 1050
		f 4 1201 -1207 -1206 1197
		mu 0 4 1037 1046 1047 1051
		f 4 985 -1025 -1217 1218
		mu 0 4 1052 875 876 1053
		f 4 988 -1238 -1218 1230
		mu 0 4 1054 1057 1056 1055
		f 4 1020 -1221 -1220 1021
		mu 0 4 1036 1059 1058 1035
		f 4 -1222 1216 -1028 1029
		mu 0 4 1060 1053 876 881
		f 3 -1224 -1223 1232
		mu 0 3 1061 1062 1055
		f 4 1219 -1226 -1225 1040
		mu 0 4 1032 1064 1063 1029
		f 4 1223 -1215 1210 -1227
		mu 0 4 1062 1061 848 849
		f 4 1119 1058 1224 -1228
		mu 0 4 871 872 1029 1063
		f 4 1059 1227 -1229 1226
		mu 0 4 965 871 1063 1065
		f 4 -1230 1222 1228 1225
		mu 0 4 1064 1066 1065 1063
		f 4 1121 -1231 1229 1220
		mu 0 4 1059 1054 1055 1058
		f 4 -1232 1221 1031 1030
		mu 0 4 907 1053 1060 908
		f 4 -1233 1217 -1236 -1210
		mu 0 4 1061 1055 1056 1067
		f 4 1235 1234 1231 -1234
		mu 0 4 1067 1056 1053 907
		f 4 1236 -1219 -1235 1237
		mu 0 4 1057 1052 1053 1056
		f 4 -1239 -1242 1213 -1252
		mu 0 4 1068 1071 1070 1069
		f 4 -1243 -1261 -1262 1258
		mu 0 4 1072 1075 1074 1073
		f 4 1260 1243 -1263 -1264
		mu 0 4 1074 1075 1077 1076
		f 4 1233 1239 -1259 -1260
		mu 0 4 1078 1079 1072 1073
		f 3 -1254 -1249 1254
		mu 0 3 1080 1082 1081
		f 3 1249 -1256 -1255
		mu 0 3 1081 1083 1080
		f 3 1252 1253 -1257
		mu 0 3 1084 1082 1080
		f 4 1257 1215 1214 1256
		mu 0 4 1080 1086 1085 1084
		f 4 1209 1259 -1247 -1253
		mu 0 4 1087 1078 1073 1088
		f 4 -1248 1248 1246 1261
		mu 0 4 1074 1089 1088 1073
		f 4 1247 1263 -1245 -1250
		mu 0 4 1089 1074 1076 1090
		f 4 -1246 1266 -1268 1262
		mu 0 4 1077 1092 1091 1076
		f 3 1255 -1269 1269
		mu 0 3 1080 1083 1093
		f 4 1268 1244 1267 -1271
		mu 0 4 1094 1090 1076 1091
		f 4 -1144 1148 -1272 1273
		mu 0 4 1011 1097 1096 1095
		f 4 -1277 1278 1277 1113
		mu 0 4 963 961 865 870
		f 4 -1278 1280 1279 1013
		mu 0 4 870 865 866 869
		f 4 -1280 1282 1281 1177
		mu 0 4 869 866 1024 1026
		f 4 -1340 1336 1283 994
		mu 0 4 856 842 820 854
		f 4 -1284 1285 349 977
		mu 0 4 854 820 821 853
		f 4 1288 -1201 1199 -1287
		mu 0 4 1098 1041 1100 1099
		f 3 1289 -1288 1286
		mu 0 3 1101 1102 1098
		f 4 -1293 -1292 1290 1312
		mu 0 4 1103 1106 1105 1104
		f 4 1076 1294 1291 -1294
		mu 0 4 1107 1110 1109 1108
		f 4 -1300 1307 1305 -1311
		mu 0 4 1111 1114 1113 1112
		f 4 -1302 -1301 1299 1309
		mu 0 4 1115 1116 1114 1111
		f 4 1298 -1289 -1304 1300
		mu 0 4 1116 1041 1098 1114
		f 4 -1305 1306 1302 1271
		mu 0 4 1096 1118 1117 1095
		f 4 -1306 -1307 1296 1311
		mu 0 4 1112 1113 1120 1119
		f 4 -1315 -1314 1301 1318
		mu 0 4 1121 1122 1116 1115
		f 4 1316 -1205 -1299 1313
		mu 0 4 1122 1044 1041 1116
		f 4 1317 -1209 -1317 1315
		mu 0 4 1123 1048 1045 1124
		f 4 1205 -1320 1321 1320
		mu 0 4 1040 1127 1126 1125
		f 4 1322 -1196 -1321 1323
		mu 0 4 1128 1039 1040 1125
		f 4 1324 -1192 -1323 1325
		mu 0 4 1007 1018 1039 1128
		f 4 -1168 -1169 -1325 1327
		mu 0 4 993 1017 1018 1007
		f 4 -1170 -1171 1167 1329
		mu 0 4 890 1019 1017 993
		f 4 -1172 -1173 1169 1331
		mu 0 4 838 1020 1019 890
		f 4 -1548 -1175 1171 1333
		mu 0 4 839 1021 1020 838
		f 4 -1500 -1501 1497 1334
		mu 0 4 1022 1023 841 840
		f 4 -1179 -1335 1337 -1285
		mu 0 4 1024 1022 840 842
		f 4 -1282 1284 1339 1338
		mu 0 4 1026 1024 842 856
		f 4 -1181 -1339 1341 1340
		mu 0 4 1025 1026 856 855
		f 4 -1183 -1341 1343 1342
		mu 0 4 1027 1025 855 844
		f 4 -1185 -1343 1345 -1184
		mu 0 4 1028 1027 844 843
		f 4 -1187 1183 1347 1346
		mu 0 4 1030 1028 843 894
		f 4 1348 -1189 -1347 1349
		mu 0 4 895 1031 1030 894
		f 4 1350 -1191 -1349 1351
		mu 0 4 846 1033 1034 845
		f 4 -1316 1314 1366 -1355
		mu 0 4 1123 1124 1130 1129
		f 4 1295 71 -1357 -1356
		mu 0 4 1131 1134 1133 1132
		f 4 -1309 1355 1368 -1358
		mu 0 4 1135 1138 1137 1136
		f 4 1367 -1372 -1359 1354
		mu 0 4 1129 1140 1139 1123
		f 4 -1363 1356 -386 -1362
		mu 0 4 1141 1132 1133 1142
		f 4 1353 -1365 -1364 1365
		mu 0 4 1143 1146 1145 1144
		f 4 -383 -1370 1359 1361
		mu 0 4 1142 1148 1147 1141
		f 4 -1371 -1318 1358 1364
		mu 0 4 1146 1150 1149 1145
		f 4 1370 1352 1319 1207
		mu 0 4 1150 1146 1126 1127
		f 4 -1361 -1360 1363 1371
		mu 0 4 1140 1152 1151 1139
		f 4 -1369 1362 1360 -1373
		mu 0 4 1136 1137 1152 1140
		f 4 1376 1375 -1367 -1375
		mu 0 4 1153 1154 1129 1130
		f 4 1372 -1392 1390 1377
		mu 0 4 1136 1140 1156 1155
		f 4 -1378 1380 1379 1357
		mu 0 4 1136 1155 1157 1135
		f 4 -1382 1383 1382 -1313
		mu 0 4 1104 1159 1158 1103
		f 4 -1385 1386 1385 1310
		mu 0 4 1112 1161 1160 1111
		f 4 -1386 1388 1387 -1310
		mu 0 4 1111 1160 1162 1115
		f 4 -1388 1389 1374 -1319
		mu 0 4 1115 1162 1163 1121
		f 4 -1368 -1376 1378 1391
		mu 0 4 1140 1129 1154 1156
		f 4 -1393 1395 -1387 -1394
		mu 0 4 1164 1165 1160 1161
		f 4 -1396 1405 1397 -1389
		mu 0 4 1160 1165 1166 1162
		f 4 -1398 -1397 1400 -1390
		mu 0 4 1162 1166 1167 1163
		f 4 -1379 -1400 1398 -1391
		mu 0 4 1156 1154 1168 1155
		f 4 1403 1399 -1377 -1401
		mu 0 4 1167 1168 1154 1153
		f 4 -1403 -1374 1404 1408
		mu 0 4 1169 1172 1171 1170
		f 4 1394 1384 -1312 1407
		mu 0 4 1173 1161 1112 1119
		f 4 -1402 1396 1406 -1409
		mu 0 4 1170 1175 1174 1169
		f 4 1410 1143 1275 -1410
		mu 0 4 1176 1097 1011 1012
		f 4 1412 -1414 -1412 1373
		mu 0 4 1177 1180 1179 1178
		f 4 -1418 -1420 1428 -1458
		mu 0 4 1181 1184 1183 1182
		f 4 -1423 -1422 1430 1455
		mu 0 4 1185 1188 1187 1186
		f 4 -1426 -1425 1042 -1424
		mu 0 4 1189 1190 901 905
		f 4 -1427 1434 1039 1443
		mu 0 4 1191 1194 1193 1192
		f 4 -1618 1614 1424 -1617
		mu 0 4 1195 904 901 1190
		f 4 -1429 -1621 -1622 -1459
		mu 0 4 1182 1183 1197 1196
		f 4 -1431 -1434 1417 1456
		mu 0 4 1198 1199 1184 1181
		f 4 1431 1423 1070 -1435
		mu 0 4 1200 1189 905 913
		f 4 -1624 1620 -1436 -1623
		mu 0 4 898 1197 1183 880
		f 4 1435 1419 -1437 -1044
		mu 0 4 880 1183 1184 879
		f 4 1436 1433 -1438 -1069
		mu 0 4 879 1184 1199 912
		f 4 -1439 -1029 1437 1421
		mu 0 4 1188 881 882 1187
		f 4 1439 -1444 1447 1452
		mu 0 4 1201 1191 1192 1202
		f 4 -1445 1442 1451 -1446
		mu 0 4 1008 1205 1204 1203
		f 4 -1448 1053 1142 -1447
		mu 0 4 1206 1207 998 995
		f 4 -1150 -1151 1445 -1449
		mu 0 4 1000 1001 1008 1203
		f 4 -1450 -1030 1438 1441
		mu 0 4 1205 1060 881 1188
		f 4 -1160 -1032 1449 1444
		mu 0 4 1008 908 1060 1205
		f 4 -1451 1446 1145 1448
		mu 0 4 1203 1208 1014 1000
		f 4 -1453 1450 -1452 -1454
		mu 0 4 1201 1208 1203 1204
		f 4 1422 -1455 -1443 -1442
		mu 0 4 1188 1185 1204 1205
		f 4 -1441 -1440 1453 1454
		mu 0 4 1185 1191 1201 1204
		f 4 -1421 1426 1440 -1456
		mu 0 4 1186 1194 1191 1185
		f 4 -1433 -1432 1420 -1457
		mu 0 4 1181 1189 1200 1198
		f 4 -1419 1425 1432 1457
		mu 0 4 1182 1190 1189 1181
		f 4 -1620 1616 1418 1458
		mu 0 4 1196 1195 1190 1182
		f 4 -1099 -1460 1461 -1098
		mu 0 4 950 948 929 927
		f 4 1097 1463 -1100 -1101
		mu 0 4 952 919 920 951
		f 4 1464 -1103 1099 1465
		mu 0 4 906 953 954 914
		f 4 -1104 -1105 -1465 1467
		mu 0 4 902 955 953 906
		f 4 -1614 -1106 1103 1468
		mu 0 4 903 956 955 902
		f 4 -1470 -560 1472 1471
		mu 0 4 1209 1212 1211 1210
		f 4 1073 -1474 -1473 -130
		mu 0 4 826 827 1214 1213
		f 4 -1495 1473 1074 -1475
		mu 0 4 1215 1214 827 1216
		f 4 -1476 -1478 1483 -1492
		mu 0 4 1217 1220 1219 1218
		f 4 1482 1082 -1479 1477
		mu 0 4 1221 931 932 1222
		f 4 -1480 -1482 1475 1490
		mu 0 4 1223 1224 1220 1217
		f 4 1481 1487 1094 -1483
		mu 0 4 1221 1225 949 931
		f 4 -1484 1485 -1632 -1493
		mu 0 4 1226 1229 1228 1227
		f 4 1123 -1634 -1486 1478
		mu 0 4 1230 1233 1232 1231
		f 4 -1481 139 1486 -1491
		mu 0 4 1217 1235 1234 1223
		f 4 -1477 103 1480 1491
		mu 0 4 1218 1236 1235 1217
		f 4 -1630 -187 1476 1492
		mu 0 4 1227 1238 1237 1226
		f 4 1469 1493 -1489 -566
		mu 0 4 1239 1242 1241 1240
		f 4 -1472 1494 1470 -1494
		mu 0 4 1243 1246 1245 1244
		f 4 -994 -974 -569 1496
		mu 0 4 819 1248 1247 818
		f 4 -1336 -991 993 1498
		mu 0 4 841 1249 1248 819
		f 4 -1177 -1333 1335 1500
		mu 0 4 1023 1250 1249 841
		f 4 -1013 -1174 1176 1502
		mu 0 4 863 1251 1250 1023
		f 4 -1113 -1010 1012 1504
		mu 0 4 864 1252 1251 863
		f 4 1505 -1110 1112 1506
		mu 0 4 960 1253 1252 864
		f 4 1507 972 -1540 1536
		mu 0 4 825 957 958 824
		f 4 -1510 -979 -1034 1518
		mu 0 4 1254 825 822 1255
		f 4 1531 1520 1108 -971
		mu 0 4 957 1256 888 859
		f 4 -1511 1534 -1512 1514
		mu 0 4 1257 1260 1259 1258
		f 4 -1273 -1274 -1514 -1515
		mu 0 4 1010 1011 1095 1261
		f 4 -1155 -1516 1512 1521
		mu 0 4 1016 1004 1262 1260
		f 4 -1518 -1517 1515 1153
		mu 0 4 991 1263 1262 1004
		f 4 -1520 -1519 1162 1511
		mu 0 4 1259 1254 1255 1258
		f 4 1533 1517 1135 -1521
		mu 0 4 1256 1263 991 888
		f 4 1523 1522 1193 -1522
		mu 0 4 1260 1264 1038 1016
		f 4 -1200 -1199 -1523 1525
		mu 0 4 1099 1100 1266 1265
		f 4 1526 -1525 -1524 1510
		mu 0 4 1257 1267 1264 1260
		f 4 -1290 -1526 1524 1529
		mu 0 4 1102 1101 1269 1268
		f 4 -1303 -1528 -1527 1513
		mu 0 4 1095 1117 1270 1261
		f 4 1303 1287 -1530 -1529
		mu 0 4 1114 1098 1102 1268
		f 3 1528 1527 -1308
		mu 0 3 1114 1268 1113
		f 4 -1532 -1508 1509 -1531
		mu 0 4 1256 957 825 1254
		f 4 -1534 1530 1519 -1533
		mu 0 4 1263 1256 1254 1259
		f 4 -1535 -1513 1516 1532
		mu 0 4 1259 1260 1262 1263
		f 4 -1509 -972 979 1537
		mu 0 4 824 960 959 823
		f 4 1538 -1506 1508 1539
		mu 0 4 958 1253 960 824
		f 4 1109 -1539 1541 1540
		mu 0 4 1252 1253 958 860
		f 4 1009 -1541 1543 1542
		mu 0 4 1251 1252 860 857
		f 4 1173 -1543 1545 1544
		mu 0 4 1250 1251 857 1021
		f 4 1332 -1545 1547 1546
		mu 0 4 1249 1250 1021 839
		f 4 990 -1547 1549 1548
		mu 0 4 1248 1249 839 810
		f 4 624 973 -1549 1550
		mu 0 4 811 1247 1248 810
		f 4 -1536 -1554 -1553 -1552
		mu 0 4 1271 1274 1273 1272
		f 4 1033 1551 -1555 1274
		mu 0 4 1009 1271 1272 1012
		f 4 1557 1569 -1556 976
		mu 0 4 1275 1278 1277 1276
		f 4 1006 1003 1560 -1558
		mu 0 4 1275 850 847 1278
		f 4 1564 -1559 -1267 1264
		mu 0 4 1279 1282 1281 1280
		f 4 -1562 -1561 -1258 -1560
		mu 0 4 1283 1284 1086 1080
		f 3 1562 1559 -1270
		mu 0 3 1093 1283 1080
		f 4 -1563 1270 1558 -1564
		mu 0 4 1283 1093 1281 1282
		f 4 1556 1409 1554 -1566
		mu 0 4 1285 1176 1012 1272
		f 4 -1568 1565 1552 -1567
		mu 0 4 1277 1285 1272 1273
		f 4 1555 1566 -1569 1276
		mu 0 4 1276 1277 1273 1286
		f 4 -980 966 1568 1553
		mu 0 4 1274 1287 1286 1273
		f 4 -1573 -1572 -1571 1081
		mu 0 4 929 1289 1288 928
		f 4 -1097 1584 1572 1459
		mu 0 4 948 949 1289 929
		f 4 1587 1474 1075 -1577
		mu 0 4 1290 1292 1216 1291
		f 4 -1579 1576 1573 -1578
		mu 0 4 1293 1296 1295 1294
		f 4 1577 1571 -1581 -1580
		mu 0 4 1297 1288 1289 1298
		f 4 -1584 -1583 1479 -1582
		mu 0 4 1299 1300 1224 1223
		f 4 1580 -1585 -1488 1582
		mu 0 4 1298 1289 949 1225
		f 4 -1487 153 1588 1581
		mu 0 4 1223 1234 1301 1299
		f 4 -1587 -1586 567 1488
		mu 0 4 1244 1304 1303 1302
		f 4 -1588 1575 1586 -1471
		mu 0 4 1305 1308 1307 1306
		f 4 1579 1583 1589 -1591
		mu 0 4 1309 1300 1299 1310
		f 4 -1575 -1576 1578 1590
		mu 0 4 1310 1312 1311 1309
		f 4 1591 -668 1585 1574
		mu 0 4 1313 1316 1315 1314
		f 4 -1589 668 -1592 -1590
		mu 0 4 1317 1320 1319 1318
		f 4 1592 -1655 -1594 -1125
		mu 0 4 1321 1324 1323 1322
		f 4 -1661 -1662 -1596 -1605
		mu 0 4 1325 1328 1327 1326
		f 4 1595 -1660 -1597 -1129
		mu 0 4 1329 1332 1331 1330
		f 4 1598 1655 -1600 -1132
		mu 0 4 1333 1336 1335 1334
		f 4 1599 -1654 -1593 -1133
		mu 0 4 1337 1340 1339 1338
		f 4 1596 -1658 -1599 -1134
		mu 0 4 1341 1344 1343 1342
		f 4 1593 -1653 -1601 -1135
		mu 0 4 1345 1348 1347 1346
		f 4 1601 -1649 -680 1484
		mu 0 4 1349 1352 1351 1350
		f 4 1600 -1651 -1602 1489
		mu 0 4 1353 1356 1355 1354
		f 4 672 -1663 1660 -1127
		mu 0 4 1357 1358 1328 1325
		f 4 187 -1647 1644 -1051
		mu 0 4 1359 1360 973 970
		f 4 151 1050 1609 1608
		mu 0 4 1361 1362 947 946
		f 4 165 -1609 1611 1610
		mu 0 4 1363 1361 946 956
		f 4 537 -1611 1613 1612
		mu 0 4 1364 1363 956 903
		f 4 -1039 90 -1613 1615
		mu 0 4 904 1365 1364 903
		f 4 4 1038 1617 -1428
		mu 0 4 1366 1365 904 1195
		f 4 -497 1427 1619 1618
		mu 0 4 1367 1366 1195 1196
		f 4 -1430 -523 -1619 1621
		mu 0 4 1197 1368 1367 1196
		f 4 75 1429 1623 -1027
		mu 0 4 1369 1368 1197 898
		f 4 -982 5 1026 1625
		mu 0 4 899 1370 1369 898
		f 4 -987 -32 981 1627
		mu 0 4 900 1371 1370 899
		f 4 -1485 -708 1629 1628
		mu 0 4 1372 1373 1238 1227
		f 4 1630 -1490 -1629 1631
		mu 0 4 1228 1374 1372 1227
		f 4 1632 1134 -1631 1633
		mu 0 4 1233 1376 1375 1232
		f 4 1634 1124 -1633 1635
		mu 0 4 969 1378 1377 968
		f 4 1636 1132 -1635 1637
		mu 0 4 985 1380 1379 984
		f 4 1638 1131 -1637 1639
		mu 0 4 981 1382 1381 980
		f 4 1640 1133 -1639 1641
		mu 0 4 989 1384 1383 988
		f 4 1642 1128 -1641 1643
		mu 0 4 977 1386 1385 976
		f 4 -1608 1604 -1643 1645
		mu 0 4 973 1388 1387 972
		f 4 726 1126 1607 1646
		mu 0 4 1360 1389 1388 973
		f 4 1647 -1603 -729 1648
		mu 0 4 1352 1391 1390 1351
		f 4 1649 -1604 -1648 1650
		mu 0 4 1356 1393 1392 1355
		f 4 1651 -1598 -1650 1652
		mu 0 4 1348 1395 1394 1347
		f 4 1653 1594 -1652 1654
		mu 0 4 1324 1397 1396 1323
		f 4 1656 -1595 -1656 1657
		mu 0 4 1344 1399 1398 1343
		f 4 1658 1597 -1657 1659
		mu 0 4 1332 1401 1400 1331
		f 4 -1606 1603 -1659 1661
		mu 0 4 1328 1403 1402 1327
		f 4 744 1602 1605 1662
		mu 0 4 1358 1404 1403 1328
		f 4 1668 1393 -1395 -1664
		mu 0 4 1405 1164 1161 1173
		f 4 -1666 -1665 1667 1670
		mu 0 4 1406 1409 1408 1407
		f 4 -1667 1402 1672 -1668
		mu 0 4 1410 1413 1412 1411
		f 4 -1670 -1669 1674 1665
		mu 0 4 1414 1417 1416 1415
		f 4 -1672 1392 1669 -1671
		mu 0 4 1407 1419 1418 1406
		f 4 -1407 -1406 1671 -1673
		mu 0 4 1412 1421 1420 1411
		f 4 1675 -1415 -1674 1664
		mu 0 4 1422 1425 1424 1423
		f 4 1673 -1417 -1413 1666
		mu 0 4 1426 1429 1428 1427
		f 4 -1678 1676 -1381 -1399
		mu 0 4 1168 1430 1157 1155
		f 4 -1405 -1681 1679 1681
		mu 0 4 1431 1434 1433 1432
		f 4 -1683 -1404 1401 -1682
		mu 0 4 1432 1436 1435 1431
		f 4 -1680 -1679 1677 1682
		mu 0 4 1437 1440 1439 1438
		f 4 -1416 -1684 1680 1411
		mu 0 4 1441 1444 1443 1442
		f 4 1761 -1761 -1760 1758
		mu 0 4 1445 1448 1447 1446
		f 4 1766 -1766 -1762 1764
		mu 0 4 1449 1452 1451 1450
		f 4 1759 -1770 -1877 1768
		mu 0 4 1453 1456 1455 1454
		f 4 1689 -1686 -1689 1690
		mu 0 4 1457 1460 1459 1458
		f 4 1683 -1694 -1687 1678
		mu 0 4 1461 1464 1463 1462
		f 4 -1696 -1695 -1240 1697
		mu 0 4 1465 1466 1072 1079
		f 4 1694 1703 -1697 1242
		mu 0 4 1072 1466 1467 1075
		f 4 1241 1698 -1698 1212
		mu 0 4 1070 1071 1465 1079
		f 4 1700 -1700 -1699 1709
		mu 0 4 1468 1469 1465 1071
		f 4 -1741 -1740 1737 -1736
		mu 0 4 1470 1473 1472 1471
		f 4 1711 -1705 -1704 1705
		mu 0 4 1474 1475 1467 1466
		f 4 1707 -1707 -1706 1695
		mu 0 4 1465 1476 1474 1466
		f 4 1701 -1709 -1708 1699
		mu 0 4 1469 1477 1476 1465
		f 3 -1712 1706 -1713
		mu 0 3 1475 1474 1476
		f 4 -1714 -1266 -1265 1716
		mu 0 4 1478 1479 1279 1280
		f 4 1725 1721 -1715 1713
		mu 0 4 1478 1481 1480 1479
		f 4 1714 1722 -1716 -1241
		mu 0 4 1479 1480 1483 1482
		f 4 1718 1724 -1717 1245
		mu 0 4 1484 1485 1478 1280
		f 4 -1719 -1244 1696 -1718
		mu 0 4 1485 1484 1075 1467
		f 4 -1733 -1721 1730 -1720
		mu 0 4 1483 1481 1487 1486
		f 4 1729 -1724 1717 1704
		mu 0 4 1475 1487 1485 1467
		f 4 1723 1720 -1726 -1725
		mu 0 4 1485 1487 1481 1478
		f 3 -1728 -1727 1238
		mu 0 3 1068 1486 1071
		f 4 1728 -1711 -1710 1726
		mu 0 4 1486 1488 1468 1071
		f 4 1719 1727 1250 1715
		mu 0 4 1483 1486 1068 1482
		f 4 1708 1702 -1729 1731
		mu 0 4 1476 1477 1488 1486
		f 4 -1732 -1731 -1730 1712
		mu 0 4 1476 1486 1487 1475
		f 3 -1723 -1722 1732
		mu 0 3 1483 1480 1481
		f 4 1733 1735 -1735 -1703
		mu 0 4 1477 1470 1471 1488
		f 4 1734 -1738 -1737 1710
		mu 0 4 1488 1471 1472 1468
		f 4 1736 1739 -1739 -1701
		mu 0 4 1468 1472 1473 1469
		f 4 1738 1740 -1734 -1702
		mu 0 4 1469 1473 1470 1477
		f 4 -1675 1684 -1742 -1676
		mu 0 4 1489 1492 1491 1490
		f 4 1157 -1326 -1743 1743
		mu 0 4 1006 1007 1128 1493
		f 4 -1745 841 1155 -1744
		mu 0 4 1493 1494 1005 1006
		f 4 1742 -1324 -1747 -1746
		mu 0 4 1493 1128 1125 1495
		f 4 -1749 -1748 1746 -1322
		mu 0 4 1126 1496 1495 1125
		f 4 1756 -833 1744 1745
		mu 0 4 1497 1500 1499 1498
		f 4 1747 1753 -1752 -1751
		mu 0 4 1501 1504 1503 1502
		f 4 -1354 -1753 1748 -1353
		mu 0 4 1146 1143 1496 1126
		f 3 1752 1755 -1754
		mu 0 3 1504 1505 1503
		f 4 1751 -1756 -1366 -1755
		mu 0 4 1502 1503 1505 1147
		f 4 -841 1749 1754 1369
		mu 0 4 1148 1506 1502 1147
		f 4 1750 -1750 842 -1757
		mu 0 4 1497 1502 1506 1500
		f 4 1771 1772 -1075 -984
		mu 0 4 828 1507 1216 827
		f 4 1774 -1771 -981 -29
		mu 0 4 1508 1509 910 911
		f 4 1781 -1772 1064 1770
		mu 0 4 1510 1507 828 910
		f 4 -1774 1793 -1076 -1773
		mu 0 4 1507 1511 1291 1216
		f 4 -1776 -1775 -884 -1799
		mu 0 4 1512 1509 1508 1513
		f 4 1779 1778 1792 -1291
		mu 0 4 1105 1515 1514 1104
		f 4 -1777 -1779 1784 -1796
		mu 0 4 1516 1514 1515 1517
		f 4 -1295 -1781 1785 -1780
		mu 0 4 1109 1110 1519 1518
		f 5 1775 1797 -1783 1773 -1782
		mu 0 5 1510 1521 1520 1511 1507
		f 4 -1785 -1786 1782 -1797
		mu 0 4 1522 1518 1519 1523
		f 4 51 -1296 -1788 -1787
		mu 0 4 1524 1527 1526 1525
		f 4 -1790 1787 1308 -1789
		mu 0 4 1528 1531 1530 1529
		f 4 -1380 1794 -1791 1788
		mu 0 4 1529 1533 1532 1528
		f 4 1780 1570 -1574 -1794
		mu 0 4 1534 1535 1294 1295
		f 4 -1778 1789 1791 1795
		mu 0 4 1517 1531 1528 1516
		f 4 -1798 -1784 1777 1796
		mu 0 4 1523 1521 1536 1522
		f 4 -864 1786 1783 1798
		mu 0 4 1513 1538 1537 1512
		f 4 1800 -1759 -1800 1801
		mu 0 4 1539 1445 1446 1540
		f 4 -1688 -1692 1807 1692
		mu 0 4 1541 1544 1543 1542
		f 4 -1805 -1804 1776 1810
		mu 0 4 1545 1546 1514 1516
		f 4 1802 1381 -1793 1803
		mu 0 4 1546 1159 1104 1514
		f 4 1805 1808 -1795 -1677
		mu 0 4 1547 1548 1532 1533
		f 4 -1808 -1807 -1806 1686
		mu 0 4 1542 1543 1550 1549
		f 4 -1792 1790 1809 -1811
		mu 0 4 1516 1528 1532 1545
		f 4 1812 1297 -1384 -1812
		mu 0 4 1551 1552 1158 1159
		f 4 1826 -1814 -1758 -1813
		mu 0 4 1553 1556 1555 1554
		f 4 -1767 -1815 1821 -1768
		mu 0 4 1557 1560 1559 1558
		f 4 -1816 -1765 -1801 1813
		mu 0 4 1556 1449 1450 1555
		f 4 -1817 1814 1815 1827
		mu 0 4 1561 1559 1560 1562
		f 4 -1819 1811 -1803 -1818
		mu 0 4 1563 1551 1159 1546
		f 4 1817 1804 1828 -1820
		mu 0 4 1563 1546 1545 1564
		f 4 -1764 -1822 -1821 1825
		mu 0 4 1565 1568 1567 1566
		f 4 -1824 1824 1829 -1823
		mu 0 4 1569 1571 1566 1570
		f 4 1762 -1826 -1825 1806
		mu 0 4 1572 1565 1566 1571
		f 4 1830 -1828 -1827 1818
		mu 0 4 1573 1561 1562 1574
		f 4 -1810 -1809 1823 -1829
		mu 0 4 1545 1532 1548 1564
		f 4 -1831 1819 1822 -1832
		mu 0 4 1575 1576 1569 1570
		f 4 -1830 1820 1816 1831
		mu 0 4 1570 1566 1567 1575
		f 4 -1835 1836 1292 1846
		mu 0 4 1577 1578 1106 1103
		f 4 1141 1293 -1837 -1836
		mu 0 4 1579 1107 1108 1580
		f 4 -1152 1835 1839 -1841
		mu 0 4 999 1013 1582 1581
		f 4 -1846 1843 -1845 -1298
		mu 0 4 1552 1584 1583 1158
		f 4 1844 -1848 -1847 -1383
		mu 0 4 1158 1583 1577 1103
		f 4 1304 1864 1838 -1851
		mu 0 4 1118 1096 1586 1585
		f 4 -1297 1850 1833 -1852
		mu 0 4 1587 1590 1589 1588
		f 4 -1408 1851 1849 -1853
		mu 0 4 1591 1587 1588 1592
		f 4 1871 -1854 1211 1858
		mu 0 4 1593 1594 886 883
		f 4 -1858 -1857 1147 1840
		mu 0 4 1581 1595 1002 999
		f 4 -1860 -1859 1161 1856
		mu 0 4 1595 1593 883 1002
		f 4 1240 -1863 1867 1265
		mu 0 4 1479 1482 1596 1279
		f 4 -1251 1251 1853 1862
		mu 0 4 1482 1068 1069 1596
		f 4 -1411 1865 1861 -1864
		mu 0 4 1097 1176 1598 1597
		f 4 -1149 1863 1855 -1865
		mu 0 4 1096 1097 1597 1586
		f 4 1872 1870 -1866 -1557
		mu 0 4 1285 1599 1598 1176
		f 4 1869 -1565 -1868 -1867
		mu 0 4 1600 1603 1602 1601
		f 4 1561 1563 -1870 -1869
		mu 0 4 1604 1607 1606 1605
		f 4 1868 -1873 1567 -1570
		mu 0 4 1278 1599 1285 1277
		f 4 1663 1852 1842 -1874
		mu 0 4 1608 1591 1592 1609
		f 4 1876 -1691 -1685 1873
		mu 0 4 1610 1457 1458 1611
		f 4 1757 -1802 -1875 1845
		mu 0 4 1612 1539 1540 1613
		f 4 1874 1799 -1769 -1876
		mu 0 4 1614 1615 1453 1454
		f 4 -1842 -1844 1875 -1843
		mu 0 4 1592 1583 1584 1609
		f 4 -1849 1847 1841 -1850
		mu 0 4 1588 1577 1583 1592
		f 4 -1833 1834 1848 -1834
		mu 0 4 1589 1578 1577 1588
		f 4 -1838 -1840 1832 -1839
		mu 0 4 1586 1581 1582 1585
		f 4 -1855 1857 1837 -1856
		mu 0 4 1597 1595 1581 1586
		f 4 -1861 1859 1854 -1862
		mu 0 4 1598 1593 1595 1597
		f 4 1866 -1872 1860 -1871
		mu 0 4 1599 1594 1593 1598;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 8 
		45 
		50 
		56 
		223 
		509 
		514 
		520 
		687 ;
	setAttr ".tessellate" yes;
createNode transform -n "Lower_Teeth" -p "Meshes";
createNode mesh -n "Lower_TeethShape" -p "Lower_Teeth";
	addAttr -ci true -sn "textureAnim" -ln "textureAnim" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "Fadeable" -ln "Fadeable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "Fadeable3DS" -ln "Fadeable3DS" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "NoMerge" -ln "NoMerge" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "NoRecvRtShadows" -ln "NoRecvRtShadows" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noQuad" -ln "noQuad" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noLightmapCast" -ln "noLightmapCast" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noLightmapRecv" -ln "noLightmapRecv" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "vtxLightmapOnly" -ln "vtxLightmapOnly" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "clipMesh" -ln "clipMesh" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "tessellate" -ln "tessellate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noRender" -ln "noRender" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "earlyAlpha" -ln "earlyAlpha" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "reflectWater" -ln "reflectWater" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "billboardX" -ln "billboardX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "billboardY" -ln "billboardY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "billboardZ" -ln "billboardZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "recvSilhouette" -ln "recvSilhouette" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "depthBias" -ln "depthBias" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "pvsNonOccluder" -ln "pvsNonOccluder" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 206 ".uvst[0].uvsp[0:205]" -type "float2" 0.52499986 0.3125
		 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.52499986 0.3125 0.52499986 0.68843985 0.53749985 0.3125 0.53749985 0.68843985
		 0.54999983 0.3125 0.54999983 0.68843985 0.56249982 0.3125 0.56249982 0.68843985 0.57499981
		 0.3125 0.57499981 0.68843985 0.5874998 0.3125 0.5874998 0.68843985 0.52499986 0.3125
		 0.52499986 0.68843985 0.53749985 0.3125 0.53749985 0.68843985 0.54999983 0.3125 0.54999983
		 0.68843985 0.56249982 0.3125 0.56249982 0.68843985 0.57499981 0.3125 0.57499981 0.68843985
		 0.5874998 0.3125 0.5874998 0.68843985 0.52499986 0.3125 0.52499986 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.53749985 0.3125 0.52499986 0.3125 0.53749985 0.3125 0.54999983
		 0.3125 0.54999983 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.56249982
		 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.57499981 0.3125 0.56249982
		 0.3125 0.57499981 0.3125 0.5874998 0.3125 0.5874998 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.5874998 0.3125 0.53124988 0.50046992 0.54374981 0.50046992 0.55624986 0.50046992
		 0.56874979 0.50046992 0.58124983 0.50046992 0.53124988 0.50046992 0.54374981 0.50046992
		 0.5562498 0.50046992 0.56874979 0.50046992 0.58124983 0.50046992 0.53124988 0.3125
		 0.54374981 0.3125 0.55624986 0.3125 0.56874979 0.3125 0.58124983 0.3125 0.52499986
		 0.3125 0.53124988 0.3125 0.53749985 0.3125 0.53124988 0.3125 0.52499986 0.3125 0.54374981
		 0.3125 0.54999983 0.3125 0.54374981 0.3125 0.53749985 0.3125 0.55624986 0.3125 0.56249982
		 0.3125 0.55624986 0.3125 0.54999983 0.3125 0.56874979 0.3125 0.57499981 0.3125 0.56874979
		 0.3125 0.56249982 0.3125 0.58124983 0.3125 0.5874998 0.3125 0.58124983 0.3125 0.57499981
		 0.3125 0.5874998 0.3125 0.53124988 0.35949248 0.53749985 0.50046992 0.53124988 0.68843985
		 0.52499986 0.50046992 0.54374981 0.35949248 0.54999983 0.50046992 0.54374981 0.68843985
		 0.55624986 0.35949248 0.56249982 0.50046992 0.55624986 0.68843985 0.56874979 0.35949248
		 0.57499981 0.50046992 0.56874979 0.68843985 0.58124983 0.35949248 0.5874998 0.50046992
		 0.58124983 0.68843985 0.52499986 0.50046992 0.53124988 0.68843985 0.53749985 0.50046992
		 0.53124988 0.3125 0.54374981 0.68843985 0.54999983 0.50046992 0.54374981 0.3125 0.55624986
		 0.68843985 0.56249982 0.50046992 0.55624986 0.3125 0.56874979 0.68843985 0.57499981
		 0.50046992 0.56874979 0.3125 0.58124983 0.68843985 0.5874998 0.50046992 0.58124983
		 0.3125 0.53124988 0.3125 0.53749985 0.3125 0.53124988 0.3125 0.52499986 0.3125 0.54374981
		 0.3125 0.54999983 0.3125 0.54374981 0.3125 0.53749985 0.3125 0.55624986 0.3125 0.56249982
		 0.3125 0.55624986 0.3125 0.54999983 0.3125 0.56874979 0.3125 0.57499981 0.3125 0.56874979
		 0.3125 0.56249982 0.3125 0.58124983 0.3125 0.5874998 0.3125 0.58124983 0.3125 0.57499981
		 0.3125 0.52499986 0.3125 0.52499986 0.3125 0.52499986 0.3125 0.53124988 0.3125 0.53749985
		 0.3125 0.52499986 0.3125 0.53749985 0.3125 0.53749985 0.3125 0.53749985 0.3125 0.53749985
		 0.3125 0.52499986 0.3125 0.53749985 0.3125 0.52499986 0.3125 0.52499986 0.3125 0.54374981
		 0.3125 0.54999983 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.54999983 0.3125 0.54999983
		 0.3125 0.54999983 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.53749985 0.3125 0.53749985
		 0.3125 0.53749985 0.3125 0.55624986 0.3125 0.56249982 0.3125 0.54999983 0.3125 0.56249982
		 0.3125 0.56249982 0.3125 0.56249982 0.3125 0.56249982 0.3125 0.54999983 0.3125 0.56249982
		 0.3125 0.54999983 0.3125 0.54999983 0.3125 0.54999983 0.3125 0.56874979 0.3125 0.57499981
		 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.57499981 0.3125 0.57499981 0.3125 0.57499981
		 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.56249982 0.3125 0.56249982 0.3125 0.56249982
		 0.3125 0.58124983 0.3125 0.5874998 0.3125 0.57499981 0.3125 0.5874998 0.3125 0.5874998
		 0.3125 0.5874998 0.3125 0.5874998 0.3125 0.57499981 0.3125 0.57499981 0.3125 0.57499981
		 0.3125 0.57499981 0.3125 0.5874998 0.3125 0.5874998 0.3125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 139 ".pt[0:138]" -type "float3"  0 0 -0.10454919 0 0 -0.10454916 
		0 0 -0.10454913 0 0 -0.10454919 0 0 -0.10454916 0 0 -0.10454913 0 0 -0.10454913 0 
		0 -0.10454919 0 0 -0.10454916 0 0 -0.10454916 0 0 -0.10454919 0 0 -0.10454916 0 0 
		-0.10454919 0 0 -0.10454916 0 0 -0.1045491 0 0 -0.10454916 0 0 -0.10454916 0 2.3841858e-007 
		-0.10454913 0 0 -0.1045491 0 0 -0.10454913 0 0 -0.10454916 0 0 -0.10454916 0 0 -0.1045491 
		0 0 -0.10454916 0 0 -0.10454922 0 0 -0.10454916 0 0 -0.10454916 0 0 -0.10454922 0 
		0 -0.10454916 0 0 -0.10454916 0 0 -0.1045491 0 0 -0.10454916 0 0 -0.10454913 0 0 
		-0.10454922 0 -2.3841858e-007 -0.10454919 0 0 -0.10454919 0 0 -0.10454913 0 0 -0.10454922 
		0 -2.3841858e-007 -0.10454922 0 0 -0.10454913 0 0 -0.10454913 0 0 -0.10454919 0 0 
		-0.10454919 0 2.3841858e-007 -0.1045491 0 0 -0.10454916 0 0 -0.10454919 0 0 -0.10454916 
		0 0 -0.10454913 0 0 -0.10454916 0 0 -0.10454916 0 0 -0.10454916 0 0 -0.10454919 0 
		0 -0.10454913 0 0 -0.10454919 0 -2.3841858e-007 -0.10454922 0 0 -0.10454913 0 0 -0.10454919 
		0 0 -0.10454916 0 0 -0.10454922 0 0 -0.10454913 0 0 -0.10454913 0 0 -0.10454913 0 
		0 -0.10454922 0 0 -0.10454916 0 0 -0.10454916 0 0 -0.10454913 0 0 -0.10454916 0 0 
		-0.10454916 0 0 -0.10454919 0 0 -0.10454916 0 0 -0.10454916 0 0 -0.10454916 0 0 -0.10454919 
		0 0 -0.10454922 0 0 -0.10454916 0 2.3841858e-007 -0.10454913 0 0 -0.1045491 0 0 -0.10454916 
		0 0 -0.10454916 0 0 -0.10454916 0 0 -0.10454916 0 2.3841858e-007 -0.1045491 0 0 -0.10454916 
		0 0 -0.1045491 0 0 -0.10454916 0 0 -0.10454916 0 0 -0.10454922 0 0 -0.1045491 0 0 
		-0.10454922 0 0 -0.10454916 0 0 -0.10454922 0 0 -0.10454916 0 0 -0.10454916 0 0 -0.1045491 
		0 2.3841858e-007 -0.1045491 0 0 -0.10454916 0 0 -0.1045491 0 0 -0.10454919 0 0 -0.10454919 
		0 0 -0.10454916 0 0 -0.10454919 0 0 -0.10454916 0 0 -0.10454913 0 0 -0.10454916 0 
		0 -0.10454916 0 0 -0.10454916 0 0 -0.10454919 0 0 -0.10454916 0 0 -0.10454916 0 0 
		-0.10454919 0 0 -0.10454919 0 0 -0.10454919 0 0 -0.10454922 0 0 -0.10454916 0 0 -0.10454922 
		0 0 -0.10454916 0 0 -0.10454919 0 0 -0.10454913 0 0 -0.10454919 0 0 -0.10454916 0 
		0 -0.10454916 0 0 -0.10454913 0 2.3841858e-007 -0.10454913 0 0 -0.1045491 0 0 -0.10454916 
		0 0 -0.10454916 0 0 -0.10454919 0 0 -0.1045491 0 0 -0.10454916 0 -2.3841858e-007 
		-0.10454922 0 0 -0.10454916 0 0 -0.10454916 0 0 -0.1045491 0 0 -0.10454922 0 0 -0.10454916 
		0 -2.3841858e-007 -0.10454919 0 0 -0.10454919 0 0 -0.10454913 0 0 -0.10454916;
	setAttr -s 139 ".vt[0:138]"  -1.19255495 3.51584625 3.42764616 -0.63350689 3.51135707 3.73597002
		 -7.0780515e-009 3.51135731 3.83630681 0.63350672 3.51135635 3.73596811 1.20500124 3.51135397 3.44477725
		 1.64141059 3.51584864 2.97879076 -1.19255495 3.20368457 3.42764568 -0.62696338 3.20368719 3.7158308
		 -7.4505806e-009 3.20368624 3.81513071 0.62696314 3.20368552 3.7158308 1.19255471 3.20368552 3.42764664
		 1.64141059 3.20368457 2.97879076 -1.49292874 3.51584864 3.84107637 -1.49292874 3.203686 3.8410759
		 -0.76896864 3.51135612 4.15287781 -0.78487921 3.20368671 4.20184517 1.886866e-007 3.51135468 4.27466965
		 2.3841858e-007 3.20369053 4.32615709 0.76896864 3.51135373 4.15287733 0.78487921 3.20368648 4.20184612
		 1.46266472 3.51135397 3.79942107 1.49292827 3.20368648 3.8410759 2.054839373 3.51585484 3.27916431
		 2.054839373 3.20368695 3.27916479 -1.15367103 3.65450954 3.56350803 -1.31069446 3.65451241 3.81788015
		 -0.63995838 3.66964769 3.75582552 -0.7594077 3.66965055 4.12345219 -4.9670539e-009 3.66965151 3.85718393
		 1.6571398e-007 3.66965199 4.24372959 0.6399582 3.66965199 3.75582385 0.7594077 3.66965151 4.12345219
		 1.21727264 3.66964936 3.46166825 1.44447875 3.66965055 3.7743907 1.64641321 3.65451193 3.12001801
		 1.87435651 3.65451264 3.31341648 -0.90975916 3.49862671 3.57173848 -0.31348169 3.49862957 3.76548123
		 0.31348157 3.49862933 3.76548052 0.90975893 3.49862766 3.57173753 1.41698265 3.49862623 3.20321846
		 -0.90975916 3.20368576 3.57173824 -0.31348169 3.20368671 3.76548076 0.31348157 3.20368576 3.76548076
		 0.90975893 3.20368552 3.57173872 1.41698265 3.20368505 3.2032187 -1.19255495 3.35976553 3.42764592
		 -0.6192919 3.35976887 3.69222021 -3.7252903e-008 3.35976887 3.79030585 0.61929172 3.35976815 3.69221973
		 1.17796278 3.35976696 3.40756226 1.64141059 3.35976648 2.97879076 -1.34274185 3.5594449 3.63436127
		 -1.49292874 3.35976744 3.84107614 -0.70592129 3.55944753 3.95883846 -1.13890398 3.4986279 4.02146101
		 -0.77527547 3.35976863 4.17228794 -1.13890398 3.20368624 4.021460533 1.1228258e-007 3.55944729 4.070644379
		 -0.39243948 3.49862766 4.26400089 1.7881393e-007 3.35976887 4.29507875 -0.39243948 3.20368862 4.26400089
		 0.70592117 3.55944633 3.95883703 0.39243972 3.49862647 4.26400089 0.77527547 3.35976696 4.17228794
		 0.39243972 3.20368862 4.26400185 1.34274149 3.5594449 3.63436079 1.13890374 3.49862576 4.021460056
		 1.47466099 3.35976744 3.81593275 1.13890374 3.20368648 4.02146101 1.84812498 3.55944824 3.1289773
		 1.77388382 3.49862885 3.56011963 2.054839373 3.35977077 3.27916455 1.77388382 3.20368671 3.56012034
		 -1.19607055 3.60304117 3.53915071 -1.3620491 3.60304332 3.79446769 -1.27905977 3.65535855 3.66680908
		 -0.64816833 3.60304308 3.78109336 -0.9384023 3.66843605 3.62795377 -0.75215739 3.60304403 4.10113859
		 -0.70016289 3.66117239 3.94111586 -1.11026084 3.66843939 3.96524549 1.4901161e-008 3.60304523 3.88375235
		 -0.32335141 3.66843843 3.82779598 1.5764576e-007 3.60304403 4.2202673 8.3139945e-008 3.6611743 4.052009583
		 -0.38256976 3.66843987 4.20168591 0.64816821 3.60304451 3.78109169 0.32335132 3.66844082 3.82779503
		 0.75215739 3.60304356 4.10113764 0.70016277 3.66117454 3.9411149 0.38256997 3.66844034 4.20168591
		 1.23288906 3.6030426 3.48316193 0.93840206 3.66843939 3.62795305 1.4306879 3.60304308 3.755409
		 1.33178854 3.66117263 3.61928558 1.11026073 3.66843987 3.96524501 1.67921066 3.60304379 3.083750486
		 1.4615953 3.66843843 3.24783111 1.91596258 3.60304499 3.27528048 1.79758668 3.65536046 3.17951512
		 1.72927117 3.66843939 3.51550698 -1.13890398 3.35976791 4.021460533 -0.39243948 3.35976887 4.26400089
		 0.39243972 3.35976791 4.26400137 1.13890374 3.35976672 4.021460533 1.77388382 3.35976887 3.56012011
		 -0.90975916 3.35976744 3.57173848 -0.31348169 3.35976934 3.765481 0.31348157 3.35976863 3.76548052
		 0.90975893 3.35976744 3.571738 1.41698265 3.35976648 3.20321846 -1.02433157 3.69023609 3.79659963
		 -0.35296059 3.69023752 4.014740944 0.35296065 3.69023943 4.014740467 1.024331331 3.69023848 3.79659939
		 1.59543324 3.69023752 3.38166904 -1.34274185 3.60304213 3.63436127 -0.90975916 3.60304117 3.57173848
		 -0.70592129 3.60304356 3.95883846 -1.13890398 3.60304427 4.02146101 -1.34274185 3.60304213 3.63436127
		 -0.31348169 3.60304403 3.76548147 1.1140946e-007 3.60304451 4.070643902 -0.39243948 3.60304403 4.26400089
		 -0.70592129 3.60304332 3.95883846 0.31348157 3.60304546 3.76548028 0.70592117 3.60304403 3.95883679
		 0.39243972 3.60304356 4.26400089 1.1140946e-007 3.60304475 4.070643902 0.90975893 3.60304356 3.57173753
		 1.34274149 3.60304236 3.63436079 1.13890374 3.60304308 4.021460056 0.70592117 3.60304403 3.95883703
		 1.41698265 3.6030426 3.20321846 1.84812498 3.60304451 3.1289773 1.77388382 3.60304451 3.56011963
		 1.34274149 3.6030426 3.63436079 1.84812498 3.60304451 3.12897706;
	setAttr -s 280 ".ed";
	setAttr ".ed[0:165]"  0 36 1 36 1 1 1 37 1 37 2 1 2 38 1 38 3 1 3 39 1 39 4 1
		 4 40 1 40 5 1 6 41 0 41 7 0 7 42 0 42 8 0 8 43 0 43 9 0 9 44 0 44 10 0 10 45 0 45 11 0
		 0 46 1 46 6 0 1 47 1 47 7 1 2 48 1 48 8 1 3 49 1 49 9 1 4 50 1 50 10 1 5 51 0 51 11 0
		 0 52 1 52 12 1 12 53 0 53 13 0 1 54 1 54 14 1 12 55 1 55 14 1 14 56 1 56 15 1 13 57 0
		 57 15 0 2 58 1 58 16 1 14 59 1 59 16 1 16 60 1 60 17 1 15 61 0 61 17 0 3 62 1 62 18 1
		 16 63 1 63 18 1 18 64 1 64 19 1 17 65 0 65 19 0 4 66 1 66 20 1 18 67 1 67 20 1 20 68 1
		 68 21 1 19 69 0 69 21 0 5 70 1 70 22 1 20 71 1 71 22 1 22 72 1 72 23 0 21 73 0 73 23 0
		 0 74 0 74 24 0 12 75 0 75 25 0 24 76 0 76 25 0 1 77 0 77 26 0 24 78 1 78 26 1 14 79 0
		 79 27 0 26 80 0 80 27 0 25 81 1 81 27 1 2 82 0 82 28 0 26 83 1 83 28 1 16 84 0 84 29 0
		 28 85 0 85 29 0 27 86 1 86 29 1 3 87 0 87 30 0 28 88 1 88 30 1 18 89 0 89 31 0 30 90 0
		 90 31 0 29 91 1 91 31 1 4 92 0 92 32 0 30 93 1 93 32 1 20 94 0 94 33 0 32 95 0 95 33 0
		 31 96 1 96 33 1 5 97 0 97 34 0 32 98 1 98 34 1 22 99 0 99 35 0 34 100 0 100 35 0
		 33 101 1 101 35 1 102 55 1 102 56 1 102 57 1 102 53 1 103 59 1 103 60 1 103 61 1
		 103 56 1 104 63 1 104 64 1 104 65 1 104 60 1 105 67 1 105 68 1 105 69 1 105 64 1
		 106 71 1 106 72 1 106 73 1 106 68 1 107 46 1 107 41 1 107 47 1 107 36 1 108 47 1
		 108 42 1 108 48 1 108 37 1 109 48 1 109 43 1 109 49 1 109 38 1 110 49 1 110 44 1;
	setAttr ".ed[166:279]" 110 50 1 110 39 1 111 50 1 111 45 1 111 51 1 111 40 1
		 112 78 1 112 80 1 112 81 1 112 76 1 113 83 1 113 85 1 113 86 1 113 80 1 114 88 1
		 114 90 1 114 91 1 114 85 1 115 93 1 115 95 1 115 96 1 115 90 1 116 98 1 116 100 1
		 116 101 1 116 95 1 117 52 1 117 75 1 117 76 1 117 74 1 118 36 1 118 77 1 118 78 1
		 118 74 1 119 54 1 119 79 1 119 80 1 119 77 1 120 55 1 120 75 1 120 81 1 120 79 1
		 121 52 1 121 74 1 121 76 1 121 75 1 122 37 1 122 82 1 122 83 1 122 77 1 123 58 1
		 123 84 1 123 85 1 123 82 1 124 59 1 124 79 1 124 86 1 124 84 1 125 54 1 125 77 1
		 125 80 1 125 79 1 126 38 1 126 87 1 126 88 1 126 82 1 127 62 1 127 89 1 127 90 1
		 127 87 1 128 63 1 128 84 1 128 91 1 128 89 1 129 58 1 129 82 1 129 85 1 129 84 1
		 130 39 1 130 92 1 130 93 1 130 87 1 131 66 1 131 94 1 131 95 1 131 92 1 132 67 1
		 132 89 1 132 96 1 132 94 1 133 62 1 133 87 1 133 90 1 133 89 1 134 40 1 134 97 1
		 134 98 1 134 92 1 135 70 1 135 99 1 135 100 1 135 97 1 136 71 1 136 94 1 136 101 1
		 136 99 1 137 66 1 137 92 1 137 95 1 137 94 1 138 70 1 138 97 1 138 100 1 138 99 1;
	setAttr -s 148 -ch 592 ".fc[0:147]" -type "polyFaces" 
		f 4 39 40 -134 132
		mu 0 4 91 20 92 54
		f 4 41 -44 -135 133
		mu 0 4 92 21 93 54
		f 4 -43 -36 -136 134
		mu 0 4 93 19 94 54
		f 4 -35 38 -133 135
		mu 0 4 94 18 91 54
		f 4 47 48 -138 136
		mu 0 4 95 22 96 55
		f 4 49 -52 -139 137
		mu 0 4 96 23 97 55
		f 4 -51 -42 -140 138
		mu 0 4 97 21 92 55
		f 4 -41 46 -137 139
		mu 0 4 92 20 95 55
		f 4 55 56 -142 140
		mu 0 4 98 24 99 56
		f 4 57 -60 -143 141
		mu 0 4 99 25 100 56
		f 4 -59 -50 -144 142
		mu 0 4 100 23 96 56
		f 4 -49 54 -141 143
		mu 0 4 96 22 98 56
		f 4 63 64 -146 144
		mu 0 4 101 26 102 57
		f 4 65 -68 -147 145
		mu 0 4 102 27 103 57
		f 4 -67 -58 -148 146
		mu 0 4 103 25 99 57
		f 4 -57 62 -145 147
		mu 0 4 99 24 101 57
		f 4 71 72 -150 148
		mu 0 4 104 28 105 58
		f 4 73 -76 -151 149
		mu 0 4 105 29 106 58
		f 4 -75 -66 -152 150
		mu 0 4 106 27 102 58
		f 4 -65 70 -149 151
		mu 0 4 102 26 104 58
		f 4 21 10 -154 152
		mu 0 4 107 7 108 59
		f 4 11 -24 -155 153
		mu 0 4 108 9 109 59
		f 4 -23 -2 -156 154
		mu 0 4 109 8 110 59
		f 4 -1 20 -153 155
		mu 0 4 110 6 107 59
		f 4 23 12 -158 156
		mu 0 4 109 9 111 60
		f 4 13 -26 -159 157
		mu 0 4 111 11 112 60
		f 4 -25 -4 -160 158
		mu 0 4 112 10 113 60
		f 4 -3 22 -157 159
		mu 0 4 113 8 109 60
		f 4 25 14 -162 160
		mu 0 4 112 11 114 61
		f 4 15 -28 -163 161
		mu 0 4 114 13 115 61
		f 4 -27 -6 -164 162
		mu 0 4 115 12 116 61
		f 4 -5 24 -161 163
		mu 0 4 116 10 112 61
		f 4 27 16 -166 164
		mu 0 4 115 13 117 62
		f 4 17 -30 -167 165
		mu 0 4 117 15 118 62
		f 4 -29 -8 -168 166
		mu 0 4 118 14 119 62
		f 4 -7 26 -165 167
		mu 0 4 119 12 115 62
		f 4 29 18 -170 168
		mu 0 4 118 15 120 63
		f 4 19 -32 -171 169
		mu 0 4 120 17 121 63
		f 4 -31 -10 -172 170
		mu 0 4 121 16 122 63
		f 4 -9 28 -169 171
		mu 0 4 122 14 118 63
		f 4 85 88 -174 172
		mu 0 4 123 33 124 64
		f 4 89 -92 -175 173
		mu 0 4 124 34 125 64
		f 4 -91 -82 -176 174
		mu 0 4 125 35 126 64
		f 4 -81 84 -173 175
		mu 0 4 126 32 123 64
		f 4 95 98 -178 176
		mu 0 4 127 37 128 65
		f 4 99 -102 -179 177
		mu 0 4 128 38 129 65
		f 4 -101 -90 -180 178
		mu 0 4 129 39 130 65
		f 4 -89 94 -177 179
		mu 0 4 130 36 127 65
		f 4 105 108 -182 180
		mu 0 4 131 41 132 66
		f 4 109 -112 -183 181
		mu 0 4 132 42 133 66
		f 4 -111 -100 -184 182
		mu 0 4 133 43 134 66
		f 4 -99 104 -181 183
		mu 0 4 134 40 131 66
		f 4 115 118 -186 184
		mu 0 4 135 45 136 67
		f 4 119 -122 -187 185
		mu 0 4 136 46 137 67
		f 4 -121 -110 -188 186
		mu 0 4 137 47 138 67
		f 4 -109 114 -185 187
		mu 0 4 138 44 135 67
		f 4 125 128 -190 188
		mu 0 4 139 49 140 68
		f 4 129 -132 -191 189
		mu 0 4 140 50 141 68
		f 4 -131 -120 -192 190
		mu 0 4 141 51 142 68
		f 4 -119 124 -189 191
		mu 0 4 142 48 139 68
		f 4 33 78 -194 192
		mu 0 4 143 18 144 69
		f 4 79 -82 -195 193
		mu 0 4 144 31 126 69
		f 4 -81 -78 -196 194
		mu 0 4 126 30 145 69
		f 4 -77 32 -193 195
		mu 0 4 145 0 143 69
		f 4 1 82 -198 196
		mu 0 4 146 1 147 70
		f 4 83 -86 -199 197
		mu 0 4 147 33 123 70
		f 4 -85 -78 -200 198
		mu 0 4 123 32 148 70
		f 4 -77 0 -197 199
		mu 0 4 148 0 146 70
		f 4 37 86 -202 200
		mu 0 4 149 20 150 71
		f 4 87 -90 -203 201
		mu 0 4 150 34 151 71
		f 4 -89 -84 -204 202
		mu 0 4 151 33 152 71
		f 4 -83 36 -201 203
		mu 0 4 152 1 149 71
		f 4 -39 78 -206 204
		mu 0 4 91 18 153 72
		f 4 79 90 -207 205
		mu 0 4 153 35 125 72
		f 4 91 -88 -208 206
		mu 0 4 125 34 154 72
		f 4 -87 -40 -205 207
		mu 0 4 154 20 91 72
		f 4 -33 76 -210 208
		mu 0 4 143 0 155 73
		f 4 77 80 -211 209
		mu 0 4 155 32 126 73
		f 4 81 -80 -212 210
		mu 0 4 126 35 156 73
		f 4 -79 -34 -209 211
		mu 0 4 156 18 143 73
		f 4 3 92 -214 212
		mu 0 4 157 2 158 74
		f 4 93 -96 -215 213
		mu 0 4 158 37 127 74
		f 4 -95 -84 -216 214
		mu 0 4 127 36 159 74
		f 4 -83 2 -213 215
		mu 0 4 159 1 157 74
		f 4 45 96 -218 216
		mu 0 4 160 22 161 75
		f 4 97 -100 -219 217
		mu 0 4 161 38 162 75
		f 4 -99 -94 -220 218
		mu 0 4 162 37 163 75
		f 4 -93 44 -217 219
		mu 0 4 163 2 160 75
		f 4 -47 86 -222 220
		mu 0 4 95 20 164 76
		f 4 87 100 -223 221
		mu 0 4 164 39 129 76
		f 4 101 -98 -224 222
		mu 0 4 129 38 165 76
		f 4 -97 -48 -221 223
		mu 0 4 165 22 95 76
		f 4 -37 82 -226 224
		mu 0 4 149 1 166 77
		f 4 83 88 -227 225
		mu 0 4 166 36 167 77
		f 4 89 -88 -228 226
		mu 0 4 167 39 168 77
		f 4 -87 -38 -225 227
		mu 0 4 168 20 149 77
		f 4 5 102 -230 228
		mu 0 4 169 3 170 78
		f 4 103 -106 -231 229
		mu 0 4 170 41 131 78
		f 4 -105 -94 -232 230
		mu 0 4 131 40 171 78
		f 4 -93 4 -229 231
		mu 0 4 171 2 169 78
		f 4 53 106 -234 232
		mu 0 4 172 24 173 79
		f 4 107 -110 -235 233
		mu 0 4 173 42 174 79
		f 4 -109 -104 -236 234
		mu 0 4 174 41 175 79
		f 4 -103 52 -233 235
		mu 0 4 175 3 172 79
		f 4 -55 96 -238 236
		mu 0 4 98 22 176 80
		f 4 97 110 -239 237
		mu 0 4 176 43 133 80
		f 4 111 -108 -240 238
		mu 0 4 133 42 177 80
		f 4 -107 -56 -237 239
		mu 0 4 177 24 98 80
		f 4 -45 92 -242 240
		mu 0 4 160 2 178 81
		f 4 93 98 -243 241
		mu 0 4 178 40 179 81
		f 4 99 -98 -244 242
		mu 0 4 179 43 180 81
		f 4 -97 -46 -241 243
		mu 0 4 180 22 160 81
		f 4 7 112 -246 244
		mu 0 4 181 4 182 82
		f 4 113 -116 -247 245
		mu 0 4 182 45 135 82
		f 4 -115 -104 -248 246
		mu 0 4 135 44 183 82
		f 4 -103 6 -245 247
		mu 0 4 183 3 181 82
		f 4 61 116 -250 248
		mu 0 4 184 26 185 83
		f 4 117 -120 -251 249
		mu 0 4 185 46 186 83
		f 4 -119 -114 -252 250
		mu 0 4 186 45 187 83
		f 4 -113 60 -249 251
		mu 0 4 187 4 184 83
		f 4 -63 106 -254 252
		mu 0 4 101 24 188 84
		f 4 107 120 -255 253
		mu 0 4 188 47 137 84
		f 4 121 -118 -256 254
		mu 0 4 137 46 189 84
		f 4 -117 -64 -253 255
		mu 0 4 189 26 101 84
		f 4 -53 102 -258 256
		mu 0 4 172 3 190 85
		f 4 103 108 -259 257
		mu 0 4 190 44 191 85
		f 4 109 -108 -260 258
		mu 0 4 191 47 192 85
		f 4 -107 -54 -257 259
		mu 0 4 192 24 172 85
		f 4 9 122 -262 260
		mu 0 4 193 5 194 86
		f 4 123 -126 -263 261
		mu 0 4 194 49 139 86
		f 4 -125 -114 -264 262
		mu 0 4 139 48 195 86
		f 4 -113 8 -261 263
		mu 0 4 195 4 193 86
		f 4 69 126 -266 264
		mu 0 4 196 28 197 87
		f 4 127 -130 -267 265
		mu 0 4 197 50 198 87
		f 4 -129 -124 -268 266
		mu 0 4 198 49 199 87
		f 4 -123 68 -265 267
		mu 0 4 199 5 196 87
		f 4 -71 116 -270 268
		mu 0 4 104 26 200 88
		f 4 117 130 -271 269
		mu 0 4 200 51 141 88
		f 4 131 -128 -272 270
		mu 0 4 141 50 197 88
		f 4 -127 -72 -269 271
		mu 0 4 197 28 104 88
		f 4 -61 112 -274 272
		mu 0 4 184 4 201 89
		f 4 113 118 -275 273
		mu 0 4 201 48 202 89
		f 4 119 -118 -276 274
		mu 0 4 202 51 203 89
		f 4 -117 -62 -273 275
		mu 0 4 203 26 184 89
		f 4 -69 122 -278 276
		mu 0 4 196 5 204 90
		f 4 123 128 -279 277
		mu 0 4 204 52 205 90
		f 4 129 -128 -280 278
		mu 0 4 205 53 197 90
		f 4 -127 -70 -277 279
		mu 0 4 197 28 196 90;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".tessellate" yes;
createNode parentConstraint -n "Lower_Teeth_parentConstraint1" -p "Lower_Teeth";
	addAttr -ci true -k true -sn "w0" -ln "JawJntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 -4.1719521533229615 1.2483787684201215 ;
	setAttr ".tg[0].tor" -type "double3" -23.406 0 0 ;
	setAttr ".rst" -type "double3" 0 0 -2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode transform -n "Upper_Teeth" -p "Meshes";
createNode mesh -n "Upper_TeethShape" -p "Upper_Teeth";
	addAttr -ci true -sn "textureAnim" -ln "textureAnim" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "Fadeable" -ln "Fadeable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "Fadeable3DS" -ln "Fadeable3DS" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "NoMerge" -ln "NoMerge" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "NoRecvRtShadows" -ln "NoRecvRtShadows" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noQuad" -ln "noQuad" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noLightmapCast" -ln "noLightmapCast" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noLightmapRecv" -ln "noLightmapRecv" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "vtxLightmapOnly" -ln "vtxLightmapOnly" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "clipMesh" -ln "clipMesh" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "tessellate" -ln "tessellate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "noRender" -ln "noRender" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "earlyAlpha" -ln "earlyAlpha" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "reflectWater" -ln "reflectWater" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "billboardX" -ln "billboardX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "billboardY" -ln "billboardY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "billboardZ" -ln "billboardZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "recvSilhouette" -ln "recvSilhouette" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "depthBias" -ln "depthBias" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "pvsNonOccluder" -ln "pvsNonOccluder" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 206 ".uvst[0].uvsp[0:205]" -type "float2" 0.52499986 0.3125
		 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.52499986 0.3125 0.52499986 0.68843985 0.53749985 0.3125 0.53749985 0.68843985
		 0.54999983 0.3125 0.54999983 0.68843985 0.56249982 0.3125 0.56249982 0.68843985 0.57499981
		 0.3125 0.57499981 0.68843985 0.5874998 0.3125 0.5874998 0.68843985 0.52499986 0.3125
		 0.52499986 0.68843985 0.53749985 0.3125 0.53749985 0.68843985 0.54999983 0.3125 0.54999983
		 0.68843985 0.56249982 0.3125 0.56249982 0.68843985 0.57499981 0.3125 0.57499981 0.68843985
		 0.5874998 0.3125 0.5874998 0.68843985 0.52499986 0.3125 0.52499986 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.53749985 0.3125 0.52499986 0.3125 0.53749985 0.3125 0.54999983
		 0.3125 0.54999983 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.56249982
		 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.57499981 0.3125 0.56249982
		 0.3125 0.57499981 0.3125 0.5874998 0.3125 0.5874998 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.5874998 0.3125 0.53124988 0.50046992 0.54374981 0.50046992 0.55624986 0.50046992
		 0.56874979 0.50046992 0.58124983 0.50046992 0.53124988 0.50046992 0.54374981 0.50046992
		 0.5562498 0.50046992 0.56874979 0.50046992 0.58124983 0.50046992 0.53124988 0.3125
		 0.54374981 0.3125 0.55624986 0.3125 0.56874979 0.3125 0.58124983 0.3125 0.52499986
		 0.3125 0.53124988 0.3125 0.53749985 0.3125 0.53124988 0.3125 0.52499986 0.3125 0.54374981
		 0.3125 0.54999983 0.3125 0.54374981 0.3125 0.53749985 0.3125 0.55624986 0.3125 0.56249982
		 0.3125 0.55624986 0.3125 0.54999983 0.3125 0.56874979 0.3125 0.57499981 0.3125 0.56874979
		 0.3125 0.56249982 0.3125 0.58124983 0.3125 0.5874998 0.3125 0.58124983 0.3125 0.57499981
		 0.3125 0.5874998 0.3125 0.53124988 0.35949248 0.53749985 0.50046992 0.53124988 0.68843985
		 0.52499986 0.50046992 0.54374981 0.35949248 0.54999983 0.50046992 0.54374981 0.68843985
		 0.55624986 0.35949248 0.56249982 0.50046992 0.55624986 0.68843985 0.56874979 0.35949248
		 0.57499981 0.50046992 0.56874979 0.68843985 0.58124983 0.35949248 0.5874998 0.50046992
		 0.58124983 0.68843985 0.52499986 0.50046992 0.53124988 0.68843985 0.53749985 0.50046992
		 0.53124988 0.3125 0.54374981 0.68843985 0.54999983 0.50046992 0.54374981 0.3125 0.55624986
		 0.68843985 0.56249982 0.50046992 0.55624986 0.3125 0.56874979 0.68843985 0.57499981
		 0.50046992 0.56874979 0.3125 0.58124983 0.68843985 0.5874998 0.50046992 0.58124983
		 0.3125 0.53124988 0.3125 0.53749985 0.3125 0.53124988 0.3125 0.52499986 0.3125 0.54374981
		 0.3125 0.54999983 0.3125 0.54374981 0.3125 0.53749985 0.3125 0.55624986 0.3125 0.56249982
		 0.3125 0.55624986 0.3125 0.54999983 0.3125 0.56874979 0.3125 0.57499981 0.3125 0.56874979
		 0.3125 0.56249982 0.3125 0.58124983 0.3125 0.5874998 0.3125 0.58124983 0.3125 0.57499981
		 0.3125 0.52499986 0.3125 0.52499986 0.3125 0.52499986 0.3125 0.53124988 0.3125 0.53749985
		 0.3125 0.52499986 0.3125 0.53749985 0.3125 0.53749985 0.3125 0.53749985 0.3125 0.53749985
		 0.3125 0.52499986 0.3125 0.53749985 0.3125 0.52499986 0.3125 0.52499986 0.3125 0.54374981
		 0.3125 0.54999983 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.54999983 0.3125 0.54999983
		 0.3125 0.54999983 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.53749985 0.3125 0.53749985
		 0.3125 0.53749985 0.3125 0.55624986 0.3125 0.56249982 0.3125 0.54999983 0.3125 0.56249982
		 0.3125 0.56249982 0.3125 0.56249982 0.3125 0.56249982 0.3125 0.54999983 0.3125 0.56249982
		 0.3125 0.54999983 0.3125 0.54999983 0.3125 0.54999983 0.3125 0.56874979 0.3125 0.57499981
		 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.57499981 0.3125 0.57499981 0.3125 0.57499981
		 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.56249982 0.3125 0.56249982 0.3125 0.56249982
		 0.3125 0.58124983 0.3125 0.5874998 0.3125 0.57499981 0.3125 0.5874998 0.3125 0.5874998
		 0.3125 0.5874998 0.3125 0.5874998 0.3125 0.57499981 0.3125 0.57499981 0.3125 0.57499981
		 0.3125 0.57499981 0.3125 0.5874998 0.3125 0.5874998 0.3125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 139 ".pt[0:138]" -type "float3"  0.11925551 -0.0466609 -0.10454916 
		0.063350692 -0.0466609 -0.10454916 0 -0.0466609 -0.10454916 -0.06335067 -0.0466609 
		-0.10454916 -0.12050012 -0.0466609 -0.10454916 -0.16414106 -0.0466609 -0.10454916 
		0.11925551 -0.0466609 -0.10454916 0.062696338 -0.0466609 -0.10454916 0 -0.0466609 
		-0.10454916 -0.062696323 -0.0466609 -0.10454916 -0.11925546 -0.0466609 -0.10454916 
		-0.16414106 -0.0466609 -0.10454916 0.14929286 -0.0466609 -0.10454916 0.14929286 -0.0466609 
		-0.10454916 0.076896854 -0.0466609 -0.10454916 0.078487918 -0.0466609 -0.10454916 
		-1.8994012e-008 -0.0466609 -0.10454916 -2.384186e-008 -0.0466609 -0.10454916 -0.076896854 
		-0.0466609 -0.10454916 -0.078487918 -0.0466609 -0.10454916 -0.14626648 -0.0466609 
		-0.10454916 -0.14929283 -0.0466609 -0.10454916 -0.20548394 -0.0466609 -0.10454916 
		-0.20548394 -0.0466609 -0.10454916 0.11536709 -0.0466609 -0.10454916 0.13106945 -0.0466609 
		-0.10454916 0.063995838 -0.0466609 -0.10454916 0.07594078 -0.0466609 -0.10454916 
		-4.967054e-010 -0.0466609 -0.10454916 -1.6887984e-008 -0.0466609 -0.10454916 -0.063995831 
		-0.0466609 -0.10454916 -0.07594078 -0.0466609 -0.10454916 -0.12172727 -0.0466609 
		-0.10454916 -0.14444789 -0.0466609 -0.10454916 -0.16464132 -0.0466609 -0.10454916 
		-0.18743566 -0.0466609 -0.10454916 0.090975925 -0.0466609 -0.10454916 0.031348169 
		-0.0466609 -0.10454916 -0.031348161 -0.0466609 -0.10454916 -0.090975896 -0.0466609 
		-0.10454916 -0.14169827 -0.0466609 -0.10454916 0.090975925 -0.0466609 -0.10454916 
		0.031348169 -0.0466609 -0.10454916 -0.031348161 -0.0466609 -0.10454916 -0.090975896 
		-0.0466609 -0.10454916 -0.14169827 -0.0466609 -0.10454916 0.11925551 -0.0466609 -0.10454916 
		0.061929185 -0.0466609 -0.10454916 2.9802325e-009 -0.0466609 -0.10454916 -0.061929174 
		-0.0466609 -0.10454916 -0.11779629 -0.0466609 -0.10454916 -0.16414106 -0.0466609 
		-0.10454916 0.13427418 -0.0466609 -0.10454916 0.14929286 -0.0466609 -0.10454916 0.07059212 
		-0.0466609 -0.10454916 0.11389039 -0.0466609 -0.10454916 0.077527538 -0.0466609 -0.10454916 
		0.11389039 -0.0466609 -0.10454916 -1.192093e-008 -0.0466609 -0.10454916 0.039243944 
		-0.0466609 -0.10454916 -1.7881394e-008 -0.0466609 -0.10454916 0.039243944 -0.0466609 
		-0.10454916 -0.07059212 -0.0466609 -0.10454916 -0.039243974 -0.0466609 -0.10454916 
		-0.077527538 -0.0466609 -0.10454916 -0.039243974 -0.0466609 -0.10454916 -0.13427415 
		-0.0466609 -0.10454916 -0.11389037 -0.0466609 -0.10454916 -0.14746608 -0.0466609 
		-0.10454916 -0.11389037 -0.0466609 -0.10454916 -0.18481252 -0.0466609 -0.10454916 
		-0.1773884 -0.0466609 -0.10454916 -0.20548394 -0.0466609 -0.10454916 -0.1773884 -0.0466609 
		-0.10454916 0.11960705 -0.0466609 -0.10454916 0.13620493 -0.0466609 -0.10454916 0.12790598 
		-0.0466609 -0.10454916 0.064816833 -0.0466609 -0.10454916 0.093840227 -0.0466609 
		-0.10454916 0.075215749 -0.0466609 -0.10454916 0.07001628 -0.0466609 -0.10454916 
		0.11102609 -0.0466609 -0.10454916 -1.9868216e-009 -0.0466609 -0.10454916 0.032335136 
		-0.0466609 -0.10454916 -1.5894573e-008 -0.0466609 -0.10454916 -8.9406971e-009 -0.0466609 
		-0.10454916 0.038256977 -0.0466609 -0.10454916 -0.064816818 -0.0466609 -0.10454916 
		-0.032335132 -0.0466609 -0.10454916 -0.075215749 -0.0466609 -0.10454916 -0.07001628 
		-0.0466609 -0.10454916 -0.038256995 -0.0466609 -0.10454916 -0.12328891 -0.0466609 
		-0.10454916 -0.093840197 -0.0466609 -0.10454916 -0.14306879 -0.0466609 -0.10454916 
		-0.13317886 -0.0466609 -0.10454916 -0.11102606 -0.0466609 -0.10454916 -0.16792107 
		-0.0466609 -0.10454916 -0.14615953 -0.0466609 -0.10454916 -0.19159625 -0.0466609 
		-0.10454916 -0.17975867 -0.0466609 -0.10454916 -0.17292711 -0.0466609 -0.10454916 
		0.11389039 -0.0466609 -0.10454916 0.039243944 -0.0466609 -0.10454916 -0.039243974 
		-0.0466609 -0.10454916 -0.11389037 -0.0466609 -0.10454916 -0.1773884 -0.0466609 -0.10454916 
		0.090975925 -0.0466609 -0.10454916 0.031348169 -0.0466609 -0.10454916 -0.031348161 
		-0.0466609 -0.10454916 -0.090975896 -0.0466609 -0.10454916 -0.14169827 -0.0466609 
		-0.10454916 0.10243316 -0.0466609 -0.10454916 0.03529606 -0.0466609 -0.10454916 -0.03529606 
		-0.0466609 -0.10454916 -0.10243313 -0.0466609 -0.10454916 -0.15954331 -0.0466609 
		-0.10454916 0.13427418 -0.0466609 -0.10454916 0.090975925 -0.0466609 -0.10454916 
		0.07059212 -0.0466609 -0.10454916 0.11389039 -0.0466609 -0.10454916 0.13427418 -0.0466609 
		-0.10454916 0.031348169 -0.0466609 -0.10454916 -1.192093e-008 -0.0466609 -0.10454916 
		0.039243944 -0.0466609 -0.10454916 0.07059212 -0.0466609 -0.10454916 -0.031348161 
		-0.0466609 -0.10454916 -0.07059212 -0.0466609 -0.10454916 -0.039243974 -0.0466609 
		-0.10454916 -1.192093e-008 -0.0466609 -0.10454916 -0.090975896 -0.0466609 -0.10454916 
		-0.13427415 -0.0466609 -0.10454916 -0.11389037 -0.0466609 -0.10454916 -0.07059212 
		-0.0466609 -0.10454916 -0.14169827 -0.0466609 -0.10454916 -0.18481252 -0.0466609 
		-0.10454916 -0.1773884 -0.0466609 -0.10454916 -0.13427415 -0.0466609 -0.10454916 
		-0.18481252 -0.0466609 -0.10454916;
	setAttr -s 139 ".vt[0:138]"  -1.19255495 3.88278913 3.55375576 -0.63350689 3.87729692 3.86207843
		 0 3.87729692 3.9624157 0.63350672 3.87729692 3.86207819 1.20500124 3.87729692 3.57088685
		 1.64141059 3.88278913 3.10489941 -1.19255495 4.04761076 3.55375576 -0.62696338 4.04761076 3.84193945
		 0 4.04761076 3.94124007 0.62696314 4.04761076 3.84193897 1.19255471 4.04761076 3.55375576
		 1.64141059 4.04761076 3.10489941 -1.49292874 3.88278913 3.96718478 -1.49292874 4.04761076 3.96718478
		 -0.76896864 3.87729692 4.27898693 -0.78487921 4.04761076 4.32795429 1.8994012e-007 3.87729692 4.40077925
		 2.3841858e-007 4.04761076 4.45226669 0.76896864 3.87729692 4.27898645 0.78487921 4.04761076 4.32795429
		 1.46266472 3.87729692 3.92552996 1.49292827 4.04761076 3.96718431 2.054839373 3.88278913 3.40527344
		 2.054839373 4.04761076 3.40527344 -1.15367103 3.74412942 3.68961716 -1.31069446 3.74412942 3.9439888
		 -0.63995838 3.72899175 3.88193417 -0.7594077 3.72899175 4.24956131 4.9670539e-009 3.72899175 3.98329306
		 1.6887984e-007 3.72899175 4.36983967 0.6399582 3.72899175 3.88193369 0.7594077 3.72899175 4.24956083
		 1.21727264 3.72899175 3.58777714 1.44447875 3.72899175 3.90049958 1.64641321 3.74412942 3.24612737
		 1.87435651 3.74412942 3.43952608 -0.90975916 3.8815937 3.69784784 -0.31348169 3.8815937 3.89158964
		 0.31348157 3.8815937 3.8915894 0.90975893 3.8815937 3.69784737 1.41698265 3.8815937 3.32932758
		 -0.90975916 4.04761076 3.6978476 -0.31348169 4.04761076 3.89158964 0.31348157 4.04761076 3.89158964
		 0.90975893 4.04761076 3.69784737 1.41698265 4.04761076 3.32932758 -1.19255495 3.96519995 3.55375576
		 -0.6192919 3.96519995 3.81832933 -2.9802322e-008 3.96519995 3.91641498 0.61929172 3.96519995 3.81832862
		 1.17796278 3.96519995 3.53367162 1.64141059 3.96519995 3.10489941 -1.34274185 3.83919311 3.76047039
		 -1.49292874 3.96519995 3.96718478 -0.70592129 3.83919311 4.084946632 -1.13890398 3.8815937 4.14756966
		 -0.77527547 3.96519995 4.29839706 -1.13890398 4.04761076 4.14756966 1.1920929e-007 3.83919311 4.1967535
		 -0.39243948 3.8815937 4.39011049 1.7881393e-007 3.96519995 4.42118835 -0.39243948 4.04761076 4.39011049
		 0.70592117 3.83919311 4.084946632 0.39243972 3.8815937 4.39011049 0.77527547 3.96519995 4.29839706
		 0.39243972 4.04761076 4.39011049 1.34274149 3.83919311 3.76046991 1.13890374 3.8815937 4.14756918
		 1.47466099 3.96519995 3.94204164 1.13890374 4.04761076 4.14756918 1.84812498 3.83919311 3.25508642
		 1.77388382 3.8815937 3.68622875 2.054839373 3.96519995 3.40527344 1.77388382 4.04761076 3.68622875
		 -1.19607055 3.79559684 3.66526008 -1.3620491 3.79559684 3.92057586 -1.27905977 3.7432816 3.79291797
		 -0.64816833 3.79559684 3.90720177 -0.9384023 3.73020267 3.75406289 -0.75215739 3.79559684 4.22724724
		 -0.70016289 3.73746872 4.067224026 -1.11026084 3.73020267 4.09135437 1.9868216e-008 3.79559684 4.0098609924
		 -0.32335141 3.73020267 3.95390463 1.5894572e-007 3.79559684 4.34637737 8.9406967e-008 3.73746872 4.17811918
		 -0.38256976 3.73020267 4.32779551 0.64816821 3.79559684 3.90720153 0.32335132 3.73020267 3.95390463
		 0.75215739 3.79559684 4.22724676 0.70016277 3.73746872 4.067224503 0.38256997 3.73020267 4.32779551
		 1.23288906 3.79559684 3.60927081 0.93840206 3.73020267 3.75406265 1.4306879 3.79559684 3.88151789
		 1.33178854 3.73746872 3.74539447 1.11026073 3.73020267 4.091353893 1.67921066 3.79559684 3.20985985
		 1.4615953 3.73020267 3.37394023 1.91596258 3.79559684 3.40138984 1.79758668 3.7432816 3.30562472
		 1.72927117 3.73020267 3.64161611 -1.13890398 3.96519995 4.14756966 -0.39243948 3.96519995 4.39011049
		 0.39243972 3.96519995 4.39011049 1.13890374 3.96519995 4.14756918 1.77388382 3.96519995 3.68622875
		 -0.90975916 3.96519995 3.69784784 -0.31348169 3.96519995 3.89158988 0.31348157 3.96519995 3.8915894
		 0.90975893 3.96519995 3.69784737 1.41698265 3.96519995 3.32932758 -1.02433157 3.70840454 3.92270875
		 -0.35296059 3.70840454 4.14085007 0.35296065 3.70840454 4.14085007 1.024331331 3.70840454 3.92270827
		 1.59543324 3.70840454 3.50777817 -1.34274185 3.79559684 3.76047039 -0.90975916 3.79559684 3.6978476
		 -0.70592129 3.79559684 4.084946632 -1.13890398 3.79559684 4.14756966 -1.34274185 3.79559684 3.76047039
		 -0.31348169 3.79559684 3.89158964 1.1920929e-007 3.79559684 4.1967535 -0.39243948 3.79559684 4.39011049
		 -0.70592129 3.79559684 4.084946632 0.31348157 3.79559684 3.89158964 0.70592117 3.79559684 4.084946632
		 0.39243972 3.79559684 4.39011049 1.1920929e-007 3.79559684 4.1967535 0.90975893 3.79559684 3.69784737
		 1.34274149 3.79559684 3.76046991 1.13890374 3.79559684 4.14756918 0.70592117 3.79559684 4.084946632
		 1.41698265 3.79559684 3.32932758 1.84812498 3.79559684 3.25508642 1.77388382 3.79559684 3.68622875
		 1.34274149 3.79559684 3.76046991 1.84812498 3.79559684 3.25508642;
	setAttr -s 280 ".ed";
	setAttr ".ed[0:165]"  0 36 1 36 1 1 1 37 1 37 2 1 2 38 1 38 3 1 3 39 1 39 4 1
		 4 40 1 40 5 1 6 41 0 41 7 0 7 42 0 42 8 0 8 43 0 43 9 0 9 44 0 44 10 0 10 45 0 45 11 0
		 0 46 1 46 6 0 1 47 1 47 7 1 2 48 1 48 8 1 3 49 1 49 9 1 4 50 1 50 10 1 5 51 0 51 11 0
		 0 52 1 52 12 1 12 53 0 53 13 0 1 54 1 54 14 1 12 55 1 55 14 1 14 56 1 56 15 1 13 57 0
		 57 15 0 2 58 1 58 16 1 14 59 1 59 16 1 16 60 1 60 17 1 15 61 0 61 17 0 3 62 1 62 18 1
		 16 63 1 63 18 1 18 64 1 64 19 1 17 65 0 65 19 0 4 66 1 66 20 1 18 67 1 67 20 1 20 68 1
		 68 21 1 19 69 0 69 21 0 5 70 1 70 22 1 20 71 1 71 22 1 22 72 1 72 23 0 21 73 0 73 23 0
		 0 74 0 74 24 0 12 75 0 75 25 0 24 76 0 76 25 0 1 77 0 77 26 0 24 78 1 78 26 1 14 79 0
		 79 27 0 26 80 0 80 27 0 25 81 1 81 27 1 2 82 0 82 28 0 26 83 1 83 28 1 16 84 0 84 29 0
		 28 85 0 85 29 0 27 86 1 86 29 1 3 87 0 87 30 0 28 88 1 88 30 1 18 89 0 89 31 0 30 90 0
		 90 31 0 29 91 1 91 31 1 4 92 0 92 32 0 30 93 1 93 32 1 20 94 0 94 33 0 32 95 0 95 33 0
		 31 96 1 96 33 1 5 97 0 97 34 0 32 98 1 98 34 1 22 99 0 99 35 0 34 100 0 100 35 0
		 33 101 1 101 35 1 102 55 1 102 56 1 102 57 1 102 53 1 103 59 1 103 60 1 103 61 1
		 103 56 1 104 63 1 104 64 1 104 65 1 104 60 1 105 67 1 105 68 1 105 69 1 105 64 1
		 106 71 1 106 72 1 106 73 1 106 68 1 107 46 1 107 41 1 107 47 1 107 36 1 108 47 1
		 108 42 1 108 48 1 108 37 1 109 48 1 109 43 1 109 49 1 109 38 1 110 49 1 110 44 1;
	setAttr ".ed[166:279]" 110 50 1 110 39 1 111 50 1 111 45 1 111 51 1 111 40 1
		 112 78 1 112 80 1 112 81 1 112 76 1 113 83 1 113 85 1 113 86 1 113 80 1 114 88 1
		 114 90 1 114 91 1 114 85 1 115 93 1 115 95 1 115 96 1 115 90 1 116 98 1 116 100 1
		 116 101 1 116 95 1 117 52 1 117 75 1 117 76 1 117 74 1 118 36 1 118 77 1 118 78 1
		 118 74 1 119 54 1 119 79 1 119 80 1 119 77 1 120 55 1 120 75 1 120 81 1 120 79 1
		 121 52 1 121 74 1 121 76 1 121 75 1 122 37 1 122 82 1 122 83 1 122 77 1 123 58 1
		 123 84 1 123 85 1 123 82 1 124 59 1 124 79 1 124 86 1 124 84 1 125 54 1 125 77 1
		 125 80 1 125 79 1 126 38 1 126 87 1 126 88 1 126 82 1 127 62 1 127 89 1 127 90 1
		 127 87 1 128 63 1 128 84 1 128 91 1 128 89 1 129 58 1 129 82 1 129 85 1 129 84 1
		 130 39 1 130 92 1 130 93 1 130 87 1 131 66 1 131 94 1 131 95 1 131 92 1 132 67 1
		 132 89 1 132 96 1 132 94 1 133 62 1 133 87 1 133 90 1 133 89 1 134 40 1 134 97 1
		 134 98 1 134 92 1 135 70 1 135 99 1 135 100 1 135 97 1 136 71 1 136 94 1 136 101 1
		 136 99 1 137 66 1 137 92 1 137 95 1 137 94 1 138 70 1 138 97 1 138 100 1 138 99 1;
	setAttr -s 148 -ch 592 ".fc[0:147]" -type "polyFaces" 
		f 4 39 40 -134 132
		mu 0 4 91 20 92 54
		f 4 41 -44 -135 133
		mu 0 4 92 21 93 54
		f 4 -43 -36 -136 134
		mu 0 4 93 19 94 54
		f 4 -35 38 -133 135
		mu 0 4 94 18 91 54
		f 4 47 48 -138 136
		mu 0 4 95 22 96 55
		f 4 49 -52 -139 137
		mu 0 4 96 23 97 55
		f 4 -51 -42 -140 138
		mu 0 4 97 21 92 55
		f 4 -41 46 -137 139
		mu 0 4 92 20 95 55
		f 4 55 56 -142 140
		mu 0 4 98 24 99 56
		f 4 57 -60 -143 141
		mu 0 4 99 25 100 56
		f 4 -59 -50 -144 142
		mu 0 4 100 23 96 56
		f 4 -49 54 -141 143
		mu 0 4 96 22 98 56
		f 4 63 64 -146 144
		mu 0 4 101 26 102 57
		f 4 65 -68 -147 145
		mu 0 4 102 27 103 57
		f 4 -67 -58 -148 146
		mu 0 4 103 25 99 57
		f 4 -57 62 -145 147
		mu 0 4 99 24 101 57
		f 4 71 72 -150 148
		mu 0 4 104 28 105 58
		f 4 73 -76 -151 149
		mu 0 4 105 29 106 58
		f 4 -75 -66 -152 150
		mu 0 4 106 27 102 58
		f 4 -65 70 -149 151
		mu 0 4 102 26 104 58
		f 4 21 10 -154 152
		mu 0 4 107 7 108 59
		f 4 11 -24 -155 153
		mu 0 4 108 9 109 59
		f 4 -23 -2 -156 154
		mu 0 4 109 8 110 59
		f 4 -1 20 -153 155
		mu 0 4 110 6 107 59
		f 4 23 12 -158 156
		mu 0 4 109 9 111 60
		f 4 13 -26 -159 157
		mu 0 4 111 11 112 60
		f 4 -25 -4 -160 158
		mu 0 4 112 10 113 60
		f 4 -3 22 -157 159
		mu 0 4 113 8 109 60
		f 4 25 14 -162 160
		mu 0 4 112 11 114 61
		f 4 15 -28 -163 161
		mu 0 4 114 13 115 61
		f 4 -27 -6 -164 162
		mu 0 4 115 12 116 61
		f 4 -5 24 -161 163
		mu 0 4 116 10 112 61
		f 4 27 16 -166 164
		mu 0 4 115 13 117 62
		f 4 17 -30 -167 165
		mu 0 4 117 15 118 62
		f 4 -29 -8 -168 166
		mu 0 4 118 14 119 62
		f 4 -7 26 -165 167
		mu 0 4 119 12 115 62
		f 4 29 18 -170 168
		mu 0 4 118 15 120 63
		f 4 19 -32 -171 169
		mu 0 4 120 17 121 63
		f 4 -31 -10 -172 170
		mu 0 4 121 16 122 63
		f 4 -9 28 -169 171
		mu 0 4 122 14 118 63
		f 4 85 88 -174 172
		mu 0 4 123 33 124 64
		f 4 89 -92 -175 173
		mu 0 4 124 34 125 64
		f 4 -91 -82 -176 174
		mu 0 4 125 35 126 64
		f 4 -81 84 -173 175
		mu 0 4 126 32 123 64
		f 4 95 98 -178 176
		mu 0 4 127 37 128 65
		f 4 99 -102 -179 177
		mu 0 4 128 38 129 65
		f 4 -101 -90 -180 178
		mu 0 4 129 39 130 65
		f 4 -89 94 -177 179
		mu 0 4 130 36 127 65
		f 4 105 108 -182 180
		mu 0 4 131 41 132 66
		f 4 109 -112 -183 181
		mu 0 4 132 42 133 66
		f 4 -111 -100 -184 182
		mu 0 4 133 43 134 66
		f 4 -99 104 -181 183
		mu 0 4 134 40 131 66
		f 4 115 118 -186 184
		mu 0 4 135 45 136 67
		f 4 119 -122 -187 185
		mu 0 4 136 46 137 67
		f 4 -121 -110 -188 186
		mu 0 4 137 47 138 67
		f 4 -109 114 -185 187
		mu 0 4 138 44 135 67
		f 4 125 128 -190 188
		mu 0 4 139 49 140 68
		f 4 129 -132 -191 189
		mu 0 4 140 50 141 68
		f 4 -131 -120 -192 190
		mu 0 4 141 51 142 68
		f 4 -119 124 -189 191
		mu 0 4 142 48 139 68
		f 4 33 78 -194 192
		mu 0 4 143 18 144 69
		f 4 79 -82 -195 193
		mu 0 4 144 31 126 69
		f 4 -81 -78 -196 194
		mu 0 4 126 30 145 69
		f 4 -77 32 -193 195
		mu 0 4 145 0 143 69
		f 4 1 82 -198 196
		mu 0 4 146 1 147 70
		f 4 83 -86 -199 197
		mu 0 4 147 33 123 70
		f 4 -85 -78 -200 198
		mu 0 4 123 32 148 70
		f 4 -77 0 -197 199
		mu 0 4 148 0 146 70
		f 4 37 86 -202 200
		mu 0 4 149 20 150 71
		f 4 87 -90 -203 201
		mu 0 4 150 34 151 71
		f 4 -89 -84 -204 202
		mu 0 4 151 33 152 71
		f 4 -83 36 -201 203
		mu 0 4 152 1 149 71
		f 4 -39 78 -206 204
		mu 0 4 91 18 153 72
		f 4 79 90 -207 205
		mu 0 4 153 35 125 72
		f 4 91 -88 -208 206
		mu 0 4 125 34 154 72
		f 4 -87 -40 -205 207
		mu 0 4 154 20 91 72
		f 4 -33 76 -210 208
		mu 0 4 143 0 155 73
		f 4 77 80 -211 209
		mu 0 4 155 32 126 73
		f 4 81 -80 -212 210
		mu 0 4 126 35 156 73
		f 4 -79 -34 -209 211
		mu 0 4 156 18 143 73
		f 4 3 92 -214 212
		mu 0 4 157 2 158 74
		f 4 93 -96 -215 213
		mu 0 4 158 37 127 74
		f 4 -95 -84 -216 214
		mu 0 4 127 36 159 74
		f 4 -83 2 -213 215
		mu 0 4 159 1 157 74
		f 4 45 96 -218 216
		mu 0 4 160 22 161 75
		f 4 97 -100 -219 217
		mu 0 4 161 38 162 75
		f 4 -99 -94 -220 218
		mu 0 4 162 37 163 75
		f 4 -93 44 -217 219
		mu 0 4 163 2 160 75
		f 4 -47 86 -222 220
		mu 0 4 95 20 164 76
		f 4 87 100 -223 221
		mu 0 4 164 39 129 76
		f 4 101 -98 -224 222
		mu 0 4 129 38 165 76
		f 4 -97 -48 -221 223
		mu 0 4 165 22 95 76
		f 4 -37 82 -226 224
		mu 0 4 149 1 166 77
		f 4 83 88 -227 225
		mu 0 4 166 36 167 77
		f 4 89 -88 -228 226
		mu 0 4 167 39 168 77
		f 4 -87 -38 -225 227
		mu 0 4 168 20 149 77
		f 4 5 102 -230 228
		mu 0 4 169 3 170 78
		f 4 103 -106 -231 229
		mu 0 4 170 41 131 78
		f 4 -105 -94 -232 230
		mu 0 4 131 40 171 78
		f 4 -93 4 -229 231
		mu 0 4 171 2 169 78
		f 4 53 106 -234 232
		mu 0 4 172 24 173 79
		f 4 107 -110 -235 233
		mu 0 4 173 42 174 79
		f 4 -109 -104 -236 234
		mu 0 4 174 41 175 79
		f 4 -103 52 -233 235
		mu 0 4 175 3 172 79
		f 4 -55 96 -238 236
		mu 0 4 98 22 176 80
		f 4 97 110 -239 237
		mu 0 4 176 43 133 80
		f 4 111 -108 -240 238
		mu 0 4 133 42 177 80
		f 4 -107 -56 -237 239
		mu 0 4 177 24 98 80
		f 4 -45 92 -242 240
		mu 0 4 160 2 178 81
		f 4 93 98 -243 241
		mu 0 4 178 40 179 81
		f 4 99 -98 -244 242
		mu 0 4 179 43 180 81
		f 4 -97 -46 -241 243
		mu 0 4 180 22 160 81
		f 4 7 112 -246 244
		mu 0 4 181 4 182 82
		f 4 113 -116 -247 245
		mu 0 4 182 45 135 82
		f 4 -115 -104 -248 246
		mu 0 4 135 44 183 82
		f 4 -103 6 -245 247
		mu 0 4 183 3 181 82
		f 4 61 116 -250 248
		mu 0 4 184 26 185 83
		f 4 117 -120 -251 249
		mu 0 4 185 46 186 83
		f 4 -119 -114 -252 250
		mu 0 4 186 45 187 83
		f 4 -113 60 -249 251
		mu 0 4 187 4 184 83
		f 4 -63 106 -254 252
		mu 0 4 101 24 188 84
		f 4 107 120 -255 253
		mu 0 4 188 47 137 84
		f 4 121 -118 -256 254
		mu 0 4 137 46 189 84
		f 4 -117 -64 -253 255
		mu 0 4 189 26 101 84
		f 4 -53 102 -258 256
		mu 0 4 172 3 190 85
		f 4 103 108 -259 257
		mu 0 4 190 44 191 85
		f 4 109 -108 -260 258
		mu 0 4 191 47 192 85
		f 4 -107 -54 -257 259
		mu 0 4 192 24 172 85
		f 4 9 122 -262 260
		mu 0 4 193 5 194 86
		f 4 123 -126 -263 261
		mu 0 4 194 49 139 86
		f 4 -125 -114 -264 262
		mu 0 4 139 48 195 86
		f 4 -113 8 -261 263
		mu 0 4 195 4 193 86
		f 4 69 126 -266 264
		mu 0 4 196 28 197 87
		f 4 127 -130 -267 265
		mu 0 4 197 50 198 87
		f 4 -129 -124 -268 266
		mu 0 4 198 49 199 87
		f 4 -123 68 -265 267
		mu 0 4 199 5 196 87
		f 4 -71 116 -270 268
		mu 0 4 104 26 200 88
		f 4 117 130 -271 269
		mu 0 4 200 51 141 88
		f 4 131 -128 -272 270
		mu 0 4 141 50 197 88
		f 4 -127 -72 -269 271
		mu 0 4 197 28 104 88
		f 4 -61 112 -274 272
		mu 0 4 184 4 201 89
		f 4 113 118 -275 273
		mu 0 4 201 48 202 89
		f 4 119 -118 -276 274
		mu 0 4 202 51 203 89
		f 4 -117 -62 -273 275
		mu 0 4 203 26 184 89
		f 4 -69 122 -278 276
		mu 0 4 196 5 204 90
		f 4 123 128 -279 277
		mu 0 4 204 52 205 90
		f 4 129 -128 -280 278
		mu 0 4 205 53 197 90
		f 4 -127 -70 -277 279
		mu 0 4 197 28 196 90;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".tessellate" yes;
createNode parentConstraint -n "Upper_Teeth_parentConstraint1" -p "Upper_Teeth";
	addAttr -ci true -k true -sn "w0" -ln "JawShiftJntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 -4.3245658274341752 -0.51162947847714935 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 9 ".lnk";
	setAttr -s 9 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 7;
	setAttr -s 13 ".dli[1:12]"  1 2 3 4 5 6 7 8 
		9 10 11 12;
	setAttr -s 4 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode blinn -n "blinn1";
createNode groupId -n "groupId28";
	setAttr ".ihi" 0;
createNode groupId -n "groupId34";
	setAttr ".ihi" 0;
createNode blinn -n "blinn4";
	setAttr ".c" -type "float3" 1 1 1 ;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".rfl" 0.54605263471603394;
	setAttr ".ec" 0;
createNode shadingEngine -n "blinn4SG";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
createNode materialInfo -n "materialInfo8";
createNode blinn -n "blinn5";
	setAttr ".c" -type "float3" 0.17160712 0.18239467 0.2658228 ;
	setAttr ".ec" 0;
createNode shadingEngine -n "blinn5SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo9";
createNode groupParts -n "groupParts28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[380:399]";
createNode groupId -n "groupId37";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:379]";
	setAttr ".irc" -type "componentList" 1 "f[380:399]";
createNode groupId -n "groupId35";
	setAttr ".ihi" 0;
createNode polySphere -n "polySphere1";
	setAttr ".r" 2.0957772306094427;
createNode groupId -n "groupId36";
	setAttr ".ihi" 0;
createNode hyperGraphInfo -n "nodeEditorPanel2Info";
createNode hyperView -n "hyperView1";
	setAttr ".vl" -type "double2" -83.498425347943282 -45820.747439484461 ;
	setAttr ".vh" -type "double2" 1580.441893645208 -44950.173864587239 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 109 ".hyp";
	setAttr ".hyp[0].x" -260.86245727539062;
	setAttr ".hyp[0].y" -44148.17578125;
	setAttr ".hyp[0].nvs" 2800;
	setAttr ".hyp[1].x" -204.23147583007812;
	setAttr ".hyp[1].y" -45259.9765625;
	setAttr ".hyp[1].nvs" 2832;
	setAttr ".hyp[2].x" 1046.0419921875;
	setAttr ".hyp[2].y" -45351.5078125;
	setAttr ".hyp[2].nvs" 1680;
	setAttr ".hyp[3].x" 417.874267578125;
	setAttr ".hyp[3].y" -44418.05078125;
	setAttr ".hyp[3].nvs" 2416;
	setAttr ".hyp[4].x" 661.450927734375;
	setAttr ".hyp[4].y" -44160.45703125;
	setAttr ".hyp[4].nvs" 1648;
	setAttr ".hyp[5].x" 270.8912353515625;
	setAttr ".hyp[5].y" -44958.48046875;
	setAttr ".hyp[5].nvs" 2416;
	setAttr ".hyp[6].x" 1043.4932861328125;
	setAttr ".hyp[6].y" -44849.41015625;
	setAttr ".hyp[6].nvs" 1648;
	setAttr ".hyp[7].x" 707.84381103515625;
	setAttr ".hyp[7].y" -44957.5078125;
	setAttr ".hyp[7].nvs" 2240;
	setAttr ".hyp[8].x" 277.27236938476562;
	setAttr ".hyp[8].y" -44766.72265625;
	setAttr ".hyp[8].nvs" 2416;
	setAttr ".hyp[9].x" 675.54193115234375;
	setAttr ".hyp[9].y" -44769.33203125;
	setAttr ".hyp[9].nvs" 2240;
	setAttr ".hyp[10].x" -188.79927062988281;
	setAttr ".hyp[10].y" -44802.5546875;
	setAttr ".hyp[10].nvs" 2144;
	setAttr ".hyp[11].x" -353.83395385742187;
	setAttr ".hyp[11].y" -44456.8046875;
	setAttr ".hyp[11].nvs" 2416;
	setAttr ".hyp[12].x" 277.05331420898437;
	setAttr ".hyp[12].y" -44036.1875;
	setAttr ".hyp[12].nvs" 2512;
	setAttr ".hyp[13].x" 149.07345581054687;
	setAttr ".hyp[13].y" -44302.90234375;
	setAttr ".hyp[13].nvs" 2512;
	setAttr ".hyp[14].x" 243.4364013671875;
	setAttr ".hyp[14].y" -45517.49609375;
	setAttr ".hyp[14].nvs" 2416;
	setAttr ".hyp[15].x" 522.86297607421875;
	setAttr ".hyp[15].y" -45241.0859375;
	setAttr ".hyp[15].nvs" 1648;
	setAttr ".hyp[16].nvs" 1968;
	setAttr ".hyp[17].nvs" 1840;
	setAttr ".hyp[18].nvs" 2416;
	setAttr ".hyp[19].nvs" 1648;
	setAttr ".hyp[20].nvs" 4432;
	setAttr ".hyp[21].nvs" 4832;
	setAttr ".hyp[22].nvs" 5312;
	setAttr ".hyp[23].nvs" 4320;
	setAttr ".hyp[24].nvs" 4800;
	setAttr ".hyp[25].nvs" 2416;
	setAttr ".hyp[26].nvs" 2416;
	setAttr ".hyp[27].nvs" 2416;
	setAttr ".hyp[28].nvs" 2416;
	setAttr ".hyp[29].nvs" 2416;
	setAttr ".hyp[30].nvs" 2416;
	setAttr ".hyp[31].nvs" 2416;
	setAttr ".hyp[32].nvs" 2416;
	setAttr ".hyp[33].nvs" 2416;
	setAttr ".hyp[34].nvs" 2416;
	setAttr ".hyp[35].nvs" 2416;
	setAttr ".hyp[36].nvs" 2416;
	setAttr ".hyp[37].nvs" 2416;
	setAttr ".hyp[38].nvs" 2416;
	setAttr ".hyp[39].nvs" 2416;
	setAttr ".hyp[40].nvs" 2416;
	setAttr ".hyp[41].nvs" 2416;
	setAttr ".hyp[42].nvs" 2416;
	setAttr ".hyp[43].nvs" 2416;
	setAttr ".hyp[44].nvs" 2416;
	setAttr ".hyp[45].nvs" 2416;
	setAttr ".hyp[46].nvs" 2416;
	setAttr ".hyp[47].nvs" 2416;
	setAttr ".hyp[48].nvs" 2416;
	setAttr ".hyp[49].nvs" 2416;
	setAttr ".hyp[50].nvs" 2416;
	setAttr ".hyp[51].nvs" 2416;
	setAttr ".hyp[52].nvs" 2416;
	setAttr ".hyp[53].nvs" 2416;
	setAttr ".hyp[54].nvs" 2416;
	setAttr ".hyp[55].nvs" 2416;
	setAttr ".hyp[56].nvs" 2416;
	setAttr ".hyp[57].nvs" 2416;
	setAttr ".hyp[58].nvs" 2416;
	setAttr ".hyp[59].nvs" 2416;
	setAttr ".hyp[60].nvs" 2416;
	setAttr ".hyp[61].nvs" 2416;
	setAttr ".hyp[62].nvs" 2416;
	setAttr ".hyp[63].nvs" 2416;
	setAttr ".hyp[64].nvs" 2416;
	setAttr ".hyp[65].nvs" 2416;
	setAttr ".hyp[66].nvs" 2416;
	setAttr ".hyp[67].nvs" 2416;
	setAttr ".hyp[68].nvs" 2416;
	setAttr ".hyp[69].nvs" 2416;
	setAttr ".hyp[70].nvs" 2416;
	setAttr ".hyp[71].nvs" 2416;
	setAttr ".hyp[72].nvs" 2416;
	setAttr ".hyp[73].nvs" 2416;
	setAttr ".hyp[74].nvs" 2416;
	setAttr ".hyp[75].nvs" 2416;
	setAttr ".hyp[76].nvs" 2416;
	setAttr ".hyp[77].nvs" 2416;
	setAttr ".hyp[78].nvs" 2416;
	setAttr ".hyp[79].nvs" 2416;
	setAttr ".hyp[80].nvs" 2416;
	setAttr ".hyp[81].nvs" 2416;
	setAttr ".hyp[82].nvs" 2416;
	setAttr ".hyp[83].nvs" 2416;
	setAttr ".hyp[84].nvs" 2416;
	setAttr ".hyp[85].nvs" 2416;
	setAttr ".hyp[86].nvs" 2416;
	setAttr ".hyp[87].nvs" 2416;
	setAttr ".hyp[88].nvs" 2416;
	setAttr ".hyp[89].nvs" 2416;
	setAttr ".hyp[90].nvs" 2416;
	setAttr ".hyp[91].nvs" 2416;
	setAttr ".hyp[92].nvs" 2560;
	setAttr ".hyp[93].nvs" 2416;
	setAttr ".hyp[94].nvs" 2416;
	setAttr ".hyp[95].nvs" 2304;
	setAttr ".hyp[96].nvs" 2416;
	setAttr ".hyp[97].nvs" 1888;
	setAttr ".hyp[98].nvs" 2416;
	setAttr ".hyp[99].nvs" 2416;
	setAttr ".hyp[100].nvs" 2416;
	setAttr ".hyp[101].nvs" 2416;
	setAttr ".hyp[102].nvs" 2416;
	setAttr ".hyp[103].nvs" 2416;
	setAttr ".hyp[104].nvs" 1648;
	setAttr ".hyp[105].nvs" 2304;
	setAttr ".hyp[106].nvs" 2416;
	setAttr ".hyp[107].nvs" 2096;
	setAttr ".hyp[108].nvs" 1680;
	setAttr ".anf" yes;
createNode blinn -n "blinn7";
	setAttr ".c" -type "float3" 0.82236975 0.82236975 0.82236975 ;
createNode shadingEngine -n "blinn7SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
createNode groupId -n "groupId45";
	setAttr ".ihi" 0;
createNode groupId -n "groupId59";
	setAttr ".ihi" 0;
createNode shadingEngine -n "blinn1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode polySmoothProxy -n "polySmoothProxy1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".mn" yes;
createNode objectSet -n "Brows";
	addAttr -ci true -h true -sn "Blend_Node" -ln "Blend_Node" -dt "string";
	addAttr -ci true -k true -sn "BT_LUp" -ln "BT_LUp" -nn "LUp" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "BT_LDown" -ln "BT_LDown" -nn "LDown" -min 0 -max 1 
		-at "double";
	addAttr -ci true -k true -sn "BT_LAngry" -ln "BT_LAngry" -nn "LAngry" -min 0 -max 
		1 -at "double";
	addAttr -ci true -k true -sn "BT_LSad" -ln "BT_LSad" -nn "LSad" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "BT_RUp" -ln "BT_RUp" -nn "RUp" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "BT_RDown" -ln "BT_RDown" -nn "RDown" -min 0 -max 1 
		-at "double";
	addAttr -ci true -k true -sn "BT_RAngry" -ln "BT_RAngry" -nn "RAngry" -min 0 -max 
		1 -at "double";
	addAttr -ci true -k true -sn "BT_RSad" -ln "BT_RSad" -nn "RSad" -min 0 -max 1 -at "double";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".Blend_Node" -type "string" "BlendTransforms1";
	setAttr -k on ".BT_LUp";
	setAttr -k on ".BT_LDown";
	setAttr -k on ".BT_LAngry";
	setAttr -k on ".BT_LSad";
	setAttr -k on ".BT_RUp";
	setAttr -k on ".BT_RDown";
	setAttr -k on ".BT_RAngry";
	setAttr -k on ".BT_RSad";
createNode skinCluster -n "skinCluster1";
	setAttr -s 948 ".wl";
	setAttr -s 3 ".wl[0].w";
	setAttr ".wl[0].w[2]" 0.2;
	setAttr ".wl[0].w[20]" 0.2;
	setAttr ".wl[0].w[26]" 0.6;
	setAttr -s 3 ".wl[1].w";
	setAttr ".wl[1].w[2]" 0.465189873418;
	setAttr ".wl[1].w[19]" 0.25;
	setAttr ".wl[1].w[26]" 0.284810126582;
	setAttr -s 3 ".wl[2].w";
	setAttr ".wl[2].w[19]" 0.525;
	setAttr ".wl[2].w[20]" 0.25;
	setAttr ".wl[2].w[26]" 0.225;
	setAttr -s 2 ".wl[3].w";
	setAttr ".wl[3].w[20]" 0.25;
	setAttr ".wl[3].w[26]" 0.75;
	setAttr -s 2 ".wl[4].w";
	setAttr ".wl[4].w[0]" 0.5;
	setAttr ".wl[4].w[2]" 0.5;
	setAttr ".wl[5].w[26]"  1;
	setAttr ".wl[6].w[2]"  1;
	setAttr -s 2 ".wl[7].w";
	setAttr ".wl[7].w[7]" 0.5;
	setAttr ".wl[7].w[10]" 0.5;
	setAttr ".wl[8].w[2]"  1;
	setAttr -s 2 ".wl[9].w";
	setAttr ".wl[9].w[0]" 0.5;
	setAttr ".wl[9].w[2]" 0.5;
	setAttr ".wl[10].w[26]"  1;
	setAttr ".wl[11].w[2]"  1;
	setAttr -s 3 ".wl[12].w";
	setAttr ".wl[12].w[0]" 0.4;
	setAttr ".wl[12].w[2]" 0.4;
	setAttr ".wl[12].w[26]" 0.2;
	setAttr -s 2 ".wl[13].w";
	setAttr ".wl[13].w[0]" 0.5;
	setAttr ".wl[13].w[2]" 0.5;
	setAttr ".wl[14].w[2]"  1;
	setAttr ".wl[15].w[2]"  1;
	setAttr ".wl[16].w[2]"  1;
	setAttr ".wl[17].w[2]"  1;
	setAttr ".wl[18].w[2]"  1;
	setAttr ".wl[19].w[2]"  1;
	setAttr ".wl[20].w[2]"  1;
	setAttr ".wl[21].w[2]"  1;
	setAttr ".wl[22].w[2]"  1;
	setAttr ".wl[23].w[2]"  1;
	setAttr ".wl[24].w[2]"  1;
	setAttr ".wl[25].w[2]"  1;
	setAttr -s 2 ".wl[26].w";
	setAttr ".wl[26].w[2]" 0.6;
	setAttr ".wl[26].w[23]" 0.4;
	setAttr ".wl[27].w[2]"  1;
	setAttr ".wl[28].w[2]"  1;
	setAttr ".wl[29].w[2]"  1;
	setAttr ".wl[30].w[2]"  1;
	setAttr ".wl[31].w[2]"  1;
	setAttr ".wl[32].w[2]"  1;
	setAttr ".wl[33].w[2]"  1;
	setAttr ".wl[34].w[2]"  1;
	setAttr ".wl[35].w[2]"  1;
	setAttr ".wl[36].w[2]"  1;
	setAttr -s 3 ".wl[37].w";
	setAttr ".wl[37].w[0]" 0.4;
	setAttr ".wl[37].w[2]" 0.4;
	setAttr ".wl[37].w[26]" 0.2;
	setAttr ".wl[38].w[26]"  1;
	setAttr -s 2 ".wl[39].w";
	setAttr ".wl[39].w[2]" 0.6;
	setAttr ".wl[39].w[23]" 0.4;
	setAttr ".wl[40].w[2]"  1;
	setAttr ".wl[41].w[2]"  1;
	setAttr ".wl[42].w[2]"  1;
	setAttr ".wl[43].w[2]"  1;
	setAttr -s 2 ".wl[44].w";
	setAttr ".wl[44].w[2]" 0.6;
	setAttr ".wl[44].w[23]" 0.4;
	setAttr -s 2 ".wl[45].w";
	setAttr ".wl[45].w[2]" 0.6;
	setAttr ".wl[45].w[23]" 0.4;
	setAttr ".wl[46].w[2]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[7]"  1;
	setAttr ".wl[53].w[2]"  1;
	setAttr ".wl[54].w[2]"  1;
	setAttr ".wl[55].w[2]"  1;
	setAttr ".wl[56].w[2]"  1;
	setAttr ".wl[57].w[2]"  1;
	setAttr ".wl[58].w[2]"  1;
	setAttr ".wl[59].w[2]"  1;
	setAttr -s 2 ".wl[60].w";
	setAttr ".wl[60].w[0]" 0.5;
	setAttr ".wl[60].w[2]" 0.5;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[2]"  1;
	setAttr ".wl[63].w[2]"  1;
	setAttr ".wl[64].w[2]"  1;
	setAttr ".wl[65].w[2]"  1;
	setAttr ".wl[66].w[2]"  1;
	setAttr -s 2 ".wl[67].w";
	setAttr ".wl[67].w[2]" 0.7;
	setAttr ".wl[67].w[19]" 0.3;
	setAttr -s 2 ".wl[68].w";
	setAttr ".wl[68].w[19]" 0.5;
	setAttr ".wl[68].w[43]" 0.5;
	setAttr -s 2 ".wl[69].w";
	setAttr ".wl[69].w[2]" 0.6;
	setAttr ".wl[69].w[19]" 0.4;
	setAttr ".wl[70].w[2]"  1;
	setAttr ".wl[71].w[2]"  1;
	setAttr ".wl[72].w[2]"  1;
	setAttr ".wl[73].w[2]"  1;
	setAttr ".wl[74].w[2]"  1;
	setAttr ".wl[75].w[2]"  1;
	setAttr ".wl[76].w[2]"  1;
	setAttr ".wl[77].w[2]"  1;
	setAttr -s 2 ".wl[78].w";
	setAttr ".wl[78].w[0]" 0.5;
	setAttr ".wl[78].w[2]" 0.5;
	setAttr ".wl[79].w[0]"  1;
	setAttr -s 2 ".wl[80].w";
	setAttr ".wl[80].w[2]" 0.8;
	setAttr ".wl[80].w[15]" 0.2;
	setAttr -s 2 ".wl[81].w";
	setAttr ".wl[81].w[2]" 0.8;
	setAttr ".wl[81].w[15]" 0.2;
	setAttr ".wl[82].w[2]"  1;
	setAttr ".wl[83].w[2]"  1;
	setAttr -s 2 ".wl[84].w";
	setAttr ".wl[84].w[2]" 0.98616369441200002;
	setAttr ".wl[84].w[9]" 0.013836305588500001;
	setAttr -s 2 ".wl[85].w";
	setAttr ".wl[85].w[2]" 0.8;
	setAttr ".wl[85].w[16]" 0.2;
	setAttr ".wl[86].w[2]"  1;
	setAttr ".wl[87].w[2]"  1;
	setAttr -s 2 ".wl[88].w";
	setAttr ".wl[88].w[2]" 0.95005727931899997;
	setAttr ".wl[88].w[7]" 0.049942720681400002;
	setAttr ".wl[89].w[2]"  1;
	setAttr ".wl[90].w[2]"  1;
	setAttr -s 2 ".wl[91].w";
	setAttr ".wl[91].w[2]" 0.6;
	setAttr ".wl[91].w[19]" 0.4;
	setAttr ".wl[92].w[26]"  1;
	setAttr -s 3 ".wl[93].w";
	setAttr ".wl[93].w[0]" 0.4;
	setAttr ".wl[93].w[2]" 0.4;
	setAttr ".wl[93].w[26]" 0.2;
	setAttr ".wl[94].w[0]"  1;
	setAttr -s 2 ".wl[95].w";
	setAttr ".wl[95].w[2]" 0.2;
	setAttr ".wl[95].w[26]" 0.8;
	setAttr -s 2 ".wl[96].w";
	setAttr ".wl[96].w[2]" 0.2;
	setAttr ".wl[96].w[26]" 0.8;
	setAttr -s 2 ".wl[97].w";
	setAttr ".wl[97].w[2]" 0.2;
	setAttr ".wl[97].w[26]" 0.8;
	setAttr ".wl[98].w[26]"  1;
	setAttr ".wl[99].w[26]"  1;
	setAttr ".wl[100].w[2]"  1;
	setAttr ".wl[101].w[2]"  1;
	setAttr ".wl[102].w[2]"  1;
	setAttr ".wl[103].w[2]"  1;
	setAttr ".wl[104].w[2]"  1;
	setAttr ".wl[105].w[2]"  1;
	setAttr ".wl[106].w[2]"  1;
	setAttr ".wl[107].w[2]"  1;
	setAttr ".wl[108].w[26]"  1;
	setAttr -s 3 ".wl[109].w";
	setAttr ".wl[109].w[2]" 0.375;
	setAttr ".wl[109].w[26]" 0.375;
	setAttr ".wl[109].w[43]" 0.25;
	setAttr -s 2 ".wl[110].w";
	setAttr ".wl[110].w[2]" 0.93;
	setAttr ".wl[110].w[26]" 0.07;
	setAttr ".wl[111].w[26]"  1;
	setAttr ".wl[112].w[26]"  1;
	setAttr -s 2 ".wl[113].w";
	setAttr ".wl[113].w[2]" 0.2;
	setAttr ".wl[113].w[26]" 0.8;
	setAttr -s 3 ".wl[114].w";
	setAttr ".wl[114].w[0]" 0.4;
	setAttr ".wl[114].w[2]" 0.4;
	setAttr ".wl[114].w[26]" 0.2;
	setAttr ".wl[115].w[0]"  1;
	setAttr -s 2 ".wl[116].w";
	setAttr ".wl[116].w[29]" 0.5;
	setAttr ".wl[116].w[31]" 0.5;
	setAttr ".wl[117].w[30]"  1;
	setAttr ".wl[118].w[28]"  1;
	setAttr ".wl[119].w[27]"  1;
	setAttr ".wl[120].w[32]"  1;
	setAttr -s 2 ".wl[121].w";
	setAttr ".wl[121].w[29]" 0.5;
	setAttr ".wl[121].w[33]" 0.5;
	setAttr ".wl[122].w[29]"  1;
	setAttr -s 3 ".wl[123].w";
	setAttr ".wl[123].w[2]" 0.21142810661399999;
	setAttr ".wl[123].w[20]" 0.438571893386;
	setAttr ".wl[123].w[26]" 0.35;
	setAttr -s 3 ".wl[124].w";
	setAttr ".wl[124].w[2]" 0.20702216830600001;
	setAttr ".wl[124].w[20]" 0.44297783169400001;
	setAttr ".wl[124].w[26]" 0.35;
	setAttr -s 2 ".wl[125].w";
	setAttr ".wl[125].w[2]" 0.2;
	setAttr ".wl[125].w[26]" 0.8;
	setAttr ".wl[126].w[2]"  1;
	setAttr ".wl[127].w[2]"  1;
	setAttr ".wl[128].w[2]"  1;
	setAttr ".wl[129].w[2]"  1;
	setAttr -s 3 ".wl[130].w";
	setAttr ".wl[130].w[2]" 0.34146341463399998;
	setAttr ".wl[130].w[26]" 0.35853658536600003;
	setAttr ".wl[130].w[43]" 0.3;
	setAttr ".wl[131].w[2]"  1;
	setAttr ".wl[132].w[2]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr -s 3 ".wl[134].w";
	setAttr ".wl[134].w[0]" 0.4;
	setAttr ".wl[134].w[2]" 0.4;
	setAttr ".wl[134].w[26]" 0.2;
	setAttr -s 2 ".wl[135].w";
	setAttr ".wl[135].w[2]" 0.2;
	setAttr ".wl[135].w[26]" 0.8;
	setAttr ".wl[136].w[26]"  1;
	setAttr -s 2 ".wl[137].w";
	setAttr ".wl[137].w[26]" 0.8;
	setAttr ".wl[137].w[42]" 0.2;
	setAttr ".wl[138].w[33]"  1;
	setAttr ".wl[139].w[2]"  1;
	setAttr ".wl[140].w[2]"  1;
	setAttr -s 2 ".wl[141].w";
	setAttr ".wl[141].w[2]" 0.6;
	setAttr ".wl[141].w[23]" 0.4;
	setAttr ".wl[142].w[23]"  1;
	setAttr -s 2 ".wl[143].w";
	setAttr ".wl[143].w[2]" 0.8;
	setAttr ".wl[143].w[41]" 0.2;
	setAttr ".wl[144].w[31]"  1;
	setAttr ".wl[145].w[28]"  1;
	setAttr ".wl[146].w[30]"  1;
	setAttr ".wl[147].w[31]"  1;
	setAttr -s 2 ".wl[148].w";
	setAttr ".wl[148].w[29]" 0.5;
	setAttr ".wl[148].w[31]" 0.5;
	setAttr ".wl[149].w[29]"  1;
	setAttr -s 2 ".wl[150].w";
	setAttr ".wl[150].w[29]" 0.5;
	setAttr ".wl[150].w[33]" 0.5;
	setAttr ".wl[151].w[33]"  1;
	setAttr ".wl[152].w[32]"  1;
	setAttr ".wl[153].w[27]"  1;
	setAttr ".wl[154].w[28]"  1;
	setAttr ".wl[155].w[30]"  1;
	setAttr ".wl[156].w[31]"  1;
	setAttr -s 2 ".wl[157].w";
	setAttr ".wl[157].w[29]" 0.5;
	setAttr ".wl[157].w[31]" 0.5;
	setAttr -s 2 ".wl[158].w";
	setAttr ".wl[158].w[29]" 0.5;
	setAttr ".wl[158].w[43]" 0.5;
	setAttr -s 2 ".wl[159].w";
	setAttr ".wl[159].w[29]" 0.5;
	setAttr ".wl[159].w[33]" 0.5;
	setAttr ".wl[160].w[33]"  1;
	setAttr ".wl[161].w[32]"  1;
	setAttr ".wl[162].w[27]"  1;
	setAttr ".wl[163].w[2]"  1;
	setAttr ".wl[164].w[2]"  1;
	setAttr ".wl[165].w[2]"  1;
	setAttr ".wl[166].w[2]"  1;
	setAttr ".wl[167].w[2]"  1;
	setAttr ".wl[168].w[2]"  1;
	setAttr ".wl[169].w[2]"  1;
	setAttr ".wl[170].w[2]"  1;
	setAttr ".wl[171].w[2]"  1;
	setAttr ".wl[172].w[2]"  1;
	setAttr ".wl[173].w[2]"  1;
	setAttr -s 2 ".wl[174].w";
	setAttr ".wl[174].w[0]" 0.5;
	setAttr ".wl[174].w[2]" 0.5;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[2]"  1;
	setAttr ".wl[177].w[2]"  1;
	setAttr ".wl[178].w[2]"  1;
	setAttr ".wl[179].w[2]"  1;
	setAttr ".wl[180].w[26]"  1;
	setAttr ".wl[181].w[26]"  1;
	setAttr ".wl[182].w[26]"  1;
	setAttr ".wl[183].w[26]"  1;
	setAttr -s 2 ".wl[184].w";
	setAttr ".wl[184].w[2]" 0.5;
	setAttr ".wl[184].w[26]" 0.5;
	setAttr ".wl[185].w[26]"  1;
	setAttr ".wl[186].w[26]"  1;
	setAttr ".wl[187].w[26]"  1;
	setAttr ".wl[188].w[26]"  1;
	setAttr ".wl[189].w[26]"  1;
	setAttr ".wl[190].w[26]"  1;
	setAttr ".wl[191].w[26]"  1;
	setAttr -s 3 ".wl[192].w";
	setAttr ".wl[192].w[2]" 0.4;
	setAttr ".wl[192].w[20]" 0.06;
	setAttr ".wl[192].w[26]" 0.54;
	setAttr -s 3 ".wl[193].w";
	setAttr ".wl[193].w[2]" 0.63;
	setAttr ".wl[193].w[20]" 0.1;
	setAttr ".wl[193].w[26]" 0.27;
	setAttr ".wl[194].w[2]"  1;
	setAttr ".wl[195].w[2]"  1;
	setAttr ".wl[196].w[2]"  1;
	setAttr ".wl[197].w[2]"  1;
	setAttr ".wl[198].w[2]"  1;
	setAttr ".wl[199].w[2]"  1;
	setAttr ".wl[200].w[2]"  1;
	setAttr ".wl[201].w[2]"  1;
	setAttr ".wl[202].w[26]"  1;
	setAttr -s 3 ".wl[203].w";
	setAttr ".wl[203].w[2]" 0.0360266150701;
	setAttr ".wl[203].w[8]" 0.0032019434702400002;
	setAttr ".wl[203].w[9]" 0.96077144146000004;
	setAttr -s 2 ".wl[204].w";
	setAttr ".wl[204].w[2]" 0.69007351994499999;
	setAttr ".wl[204].w[9]" 0.30992648005500001;
	setAttr ".wl[205].w[2]"  1;
	setAttr -s 3 ".wl[206].w";
	setAttr ".wl[206].w[2]" 0.4;
	setAttr ".wl[206].w[20]" 0.15;
	setAttr ".wl[206].w[26]" 0.45;
	setAttr -s 3 ".wl[207].w";
	setAttr ".wl[207].w[2]" 0.63;
	setAttr ".wl[207].w[20]" 0.1;
	setAttr ".wl[207].w[26]" 0.27;
	setAttr ".wl[208].w[2]"  1;
	setAttr ".wl[209].w[26]"  1;
	setAttr -s 2 ".wl[210].w[8:9]"  0.506547808647 0.493452191353;
	setAttr ".wl[211].w[8]"  1;
	setAttr -s 2 ".wl[212].w";
	setAttr ".wl[212].w[7]" 0.5;
	setAttr ".wl[212].w[10]" 0.5;
	setAttr -s 2 ".wl[213].w[7:8]"  0.59267234802199997 0.40732765197800003;
	setAttr ".wl[214].w[2]"  1;
	setAttr ".wl[215].w[2]"  1;
	setAttr ".wl[216].w[2]"  1;
	setAttr ".wl[217].w[2]"  1;
	setAttr ".wl[218].w[2]"  1;
	setAttr ".wl[219].w[2]"  1;
	setAttr ".wl[220].w[2]"  1;
	setAttr ".wl[221].w[2]"  1;
	setAttr ".wl[222].w[2]"  1;
	setAttr ".wl[223].w[2]"  1;
	setAttr ".wl[224].w[2]"  1;
	setAttr -s 2 ".wl[225].w";
	setAttr ".wl[225].w[0]" 0.5;
	setAttr ".wl[225].w[2]" 0.5;
	setAttr ".wl[226].w[0]"  1;
	setAttr -s 3 ".wl[227].w";
	setAttr ".wl[227].w[2]" 0.0360266150701;
	setAttr ".wl[227].w[8]" 0.0032019434702400002;
	setAttr ".wl[227].w[9]" 0.96077144146000004;
	setAttr ".wl[228].w[9]"  1;
	setAttr -s 3 ".wl[229].w";
	setAttr ".wl[229].w[2]" 0.0068457066287800003;
	setAttr ".wl[229].w[8]" 0.00099951632119800004;
	setAttr ".wl[229].w[9]" 0.99215477704999999;
	setAttr -s 2 ".wl[230].w[8:9]"  0.5 0.5;
	setAttr -s 2 ".wl[231].w[8:9]"  0.506547808647 0.493452191353;
	setAttr ".wl[232].w[8]"  1;
	setAttr ".wl[233].w[8]"  1;
	setAttr -s 2 ".wl[234].w[7:8]"  0.7 0.3;
	setAttr -s 2 ".wl[235].w[7:8]"  0.59267234802199997 0.40732765197800003;
	setAttr ".wl[236].w[7]"  1;
	setAttr ".wl[237].w[7]"  1;
	setAttr ".wl[238].w[7]"  1;
	setAttr ".wl[239].w[9]"  1;
	setAttr ".wl[240].w[9]"  1;
	setAttr -s 2 ".wl[241].w[8:9]"  0.5 0.5;
	setAttr -s 2 ".wl[242].w[8:9]"  0.5 0.5;
	setAttr ".wl[243].w[8]"  1;
	setAttr ".wl[244].w[8]"  1;
	setAttr -s 2 ".wl[245].w[7:8]"  0.69985759258299995 0.30014240741699999;
	setAttr -s 2 ".wl[246].w[7:8]"  0.7 0.3;
	setAttr ".wl[247].w[7]"  1;
	setAttr ".wl[248].w[7]"  1;
	setAttr ".wl[249].w[9]"  1;
	setAttr ".wl[250].w[7]"  1;
	setAttr -s 2 ".wl[251].w[2:3]"  0.5 0.5;
	setAttr -s 2 ".wl[252].w[2:3]"  0.5 0.5;
	setAttr -s 2 ".wl[253].w[2:3]"  0.5 0.5;
	setAttr -s 2 ".wl[254].w[2:3]"  0.7 0.3;
	setAttr -s 2 ".wl[255].w[2:3]"  0.5 0.5;
	setAttr -s 2 ".wl[256].w[2:3]"  0.5 0.5;
	setAttr -s 2 ".wl[257].w[2:3]"  0.5 0.5;
	setAttr -s 2 ".wl[258].w[2:3]"  0.5 0.5;
	setAttr -s 2 ".wl[259].w[2:3]"  0.5 0.5;
	setAttr -s 2 ".wl[260].w[2:3]"  0.5 0.5;
	setAttr -s 2 ".wl[261].w";
	setAttr ".wl[261].w[0]" 0.5;
	setAttr ".wl[261].w[2]" 0.5;
	setAttr ".wl[262].w[0]"  1;
	setAttr ".wl[263].w[3]"  1;
	setAttr ".wl[264].w[3]"  1;
	setAttr ".wl[265].w[3]"  1;
	setAttr ".wl[266].w[3]"  1;
	setAttr ".wl[267].w[3]"  1;
	setAttr ".wl[268].w[3]"  1;
	setAttr ".wl[269].w[3]"  1;
	setAttr ".wl[270].w[3]"  1;
	setAttr ".wl[271].w[3]"  1;
	setAttr ".wl[272].w[3]"  1;
	setAttr ".wl[273].w[3]"  1;
	setAttr ".wl[274].w[3]"  1;
	setAttr ".wl[275].w[3]"  1;
	setAttr ".wl[276].w[3]"  1;
	setAttr -s 2 ".wl[277].w[2:3]"  0.7 0.3;
	setAttr ".wl[278].w[3]"  1;
	setAttr ".wl[279].w[3]"  1;
	setAttr ".wl[280].w[3]"  1;
	setAttr ".wl[281].w[3]"  1;
	setAttr ".wl[282].w[3]"  1;
	setAttr ".wl[283].w[3]"  1;
	setAttr ".wl[284].w[3]"  1;
	setAttr ".wl[285].w[3]"  1;
	setAttr ".wl[286].w[3]"  1;
	setAttr ".wl[287].w[3]"  1;
	setAttr ".wl[288].w[2]"  1;
	setAttr ".wl[289].w[3]"  1;
	setAttr ".wl[290].w[3]"  1;
	setAttr ".wl[291].w[3]"  1;
	setAttr ".wl[292].w[3]"  1;
	setAttr ".wl[293].w[3]"  1;
	setAttr ".wl[294].w[3]"  1;
	setAttr ".wl[295].w[3]"  1;
	setAttr ".wl[296].w[3]"  1;
	setAttr ".wl[297].w[3]"  1;
	setAttr ".wl[298].w[3]"  1;
	setAttr ".wl[299].w[3]"  1;
	setAttr -s 2 ".wl[300].w";
	setAttr ".wl[300].w[2]" 0.768204733729;
	setAttr ".wl[300].w[9]" 0.231795266271;
	setAttr -s 2 ".wl[301].w";
	setAttr ".wl[301].w[2]" 0.90006892383100001;
	setAttr ".wl[301].w[9]" 0.099931076169000002;
	setAttr -s 2 ".wl[302].w";
	setAttr ".wl[302].w[2]" 0.99997967209899996;
	setAttr ".wl[302].w[9]" 2.0327901438599998e-005;
	setAttr ".wl[303].w[2]"  1;
	setAttr ".wl[304].w[2]"  1;
	setAttr ".wl[305].w[2]"  1;
	setAttr ".wl[306].w[2]"  1;
	setAttr ".wl[307].w[2]"  1;
	setAttr ".wl[308].w[2]"  1;
	setAttr ".wl[309].w[2]"  1;
	setAttr ".wl[310].w[2]"  1;
	setAttr ".wl[311].w[2]"  1;
	setAttr -s 2 ".wl[312].w";
	setAttr ".wl[312].w[2]" 0.69027170538899996;
	setAttr ".wl[312].w[9]" 0.30972829461099999;
	setAttr -s 2 ".wl[313].w";
	setAttr ".wl[313].w[7]" 0.5;
	setAttr ".wl[313].w[10]" 0.5;
	setAttr ".wl[314].w[2]"  1;
	setAttr ".wl[315].w[2]"  1;
	setAttr ".wl[316].w[2]"  1;
	setAttr ".wl[317].w[2]"  1;
	setAttr ".wl[318].w[2]"  1;
	setAttr ".wl[319].w[2]"  1;
	setAttr ".wl[320].w[2]"  1;
	setAttr -s 3 ".wl[321].w";
	setAttr ".wl[321].w[2]" 0.79290183280000004;
	setAttr ".wl[321].w[8]" 0.0452410168946;
	setAttr ".wl[321].w[9]" 0.161857150305;
	setAttr -s 3 ".wl[322].w";
	setAttr ".wl[322].w[2]" 0.70705796282599997;
	setAttr ".wl[322].w[7]" 0.017429282256599999;
	setAttr ".wl[322].w[8]" 0.275512754917;
	setAttr -s 2 ".wl[323].w";
	setAttr ".wl[323].w[2]" 0.84086139500099999;
	setAttr ".wl[323].w[7]" 0.15913860499900001;
	setAttr -s 2 ".wl[324].w";
	setAttr ".wl[324].w[2]" 0.99553705658799996;
	setAttr ".wl[324].w[9]" 0.0044629434123599999;
	setAttr -s 2 ".wl[325].w";
	setAttr ".wl[325].w[2]" 0.93606695532799999;
	setAttr ".wl[325].w[7]" 0.063933044672000006;
	setAttr -s 2 ".wl[326].w";
	setAttr ".wl[326].w[2]" 0.67485162615799998;
	setAttr ".wl[326].w[7]" 0.32514837384200002;
	setAttr ".wl[327].w[2]"  1;
	setAttr ".wl[328].w[7]"  1;
	setAttr ".wl[329].w[7]"  1;
	setAttr ".wl[330].w[7]"  1;
	setAttr ".wl[331].w[7]"  1;
	setAttr ".wl[332].w[7]"  1;
	setAttr ".wl[333].w[2]"  1;
	setAttr ".wl[334].w[2]"  1;
	setAttr ".wl[335].w[2]"  1;
	setAttr ".wl[336].w[2]"  1;
	setAttr ".wl[337].w[2]"  1;
	setAttr ".wl[338].w[2]"  1;
	setAttr ".wl[339].w[2]"  1;
	setAttr ".wl[340].w[2]"  1;
	setAttr ".wl[341].w[2]"  1;
	setAttr ".wl[342].w[2]"  1;
	setAttr ".wl[343].w[2]"  1;
	setAttr ".wl[344].w[2]"  1;
	setAttr -s 2 ".wl[345].w";
	setAttr ".wl[345].w[0]" 0.5;
	setAttr ".wl[345].w[2]" 0.5;
	setAttr ".wl[346].w[0]"  1;
	setAttr -s 2 ".wl[347].w";
	setAttr ".wl[347].w[2]" 0.70667448639899999;
	setAttr ".wl[347].w[7]" 0.29332551360100001;
	setAttr -s 2 ".wl[348].w";
	setAttr ".wl[348].w[2]" 0.2;
	setAttr ".wl[348].w[15]" 0.8;
	setAttr ".wl[349].w[15]"  1;
	setAttr ".wl[350].w[15]"  1;
	setAttr ".wl[351].w[15]"  1;
	setAttr ".wl[352].w[15]"  1;
	setAttr -s 3 ".wl[353].w";
	setAttr ".wl[353].w[2]" 0.93162132286800003;
	setAttr ".wl[353].w[7]" 0.000474607111974;
	setAttr ".wl[353].w[8]" 0.067904070019700002;
	setAttr -s 2 ".wl[354].w";
	setAttr ".wl[354].w[2]" 0.99723879015100003;
	setAttr ".wl[354].w[7]" 0.00276120984927;
	setAttr ".wl[355].w[2]"  1;
	setAttr ".wl[356].w[2]"  1;
	setAttr ".wl[357].w[2]"  1;
	setAttr ".wl[358].w[2]"  1;
	setAttr ".wl[359].w[2]"  1;
	setAttr ".wl[360].w[2]"  1;
	setAttr ".wl[361].w[2]"  1;
	setAttr ".wl[362].w[2]"  1;
	setAttr ".wl[363].w[2]"  1;
	setAttr -s 2 ".wl[364].w";
	setAttr ".wl[364].w[2]" 0.915997393429;
	setAttr ".wl[364].w[9]" 0.084002606570699995;
	setAttr -s 3 ".wl[365].w";
	setAttr ".wl[365].w[2]" 0.97303717741499995;
	setAttr ".wl[365].w[8]" 0.00054982904112000003;
	setAttr ".wl[365].w[9]" 0.026412993544;
	setAttr ".wl[366].w[2]"  1;
	setAttr -s 2 ".wl[367].w";
	setAttr ".wl[367].w[2]" 0.5;
	setAttr ".wl[367].w[15]" 0.5;
	setAttr -s 2 ".wl[368].w";
	setAttr ".wl[368].w[2]" 0.5;
	setAttr ".wl[368].w[15]" 0.5;
	setAttr -s 2 ".wl[369].w";
	setAttr ".wl[369].w[2]" 0.5;
	setAttr ".wl[369].w[15]" 0.5;
	setAttr -s 2 ".wl[370].w";
	setAttr ".wl[370].w[2]" 0.5;
	setAttr ".wl[370].w[15]" 0.5;
	setAttr -s 2 ".wl[371].w";
	setAttr ".wl[371].w[2]" 0.5;
	setAttr ".wl[371].w[15]" 0.5;
	setAttr ".wl[372].w[2]"  1;
	setAttr ".wl[373].w[2]"  1;
	setAttr ".wl[374].w[2]"  1;
	setAttr ".wl[375].w[2]"  1;
	setAttr ".wl[376].w[2]"  1;
	setAttr ".wl[377].w[2]"  1;
	setAttr ".wl[378].w[2]"  1;
	setAttr -s 2 ".wl[379].w";
	setAttr ".wl[379].w[2]" 0.2;
	setAttr ".wl[379].w[15]" 0.8;
	setAttr ".wl[380].w[15]"  1;
	setAttr ".wl[381].w[15]"  1;
	setAttr ".wl[382].w[15]"  1;
	setAttr ".wl[383].w[15]"  1;
	setAttr ".wl[384].w[26]"  1;
	setAttr ".wl[385].w[26]"  1;
	setAttr ".wl[386].w[26]"  1;
	setAttr ".wl[387].w[26]"  1;
	setAttr ".wl[388].w[26]"  1;
	setAttr ".wl[389].w[40]"  1;
	setAttr -s 3 ".wl[390].w";
	setAttr ".wl[390].w[30]" 0.0971778705715;
	setAttr ".wl[390].w[40]" 0.5;
	setAttr ".wl[390].w[41]" 0.40282212942849999;
	setAttr ".wl[391].w[41]"  1;
	setAttr -s 2 ".wl[392].w";
	setAttr ".wl[392].w[41]" 0.5;
	setAttr ".wl[392].w[43]" 0.5;
	setAttr ".wl[393].w[43]"  1;
	setAttr -s 2 ".wl[394].w[42:43]"  0.5 0.5;
	setAttr ".wl[395].w[42]"  1;
	setAttr -s 2 ".wl[396].w";
	setAttr ".wl[396].w[39]" 0.55;
	setAttr ".wl[396].w[42]" 0.45;
	setAttr ".wl[397].w[39]"  1;
	setAttr ".wl[398].w[2]"  1;
	setAttr ".wl[399].w[2]"  1;
	setAttr -s 3 ".wl[400].w";
	setAttr ".wl[400].w[30]" 0.1012174560001802;
	setAttr ".wl[400].w[40]" 0.8;
	setAttr ".wl[400].w[41]" 0.098782543999819741;
	setAttr -s 2 ".wl[401].w";
	setAttr ".wl[401].w[28]" 0.5;
	setAttr ".wl[401].w[30]" 0.5;
	setAttr -s 2 ".wl[402].w";
	setAttr ".wl[402].w[28]" 0.5;
	setAttr ".wl[402].w[30]" 0.5;
	setAttr -s 2 ".wl[403].w";
	setAttr ".wl[403].w[28]" 0.5;
	setAttr ".wl[403].w[30]" 0.5;
	setAttr ".wl[404].w[2]"  1;
	setAttr ".wl[405].w[2]"  1;
	setAttr ".wl[406].w[2]"  1;
	setAttr ".wl[407].w[2]"  1;
	setAttr ".wl[408].w[2]"  1;
	setAttr ".wl[409].w[2]"  1;
	setAttr ".wl[410].w[2]"  1;
	setAttr ".wl[411].w[2]"  1;
	setAttr ".wl[412].w[2]"  1;
	setAttr ".wl[413].w[2]"  1;
	setAttr ".wl[414].w[2]"  1;
	setAttr ".wl[415].w[2]"  1;
	setAttr ".wl[416].w[2]"  1;
	setAttr ".wl[417].w[2]"  1;
	setAttr ".wl[418].w[2]"  1;
	setAttr ".wl[419].w[2]"  1;
	setAttr ".wl[420].w[2]"  1;
	setAttr ".wl[421].w[2]"  1;
	setAttr ".wl[422].w[2]"  1;
	setAttr ".wl[423].w[2]"  1;
	setAttr ".wl[424].w[2]"  1;
	setAttr ".wl[425].w[2]"  1;
	setAttr ".wl[426].w[2]"  1;
	setAttr ".wl[427].w[2]"  1;
	setAttr ".wl[428].w[2]"  1;
	setAttr -s 2 ".wl[429].w";
	setAttr ".wl[429].w[2]" 0.5;
	setAttr ".wl[429].w[26]" 0.5;
	setAttr -s 2 ".wl[430].w";
	setAttr ".wl[430].w[2]" 0.5;
	setAttr ".wl[430].w[26]" 0.5;
	setAttr -s 2 ".wl[431].w";
	setAttr ".wl[431].w[2]" 0.5;
	setAttr ".wl[431].w[26]" 0.5;
	setAttr -s 2 ".wl[432].w";
	setAttr ".wl[432].w[2]" 0.5;
	setAttr ".wl[432].w[26]" 0.5;
	setAttr -s 2 ".wl[433].w";
	setAttr ".wl[433].w[2]" 0.5;
	setAttr ".wl[433].w[26]" 0.5;
	setAttr ".wl[434].w[26]"  1;
	setAttr -s 2 ".wl[435].w";
	setAttr ".wl[435].w[27]" 0.5;
	setAttr ".wl[435].w[32]" 0.5;
	setAttr -s 2 ".wl[436].w";
	setAttr ".wl[436].w[27]" 0.5;
	setAttr ".wl[436].w[32]" 0.5;
	setAttr -s 2 ".wl[437].w";
	setAttr ".wl[437].w[27]" 0.5;
	setAttr ".wl[437].w[32]" 0.5;
	setAttr -s 2 ".wl[438].w";
	setAttr ".wl[438].w[39]" 0.8;
	setAttr ".wl[438].w[42]" 0.2;
	setAttr ".wl[439].w[26]"  1;
	setAttr ".wl[440].w[26]"  1;
	setAttr ".wl[441].w[26]"  1;
	setAttr ".wl[442].w[26]"  1;
	setAttr -s 2 ".wl[443].w";
	setAttr ".wl[443].w[2]" 0.2;
	setAttr ".wl[443].w[26]" 0.8;
	setAttr -s 3 ".wl[444].w";
	setAttr ".wl[444].w[0]" 0.4;
	setAttr ".wl[444].w[2]" 0.4;
	setAttr ".wl[444].w[26]" 0.2;
	setAttr ".wl[445].w[0]"  1;
	setAttr ".wl[446].w[2]"  1;
	setAttr ".wl[447].w[2]"  1;
	setAttr ".wl[448].w[2]"  1;
	setAttr ".wl[449].w[2]"  1;
	setAttr ".wl[450].w[2]"  1;
	setAttr -s 2 ".wl[451].w";
	setAttr ".wl[451].w[2]" 0.5;
	setAttr ".wl[451].w[26]" 0.5;
	setAttr ".wl[452].w[26]"  1;
	setAttr ".wl[453].w[26]"  1;
	setAttr ".wl[454].w[26]"  1;
	setAttr ".wl[455].w[26]"  1;
	setAttr ".wl[456].w[26]"  1;
	setAttr ".wl[457].w[2]"  1;
	setAttr ".wl[458].w[2]"  1;
	setAttr ".wl[459].w[2]"  1;
	setAttr ".wl[460].w[2]"  1;
	setAttr ".wl[461].w[2]"  1;
	setAttr ".wl[462].w[26]"  1;
	setAttr ".wl[463].w[26]"  1;
	setAttr ".wl[464].w[26]"  1;
	setAttr ".wl[465].w[26]"  1;
	setAttr ".wl[466].w[26]"  1;
	setAttr -s 2 ".wl[467].w";
	setAttr ".wl[467].w[2]" 0.8;
	setAttr ".wl[467].w[15]" 0.2;
	setAttr ".wl[468].w[2]"  1;
	setAttr ".wl[469].w[2]"  1;
	setAttr -s 2 ".wl[470].w";
	setAttr ".wl[470].w[2]" 0.8;
	setAttr ".wl[470].w[15]" 0.2;
	setAttr -s 2 ".wl[471].w";
	setAttr ".wl[471].w[2]" 0.8;
	setAttr ".wl[471].w[15]" 0.2;
	setAttr ".wl[472].w[2]"  1;
	setAttr -s 2 ".wl[473].w";
	setAttr ".wl[473].w[2]" 0.8;
	setAttr ".wl[473].w[16]" 0.2;
	setAttr -s 2 ".wl[474].w";
	setAttr ".wl[474].w[2]" 0.8;
	setAttr ".wl[474].w[15]" 0.2;
	setAttr ".wl[475].w[3]"  1;
	setAttr ".wl[476].w[3]"  1;
	setAttr ".wl[477].w[3]"  1;
	setAttr ".wl[478].w[3]"  1;
	setAttr -s 2 ".wl[479].w";
	setAttr ".wl[479].w[7]" 0.5;
	setAttr ".wl[479].w[10]" 0.5;
	setAttr -s 2 ".wl[480].w";
	setAttr ".wl[480].w[2]" 0.3;
	setAttr ".wl[480].w[16]" 0.7;
	setAttr ".wl[481].w[16]"  1;
	setAttr -s 2 ".wl[482].w";
	setAttr ".wl[482].w[2]" 0.3;
	setAttr ".wl[482].w[16]" 0.7;
	setAttr ".wl[483].w[16]"  1;
	setAttr -s 2 ".wl[484].w";
	setAttr ".wl[484].w[2]" 0.3;
	setAttr ".wl[484].w[16]" 0.7;
	setAttr -s 2 ".wl[485].w";
	setAttr ".wl[485].w[2]" 0.15;
	setAttr ".wl[485].w[16]" 0.85;
	setAttr -s 2 ".wl[486].w";
	setAttr ".wl[486].w[2]" 0.15;
	setAttr ".wl[486].w[16]" 0.85;
	setAttr -s 2 ".wl[487].w";
	setAttr ".wl[487].w[2]" 0.3;
	setAttr ".wl[487].w[16]" 0.7;
	setAttr ".wl[488].w[16]"  1;
	setAttr ".wl[489].w[16]"  1;
	setAttr ".wl[490].w[2]"  1;
	setAttr ".wl[491].w[2]"  1;
	setAttr ".wl[492].w[2]"  1;
	setAttr ".wl[493].w[2]"  1;
	setAttr ".wl[494].w[2]"  1;
	setAttr ".wl[495].w[2]"  1;
	setAttr ".wl[496].w[2]"  1;
	setAttr -s 2 ".wl[497].w";
	setAttr ".wl[497].w[2]" 0.5;
	setAttr ".wl[497].w[16]" 0.5;
	setAttr -s 2 ".wl[498].w";
	setAttr ".wl[498].w[2]" 0.5;
	setAttr ".wl[498].w[16]" 0.5;
	setAttr -s 2 ".wl[499].w";
	setAttr ".wl[499].w[2]" 0.5;
	setAttr ".wl[499].w[16]" 0.5;
	setAttr -s 2 ".wl[500].w";
	setAttr ".wl[500].w[2]" 0.65;
	setAttr ".wl[500].w[16]" 0.35;
	setAttr -s 2 ".wl[501].w";
	setAttr ".wl[501].w[2]" 0.75;
	setAttr ".wl[501].w[16]" 0.25;
	setAttr -s 3 ".wl[502].w";
	setAttr ".wl[502].w[2]" 0.2;
	setAttr ".wl[502].w[22]" 0.2;
	setAttr ".wl[502].w[26]" 0.6;
	setAttr -s 3 ".wl[503].w";
	setAttr ".wl[503].w[2]" 0.465189873418;
	setAttr ".wl[503].w[21]" 0.25;
	setAttr ".wl[503].w[26]" 0.284810126582;
	setAttr -s 3 ".wl[504].w";
	setAttr ".wl[504].w[21]" 0.525;
	setAttr ".wl[504].w[22]" 0.25;
	setAttr ".wl[504].w[26]" 0.225;
	setAttr -s 2 ".wl[505].w";
	setAttr ".wl[505].w[22]" 0.25;
	setAttr ".wl[505].w[26]" 0.75;
	setAttr -s 2 ".wl[506].w";
	setAttr ".wl[506].w[0]" 0.5;
	setAttr ".wl[506].w[2]" 0.5;
	setAttr ".wl[507].w[26]"  1;
	setAttr ".wl[508].w[2]"  1;
	setAttr ".wl[509].w[2]"  1;
	setAttr -s 2 ".wl[510].w";
	setAttr ".wl[510].w[0]" 0.5;
	setAttr ".wl[510].w[2]" 0.5;
	setAttr ".wl[511].w[2]"  1;
	setAttr ".wl[512].w[2]"  1;
	setAttr ".wl[513].w[2]"  1;
	setAttr ".wl[514].w[2]"  1;
	setAttr ".wl[515].w[2]"  1;
	setAttr -s 2 ".wl[516].w";
	setAttr ".wl[516].w[2]" 0.6;
	setAttr ".wl[516].w[24]" 0.4;
	setAttr ".wl[517].w[2]"  1;
	setAttr ".wl[518].w[2]"  1;
	setAttr ".wl[519].w[2]"  1;
	setAttr ".wl[520].w[2]"  1;
	setAttr ".wl[521].w[2]"  1;
	setAttr ".wl[522].w[2]"  1;
	setAttr -s 3 ".wl[523].w";
	setAttr ".wl[523].w[0]" 0.4;
	setAttr ".wl[523].w[2]" 0.4;
	setAttr ".wl[523].w[26]" 0.2;
	setAttr ".wl[524].w[26]"  1;
	setAttr -s 2 ".wl[525].w";
	setAttr ".wl[525].w[2]" 0.6;
	setAttr ".wl[525].w[24]" 0.4;
	setAttr ".wl[526].w[2]"  1;
	setAttr ".wl[527].w[2]"  1;
	setAttr -s 2 ".wl[528].w";
	setAttr ".wl[528].w[2]" 0.6;
	setAttr ".wl[528].w[24]" 0.4;
	setAttr -s 2 ".wl[529].w";
	setAttr ".wl[529].w[2]" 0.6;
	setAttr ".wl[529].w[24]" 0.4;
	setAttr ".wl[530].w[0]"  1;
	setAttr ".wl[531].w[0]"  1;
	setAttr ".wl[532].w[0]"  1;
	setAttr -s 2 ".wl[533].w";
	setAttr ".wl[533].w[7]" 3.5042123158746108e-007;
	setAttr ".wl[533].w[10]" 0.99999964957876852;
	setAttr ".wl[534].w[2]"  1;
	setAttr ".wl[535].w[2]"  1;
	setAttr ".wl[536].w[2]"  1;
	setAttr ".wl[537].w[2]"  1;
	setAttr ".wl[538].w[2]"  1;
	setAttr ".wl[539].w[2]"  1;
	setAttr ".wl[540].w[2]"  1;
	setAttr -s 2 ".wl[541].w";
	setAttr ".wl[541].w[0]" 0.5;
	setAttr ".wl[541].w[2]" 0.5;
	setAttr ".wl[542].w[0]"  1;
	setAttr ".wl[543].w[2]"  1;
	setAttr ".wl[544].w[2]"  1;
	setAttr ".wl[545].w[2]"  1;
	setAttr -s 2 ".wl[546].w";
	setAttr ".wl[546].w[2]" 0.7;
	setAttr ".wl[546].w[21]" 0.3;
	setAttr -s 2 ".wl[547].w";
	setAttr ".wl[547].w[21]" 0.5;
	setAttr ".wl[547].w[46]" 0.5;
	setAttr -s 2 ".wl[548].w";
	setAttr ".wl[548].w[2]" 0.6;
	setAttr ".wl[548].w[21]" 0.4;
	setAttr ".wl[549].w[2]"  1;
	setAttr ".wl[550].w[2]"  1;
	setAttr ".wl[551].w[2]"  1;
	setAttr ".wl[552].w[2]"  1;
	setAttr ".wl[553].w[2]"  1;
	setAttr ".wl[554].w[2]"  1;
	setAttr ".wl[555].w[2]"  1;
	setAttr ".wl[556].w[2]"  1;
	setAttr -s 2 ".wl[557].w";
	setAttr ".wl[557].w[0]" 0.5;
	setAttr ".wl[557].w[2]" 0.5;
	setAttr ".wl[558].w[0]"  1;
	setAttr -s 2 ".wl[559].w";
	setAttr ".wl[559].w[2]" 0.8;
	setAttr ".wl[559].w[17]" 0.2;
	setAttr -s 2 ".wl[560].w";
	setAttr ".wl[560].w[2]" 0.8;
	setAttr ".wl[560].w[17]" 0.2;
	setAttr ".wl[561].w[2]"  1;
	setAttr ".wl[562].w[2]"  1;
	setAttr -s 2 ".wl[563].w";
	setAttr ".wl[563].w[2]" 0.98616369441200002;
	setAttr ".wl[563].w[12]" 0.013836305588500001;
	setAttr -s 2 ".wl[564].w";
	setAttr ".wl[564].w[2]" 0.8;
	setAttr ".wl[564].w[18]" 0.2;
	setAttr ".wl[565].w[2]"  1;
	setAttr ".wl[566].w[2]"  1;
	setAttr -s 2 ".wl[567].w";
	setAttr ".wl[567].w[2]" 0.95005727931899997;
	setAttr ".wl[567].w[10]" 0.049942720681400002;
	setAttr ".wl[568].w[2]"  1;
	setAttr -s 2 ".wl[569].w";
	setAttr ".wl[569].w[2]" 0.6;
	setAttr ".wl[569].w[21]" 0.4;
	setAttr ".wl[570].w[26]"  1;
	setAttr -s 3 ".wl[571].w";
	setAttr ".wl[571].w[0]" 0.4;
	setAttr ".wl[571].w[2]" 0.4;
	setAttr ".wl[571].w[26]" 0.2;
	setAttr ".wl[572].w[0]"  1;
	setAttr -s 2 ".wl[573].w";
	setAttr ".wl[573].w[2]" 0.2;
	setAttr ".wl[573].w[26]" 0.8;
	setAttr -s 2 ".wl[574].w";
	setAttr ".wl[574].w[2]" 0.2;
	setAttr ".wl[574].w[26]" 0.8;
	setAttr ".wl[575].w[26]"  1;
	setAttr ".wl[576].w[26]"  1;
	setAttr ".wl[577].w[2]"  1;
	setAttr ".wl[578].w[2]"  1;
	setAttr ".wl[579].w[2]"  1;
	setAttr ".wl[580].w[2]"  1;
	setAttr ".wl[581].w[2]"  1;
	setAttr ".wl[582].w[2]"  1;
	setAttr ".wl[583].w[2]"  1;
	setAttr -s 3 ".wl[584].w";
	setAttr ".wl[584].w[2]" 0.375;
	setAttr ".wl[584].w[26]" 0.375;
	setAttr ".wl[584].w[46]" 0.25;
	setAttr -s 2 ".wl[585].w";
	setAttr ".wl[585].w[2]" 0.93;
	setAttr ".wl[585].w[26]" 0.07;
	setAttr ".wl[586].w[26]"  1;
	setAttr ".wl[587].w[26]"  1;
	setAttr -s 2 ".wl[588].w";
	setAttr ".wl[588].w[2]" 0.2;
	setAttr ".wl[588].w[26]" 0.8;
	setAttr -s 3 ".wl[589].w";
	setAttr ".wl[589].w[0]" 0.4;
	setAttr ".wl[589].w[2]" 0.4;
	setAttr ".wl[589].w[26]" 0.2;
	setAttr ".wl[590].w[0]"  1;
	setAttr -s 2 ".wl[591].w";
	setAttr ".wl[591].w[34]" 0.5;
	setAttr ".wl[591].w[36]" 0.5;
	setAttr ".wl[592].w[35]"  1;
	setAttr ".wl[593].w[37]"  1;
	setAttr -s 2 ".wl[594].w";
	setAttr ".wl[594].w[34]" 0.5;
	setAttr ".wl[594].w[38]" 0.5;
	setAttr ".wl[595].w[34]"  1;
	setAttr -s 3 ".wl[596].w";
	setAttr ".wl[596].w[2]" 0.21142810661399999;
	setAttr ".wl[596].w[22]" 0.438571893386;
	setAttr ".wl[596].w[26]" 0.35;
	setAttr -s 3 ".wl[597].w";
	setAttr ".wl[597].w[2]" 0.20702216830600001;
	setAttr ".wl[597].w[22]" 0.44297783169400001;
	setAttr ".wl[597].w[26]" 0.35;
	setAttr -s 2 ".wl[598].w";
	setAttr ".wl[598].w[2]" 0.2;
	setAttr ".wl[598].w[26]" 0.8;
	setAttr ".wl[599].w[2]"  1;
	setAttr ".wl[600].w[2]"  1;
	setAttr ".wl[601].w[2]"  1;
	setAttr -s 3 ".wl[602].w";
	setAttr ".wl[602].w[2]" 0.34146341463399998;
	setAttr ".wl[602].w[26]" 0.35853658536600003;
	setAttr ".wl[602].w[46]" 0.3;
	setAttr ".wl[603].w[2]"  1;
	setAttr ".wl[604].w[2]"  1;
	setAttr ".wl[605].w[0]"  1;
	setAttr -s 3 ".wl[606].w";
	setAttr ".wl[606].w[0]" 0.4;
	setAttr ".wl[606].w[2]" 0.4;
	setAttr ".wl[606].w[26]" 0.2;
	setAttr -s 2 ".wl[607].w";
	setAttr ".wl[607].w[2]" 0.2;
	setAttr ".wl[607].w[26]" 0.8;
	setAttr ".wl[608].w[26]"  1;
	setAttr -s 2 ".wl[609].w";
	setAttr ".wl[609].w[26]" 0.8;
	setAttr ".wl[609].w[45]" 0.2;
	setAttr ".wl[610].w[38]"  1;
	setAttr ".wl[611].w[2]"  1;
	setAttr -s 2 ".wl[612].w";
	setAttr ".wl[612].w[2]" 0.6;
	setAttr ".wl[612].w[24]" 0.4;
	setAttr ".wl[613].w[24]"  1;
	setAttr -s 2 ".wl[614].w";
	setAttr ".wl[614].w[2]" 0.8;
	setAttr ".wl[614].w[44]" 0.2;
	setAttr ".wl[615].w[36]"  1;
	setAttr ".wl[616].w[35]"  1;
	setAttr ".wl[617].w[36]"  1;
	setAttr -s 2 ".wl[618].w";
	setAttr ".wl[618].w[34]" 0.5;
	setAttr ".wl[618].w[36]" 0.5;
	setAttr ".wl[619].w[34]"  1;
	setAttr -s 2 ".wl[620].w";
	setAttr ".wl[620].w[34]" 0.5;
	setAttr ".wl[620].w[38]" 0.5;
	setAttr ".wl[621].w[38]"  1;
	setAttr ".wl[622].w[37]"  1;
	setAttr ".wl[623].w[35]"  1;
	setAttr ".wl[624].w[36]"  1;
	setAttr -s 2 ".wl[625].w";
	setAttr ".wl[625].w[34]" 0.5;
	setAttr ".wl[625].w[36]" 0.5;
	setAttr -s 2 ".wl[626].w";
	setAttr ".wl[626].w[34]" 0.5;
	setAttr ".wl[626].w[46]" 0.5;
	setAttr -s 2 ".wl[627].w";
	setAttr ".wl[627].w[34]" 0.5;
	setAttr ".wl[627].w[38]" 0.5;
	setAttr ".wl[628].w[38]"  1;
	setAttr ".wl[629].w[37]"  1;
	setAttr ".wl[630].w[2]"  1;
	setAttr ".wl[631].w[2]"  1;
	setAttr ".wl[632].w[2]"  1;
	setAttr ".wl[633].w[2]"  1;
	setAttr ".wl[634].w[2]"  1;
	setAttr ".wl[635].w[2]"  1;
	setAttr ".wl[636].w[2]"  1;
	setAttr ".wl[637].w[2]"  1;
	setAttr ".wl[638].w[2]"  1;
	setAttr ".wl[639].w[2]"  1;
	setAttr ".wl[640].w[2]"  1;
	setAttr -s 2 ".wl[641].w";
	setAttr ".wl[641].w[0]" 0.5;
	setAttr ".wl[641].w[2]" 0.5;
	setAttr ".wl[642].w[0]"  1;
	setAttr ".wl[643].w[2]"  1;
	setAttr ".wl[644].w[2]"  1;
	setAttr ".wl[645].w[2]"  1;
	setAttr ".wl[646].w[26]"  1;
	setAttr ".wl[647].w[26]"  1;
	setAttr ".wl[648].w[26]"  1;
	setAttr -s 2 ".wl[649].w";
	setAttr ".wl[649].w[2]" 0.5;
	setAttr ".wl[649].w[26]" 0.5;
	setAttr ".wl[650].w[26]"  1;
	setAttr ".wl[651].w[26]"  1;
	setAttr ".wl[652].w[26]"  1;
	setAttr ".wl[653].w[26]"  1;
	setAttr ".wl[654].w[26]"  1;
	setAttr ".wl[655].w[26]"  1;
	setAttr -s 3 ".wl[656].w";
	setAttr ".wl[656].w[2]" 0.4;
	setAttr ".wl[656].w[22]" 0.06;
	setAttr ".wl[656].w[26]" 0.54;
	setAttr -s 3 ".wl[657].w";
	setAttr ".wl[657].w[2]" 0.63;
	setAttr ".wl[657].w[22]" 0.1;
	setAttr ".wl[657].w[26]" 0.27;
	setAttr ".wl[658].w[2]"  1;
	setAttr ".wl[659].w[2]"  1;
	setAttr ".wl[660].w[2]"  1;
	setAttr ".wl[661].w[2]"  1;
	setAttr ".wl[662].w[2]"  1;
	setAttr ".wl[663].w[2]"  1;
	setAttr ".wl[664].w[2]"  1;
	setAttr ".wl[665].w[26]"  1;
	setAttr -s 3 ".wl[666].w";
	setAttr ".wl[666].w[2]" 0.036026959813847091;
	setAttr ".wl[666].w[11]" 0.0032019423251357813;
	setAttr ".wl[666].w[12]" 0.96077109786135717;
	setAttr -s 3 ".wl[667].w";
	setAttr ".wl[667].w[2]" 0.69007121219177991;
	setAttr ".wl[667].w[11]" 3.3807270701149712e-009;
	setAttr ".wl[667].w[12]" 0.30992878442749305;
	setAttr ".wl[668].w[2]"  1;
	setAttr -s 3 ".wl[669].w";
	setAttr ".wl[669].w[2]" 0.4;
	setAttr ".wl[669].w[22]" 0.15;
	setAttr ".wl[669].w[26]" 0.45;
	setAttr -s 3 ".wl[670].w";
	setAttr ".wl[670].w[2]" 0.63;
	setAttr ".wl[670].w[22]" 0.1;
	setAttr ".wl[670].w[26]" 0.27;
	setAttr ".wl[671].w[2]"  1;
	setAttr ".wl[672].w[26]"  1;
	setAttr -s 2 ".wl[673].w[11:12]"  0.506547808647 0.493452191353;
	setAttr -s 2 ".wl[674].w[11:12]"  0.99999431909337733 5.6809066227187741e-006;
	setAttr -s 3 ".wl[675].w";
	setAttr ".wl[675].w[2]" 8.9406967163085938e-007;
	setAttr ".wl[675].w[10]" 0.59267181813162839;
	setAttr ".wl[675].w[11]" 0.40732728779869998;
	setAttr ".wl[676].w[2]"  1;
	setAttr ".wl[677].w[2]"  1;
	setAttr ".wl[678].w[2]"  1;
	setAttr ".wl[679].w[2]"  1;
	setAttr ".wl[680].w[2]"  1;
	setAttr ".wl[681].w[2]"  1;
	setAttr ".wl[682].w[2]"  1;
	setAttr ".wl[683].w[2]"  1;
	setAttr ".wl[684].w[2]"  1;
	setAttr ".wl[685].w[2]"  1;
	setAttr ".wl[686].w[2]"  1;
	setAttr -s 2 ".wl[687].w";
	setAttr ".wl[687].w[0]" 0.5;
	setAttr ".wl[687].w[2]" 0.5;
	setAttr ".wl[688].w[0]"  1;
	setAttr -s 3 ".wl[689].w";
	setAttr ".wl[689].w[2]" 0.036025303037054243;
	setAttr ".wl[689].w[11]" 0.0032018268604603849;
	setAttr ".wl[689].w[12]" 0.96077287010282542;
	setAttr ".wl[690].w[12]"  1;
	setAttr -s 3 ".wl[691].w";
	setAttr ".wl[691].w[2]" 0.0068455732010368267;
	setAttr ".wl[691].w[11]" 0.00099949683990640604;
	setAttr ".wl[691].w[12]" 0.99215492995903476;
	setAttr -s 2 ".wl[692].w[11:12]"  0.50000001488660928 0.49999998511339072;
	setAttr -s 2 ".wl[693].w[11:12]"  0.50654749681343303 0.49345250318656697;
	setAttr -s 2 ".wl[694].w[11:12]"  0.99999344631210907 6.5536878907417251e-006;
	setAttr -s 2 ".wl[695].w[11:12]"  0.99999538288511758 4.6171157919161487e-006;
	setAttr -s 2 ".wl[696].w[10:11]"  0.7 0.3;
	setAttr -s 2 ".wl[697].w[10:11]"  0.59267234802199997 0.40732765197800003;
	setAttr -s 2 ".wl[698].w";
	setAttr ".wl[698].w[7]" 2.7374457545192854e-007;
	setAttr ".wl[698].w[10]" 0.99999972625542444;
	setAttr -s 2 ".wl[699].w";
	setAttr ".wl[699].w[7]" 3.665685653686523e-006;
	setAttr ".wl[699].w[10]" 0.9999963343143462;
	setAttr -s 2 ".wl[700].w";
	setAttr ".wl[700].w[7]" 5.2796167437918484e-009;
	setAttr ".wl[700].w[10]" 0.99999999472038315;
	setAttr ".wl[701].w[12]"  1;
	setAttr ".wl[702].w[12]"  1;
	setAttr -s 2 ".wl[703].w[11:12]"  0.5 0.5;
	setAttr -s 2 ".wl[704].w[11:12]"  0.5 0.5;
	setAttr -s 2 ".wl[705].w[11:12]"  0.99999496574580382 5.0342541961855524e-006;
	setAttr -s 2 ".wl[706].w[11:12]"  0.99999552965164196 4.4703483581542969e-006;
	setAttr -s 2 ".wl[707].w[10:11]"  0.69985759258299995 0.30014240741699999;
	setAttr -s 2 ".wl[708].w[10:11]"  0.7 0.3;
	setAttr ".wl[709].w[10]"  1;
	setAttr ".wl[710].w[10]"  0.99999999999999989;
	setAttr ".wl[711].w[12]"  0.9999999999308784;
	setAttr ".wl[712].w[10]"  1;
	setAttr -s 2 ".wl[713].w";
	setAttr ".wl[713].w[2]" 0.49999706161906943;
	setAttr ".wl[713].w[5]" 0.50000293838093057;
	setAttr -s 2 ".wl[714].w";
	setAttr ".wl[714].w[2]" 0.49999895666815064;
	setAttr ".wl[714].w[5]" 0.50000104333184936;
	setAttr -s 2 ".wl[715].w";
	setAttr ".wl[715].w[2]" 0.49999794498557448;
	setAttr ".wl[715].w[5]" 0.50000205501442552;
	setAttr -s 2 ".wl[716].w";
	setAttr ".wl[716].w[2]" 0.7;
	setAttr ".wl[716].w[5]" 0.3;
	setAttr -s 2 ".wl[717].w";
	setAttr ".wl[717].w[2]" 0.49999541044235229;
	setAttr ".wl[717].w[5]" 0.50000458955764771;
	setAttr -s 2 ".wl[718].w";
	setAttr ".wl[718].w[2]" 0.4999979436397553;
	setAttr ".wl[718].w[5]" 0.50000205636024475;
	setAttr -s 2 ".wl[719].w";
	setAttr ".wl[719].w[2]" 0.50000110743951609;
	setAttr ".wl[719].w[5]" 0.49999889256048391;
	setAttr -s 2 ".wl[720].w";
	setAttr ".wl[720].w[2]" 0.5;
	setAttr ".wl[720].w[5]" 0.5;
	setAttr -s 2 ".wl[721].w";
	setAttr ".wl[721].w[2]" 0.50000005960464478;
	setAttr ".wl[721].w[5]" 0.49999994039535522;
	setAttr -s 2 ".wl[722].w";
	setAttr ".wl[722].w[2]" 0.49999898672103882;
	setAttr ".wl[722].w[5]" 0.50000101327896118;
	setAttr -s 2 ".wl[723].w";
	setAttr ".wl[723].w[0]" 0.5;
	setAttr ".wl[723].w[2]" 0.5;
	setAttr ".wl[724].w[0]"  1;
	setAttr ".wl[725].w[5]"  1;
	setAttr ".wl[726].w[5]"  1;
	setAttr ".wl[727].w[5]"  1;
	setAttr ".wl[728].w[5]"  1;
	setAttr ".wl[729].w[5]"  1;
	setAttr ".wl[730].w[5]"  1;
	setAttr ".wl[731].w[5]"  0.99999999999999989;
	setAttr ".wl[732].w[5]"  1;
	setAttr ".wl[733].w[5]"  1;
	setAttr ".wl[734].w[5]"  1;
	setAttr ".wl[735].w[5]"  1;
	setAttr ".wl[736].w[5]"  1;
	setAttr ".wl[737].w[5]"  1;
	setAttr ".wl[738].w[5]"  1;
	setAttr -s 2 ".wl[739].w";
	setAttr ".wl[739].w[2]" 0.69999783455832576;
	setAttr ".wl[739].w[5]" 0.30000216544167413;
	setAttr ".wl[740].w[5]"  1;
	setAttr ".wl[741].w[5]"  1.0000000000002274;
	setAttr ".wl[742].w[5]"  1;
	setAttr ".wl[743].w[5]"  1;
	setAttr ".wl[744].w[5]"  1;
	setAttr ".wl[745].w[5]"  1;
	setAttr ".wl[746].w[5]"  1;
	setAttr ".wl[747].w[5]"  1;
	setAttr ".wl[748].w[5]"  1;
	setAttr ".wl[749].w[5]"  1;
	setAttr ".wl[750].w[2]"  1;
	setAttr -s 2 ".wl[751].w";
	setAttr ".wl[751].w[2]" 4.4452776819525752e-006;
	setAttr ".wl[751].w[5]" 0.99999555472231805;
	setAttr ".wl[752].w[5]"  1;
	setAttr ".wl[753].w[5]"  1;
	setAttr ".wl[754].w[5]"  1;
	setAttr ".wl[755].w[5]"  1;
	setAttr ".wl[756].w[5]"  1;
	setAttr ".wl[757].w[5]"  1;
	setAttr ".wl[758].w[5]"  1;
	setAttr ".wl[759].w[5]"  1;
	setAttr ".wl[760].w[5]"  1;
	setAttr ".wl[761].w[5]"  1;
	setAttr -s 2 ".wl[762].w";
	setAttr ".wl[762].w[2]" 0.76820409268901635;
	setAttr ".wl[762].w[12]" 0.23179590731098376;
	setAttr -s 3 ".wl[763].w";
	setAttr ".wl[763].w[2]" 0.90006867492425435;
	setAttr ".wl[763].w[11]" 2.1326505114287267e-010;
	setAttr ".wl[763].w[12]" 0.099931324862480658;
	setAttr -s 2 ".wl[764].w";
	setAttr ".wl[764].w[2]" 0.99997967209899996;
	setAttr ".wl[764].w[12]" 2.0327901438599998e-005;
	setAttr ".wl[765].w[2]"  1;
	setAttr ".wl[766].w[2]"  1;
	setAttr ".wl[767].w[2]"  1;
	setAttr ".wl[768].w[2]"  1;
	setAttr ".wl[769].w[2]"  1;
	setAttr ".wl[770].w[2]"  1;
	setAttr ".wl[771].w[2]"  1;
	setAttr ".wl[772].w[2]"  1;
	setAttr -s 3 ".wl[773].w";
	setAttr ".wl[773].w[2]" 0.69027303329870393;
	setAttr ".wl[773].w[11]" 9.0501146093825573e-008;
	setAttr ".wl[773].w[12]" 0.30972687619992251;
	setAttr ".wl[774].w[2]"  1;
	setAttr ".wl[775].w[2]"  1;
	setAttr ".wl[776].w[2]"  1;
	setAttr ".wl[777].w[2]"  1;
	setAttr ".wl[778].w[2]"  1;
	setAttr ".wl[779].w[2]"  1;
	setAttr ".wl[780].w[2]"  1;
	setAttr -s 4 ".wl[781].w";
	setAttr ".wl[781].w[2]" 0.79290194083455012;
	setAttr ".wl[781].w[10]" 3.6149374687993751e-010;
	setAttr ".wl[781].w[11]" 0.045241033566838056;
	setAttr ".wl[781].w[12]" 0.16185702523671816;
	setAttr -s 4 ".wl[782].w";
	setAttr ".wl[782].w[2]" 0.70705815214365486;
	setAttr ".wl[782].w[10]" 0.017429243818551429;
	setAttr ".wl[782].w[11]" 0.27551224708218958;
	setAttr ".wl[782].w[12]" 3.5695520408660172e-007;
	setAttr -s 2 ".wl[783].w";
	setAttr ".wl[783].w[2]" 0.84086139500099999;
	setAttr ".wl[783].w[10]" 0.15913860499900001;
	setAttr -s 2 ".wl[784].w";
	setAttr ".wl[784].w[2]" 0.99553705658799996;
	setAttr ".wl[784].w[12]" 0.0044629434123599999;
	setAttr -s 2 ".wl[785].w";
	setAttr ".wl[785].w[2]" 0.93606695532799999;
	setAttr ".wl[785].w[10]" 0.063933044672000006;
	setAttr -s 2 ".wl[786].w";
	setAttr ".wl[786].w[2]" 0.67485162615799998;
	setAttr ".wl[786].w[10]" 0.32514837384200002;
	setAttr ".wl[787].w[10]"  1;
	setAttr ".wl[788].w[10]"  1;
	setAttr ".wl[789].w[10]"  1;
	setAttr ".wl[790].w[10]"  1;
	setAttr ".wl[791].w[10]"  1;
	setAttr ".wl[792].w[2]"  1;
	setAttr ".wl[793].w[2]"  1;
	setAttr ".wl[794].w[2]"  1;
	setAttr ".wl[795].w[2]"  1;
	setAttr ".wl[796].w[2]"  1;
	setAttr ".wl[797].w[2]"  1;
	setAttr ".wl[798].w[2]"  1;
	setAttr ".wl[799].w[2]"  1;
	setAttr ".wl[800].w[2]"  1;
	setAttr ".wl[801].w[2]"  1;
	setAttr ".wl[802].w[2]"  1;
	setAttr ".wl[803].w[2]"  1;
	setAttr -s 2 ".wl[804].w";
	setAttr ".wl[804].w[0]" 0.5;
	setAttr ".wl[804].w[2]" 0.5;
	setAttr ".wl[805].w[0]"  1;
	setAttr -s 2 ".wl[806].w";
	setAttr ".wl[806].w[2]" 0.70667476633470572;
	setAttr ".wl[806].w[10]" 0.29332523366529428;
	setAttr -s 2 ".wl[807].w";
	setAttr ".wl[807].w[2]" 0.2;
	setAttr ".wl[807].w[17]" 0.8;
	setAttr -s 2 ".wl[808].w";
	setAttr ".wl[808].w[2]" 5.8710575103759766e-006;
	setAttr ".wl[808].w[17]" 0.99999412894248962;
	setAttr -s 2 ".wl[809].w";
	setAttr ".wl[809].w[2]" 5.8159329843887728e-006;
	setAttr ".wl[809].w[17]" 0.99999418406701568;
	setAttr -s 2 ".wl[810].w";
	setAttr ".wl[810].w[2]" 8.0466270446777344e-006;
	setAttr ".wl[810].w[17]" 0.99999195337295532;
	setAttr -s 2 ".wl[811].w";
	setAttr ".wl[811].w[2]" 1.6748905181884766e-005;
	setAttr ".wl[811].w[17]" 0.99998325109481812;
	setAttr -s 3 ".wl[812].w";
	setAttr ".wl[812].w[2]" 0.93162132286800003;
	setAttr ".wl[812].w[10]" 0.000474607111974;
	setAttr ".wl[812].w[11]" 0.067904070019700002;
	setAttr -s 2 ".wl[813].w";
	setAttr ".wl[813].w[2]" 0.99723879015100003;
	setAttr ".wl[813].w[10]" 0.00276120984927;
	setAttr ".wl[814].w[2]"  1;
	setAttr ".wl[815].w[2]"  1;
	setAttr ".wl[816].w[2]"  1;
	setAttr ".wl[817].w[2]"  1;
	setAttr ".wl[818].w[2]"  1;
	setAttr ".wl[819].w[2]"  1;
	setAttr ".wl[820].w[2]"  1;
	setAttr ".wl[821].w[2]"  1;
	setAttr ".wl[822].w[2]"  1;
	setAttr -s 2 ".wl[823].w";
	setAttr ".wl[823].w[2]" 0.91599751654579487;
	setAttr ".wl[823].w[12]" 0.084002483453905083;
	setAttr -s 3 ".wl[824].w";
	setAttr ".wl[824].w[2]" 0.97303717741499995;
	setAttr ".wl[824].w[11]" 0.00054982904112000003;
	setAttr ".wl[824].w[12]" 0.026412993544;
	setAttr ".wl[825].w[2]"  1;
	setAttr -s 2 ".wl[826].w";
	setAttr ".wl[826].w[2]" 0.5;
	setAttr ".wl[826].w[17]" 0.5;
	setAttr -s 2 ".wl[827].w";
	setAttr ".wl[827].w[2]" 0.5000031039426176;
	setAttr ".wl[827].w[17]" 0.4999968960573824;
	setAttr -s 3 ".wl[828].w";
	setAttr ".wl[828].w[2]" 0.5000039081849682;
	setAttr ".wl[828].w[12]" 5.5523909384316334e-008;
	setAttr ".wl[828].w[17]" 0.49999603629112238;
	setAttr -s 3 ".wl[829].w";
	setAttr ".wl[829].w[2]" 0.50000466614404393;
	setAttr ".wl[829].w[12]" 1.327992930235027e-007;
	setAttr ".wl[829].w[17]" 0.49999520105666306;
	setAttr -s 2 ".wl[830].w";
	setAttr ".wl[830].w[2]" 0.50001241366135218;
	setAttr ".wl[830].w[17]" 0.49998758633864782;
	setAttr ".wl[831].w[2]"  1;
	setAttr ".wl[832].w[2]"  1;
	setAttr ".wl[833].w[2]"  1;
	setAttr ".wl[834].w[2]"  1;
	setAttr ".wl[835].w[2]"  1;
	setAttr ".wl[836].w[2]"  1;
	setAttr ".wl[837].w[2]"  1;
	setAttr -s 2 ".wl[838].w";
	setAttr ".wl[838].w[2]" 0.2;
	setAttr ".wl[838].w[17]" 0.8;
	setAttr ".wl[839].w[17]"  1;
	setAttr ".wl[840].w[17]"  1;
	setAttr ".wl[841].w[17]"  1;
	setAttr -s 2 ".wl[842].w";
	setAttr ".wl[842].w[2]" 1.6784667830382911e-005;
	setAttr ".wl[842].w[17]" 0.99998321533216972;
	setAttr ".wl[843].w[26]"  1;
	setAttr ".wl[844].w[26]"  1;
	setAttr ".wl[845].w[26]"  1;
	setAttr ".wl[846].w[26]"  1;
	setAttr -s 3 ".wl[847].w";
	setAttr ".wl[847].w[35]" 0.0971778705715;
	setAttr ".wl[847].w[40]" 0.5;
	setAttr ".wl[847].w[44]" 0.40282212942849999;
	setAttr ".wl[848].w[44]"  1;
	setAttr -s 2 ".wl[849].w";
	setAttr ".wl[849].w[44]" 0.5;
	setAttr ".wl[849].w[46]" 0.5;
	setAttr ".wl[850].w[46]"  1;
	setAttr -s 2 ".wl[851].w[45:46]"  0.5 0.5;
	setAttr ".wl[852].w[45]"  1;
	setAttr -s 2 ".wl[853].w";
	setAttr ".wl[853].w[39]" 0.55;
	setAttr ".wl[853].w[45]" 0.45;
	setAttr ".wl[854].w[2]"  1;
	setAttr ".wl[855].w[2]"  1;
	setAttr -s 3 ".wl[856].w";
	setAttr ".wl[856].w[35]" 0.1012174560001802;
	setAttr ".wl[856].w[40]" 0.8;
	setAttr ".wl[856].w[44]" 0.098782543999819741;
	setAttr -s 2 ".wl[857].w";
	setAttr ".wl[857].w[28]" 0.5;
	setAttr ".wl[857].w[35]" 0.5;
	setAttr -s 2 ".wl[858].w";
	setAttr ".wl[858].w[28]" 0.5;
	setAttr ".wl[858].w[35]" 0.5;
	setAttr -s 2 ".wl[859].w";
	setAttr ".wl[859].w[28]" 0.5;
	setAttr ".wl[859].w[35]" 0.5;
	setAttr ".wl[860].w[2]"  1;
	setAttr ".wl[861].w[2]"  1;
	setAttr ".wl[862].w[2]"  1;
	setAttr ".wl[863].w[2]"  1;
	setAttr ".wl[864].w[2]"  1;
	setAttr ".wl[865].w[2]"  1;
	setAttr ".wl[866].w[2]"  1;
	setAttr ".wl[867].w[2]"  1;
	setAttr ".wl[868].w[2]"  1;
	setAttr ".wl[869].w[2]"  1;
	setAttr ".wl[870].w[2]"  1;
	setAttr ".wl[871].w[2]"  1;
	setAttr ".wl[872].w[2]"  1;
	setAttr ".wl[873].w[2]"  1;
	setAttr ".wl[874].w[2]"  1;
	setAttr ".wl[875].w[2]"  1;
	setAttr ".wl[876].w[2]"  1;
	setAttr ".wl[877].w[2]"  1;
	setAttr ".wl[878].w[2]"  1;
	setAttr ".wl[879].w[2]"  1;
	setAttr ".wl[880].w[2]"  1;
	setAttr ".wl[881].w[2]"  1;
	setAttr -s 2 ".wl[882].w";
	setAttr ".wl[882].w[2]" 0.5;
	setAttr ".wl[882].w[26]" 0.5;
	setAttr -s 2 ".wl[883].w";
	setAttr ".wl[883].w[2]" 0.5;
	setAttr ".wl[883].w[26]" 0.5;
	setAttr -s 2 ".wl[884].w";
	setAttr ".wl[884].w[2]" 0.5;
	setAttr ".wl[884].w[26]" 0.5;
	setAttr -s 2 ".wl[885].w";
	setAttr ".wl[885].w[2]" 0.5;
	setAttr ".wl[885].w[26]" 0.5;
	setAttr ".wl[886].w[26]"  1;
	setAttr -s 2 ".wl[887].w";
	setAttr ".wl[887].w[27]" 0.5;
	setAttr ".wl[887].w[37]" 0.5;
	setAttr -s 2 ".wl[888].w";
	setAttr ".wl[888].w[27]" 0.5;
	setAttr ".wl[888].w[37]" 0.5;
	setAttr -s 2 ".wl[889].w";
	setAttr ".wl[889].w[27]" 0.5;
	setAttr ".wl[889].w[37]" 0.5;
	setAttr -s 2 ".wl[890].w";
	setAttr ".wl[890].w[39]" 0.8;
	setAttr ".wl[890].w[45]" 0.2;
	setAttr ".wl[891].w[26]"  1;
	setAttr ".wl[892].w[26]"  1;
	setAttr ".wl[893].w[26]"  1;
	setAttr ".wl[894].w[26]"  1;
	setAttr -s 2 ".wl[895].w";
	setAttr ".wl[895].w[2]" 0.2;
	setAttr ".wl[895].w[26]" 0.8;
	setAttr -s 3 ".wl[896].w";
	setAttr ".wl[896].w[0]" 0.4;
	setAttr ".wl[896].w[2]" 0.4;
	setAttr ".wl[896].w[26]" 0.2;
	setAttr ".wl[897].w[0]"  1;
	setAttr ".wl[898].w[2]"  1;
	setAttr ".wl[899].w[2]"  1;
	setAttr ".wl[900].w[2]"  1;
	setAttr ".wl[901].w[2]"  1;
	setAttr -s 2 ".wl[902].w";
	setAttr ".wl[902].w[2]" 0.5;
	setAttr ".wl[902].w[26]" 0.5;
	setAttr ".wl[903].w[26]"  1;
	setAttr ".wl[904].w[26]"  1;
	setAttr ".wl[905].w[26]"  1;
	setAttr ".wl[906].w[26]"  1;
	setAttr ".wl[907].w[2]"  1;
	setAttr ".wl[908].w[2]"  1;
	setAttr ".wl[909].w[2]"  1;
	setAttr ".wl[910].w[2]"  1;
	setAttr ".wl[911].w[26]"  1;
	setAttr ".wl[912].w[26]"  1;
	setAttr ".wl[913].w[26]"  1;
	setAttr ".wl[914].w[26]"  1;
	setAttr -s 2 ".wl[915].w";
	setAttr ".wl[915].w[2]" 0.8;
	setAttr ".wl[915].w[17]" 0.2;
	setAttr ".wl[916].w[2]"  1;
	setAttr ".wl[917].w[2]"  1;
	setAttr -s 2 ".wl[918].w";
	setAttr ".wl[918].w[2]" 0.8;
	setAttr ".wl[918].w[17]" 0.2;
	setAttr -s 2 ".wl[919].w";
	setAttr ".wl[919].w[2]" 0.8;
	setAttr ".wl[919].w[17]" 0.2;
	setAttr ".wl[920].w[2]"  1;
	setAttr -s 2 ".wl[921].w";
	setAttr ".wl[921].w[2]" 0.79999916553497308;
	setAttr ".wl[921].w[18]" 0.20000083446502687;
	setAttr -s 2 ".wl[922].w";
	setAttr ".wl[922].w[2]" 0.8;
	setAttr ".wl[922].w[17]" 0.2;
	setAttr ".wl[923].w[5]"  1;
	setAttr ".wl[924].w[5]"  1;
	setAttr ".wl[925].w[5]"  1;
	setAttr ".wl[926].w[5]"  1;
	setAttr -s 2 ".wl[927].w";
	setAttr ".wl[927].w[2]" 0.30000980496406554;
	setAttr ".wl[927].w[18]" 0.6999901950359344;
	setAttr -s 2 ".wl[928].w";
	setAttr ".wl[928].w[2]" 5.5432319641113281e-006;
	setAttr ".wl[928].w[18]" 0.99999445676803589;
	setAttr -s 2 ".wl[929].w";
	setAttr ".wl[929].w[2]" 0.30000958454454818;
	setAttr ".wl[929].w[18]" 0.69999041545545171;
	setAttr -s 2 ".wl[930].w";
	setAttr ".wl[930].w[2]" 6.0796737670898429e-006;
	setAttr ".wl[930].w[18]" 0.99999392032623291;
	setAttr -s 2 ".wl[931].w";
	setAttr ".wl[931].w[2]" 0.29999738931655884;
	setAttr ".wl[931].w[18]" 0.70000261068344105;
	setAttr -s 2 ".wl[932].w";
	setAttr ".wl[932].w[2]" 0.15;
	setAttr ".wl[932].w[18]" 0.85;
	setAttr -s 2 ".wl[933].w";
	setAttr ".wl[933].w[2]" 0.15;
	setAttr ".wl[933].w[18]" 0.85;
	setAttr -s 2 ".wl[934].w";
	setAttr ".wl[934].w[2]" 0.3;
	setAttr ".wl[934].w[18]" 0.7;
	setAttr ".wl[935].w[18]"  1;
	setAttr ".wl[936].w[18]"  1;
	setAttr ".wl[937].w[2]"  1;
	setAttr ".wl[938].w[2]"  1;
	setAttr ".wl[939].w[2]"  1;
	setAttr ".wl[940].w[2]"  1;
	setAttr ".wl[941].w[2]"  1;
	setAttr ".wl[942].w[2]"  1;
	setAttr -s 2 ".wl[943].w";
	setAttr ".wl[943].w[2]" 0.50000025370754564;
	setAttr ".wl[943].w[18]" 0.49999974629245447;
	setAttr -s 2 ".wl[944].w";
	setAttr ".wl[944].w[2]" 0.5;
	setAttr ".wl[944].w[18]" 0.5;
	setAttr -s 2 ".wl[945].w";
	setAttr ".wl[945].w[2]" 0.5;
	setAttr ".wl[945].w[18]" 0.5;
	setAttr -s 2 ".wl[946].w";
	setAttr ".wl[946].w[2]" 0.64998317823119578;
	setAttr ".wl[946].w[18]" 0.35001682176880422;
	setAttr -s 2 ".wl[947].w";
	setAttr ".wl[947].w[2]" 0.74998806922249051;
	setAttr ".wl[947].w[18]" 0.25001193077750944;
	setAttr -s 47 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -2.6510792265591219 -0.15941333770751953 1;
	setAttr ".pm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -2.6510792265591219 -0.15941333770751953 1;
	setAttr ".pm[3]" -type "matrix" 0.8568782041537788 0 0.51551890677859236 0 0 1 0 0
		 -0.51551890677859236 0 0.8568782041537788 0 -3.0171090069512472 -4.9250746656808948 -1.691518804817667 1;
	setAttr ".pm[4]" -type "matrix" 0.8568782041537788 0 0.51551890677859236 0 0 1 0 0
		 -0.51551890677859236 0 0.8568782041537788 0 -4.8462829721256746 -4.9250746656808948 -1.6915188048176679 1;
	setAttr ".pm[5]" -type "matrix" 0.85687945571393631 -6.3132603144509235e-017 0.51551682647163743 0
		 0 -1 -1.2246467991473535e-016 0 0.51551682647163743 1.0493746826951986e-016 -0.85687945571393653 0
		 3.0171088655212888 4.9250699999999989 1.6915090889480455 1;
	setAttr ".pm[6]" -type "matrix" 0.85687945571393631 -6.3132603144509235e-017 0.51551682647163743 0
		 0 -1 -1.2246467991473535e-016 0 0.51551682647163743 1.0493746826951986e-016 -0.85687945571393653 0
		 4.8462809731593302 4.9250699999999989 1.6915090889480449 1;
	setAttr ".pm[7]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.70032157905532078 -7.9587930460186911 -3.9659181433425426 1;
	setAttr ".pm[8]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.5418849868367961 -8.0130874594239465 -3.7692945846020662 1;
	setAttr ".pm[9]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.832097442617433 -7.7271002377287905 -3.0350306518440733 1;
	setAttr ".pm[10]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.700322 -7.9587899999999996 -3.9659200000000001 1;
	setAttr ".pm[11]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.5418799999999999 -8.01309 -3.7692899999999994 1;
	setAttr ".pm[12]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.8321000000000001 -7.7271000000000001 -3.0350299999999999 1;
	setAttr ".pm[13]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.3571937889825747 -6.2774743325479854 -2.1338703839812605 1;
	setAttr ".pm[14]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.3571899999999999 -6.2774700000000001 -2.1338699999999999 1;
	setAttr ".pm[15]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.3571937889825747 -6.2774743325479854 -2.1338703839812605 1;
	setAttr ".pm[16]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.3571937889825747 -6.2774743325479854 -2.1338703839812605 1;
	setAttr ".pm[17]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.3571899999999999 -6.2774700000000001 -2.1338699999999999 1;
	setAttr ".pm[18]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.3571899999999999 -6.2774700000000001 -2.1338699999999999 1;
	setAttr ".pm[19]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.2891244888305664 -4.8194341659545898 -3.8684920072555538 1;
	setAttr ".pm[20]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.6112871170043945 -3.9640679359436031 -3.5529706478118896 1;
	setAttr ".pm[21]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.28912 -4.8194299999999997 -3.86849 1;
	setAttr ".pm[22]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.6112899999999999 -3.9640699999999991 -3.5529700000000002 1;
	setAttr ".pm[23]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.67817592620849609 -4.8611326217651367 -4.2679023742675781 1;
	setAttr ".pm[24]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.678176 -4.8611300000000002 -4.2679 1;
	setAttr ".pm[25]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -4.3245658274341752 -0.51162947847714935 1;
	setAttr ".pm[26]" -type "matrix" 1 0 0 0 0 0.91771303142205074 -0.39724399549665951 0
		 0 0.39724399549665951 0.91771303142205074 0 0 -4.1719521533229615 1.2483787684201215 1;
	setAttr ".pm[27]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -3.604121674342684 -4.5782801586721877 1;
	setAttr ".pm[28]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -3.8536765854340032 -4.5991263872092452 1;
	setAttr ".pm[29]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.2116631576933896 -3.7272872924804687 -4.2309069633483887 1;
	setAttr ".pm[30]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.47707247734069824 -3.856354741333051 -4.5410800462668623 1;
	setAttr ".pm[31]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.87896239757537842 -3.8239085953216994 -4.4307237153952794 1;
	setAttr ".pm[32]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.43370148539543152 -3.6000308883624585 -4.5117599445913772 1;
	setAttr ".pm[33]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.82565557956695557 -3.6117086303668535 -4.4300243336294631 1;
	setAttr ".pm[34]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.21166 -3.7272899999999991 -4.2309099999999997 1;
	setAttr ".pm[35]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.477072 -3.8563499999999991 -4.5410800000000009 1;
	setAttr ".pm[36]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.87896200000000002 -3.8239100000000006 -4.43072 1;
	setAttr ".pm[37]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.433701 -3.6000299999999998 -4.5117599999999998 1;
	setAttr ".pm[38]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.82565599999999995 -3.6117099999999991 -4.4300200000000007 1;
	setAttr ".pm[39]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -3.3901154994964595 -4.4691109657287598 1;
	setAttr ".pm[40]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -4.0899658203125 -4.5796923637390146 1;
	setAttr ".pm[41]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.9693737030029298 -4.0818991661071777 -4.3959288597106942 1;
	setAttr ".pm[42]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.85301494598388672 -3.4086754322052002 -4.2707557678222656 1;
	setAttr ".pm[43]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.6155891418457031 -3.7449901103973384 -4.044743537902832 1;
	setAttr ".pm[44]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.96937399999999996 -4.0819000000000001 -4.3959299999999999 1;
	setAttr ".pm[45]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.85301499999999997 -3.4086799999999999 -4.2707600000000001 1;
	setAttr ".pm[46]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.6155900000000001 -3.74499 -4.04474 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 47 ".ma";
	setAttr -s 47 ".dpf[0:46]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 47 ".lw";
	setAttr -s 47 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".bm" 0;
	setAttr ".ucm" yes;
createNode tweak -n "tweak1";
	setAttr -s 3 ".vl[0].vt";
	setAttr ".vl[0].vt[393]" -type "float3" -7.4505806e-009 -1.4901161e-008 0 ;
	setAttr ".vl[0].vt[490]" -type "float3" 0 0 3.7252903e-009 ;
createNode objectSet -n "skinCluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId69";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	setAttr -s 47 ".wm";
	setAttr -s 47 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 2.6510792265591219 0.15941333770751953 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.4573048726676103 2.2739954391217729
		 -0.26536447883836201 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.26750868756567625 0 0.96355544836656348 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.8291739651744272 0 4.4408920985006262e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.4573 2.273990773440878
		 -0.26536433770751955 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.96355577309098628 -1.6380111278350406e-017 0.26750751791871547 5.900077466579149e-017 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.8291721076380425 0
		 2.2204460492503131e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.70032157905532078 5.3077138194595692
		 3.806504805635023 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.5418849868367961 5.3620082328648246
		 3.6098812468945471 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.832097442617433 5.0760210111696686
		 2.8756173141365537 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.700322 5.3077107734408777
		 3.8065066622924806 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.5418799999999999 5.3620107734408782
		 3.6098766622924798 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.8321000000000001 5.0760207734408782
		 2.8756166622924804 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.3571937889825747 3.6263951059888631
		 1.974457046273741 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.3571899999999999 3.6263907734408782
		 1.9744566622924804 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.3571937889825747 3.6263951059888631
		 1.974457046273741 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.3571937889825747 3.6263951059888631
		 1.974457046273741 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.3571899999999999 3.6263907734408782
		 1.9744566622924804 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.3571899999999999 3.6263907734408782
		 1.9744566622924804 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2891244888305664 2.168354939395468
		 3.7090786695480342 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.6112871170043945 1.3129887093844816
		 3.3935573101043701 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.28912 2.1683507734408778
		 3.7090766622924809 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.6112899999999999 1.3129907734408779
		 3.3935566622924807 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.67817592620849609 2.2100533952060148
		 4.1084890365600586 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.678176 2.2100507734408783
		 4.1084866622924805 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 1.6734866008750533
		 0.35221614076962982 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0.20283856706498057 0 0 0.9792121913615176 1 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.72044415309149112
		 4.0666506801950382 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.47088924200017163
		 4.0874969087320956 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2116631576933896 -0.59727853495370598
		 3.7192774848712391 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.47707247734069824 -0.46821108610112416
		 4.0294505677897128 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.87896239757537842 -0.50065723211247626
		 3.9190942369181303 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.43370148539543152 -0.72453493907171662
		 4.0001304661142276 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.82565557956695557 -0.71285719706732165
		 3.9183948551523136 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.21166 -0.59727582743417607
		 3.7192805215228506 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.477072 -0.46821582743417567
		 4.0294505215228513 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.87896200000000002
		 -0.50065582743417458 3.9190905215228504 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.433701 -0.72453582743417533
		 4.0001305215228502 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.82565599999999995
		 -0.71285582743417564 3.9183905215228512 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.93445032793771565
		 3.9574814872516102 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.23460000712167517
		 4.068062885261865 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.9693737030029298 -0.24266666132699743
		 3.8842993812335447 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.85301494598388672 -0.91589039522897508
		 3.7591262893451161 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.6155891418457031 -0.57957571703683675
		 3.5331140594256825 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.96937399999999996
		 -0.24266582743417509 3.8843005215228503 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.85301499999999997
		 -0.91588582743417524 3.7591305215228505 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.6155900000000001 -0.57957582743417557
		 3.5331105215228504 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 47 ".m";
	setAttr -s 47 ".p";
	setAttr ".bp" yes;
createNode BlendTransforms -n "BlendTransforms1";
	setAttr -s 6 ".t";
	setAttr ".t[0].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.70032157905532078 5.3077138194595692 3.806504805635023 1;
	setAttr ".t[0].bsx" 1;
	setAttr ".t[0].bsy" 1;
	setAttr ".t[0].bsz" 1;
	setAttr -s 8 ".t[0].p";
	setAttr ".t[0].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0.48710901811988722 -0.15126472047125672 0;
	setAttr ".t[0].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.46456837916126498 0.066814135511910955 0;
	setAttr ".t[0].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.20193097196163959 -0.1546920060578616 0.18913235046885113 0;
	setAttr ".t[0].p[3].m" -type "matrix" -0.048158178595191226 -0.30658954161023827 0 0
		 0.30658954161023827 -0.048158178595191226 0 0 0 0 0 0 0.15819615228282136 0.33247934491883324 -0.0055585892981326879 0;
	setAttr ".t[0].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 4.2094467922471068e-007 -3.0460186914993415e-006 1.856657457555144e-006 0;
	setAttr ".t[0].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 4.2094467922471068e-007 -3.0460186914993415e-006 1.856657457555144e-006 0;
	setAttr ".t[0].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 4.2094467922471068e-007 -3.0460186914993415e-006 1.856657457555144e-006 0;
	setAttr ".t[0].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 4.2094467922471068e-007 -3.0460186914993415e-006 1.856657457555144e-006 0;
	setAttr ".t[1].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.5418849868367961 5.3620082328648246 3.6098812468945471 1;
	setAttr ".t[1].bsx" 1;
	setAttr ".t[1].bsy" 1;
	setAttr ".t[1].bsz" 1;
	setAttr -s 8 ".t[1].p";
	setAttr ".t[1].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0.48710901811988722 -0.15126472047125672 0;
	setAttr ".t[1].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.46456837916126498 0.066814135511910955 0;
	setAttr ".t[1].p[2].m" -type "matrix" -0.0063749732328067799 0.10326587599566572 -0.045226817672067418 0
		 -0.1026673710276058 -0.0054029841725854455 0.015368377711440487 0 0.046569486879012995 -0.010627086244562364 -0.0011414775205769168 0
		 -0.30099714812432987 0.073840701552884802 0.33668743982766669 0;
	setAttr ".t[1].p[3].m" -type "matrix" -0.0037068792788965688 0 -0.086023354990401965 0
		 0 0 0 0 0.086023354990401965 0 -0.0037068792788965688 0 0.15478675157322197 0.019290119482992196 0.022438636905524056 0;
	setAttr ".t[1].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.9868367961725113e-006 2.5405760535335276e-006 -4.5846020673145915e-006 0;
	setAttr ".t[1].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.9868367961725113e-006 2.5405760535335276e-006 -4.5846020673145915e-006 0;
	setAttr ".t[1].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.9868367961725113e-006 2.5405760535335276e-006 -4.5846020673145915e-006 0;
	setAttr ".t[1].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.9868367961725113e-006 2.5405760535335276e-006 -4.5846020673145915e-006 0;
	setAttr ".t[2].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.832097442617433 5.0760210111696686 2.8756173141365537 1;
	setAttr ".t[2].bsx" 1;
	setAttr ".t[2].bsy" 1;
	setAttr ".t[2].bsz" 1;
	setAttr -s 8 ".t[2].p";
	setAttr ".t[2].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0.48710901811988722 -0.15126472047125672 0;
	setAttr ".t[2].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.46456837916126498 0.066814135511910955 0;
	setAttr ".t[2].p[2].m" -type "matrix" -0.016734860926399642 -0.18218031255482409 0 0
		 0.18218031255482409 -0.016734860926399642 0 0 0 0 0 0 -0.25788804063032789 0.2324959755187912 0.26802698196109942 0;
	setAttr ".t[2].p[3].m" -type "matrix" -0.033464192814588012 0.25653173961216585 0 0
		 -0.25653173961216585 -0.033464192814588012 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[2].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 2.557382567047739e-006 -2.3772879043093553e-007 -6.5184407338492178e-007 0;
	setAttr ".t[2].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 2.557382567047739e-006 -2.3772879043093553e-007 -6.5184407338492178e-007 0;
	setAttr ".t[2].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 2.557382567047739e-006 -2.3772879043093553e-007 -6.5184407338492178e-007 0;
	setAttr ".t[2].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 2.557382567047739e-006 -2.3772879043093553e-007 -6.5184407338492178e-007 0;
	setAttr ".t[3].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.700322 5.3077107734408777 3.8065066622924806 1;
	setAttr ".t[3].bsx" 1;
	setAttr ".t[3].bsy" 1;
	setAttr ".t[3].bsz" 1;
	setAttr -s 8 ".t[3].p";
	setAttr ".t[3].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[3].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[3].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[3].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[3].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 4.2094467922471068e-007 0.48711206413857866 -0.15126657712871427 0;
	setAttr ".t[3].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 4.2094467922471068e-007 -0.46456533314257342 0.0668122788544534 0;
	setAttr ".t[3].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.20193139290631884 -0.1546889600391701 0.18913049381139355 0;
	setAttr ".t[3].p[7].m" -type "matrix" -0.048158178595191226 0.30658954161023821 0 0
		 -0.30658954161023821 -0.048158178595191226 0 0 0 0 0 0 -0.15819573133814213 0.33248239093752474 -0.005560445955590243 0;
	setAttr ".t[4].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.5418799999999999 5.3620107734408782 3.6098766622924798 1;
	setAttr ".t[4].bsx" 1;
	setAttr ".t[4].bsy" 1;
	setAttr ".t[4].bsz" 1;
	setAttr -s 8 ".t[4].p";
	setAttr ".t[4].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[4].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[4].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[4].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[4].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.9868367961725113e-006 0.48710647754383363 -0.1512601358691894 0;
	setAttr ".t[4].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.9868367961725113e-006 -0.46457091973731846 0.066818720113978269 0;
	setAttr ".t[4].p[6].m" -type "matrix" -0.0063749732328067799 -0.10326587599566572 0.045226817672067418 0
		 0.1026673710276058 -0.0054029841725854455 0.015368377711440487 0 -0.046569486879012995 -0.010627086244562364 -0.0011414775205769168 0
		 0.3009921612875337 0.073838160976831269 0.336692024429734 0;
	setAttr ".t[4].p[7].m" -type "matrix" -0.0037068792788965688 0 0.086023354990401965 0
		 0 0 0 0 -0.086023354990401965 0 -0.0037068792788965688 0 -0.15479173841001814 0.019287578906938663 0.022443221507591371 0;
	setAttr ".t[5].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.8321000000000001 5.0760207734408782 2.8756166622924804 1;
	setAttr ".t[5].bsx" 1;
	setAttr ".t[5].bsy" 1;
	setAttr ".t[5].bsz" 1;
	setAttr -s 8 ".t[5].p";
	setAttr ".t[5].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[5].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[5].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[5].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[5].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 2.557382567047739e-006 0.48710925584867759 -0.15126406862718331 0;
	setAttr ".t[5].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 2.557382567047739e-006 -0.46456814143247449 0.06681478735598434 0;
	setAttr ".t[5].p[6].m" -type "matrix" -0.016734860926399642 0.18218031255482409 0 0
		 -0.18218031255482409 -0.016734860926399642 0 0 0 0 0 0 0.25789059801289493 0.23249621324758163 0.2680276338051728 0;
	setAttr ".t[5].p[7].m" -type "matrix" -0.033464192814588012 -0.25653173961216585 0 0
		 0.25653173961216585 -0.033464192814588012 0 0 0 0 0 0 2.557382567047739e-006 2.3772879043093553e-007 6.5184407338492178e-007 0;
	setAttr -s 6 ".o";
createNode objectSet -n "Lids";
	addAttr -ci true -h true -sn "Blend_Node" -ln "Blend_Node" -dt "string";
	addAttr -ci true -k true -sn "BT_LUpperClose" -ln "BT_LUpperClose" -nn "LUpperClose" 
		-min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "BT_LUpperOpen" -ln "BT_LUpperOpen" -nn "LUpperOpen" 
		-min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "BT_LLowerClose" -ln "BT_LLowerClose" -nn "LLowerClose" 
		-min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "BT_LLowerOpen" -ln "BT_LLowerOpen" -nn "LLowerOpen" 
		-min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "BT_RUpperClose" -ln "BT_RUpperClose" -nn "RUpperClose" 
		-min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "BT_RUpperOpen" -ln "BT_RUpperOpen" -nn "RUpperOpen" 
		-min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "BT_RLowerClose" -ln "BT_RLowerClose" -nn "RLowerClose" 
		-min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "BT_RLowerOpen" -ln "BT_RLowerOpen" -nn "RLowerOpen" 
		-min 0 -max 1 -at "double";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".Blend_Node" -type "string" "BlendTransforms2";
	setAttr -k on ".BT_LUpperClose";
	setAttr -k on ".BT_LUpperOpen";
	setAttr -k on ".BT_LLowerClose";
	setAttr -k on ".BT_LLowerOpen";
	setAttr -k on ".BT_RUpperClose";
	setAttr -k on ".BT_RUpperOpen";
	setAttr -k on ".BT_RLowerClose";
	setAttr -k on ".BT_RLowerOpen";
createNode BlendTransforms -n "BlendTransforms2";
	setAttr -s 4 ".t";
	setAttr ".t[0].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.3571937889825747 3.6263951059888631 1.974457046273741 1;
	setAttr ".t[0].bsx" 1;
	setAttr ".t[0].bsy" 1;
	setAttr ".t[0].bsz" 1;
	setAttr -s 8 ".t[0].p";
	setAttr ".t[0].p[0].m" -type "matrix" -0.0038447516620163658 -0.080863365715398691 -0.033702185298105855 0
		 0.085991238266885026 -0.17096256637770202 0.55254179986158669 0 -0.016740016428247292 -0.55331550650431938 -0.16719646848020009 0
		 -0.060741434488952077 0.081767021372670889 0.079486440086271148 0;
	setAttr ".t[0].p[0].sx" 0.081490958664873769;
	setAttr ".t[0].p[0].sy" 0.016384975966317272;
	setAttr ".t[0].p[0].sz" 0.016384975966317272;
	setAttr ".t[0].p[1].m" -type "matrix" 0 0 0 0 0 -0.54600950026045303 -0.89100652418836779 0
		 0 0.89100652418836779 -0.54600950026045303 0 0 0 0 0;
	setAttr ".t[0].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[0].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[0].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -3.788982574803867e-006 -4.3325479848199677e-006 -3.8398126056549126e-007 0;
	setAttr ".t[0].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -3.788982574803867e-006 -4.3325479848199677e-006 -3.8398126056549126e-007 0;
	setAttr ".t[0].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -3.788982574803867e-006 -4.3325479848199677e-006 -3.8398126056549126e-007 0;
	setAttr ".t[0].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -3.788982574803867e-006 -4.3325479848199677e-006 -3.8398126056549126e-007 0;
	setAttr ".t[1].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.3571937889825747 3.6263951059888631 1.974457046273741 1;
	setAttr ".t[1].bsx" 1;
	setAttr ".t[1].bsy" 1;
	setAttr ".t[1].bsz" 1;
	setAttr -s 8 ".t[1].p";
	setAttr ".t[1].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[1].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[1].p[2].m" -type "matrix" 0 0 0 0 0 -0.037806333317636387 -0.27236620164100478 0
		 0 0.27236620164100478 -0.037806333317636387 0 0 0 0 0;
	setAttr ".t[1].p[3].m" -type "matrix" 0 0 0 0 0 -0.060307379214091565 0.34202014332566871 0
		 0 -0.34202014332566871 -0.060307379214091565 0 0 0 0 0;
	setAttr ".t[1].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -3.788982574803867e-006 -4.3325479848199677e-006 -3.8398126056549126e-007 0;
	setAttr ".t[1].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -3.788982574803867e-006 -4.3325479848199677e-006 -3.8398126056549126e-007 0;
	setAttr ".t[1].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -3.788982574803867e-006 -4.3325479848199677e-006 -3.8398126056549126e-007 0;
	setAttr ".t[1].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -3.788982574803867e-006 -4.3325479848199677e-006 -3.8398126056549126e-007 0;
	setAttr ".t[2].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.3571899999999999 3.6263907734408782 1.9744566622924804 1;
	setAttr ".t[2].bsx" 1;
	setAttr ".t[2].bsy" 1;
	setAttr ".t[2].bsz" 1;
	setAttr -s 8 ".t[2].p";
	setAttr ".t[2].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[2].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[2].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[2].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[2].p[4].m" -type "matrix" -0.0038447516620163658 0.080863365715398691 0.033702185298105869 0
		 -0.085991238266885026 -0.17096256637770213 0.5525417998615868 0 0.016740016428247292 -0.55331550650431949 -0.16719646848020009 0
		 0.06073764550637728 0.081771353920655709 0.079486824067531714 0;
	setAttr ".t[2].p[4].sx" 0.081490958664873769;
	setAttr ".t[2].p[4].sy" 0.016384975966317272;
	setAttr ".t[2].p[4].sz" 0.016384975966317272;
	setAttr ".t[2].p[5].m" -type "matrix" 0 0 0 0 0 -0.54600950026045303 -0.89100652418836779 0
		 0 0.89100652418836779 -0.54600950026045303 0 -3.788982574803867e-006 4.3325479848199677e-006 3.8398126056549126e-007 0;
	setAttr ".t[2].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -3.788982574803867e-006 4.3325479848199677e-006 3.8398126056549126e-007 0;
	setAttr ".t[2].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -3.788982574803867e-006 4.3325479848199677e-006 3.8398126056549126e-007 0;
	setAttr ".t[3].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.3571899999999999 3.6263907734408782 1.9744566622924804 1;
	setAttr ".t[3].bsx" 1;
	setAttr ".t[3].bsy" 1;
	setAttr ".t[3].bsz" 1;
	setAttr -s 8 ".t[3].p";
	setAttr ".t[3].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[3].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[3].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[3].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[3].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -3.788982574803867e-006 4.3325479848199677e-006 3.8398126056549126e-007 0;
	setAttr ".t[3].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -3.788982574803867e-006 4.3325479848199677e-006 3.8398126056549126e-007 0;
	setAttr ".t[3].p[6].m" -type "matrix" 0 0 0 0 0 -0.037806333317636387 -0.27236620164100478 0
		 0 0.27236620164100478 -0.037806333317636387 0 -3.788982574803867e-006 4.3325479848199677e-006 3.8398126056549126e-007 0;
	setAttr ".t[3].p[7].m" -type "matrix" 0 0 0 0 0 -0.060307379214091565 0.34202014332566871 0
		 0 -0.34202014332566871 -0.060307379214091565 0 -3.788982574803867e-006 4.3325479848199677e-006 3.8398126056549126e-007 0;
	setAttr -s 4 ".o";
createNode objectSet -n "Mouth";
	addAttr -ci true -h true -sn "Blend_Node" -ln "Blend_Node" -dt "string";
	addAttr -ci true -k true -sn "BT_Open" -ln "BT_Open" -nn "Open" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "BT_Narrow" -ln "BT_Narrow" -nn "Narrow" -min 0 -max 
		1 -at "double";
	addAttr -ci true -k true -sn "BT_Wide" -ln "BT_Wide" -nn "Wide" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "BT_LSmile" -ln "BT_LSmile" -nn "LSmile" -min 0 -max 
		1 -at "double";
	addAttr -ci true -k true -sn "BT_RSmile" -ln "BT_RSmile" -nn "RSmile" -min 0 -max 
		1 -at "double";
	addAttr -ci true -k true -sn "BT_LSad" -ln "BT_LSad" -nn "LSad" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "BT_RSad" -ln "BT_RSad" -nn "RSad" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "BT_Close" -ln "BT_Close" -nn "Close" -min 0 -max 1 
		-at "double";
	addAttr -ci true -k true -sn "BT_LSneer" -ln "BT_LSneer" -nn "LSneer" -min 0 -max 
		1 -at "double";
	addAttr -ci true -k true -sn "BT_RSneer" -ln "BT_RSneer" -nn "RSneer" -min 0 -max 
		1 -at "double";
	setAttr ".ihi" 0;
	setAttr -s 27 ".dsm";
	setAttr ".Blend_Node" -type "string" "BlendTransforms3";
	setAttr -k on ".BT_Open";
	setAttr -k on ".BT_Narrow";
	setAttr -k on ".BT_Wide";
	setAttr -k on ".BT_LSmile";
	setAttr -k on ".BT_RSmile";
	setAttr -k on ".BT_LSad";
	setAttr -k on ".BT_RSad";
	setAttr -k on ".BT_Close";
	setAttr -k on ".BT_LSneer";
	setAttr -k on ".BT_RSneer";
createNode BlendTransforms -n "BlendTransforms3";
	setAttr -s 27 ".t";
	setAttr ".t[0].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.2891244888305664 2.168354939395468 3.7090786695480342 1;
	setAttr ".t[0].bsx" 1;
	setAttr ".t[0].bsy" 1;
	setAttr ".t[0].bsz" 1;
	setAttr -s 10 ".t[0].p";
	setAttr ".t[0].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[0].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[0].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.074672680157184868 0.1357685093766996 0 0;
	setAttr ".t[0].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.0038024751977445703 0.5889933104874725 0 0;
	setAttr ".t[0].p[3].sx" 0.76536522977114252;
	setAttr ".t[0].p[3].sy" 0.76536522977114252;
	setAttr ".t[0].p[3].sz" 0.76536522977114252;
	setAttr ".t[0].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.4888305663626227e-006 -4.1659545901850947e-006 -2.0072555533268144e-006 0;
	setAttr ".t[0].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.28220495232934262 0 0;
	setAttr ".t[0].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.4888305663626227e-006 -4.1659545901850947e-006 -2.0072555533268144e-006 0;
	setAttr ".t[0].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[0].p[8].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0.16821290085753482 0 0;
	setAttr ".t[0].p[9].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.4888305663626227e-006 -4.1659545901850947e-006 -2.0072555533268144e-006 0;
	setAttr ".t[1].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.6112871170043945 1.3129887093844816 3.3935573101043701 1;
	setAttr ".t[1].bsx" 1;
	setAttr ".t[1].bsy" 1;
	setAttr ".t[1].bsz" 1;
	setAttr ".t[1].broX" -1.5902773407317584e-015;
	setAttr -s 10 ".t[1].p";
	setAttr ".t[1].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.27999419251177482 0 0;
	setAttr ".t[1].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.3501371365336885 0 0 0;
	setAttr ".t[1].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.040730552813009968 0 0 0;
	setAttr ".t[1].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.053234652768429758 0 0 0;
	setAttr ".t[1].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 2.8829956053577632e-006 2.064056396244851e-006 -6.4781188946483326e-007 0;
	setAttr ".t[1].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.049811372664795961 -0.1067386557102763 0 0;
	setAttr ".t[1].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 2.8829956053577632e-006 2.064056396244851e-006 -6.4781188946483326e-007 0;
	setAttr ".t[1].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[1].p[8].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[1].p[9].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 2.8829956053577632e-006 2.064056396244851e-006 -6.4781188946483326e-007 0;
	setAttr ".t[2].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.28912 2.1683507734408778 3.7090766622924809 1;
	setAttr ".t[2].bsx" 1;
	setAttr ".t[2].bsy" 1;
	setAttr ".t[2].bsz" 1;
	setAttr -s 10 ".t[2].p";
	setAttr ".t[2].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.4888305663626227e-006 4.1659545901850947e-006 2.0072555533268144e-006 0;
	setAttr ".t[2].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.4888305663626227e-006 4.1659545901850947e-006 2.0072555533268144e-006 0;
	setAttr ".t[2].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.07467716898775123 0.13577267533128978 2.0072555533268144e-006 0;
	setAttr ".t[2].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[2].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.0038069640283109329 0.58899747644206268 2.0072555533268144e-006 0;
	setAttr ".t[2].p[4].sx" 0.76536522977114252;
	setAttr ".t[2].p[4].sy" 0.76536522977114252;
	setAttr ".t[2].p[4].sz" 0.76536522977114252;
	setAttr ".t[2].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[2].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.4888305663626227e-006 -0.28220078637475243 2.0072555533268144e-006 0;
	setAttr ".t[2].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.4888305663626227e-006 4.1659545901850947e-006 2.0072555533268144e-006 0;
	setAttr ".t[2].p[8].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[2].p[9].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.4888305663626227e-006 0.168217066812125 2.0072555533268144e-006 0;
	setAttr ".t[3].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.6112899999999999 1.3129907734408779 3.3935566622924807 1;
	setAttr ".t[3].bsx" 1;
	setAttr ".t[3].bsy" 1;
	setAttr ".t[3].bsz" 1;
	setAttr -s 10 ".t[3].p";
	setAttr ".t[3].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 2.8829956053577632e-006 -0.27999625656817106 6.4781188946483326e-007 0;
	setAttr ".t[3].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.35014001952929386 -2.064056396244851e-006 6.4781188946483326e-007 0;
	setAttr ".t[3].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.04072766981740461 -2.064056396244851e-006 6.4781188946483326e-007 0;
	setAttr ".t[3].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[3].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.0532317697728244 -2.064056396244851e-006 6.4781188946483326e-007 0;
	setAttr ".t[3].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[3].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.049814255660401319 -0.10674071976667254 6.4781188946483326e-007 0;
	setAttr ".t[3].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 2.8829956053577632e-006 -2.064056396244851e-006 6.4781188946483326e-007 0;
	setAttr ".t[3].p[8].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[3].p[9].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 2.8829956053577632e-006 -2.064056396244851e-006 6.4781188946483326e-007 0;
	setAttr ".t[4].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.67817592620849609 2.2100533952060148 4.1084890365600586 1;
	setAttr ".t[4].bsx" 1;
	setAttr ".t[4].bsy" 1;
	setAttr ".t[4].bsz" 1;
	setAttr -s 10 ".t[4].p";
	setAttr ".t[4].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[4].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.054575148386869721 0 0;
	setAttr ".t[4].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[4].p[3].m" -type "matrix" -0.0039651719041261524 0.088964156939877206 0 0
		 -0.088964156939877206 -0.0039651719041261524 0 0 0 0 0 0 0.049432177570684965 0.079851979152644859 0 0;
	setAttr ".t[4].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 7.3791503907294498e-008 -2.6217651365456618e-006 -2.3742675780979994e-006 0;
	setAttr ".t[4].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.083567327394674429 0 0;
	setAttr ".t[4].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 7.3791503907294498e-008 -0.083569949159810974 -2.3742675780979994e-006 0;
	setAttr ".t[4].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[4].p[8].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[4].p[9].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 7.3791503907294498e-008 -2.6217651365456618e-006 -2.3742675780979994e-006 0;
	setAttr ".t[5].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.678176 2.2100507734408783 4.1084866622924805 1;
	setAttr ".t[5].bsx" 1;
	setAttr ".t[5].bsy" 1;
	setAttr ".t[5].bsz" 1;
	setAttr -s 10 ".t[5].p";
	setAttr ".t[5].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 7.3791503907294498e-008 2.6217651365456618e-006 2.3742675780979994e-006 0;
	setAttr ".t[5].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 7.3791503907294498e-008 -0.054572526621733175 2.3742675780979994e-006 0;
	setAttr ".t[5].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 7.3791503907294498e-008 2.6217651365456618e-006 2.3742675780979994e-006 0;
	setAttr ".t[5].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[5].p[4].m" -type "matrix" -0.0039651719041261524 -0.088964156939877206 0 0
		 0.088964156939877206 -0.0039651719041261524 0 0 0 0 0 0 -0.049432103779181058 0.079854600917781404 2.3742675780979994e-006 0;
	setAttr ".t[5].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.083567327394674429 0 0;
	setAttr ".t[5].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 7.3791503907294498e-008 -0.083564705629537883 2.3742675780979994e-006 0;
	setAttr ".t[5].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 7.3791503907294498e-008 2.6217651365456618e-006 2.3742675780979994e-006 0;
	setAttr ".t[5].p[8].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[5].p[9].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 7.3791503907294498e-008 2.6217651365456618e-006 2.3742675780979994e-006 0;
	setAttr ".t[6].bm" -type "matrix" 1 0 0 0 0 0.91771303142205074 0.39724399549665951 0
		 0 -0.39724399549665951 0.91771303142205074 0 0 0 0 1;
	setAttr ".t[6].bsx" 1;
	setAttr ".t[6].bsy" 1;
	setAttr ".t[6].bsz" 1;
	setAttr ".t[6].broX" 23.406;
	setAttr -s 10 ".t[6].p";
	setAttr ".t[6].p[0].m" -type "matrix" 0 0 0 0 0 -0.19012125406782976 0.2887663583075129 0
		 0 -0.2887663583075129 -0.19012125406782976 0 0 0 0 0;
	setAttr ".t[6].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[6].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[6].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[6].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[6].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[6].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[6].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[6].p[8].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[6].p[9].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[7].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.72044415309149112 4.0666506801950382 1;
	setAttr ".t[7].bsx" 1;
	setAttr ".t[7].bsy" 1;
	setAttr ".t[7].bsz" 1;
	setAttr -s 10 ".t[7].p";
	setAttr ".t[7].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 -1.3711524076937709 -0.50186387782886577 0;
	setAttr ".t[7].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.017965304285659123 0;
	setAttr ".t[7].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[7].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[7].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[7].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[7].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[7].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0.14818337065315479 0 0;
	setAttr ".t[7].p[8].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[7].p[9].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[8].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.47088924200017163 4.0874969087320956 1;
	setAttr ".t[8].bsx" 1;
	setAttr ".t[8].bsy" 1;
	setAttr ".t[8].bsz" 1;
	setAttr -s 10 ".t[8].p";
	setAttr ".t[8].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[8].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.053164040358564257 0;
	setAttr ".t[8].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[8].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.017310037676957657 0 0;
	setAttr ".t[8].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.017310037676957657 0 0;
	setAttr ".t[8].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[8].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[8].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[8].p[8].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[8].p[9].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[9].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.2116631576933896 -0.59727853495370598 3.7192774848712391 1;
	setAttr ".t[9].bsx" 1;
	setAttr ".t[9].bsy" 1;
	setAttr ".t[9].bsz" 1;
	setAttr -s 10 ".t[9].p";
	setAttr ".t[9].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.17876709916021682 -0.86493289438735188 -0.30453603667883389 0;
	setAttr ".t[9].p[1].m" -type "matrix" -0.0090182216534824278 0.13399669766517935 0 0
		 -0.13399669766517935 -0.0090182216534824278 0 0 0 0 0 0 -0.58907478410449543 0 0.23140133885350167 0;
	setAttr ".t[9].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.50976252302696157 0 -0.27238220846547723 0;
	setAttr ".t[9].p[3].m" -type "matrix" -0.35729987404749164 0.76611784217614332 0 0
		 -0.76611784217614332 -0.35729987404749164 0 0 0 0 0 0 0.27701028364637792 0.34799065300581367 -0.17526316651254081 0;
	setAttr ".t[9].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -3.1576933896548809e-006 2.7075195299097743e-006 3.0366516114987978e-006 0;
	setAttr ".t[9].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.073254303779622942 -0.42326512493364143 -0.057010388677104729 0;
	setAttr ".t[9].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -3.1576933896548809e-006 2.7075195299097743e-006 3.0366516114987978e-006 0;
	setAttr ".t[9].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[9].p[8].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[9].p[9].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -3.1576933896548809e-006 2.7075195299097743e-006 3.0366516114987978e-006 0;
	setAttr ".t[10].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.47707247734069824 -0.46821108610112416 4.0294505677897128 1;
	setAttr ".t[10].bsx" 1;
	setAttr ".t[10].bsy" 1;
	setAttr ".t[10].bsz" 1;
	setAttr -s 10 ".t[10].p";
	setAttr ".t[10].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[10].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.27114090006762115 -0.0057021936482444247 -0.005554201430274297 0;
	setAttr ".t[10].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.088227167496590764 -0.010379666764304574 0 0;
	setAttr ".t[10].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.017456801130000699 -0.0042530542770808921 0;
	setAttr ".t[10].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.7734069824612035e-007 -4.7413330515055918e-006 -4.6266861453148067e-008 0;
	setAttr ".t[10].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.015462763264180168 -0.016636614423018337 0;
	setAttr ".t[10].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.7734069824612035e-007 -4.7413330515055918e-006 -4.6266861453148067e-008 0;
	setAttr ".t[10].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[10].p[8].m" -type "matrix" -0.0084191291315817152 0.12948890503757124 0 0
		 -0.12948890503757124 -0.0084191291315817152 0 0 0 0 0 0 0 0.073378967698790362 0 0;
	setAttr ".t[10].p[9].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.7734069824612035e-007 -4.7413330515055918e-006 -4.6266861453148067e-008 0;
	setAttr ".t[11].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.87896239757537842 -0.50065723211247626 3.9190942369181303 1;
	setAttr ".t[11].bsx" 1;
	setAttr ".t[11].bsy" 1;
	setAttr ".t[11].bsz" 1;
	setAttr -s 10 ".t[11].p";
	setAttr ".t[11].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.1770922799262209 0 0;
	setAttr ".t[11].p[1].m" -type "matrix" -0.00025706039519579615 0 -0.022672774650334657 0
		 0 0 0 0 0.022672774650334657 0 -0.00025706039519579615 0 -0.42513342302247054 0.015700850684383205 0.068410339577285928 0;
	setAttr ".t[11].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.2489898393925698 0 -0.070912954238897541 0;
	setAttr ".t[11].p[3].m" -type "matrix" -0.049324457501007224 0.31018706113286837 0 0
		 -0.31018706113286837 -0.049324457501007224 0 0 0 0 0 0 0.077354137977388771 0.050566353428492139 -0.026484720186816801 0;
	setAttr ".t[11].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -3.9757537839690821e-007 1.4046783016752329e-006 -3.7153952798796297e-006 0;
	setAttr ".t[11].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.079105161745334218 -0.016687422509790828 0;
	setAttr ".t[11].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -3.9757537839690821e-007 1.4046783016752329e-006 -3.7153952798796297e-006 0;
	setAttr ".t[11].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[11].p[8].m" -type "matrix" -0.0037602202291100451 0.086638912747383126 0 0
		 -0.086638912747383126 -0.0037602202291100451 0 0 0 0 0 0 -0.059622046573819754 0.32232835944753546 -0.055988156151820512 0;
	setAttr ".t[11].p[9].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -3.9757537839690821e-007 1.4046783016752329e-006 -3.7153952798796297e-006 0;
	setAttr ".t[12].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.43370148539543152 -0.72453493907171662 4.0001304661142276 1;
	setAttr ".t[12].bsx" 1;
	setAttr ".t[12].bsy" 1;
	setAttr ".t[12].bsz" 1;
	setAttr -s 10 ".t[12].p";
	setAttr ".t[12].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.059589033053405127 -1.3457189964560761 -0.50186387782886577 0;
	setAttr ".t[12].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.24004082939888241 0.010467233789588359 0.03005209378720064 0;
	setAttr ".t[12].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.088227167496590764 0 0 0;
	setAttr ".t[12].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0.010372369402553703 0.029434648249358375 0;
	setAttr ".t[12].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.8539543151537856e-007 -8.8836245870638209e-007 5.5408622579022904e-008 0;
	setAttr ".t[12].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.0061851053056716232 -0.016636614423018337 0;
	setAttr ".t[12].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.8539543151537856e-007 -8.8836245870638209e-007 5.5408622579022904e-008 0;
	setAttr ".t[12].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0.14767088158725272 0 0;
	setAttr ".t[12].p[8].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[12].p[9].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.8539543151537856e-007 -8.8836245870638209e-007 5.5408622579022904e-008 0;
	setAttr ".t[13].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.82565557956695557 -0.71285719706732165 3.9183948551523136 1;
	setAttr ".t[13].bsx" 1;
	setAttr ".t[13].bsy" 1;
	setAttr ".t[13].bsz" 1;
	setAttr -s 10 ".t[13].p";
	setAttr ".t[13].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.059589033053405127 -1.2811642106482195 -0.50186387782886577 0;
	setAttr ".t[13].p[1].m" -type "matrix" -0.00016289934130064854 0 -0.018049159160631056 0
		 0 0 0 0 0.018049159160631056 0 -0.00016289934130064854 0 -0.42513342302247054 0.013111849676029408 0.063319160988728029 0;
	setAttr ".t[13].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.28531867306763692 0 -0.11404278559674896 0;
	setAttr ".t[13].p[3].m" -type "matrix" -0.0027982602073403084 0.074757542458889062 0 0
		 -0.074757542458889062 -0.0027982602073403084 0 0 0 0 0 0 0.15058742579675022 0.039490523945196809 -0.026484720186816801 0;
	setAttr ".t[13].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 4.2043304437910933e-007 1.3696331460089084e-006 -4.3336294623941285e-006 0;
	setAttr ".t[13].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.079105161745334218 -0.016687422509790828 0;
	setAttr ".t[13].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 4.2043304437910933e-007 1.3696331460089084e-006 -4.3336294623941285e-006 0;
	setAttr ".t[13].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0.12575006186810578 0 0;
	setAttr ".t[13].p[8].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[13].p[9].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 4.2043304437910933e-007 1.3696331460089084e-006 -4.3336294623941285e-006 0;
	setAttr ".t[14].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.21166 -0.59727582743417607 3.7192805215228506 1;
	setAttr ".t[14].bsx" 1;
	setAttr ".t[14].bsy" 1;
	setAttr ".t[14].bsz" 1;
	setAttr -s 10 ".t[14].p";
	setAttr ".t[14].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.17876394146682717 -0.86493560190688157 -0.30453907333044539 0;
	setAttr ".t[14].p[1].m" -type "matrix" -0.0090182216534824278 -0.13399669766517935 0 0
		 0.13399669766517935 -0.0090182216534824278 0 0 0 0 0 0 0.58907162641110578 -2.7075195299097743e-006 0.23139830220189017 0;
	setAttr ".t[14].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.50976568072035122 -2.7075195299097743e-006 -0.27238524511708873 0;
	setAttr ".t[14].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[14].p[4].m" -type "matrix" -0.35729987404749164 -0.76611784217614332 0 0
		 0.76611784217614332 -0.35729987404749164 0 0 0 0 0 0 -0.27701344133976757 0.34798794548628376 -0.17526620316415231 0;
	setAttr ".t[14].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[14].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.073257461473012597 -0.42326783245317134 -0.057013425328716227 0;
	setAttr ".t[14].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -3.1576933896548809e-006 -2.7075195299097743e-006 -3.0366516114987978e-006 0;
	setAttr ".t[14].p[8].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[14].p[9].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -3.1576933896548809e-006 -2.7075195299097743e-006 -3.0366516114987978e-006 0;
	setAttr ".t[15].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.477072 -0.46821582743417567 4.0294505215228513 1;
	setAttr ".t[15].bsx" 1;
	setAttr ".t[15].bsy" 1;
	setAttr ".t[15].bsz" 1;
	setAttr -s 10 ".t[15].p";
	setAttr ".t[15].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.7734069824612035e-007 4.7413330515055918e-006 4.6266861453148067e-008 0;
	setAttr ".t[15].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.2711404227269229 -0.0056974523151929191 -0.0055541551634128439 0;
	setAttr ".t[15].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.08822764483728901 -0.010374925431253068 4.6266861453148067e-008 0;
	setAttr ".t[15].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[15].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.7734069824612035e-007 -0.017452059796949193 -0.004253008010219439 0;
	setAttr ".t[15].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[15].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.7734069824612035e-007 -0.015458021931128664 -0.016636568156156883 0;
	setAttr ".t[15].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.7734069824612035e-007 4.7413330515055918e-006 4.6266861453148067e-008 0;
	setAttr ".t[15].p[8].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[15].p[9].m" -type "matrix" -0.0084191291315817152 -0.12948890503757124 0 0
		 0.12948890503757124 -0.0084191291315817152 0 0 0 0 0 0 -4.7734069824612035e-007 0.073383709031841882 4.6266861453148067e-008 0;
	setAttr ".t[16].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.87896200000000002 -0.50065582743417458 3.9190905215228504 1;
	setAttr ".t[16].bsx" 1;
	setAttr ".t[16].bsy" 1;
	setAttr ".t[16].bsz" 1;
	setAttr -s 10 ".t[16].p";
	setAttr ".t[16].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -3.9757537839690821e-007 -0.17709368460452257 3.7153952798796297e-006 0;
	setAttr ".t[16].p[1].m" -type "matrix" -0.00025706039519579615 0 0.022672774650334657 0
		 0 0 0 0 -0.022672774650334657 0 -0.00025706039519579615 0 0.42513302544709214 0.01569944600608153 0.068414054972565808 0;
	setAttr ".t[16].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.2489902369679482 -1.4046783016752329e-006 -0.070909238843617661 0;
	setAttr ".t[16].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[16].p[4].m" -type "matrix" -0.049324457501007224 -0.31018706113286837 0 0
		 0.31018706113286837 -0.049324457501007224 0 0 0 0 0 0 -0.077354535552767167 0.050564948750190464 -0.026481004791536918 0;
	setAttr ".t[16].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[16].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -3.9757537839690821e-007 -0.079106566423635893 -0.016683707114510948 0;
	setAttr ".t[16].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -3.9757537839690821e-007 -1.4046783016752329e-006 3.7153952798796297e-006 0;
	setAttr ".t[16].p[8].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[16].p[9].m" -type "matrix" -0.0037602202291100451 -0.086638912747383126 0 0
		 0.086638912747383126 -0.0037602202291100451 0 0 0 0 0 0 0.059621648998441357 0.32232695476923379 -0.055984440756540632 0;
	setAttr ".t[17].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.433701 -0.72453582743417533 4.0001305215228502 1;
	setAttr ".t[17].bsx" 1;
	setAttr ".t[17].bsy" 1;
	setAttr ".t[17].bsz" 1;
	setAttr -s 10 ".t[17].p";
	setAttr ".t[17].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.059588547657973619 -1.3457181080936174 -0.50186393323748835 0;
	setAttr ".t[17].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.24004034400345087 0.010468122152047066 0.030052038378578061 0;
	setAttr ".t[17].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.088227652892022265 8.8836245870638209e-007 -5.5408622579022904e-008 0;
	setAttr ".t[17].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[17].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.8539543151537856e-007 0.010373257765012411 0.029434592840735796 0;
	setAttr ".t[17].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[17].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.8539543151537856e-007 -0.0061842169432129168 -0.016636669831640916 0;
	setAttr ".t[17].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.8539543151537856e-007 0.14767176994971143 -5.5408622579022904e-008 0;
	setAttr ".t[17].p[8].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[17].p[9].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -4.8539543151537856e-007 8.8836245870638209e-007 -5.5408622579022904e-008 0;
	setAttr ".t[18].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.82565599999999995 -0.71285582743417564 3.9183905215228512 1;
	setAttr ".t[18].bsx" 1;
	setAttr ".t[18].bsy" 1;
	setAttr ".t[18].bsz" 1;
	setAttr -s 10 ".t[18].p";
	setAttr ".t[18].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.059589453486449506 -1.2811655802813655 -0.50185954419940337 0;
	setAttr ".t[18].p[1].m" -type "matrix" -0.00016289934130064854 0 0.018049159160631056 0
		 0 0 0 0 -0.018049159160631056 0 -0.00016289934130064854 0 0.42513384345551497 0.013110480042883401 0.063323494618190423 0;
	setAttr ".t[18].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.28531825263459254 -1.3696331460089084e-006 -0.11403845196728656 0;
	setAttr ".t[18].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[18].p[4].m" -type "matrix" -0.0027982602073403084 -0.074757542458889062 0 0
		 0.074757542458889062 -0.0027982602073403084 0 0 0 0 0 0 -0.15058700536370584 0.0394891543120508 -0.026480386557354407 0;
	setAttr ".t[18].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[18].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 4.2043304437910933e-007 -0.079106531378480227 -0.016683088880328434 0;
	setAttr ".t[18].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 4.2043304437910933e-007 0.12574869223495977 4.3336294623941285e-006 0;
	setAttr ".t[18].p[8].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[18].p[9].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 4.2043304437910933e-007 -1.3696331460089084e-006 4.3336294623941285e-006 0;
	setAttr ".t[19].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.93445032793771565 3.9574814872516102 1;
	setAttr ".t[19].bsx" 1;
	setAttr ".t[19].bsy" 1;
	setAttr ".t[19].bsz" 1;
	setAttr -s 10 ".t[19].p";
	setAttr ".t[19].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 -1.3711524076937709 -0.50186387782886577 0;
	setAttr ".t[19].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.017965304285659123 0;
	setAttr ".t[19].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[19].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[19].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[19].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[19].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[19].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0.14818337065315479 0 0;
	setAttr ".t[19].p[8].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[19].p[9].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[20].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.23460000712167517 4.068062885261865 1;
	setAttr ".t[20].bsx" 1;
	setAttr ".t[20].bsy" 1;
	setAttr ".t[20].bsz" 1;
	setAttr -s 10 ".t[20].p";
	setAttr ".t[20].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[20].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.053164040358564257 0;
	setAttr ".t[20].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[20].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[20].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[20].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[20].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[20].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[20].p[8].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[20].p[9].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[21].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.9693737030029298 -0.24266666132699743 3.8842993812335447 1;
	setAttr ".t[21].bsx" 1;
	setAttr ".t[21].bsy" 1;
	setAttr ".t[21].bsz" 1;
	setAttr -s 10 ".t[21].p";
	setAttr ".t[21].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.15890408814241486 0 0;
	setAttr ".t[21].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.37421027762123427 -0.025468402580539617 0.047542644733213457 0;
	setAttr ".t[21].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.22823050586396076 -0.024615478341578623 -0.070912954238897541 0;
	setAttr ".t[21].p[3].m" -type "matrix" -0.01881548446371939 0.193072386611432 0 0
		 -0.193072386611432 -0.01881548446371939 0 0 0 0 0 0 -0.015051909335834781 0.061191504355556425 -0.026484720186816801 0;
	setAttr ".t[21].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 2.9699707015939936e-007 8.3389282234946904e-007 1.140289305645581e-006 0;
	setAttr ".t[21].p[5].m" -type "matrix" -0.0010639600266193483 0.04611711225023183 0 0
		 -0.04611711225023183 -0.0010639600266193483 0 0 0 0 0 0 0 -0.12606142396779507 -0.016687422509790828 0;
	setAttr ".t[21].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 2.9699707015939936e-007 8.3389282234946904e-007 1.140289305645581e-006 0;
	setAttr ".t[21].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[21].p[8].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.084299186884360985 0.29103212350536634 -0.11677693486559536 0;
	setAttr ".t[21].p[9].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 2.9699707015939936e-007 8.3389282234946904e-007 1.140289305645581e-006 0;
	setAttr ".t[22].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.85301494598388672 -0.91589039522897508 3.7591262893451161 1;
	setAttr ".t[22].bsx" 1;
	setAttr ".t[22].bsy" 1;
	setAttr ".t[22].bsz" 1;
	setAttr -s 10 ".t[22].p";
	setAttr ".t[22].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.059589033053405127 -1.2811642106482195 -0.50186387782886577 0;
	setAttr ".t[22].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.37421027762123438 0.014553372903165052 0.047542644733213457 0;
	setAttr ".t[22].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.20208606302275567 0.016742625776588582 -0.070912954238897541 0;
	setAttr ".t[22].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.10038213801671468 -0.038857601812921416 -0.026484720186816801 0;
	setAttr ".t[22].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 5.4016113248955833e-008 4.567794799847924e-006 4.2321777344866973e-006 0;
	setAttr ".t[22].p[5].m" -type "matrix" -0.028389367713950953 -0.23658566995636915 0 0
		 0.23658566995636915 -0.028389367713950953 0 0 0 0 0 0 0 -0.085010995068940942 -0.016687422509790828 0;
	setAttr ".t[22].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 5.4016113248955833e-008 4.567794799847924e-006 4.2321777344866973e-006 0;
	setAttr ".t[22].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0.10794909176529366 0 0;
	setAttr ".t[22].p[8].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[22].p[9].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 5.4016113248955833e-008 4.567794799847924e-006 4.2321777344866973e-006 0;
	setAttr ".t[23].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.6155891418457031 -0.57957571703683675 3.5331140594256825 1;
	setAttr ".t[23].bsx" 1;
	setAttr ".t[23].bsy" 1;
	setAttr ".t[23].bsz" 1;
	setAttr -s 10 ".t[23].p";
	setAttr ".t[23].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.17876709916021682 -0.86493289438735188 -0.30453603667883389 0;
	setAttr ".t[23].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.54635675337224932 0 0.24970774746922331 0;
	setAttr ".t[23].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.32191083779471841 0 -0.19740488705325276 0;
	setAttr ".t[23].p[3].m" -type "matrix" -0.012349928817904863 0.156675897616712 0 0
		 -0.156675897616712 -0.012349928817904863 0 0 0 0 0 0 0.071083337251867995 0.51913379824414863 0 0;
	setAttr ".t[23].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 8.5815429695657031e-007 -1.1039733882611813e-007 -3.5379028320292605e-006 0;
	setAttr ".t[23].p[5].m" -type "matrix" -0.0054430245813960054 0.10419415840726512 0 0
		 -0.10419415840726512 -0.0054430245813960054 0 0 0 0 0 0 0 -0.50983291748404413 0 0;
	setAttr ".t[23].p[6].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 8.5815429695657031e-007 -1.1039733882611813e-007 -3.5379028320292605e-006 0;
	setAttr ".t[23].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[23].p[8].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[23].p[9].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 8.5815429695657031e-007 -1.1039733882611813e-007 -3.5379028320292605e-006 0;
	setAttr ".t[24].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.96937399999999996 -0.24266582743417509 3.8843005215228503 1;
	setAttr ".t[24].bsx" 1;
	setAttr ".t[24].bsy" 1;
	setAttr ".t[24].bsz" 1;
	setAttr -s 10 ".t[24].p";
	setAttr ".t[24].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 2.9699707015939936e-007 -0.15890492203523721 -1.140289305645581e-006 0;
	setAttr ".t[24].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.37421057461830443 -0.025469236473361967 0.047541504443907805 0;
	setAttr ".t[24].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.2282302088668906 -0.024616312234400972 -0.070914094528203186 0;
	setAttr ".t[24].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[24].p[4].m" -type "matrix" -0.01881548446371939 -0.193072386611432 0 0
		 0.193072386611432 -0.01881548446371939 0 0 0 0 0 0 0.015052206332904938 0.061190670462734083 -0.026485860476122447 0;
	setAttr ".t[24].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[24].p[6].m" -type "matrix" -0.0010639600266193483 -0.04611711225023183 0 0
		 0.04611711225023183 -0.0010639600266193483 0 0 0 0 0 0 2.9699707015939936e-007 -0.12606225786061742 -0.016688562799096474 0;
	setAttr ".t[24].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 2.9699707015939936e-007 -8.3389282234946904e-007 -1.140289305645581e-006 0;
	setAttr ".t[24].p[8].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[24].p[9].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.084299483881431159 0.29103128961254399 -0.11677807515490102 0;
	setAttr ".t[25].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.85301499999999997 -0.91588582743417524 3.7591305215228505 1;
	setAttr ".t[25].bsx" 1;
	setAttr ".t[25].bsy" 1;
	setAttr ".t[25].bsz" 1;
	setAttr -s 10 ".t[25].p";
	setAttr ".t[25].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.059589087069518376 -1.2811687784430197 -0.50186811000660025 0;
	setAttr ".t[25].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.37421033163734763 0.014548805108365204 0.04753841255547897 0;
	setAttr ".t[25].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.20208600900664239 0.016738057981788734 -0.070917186416632028 0;
	setAttr ".t[25].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[25].p[4].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.10038208400060145 -0.038862169607721264 -0.026488952364551288 0;
	setAttr ".t[25].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[25].p[6].m" -type "matrix" -0.028389367713950953 0.23658566995636915 0 0
		 -0.23658566995636915 -0.028389367713950953 0 0 0 0 0 0 5.4016113248955833e-008 -0.08501556286374079 -0.016691654687525315 0;
	setAttr ".t[25].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 5.4016113248955833e-008 0.1079445239704938 -4.2321777344866973e-006 0;
	setAttr ".t[25].p[8].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[25].p[9].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 5.4016113248955833e-008 -4.567794799847924e-006 -4.2321777344866973e-006 0;
	setAttr ".t[26].bm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.6155900000000001 -0.57957582743417557 3.5331105215228504 1;
	setAttr ".t[26].bsx" 1;
	setAttr ".t[26].bsy" 1;
	setAttr ".t[26].bsz" 1;
	setAttr -s 10 ".t[26].p";
	setAttr ".t[26].p[0].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.17876795731451378 -0.86493278399001294 -0.30453249877600186 0;
	setAttr ".t[26].p[1].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0.54635761152654627 1.1039733882611813e-007 0.24971128537205536 0;
	setAttr ".t[26].p[2].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 -0.32190997964042145 1.1039733882611813e-007 -0.19740134915042071 0;
	setAttr ".t[26].p[3].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[26].p[4].m" -type "matrix" -0.012349928817904863 -0.156675897616712 0 0
		 0.156675897616712 -0.012349928817904863 0 0 0 0 0 0 -0.071082479097571039 0.51913390864148745 3.5379028320292605e-006 0;
	setAttr ".t[26].p[5].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[26].p[6].m" -type "matrix" -0.0054430245813960054 -0.10419415840726512 0 0
		 0.10419415840726512 -0.0054430245813960054 0 0 0 0 0 0 8.5815429695657031e-007 -0.50983280708670531 3.5379028320292605e-006 0;
	setAttr ".t[26].p[7].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 8.5815429695657031e-007 1.1039733882611813e-007 3.5379028320292605e-006 0;
	setAttr ".t[26].p[8].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".t[26].p[9].m" -type "matrix" 0 0 0 0 0 0 0 0 0 0 0 0 8.5815429695657031e-007 1.1039733882611813e-007 3.5379028320292605e-006 0;
	setAttr -s 27 ".o";
createNode clamp -n "clamp1";
	setAttr ".mn" -type "float3" -1 0 0 ;
	setAttr ".mx" -type "float3" 0 1 0 ;
createNode multiplyDivide -n "multiplyDivide166";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "clamp2";
	setAttr ".mn" -type "float3" -1 0 0 ;
	setAttr ".mx" -type "float3" 0 1 0 ;
createNode multiplyDivide -n "multiplyDivide167";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "clamp3";
	setAttr ".mx" -type "float3" 1 1 0 ;
createNode clamp -n "clamp4";
	setAttr ".mn" -type "float3" -1 0 0 ;
	setAttr ".mx" -type "float3" 0 1 0 ;
createNode plusMinusAverage -n "plusMinusAverage1";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "multiplyDivide168";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode plusMinusAverage -n "plusMinusAverage2";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode clamp -n "clamp7";
	setAttr ".mx" -type "float3" 1 1 0 ;
createNode plusMinusAverage -n "plusMinusAverage4";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "plusMinusAverage3";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "multiplyDivide169";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "multiplyDivide171";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "clamp8";
	setAttr ".mx" -type "float3" 1 1 0 ;
createNode multiplyDivide -n "multiplyDivide172";
	setAttr ".i2" -type "float3" -12 1 -1 ;
createNode unitConversion -n "unitConversion1";
	setAttr ".cf" 0.017453292519943295;
createNode clamp -n "clamp9";
	setAttr ".mn" -type "float3" -1 0 0 ;
	setAttr ".mx" -type "float3" 1 1 0 ;
createNode multiplyDivide -n "multiplyDivide173";
	setAttr ".i2" -type "float3" 18 -18 1 ;
createNode unitConversion -n "unitConversion2";
	setAttr ".cf" 0.017453292519943295;
createNode hyperGraphInfo -n "nodeEditorPanel3Info";
createNode hyperView -n "hyperView2";
	setAttr ".vl" -type "double2" 158.33333333333334 -43050.198412698417 ;
	setAttr ".vh" -type "double2" 1661.9047619047622 -41880.753968253965 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout2";
	setAttr ".ihi" 0;
	setAttr -s 19 ".hyp";
	setAttr ".hyp[0].x" 611.16973876953125;
	setAttr ".hyp[0].y" -463.43142700195312;
	setAttr ".hyp[0].nvs" 2424;
	setAttr ".hyp[1].x" 1402.857177734375;
	setAttr ".hyp[1].y" -42197.14453125;
	setAttr ".hyp[1].nvs" 1648;
	setAttr ".hyp[2].x" 1.4285714626312256;
	setAttr ".hyp[2].y" -42220;
	setAttr ".hyp[2].nvs" 2624;
	setAttr ".hyp[3].x" 2202.857177734375;
	setAttr ".hyp[3].y" -42278.5703125;
	setAttr ".hyp[3].nvs" 2320;
	setAttr ".hyp[4].x" 774.28570556640625;
	setAttr ".hyp[4].y" -42441.4296875;
	setAttr ".hyp[4].nvs" 2512;
	setAttr ".hyp[5].x" 2204.28564453125;
	setAttr ".hyp[5].y" -42441.4296875;
	setAttr ".hyp[5].nvs" 2304;
	setAttr ".hyp[6].x" 1640;
	setAttr ".hyp[6].y" -42522.85546875;
	setAttr ".hyp[6].nvs" 1680;
	setAttr ".hyp[7].x" 1101.4285888671875;
	setAttr ".hyp[7].y" -42115.71484375;
	setAttr ".hyp[7].nvs" 2240;
	setAttr ".hyp[8].x" 1088.5714111328125;
	setAttr ".hyp[8].y" -42604.28515625;
	setAttr ".hyp[8].nvs" 2512;
	setAttr ".hyp[9].x" 778.5714111328125;
	setAttr ".hyp[9].y" -42604.28515625;
	setAttr ".hyp[9].nvs" 2416;
	setAttr ".hyp[10].x" 778.5714111328125;
	setAttr ".hyp[10].y" -42113.7265625;
	setAttr ".hyp[10].nvs" 2416;
	setAttr ".hyp[11].x" 1092.857177734375;
	setAttr ".hyp[11].y" -42441.4296875;
	setAttr ".hyp[11].nvs" 2416;
	setAttr ".hyp[12].x" 1101.4285888671875;
	setAttr ".hyp[12].y" -42278.5703125;
	setAttr ".hyp[12].nvs" 2240;
	setAttr ".hyp[13].x" 2204.28564453125;
	setAttr ".hyp[13].y" -42767.14453125;
	setAttr ".hyp[13].nvs" 2288;
	setAttr ".hyp[14].x" 1402.857177734375;
	setAttr ".hyp[14].y" -42522.85546875;
	setAttr ".hyp[14].nvs" 1648;
	setAttr ".hyp[15].x" 778.5714111328125;
	setAttr ".hyp[15].y" -42278.5703125;
	setAttr ".hyp[15].nvs" 2416;
	setAttr ".hyp[16].x" 477.14285278320312;
	setAttr ".hyp[16].y" -42360;
	setAttr ".hyp[16].nvs" 2144;
	setAttr ".hyp[17].x" 1880;
	setAttr ".hyp[17].y" -42522.85546875;
	setAttr ".hyp[17].nvs" 2416;
	setAttr ".hyp[18].x" 2205.71435546875;
	setAttr ".hyp[18].y" -42604.28515625;
	setAttr ".hyp[18].nvs" 2272;
	setAttr ".anf" yes;
createNode multiplyDivide -n "multiplyDivide174";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "clamp10";
	setAttr ".mx" -type "float3" 1 1 0 ;
createNode multiplyDivide -n "multiplyDivide175";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "clamp11";
	setAttr ".mx" -type "float3" 1 1 0 ;
createNode multiplyDivide -n "multiplyDivide176";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "clamp12";
	setAttr ".mx" -type "float3" 1 1 0 ;
createNode multiplyDivide -n "multiplyDivide177";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "clamp13";
	setAttr ".mx" -type "float3" 1 1 0 ;
createNode multiplyDivide -n "multiplyDivide178";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "clamp14";
	setAttr ".mx" -type "float3" 1 1 0 ;
createNode transformGeometry -n "transformGeometry1";
	setAttr ".txf" -type "matrix" 0.77309125653139454 0 0 0 0 -0.00055568035747009716 0.77309105682618717 0
		 0 -0.77309105682618717 -0.00055568035747009716 0 0 0 0 1;
createNode multiplyDivide -n "multiplyDivide179";
	setAttr ".i2" -type "float3" -30 1 1 ;
createNode unitConversion -n "unitConversion3";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "plusMinusAverage5";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "plusMinusAverage6";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "multiplyDivide180";
	setAttr ".i2" -type "float3" 20 1 1 ;
createNode unitConversion -n "unitConversion4";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "multiplyDivide181";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "clamp15";
	setAttr ".mx" -type "float3" 1 1 0 ;
createNode multiplyDivide -n "multiplyDivide182";
	setAttr ".i2" -type "float3" 0.64999998 1 1 ;
createNode multiplyDivide -n "multiplyDivide183";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "clamp16";
	setAttr ".mx" -type "float3" 1 1 0 ;
createNode multiplyDivide -n "multiplyDivide184";
	setAttr ".i2" -type "float3" -30 1 1 ;
createNode unitConversion -n "unitConversion5";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "multiplyDivide185";
	setAttr ".i2" -type "float3" 20 1 1 ;
createNode unitConversion -n "unitConversion6";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "multiplyDivide186";
	setAttr ".i2" -type "float3" 0.64999998 1 1 ;
createNode plusMinusAverage -n "plusMinusAverage7";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "plusMinusAverage8";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "multiplyDivide187";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "clamp17";
	setAttr ".mx" -type "float3" 1 1 0 ;
createNode displayLayer -n "Face_HighRes";
	setAttr ".dt" 2;
	setAttr ".c" 2;
	setAttr ".do" 1;
createNode displayLayer -n "Face_LowRes";
	setAttr ".dt" 2;
	setAttr ".v" no;
	setAttr ".c" 2;
	setAttr ".do" 2;
createNode displayLayer -n "Joints";
	setAttr ".dt" 2;
	setAttr ".v" no;
	setAttr ".c" 5;
	setAttr ".do" 3;
createNode blinn -n "blinn10";
	setAttr ".c" -type "float3" 0.79746836 0.44642761 0.30283609 ;
createNode shadingEngine -n "blinn10SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo23";
createNode blinn -n "blinn11";
	setAttr ".c" -type "float3" 0.37500572 0.25694668 0.2083009 ;
createNode shadingEngine -n "blinn11SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo24";
createNode groupId -n "groupId70";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts31";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 48 "f[0:263]" "f[288:399]" "f[408]" "f[411:412]" "f[415:550]" "f[558:574]" "f[577:590]" "f[593:594]" "f[597:598]" "f[601:683]" "f[686:691]" "f[698:929]" "f[938:945]" "f[950:1023]" "f[1026:1031]" "f[1034:1038]" "f[1041:1191]" "f[1236:1275]" "f[1348:1542]" "f[1545:1549]" "f[1552]" "f[1560]" "f[1563:2108]" "f[2133:2244]" "f[2255:2256]" "f[2259:2395]" "f[2403:2418]" "f[2421:2434]" "f[2437:2438]" "f[2441:2442]" "f[2445:2526]" "f[2528:2529]" "f[2531:2534]" "f[2536:2537]" "f[2543:2774]" "f[2783:2790]" "f[2795:2866]" "f[2868:2869]" "f[2871:2874]" "f[2876:2877]" "f[2879:2882]" "f[2885:3036]" "f[3081:3120]" "f[3193:3385]" "f[3387:3388]" "f[3390:3393]" "f[3396:3397]" "f[3407:3689]";
	setAttr ".irc" -type "componentList" 47 "f[264:287]" "f[400:407]" "f[409:410]" "f[413:414]" "f[551:557]" "f[575:576]" "f[591:592]" "f[595:596]" "f[599:600]" "f[684:685]" "f[692:697]" "f[930:937]" "f[946:949]" "f[1024:1025]" "f[1032:1033]" "f[1039:1040]" "f[1192:1235]" "f[1276:1347]" "f[1543:1544]" "f[1550:1551]" "f[1553:1559]" "f[1561:1562]" "f[2109:2132]" "f[2245:2254]" "f[2257:2258]" "f[2396:2402]" "f[2419:2420]" "f[2435:2436]" "f[2439:2440]" "f[2443:2444]" "f[2527]" "f[2530]" "f[2535]" "f[2538:2542]" "f[2775:2782]" "f[2791:2794]" "f[2867]" "f[2870]" "f[2875]" "f[2878]" "f[2883:2884]" "f[3037:3080]" "f[3121:3192]" "f[3386]" "f[3389]" "f[3394:3395]" "f[3398:3406]";
createNode groupId -n "groupId71";
	setAttr ".ihi" 0;
createNode groupId -n "groupId72";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 37 "f[400:407]" "f[409:410]" "f[413:414]" "f[551:557]" "f[575:576]" "f[591:592]" "f[595:596]" "f[599:600]" "f[684:685]" "f[692:697]" "f[1024:1025]" "f[1032:1033]" "f[1039:1040]" "f[1543:1544]" "f[1550:1551]" "f[1553:1559]" "f[1561:1562]" "f[2245:2254]" "f[2257:2258]" "f[2396:2402]" "f[2419:2420]" "f[2435:2436]" "f[2439:2440]" "f[2443:2444]" "f[2527]" "f[2530]" "f[2535]" "f[2538:2542]" "f[2867]" "f[2870]" "f[2875]" "f[2878]" "f[2883:2884]" "f[3386]" "f[3389]" "f[3394:3395]" "f[3398:3406]";
	setAttr ".irc" -type "componentList" 1 "f[2948:2949]";
createNode groupId -n "groupId73";
	setAttr ".ihi" 0;
createNode groupId -n "groupId74";
	setAttr ".ihi" 0;
createNode groupId -n "groupId75";
	setAttr ".ihi" 0;
createNode blinn -n "blinn12";
	setAttr ".c" -type "float3" 0.4050633 0.14356674 0.14356674 ;
createNode shadingEngine -n "blinn12SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo26";
createNode groupId -n "groupId76";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts33";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 10 "f[264:287]" "f[930:937]" "f[946:949]" "f[1192:1235]" "f[1276:1347]" "f[2109:2132]" "f[2775:2782]" "f[2791:2794]" "f[3037:3080]" "f[3121:3192]";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 6;
	setAttr -av ".unw" 6;
	setAttr -k on ".etw";
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 9 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -k on ".mico";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -av -cb on ".micc";
	setAttr -k on ".micr";
	setAttr -k on ".micg";
	setAttr -k on ".micb";
	setAttr -cb on ".mica";
	setAttr -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -k on ".mico";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -av -cb on ".micc";
	setAttr -k on ".micr";
	setAttr -k on ".micg";
	setAttr -k on ".micb";
	setAttr -cb on ".mica";
	setAttr -av -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 44 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultObjectSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr -k on ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr -av ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
select -ne :defaultHardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k on ".rp";
	setAttr -k on ".cai";
	setAttr -k on ".coi";
	setAttr -cb on ".bc";
	setAttr -av -k on ".bcb";
	setAttr -av -k on ".bcg";
	setAttr -av -k on ".bcr";
	setAttr -k on ".ei";
	setAttr -av -k on ".ex";
	setAttr -av -k on ".es";
	setAttr -av -k on ".ef";
	setAttr -av -k on ".bf";
	setAttr -k on ".fii";
	setAttr -av -k on ".sf";
	setAttr -k on ".gr";
	setAttr -k on ".li";
	setAttr -k on ".ls";
	setAttr -av -k on ".mb";
	setAttr -k on ".ti";
	setAttr -k on ".txt";
	setAttr -k on ".mpr";
	setAttr -k on ".wzd";
	setAttr -k on ".fn" -type "string" "im";
	setAttr -k on ".if";
	setAttr -k on ".res" -type "string" "ntsc_4d 646 485 1.333";
	setAttr -k on ".as";
	setAttr -k on ".ds";
	setAttr -k on ".lm";
	setAttr -av -k on ".fir";
	setAttr -k on ".aap";
	setAttr -av -k on ".gh";
	setAttr -cb on ".sd";
connectAttr "Joints.di" "RootJnt.do";
connectAttr "RootJnt.s" "HeadMainJnt.is";
connectAttr "Joints.di" "HeadMainJnt.do";
connectAttr "HeadJnt_parentConstraint1.ctx" "HeadJnt.tx";
connectAttr "HeadJnt_parentConstraint1.cty" "HeadJnt.ty";
connectAttr "HeadJnt_parentConstraint1.ctz" "HeadJnt.tz";
connectAttr "HeadJnt_parentConstraint1.crx" "HeadJnt.rx";
connectAttr "HeadJnt_parentConstraint1.cry" "HeadJnt.ry";
connectAttr "HeadJnt_parentConstraint1.crz" "HeadJnt.rz";
connectAttr "Joints.di" "HeadJnt.do";
connectAttr "LEarJnt_parentConstraint1.ctx" "LEarJnt.tx";
connectAttr "LEarJnt_parentConstraint1.cty" "LEarJnt.ty";
connectAttr "LEarJnt_parentConstraint1.ctz" "LEarJnt.tz";
connectAttr "LEarJnt_parentConstraint1.crx" "LEarJnt.rx";
connectAttr "LEarJnt_parentConstraint1.cry" "LEarJnt.ry";
connectAttr "LEarJnt_parentConstraint1.crz" "LEarJnt.rz";
connectAttr "HeadJnt.s" "LEarJnt.is";
connectAttr "Joints.di" "LEarJnt.do";
connectAttr "LEarJnt.s" "LEarEndJnt.is";
connectAttr "Joints.di" "LEarEndJnt.do";
connectAttr "LEarJnt.ro" "LEarJnt_parentConstraint1.cro";
connectAttr "LEarJnt.pim" "LEarJnt_parentConstraint1.cpim";
connectAttr "LEarJnt.rp" "LEarJnt_parentConstraint1.crp";
connectAttr "LEarJnt.rpt" "LEarJnt_parentConstraint1.crt";
connectAttr "LEarJnt.jo" "LEarJnt_parentConstraint1.cjo";
connectAttr "LEarCtrl.t" "LEarJnt_parentConstraint1.tg[0].tt";
connectAttr "LEarCtrl.rp" "LEarJnt_parentConstraint1.tg[0].trp";
connectAttr "LEarCtrl.rpt" "LEarJnt_parentConstraint1.tg[0].trt";
connectAttr "LEarCtrl.r" "LEarJnt_parentConstraint1.tg[0].tr";
connectAttr "LEarCtrl.ro" "LEarJnt_parentConstraint1.tg[0].tro";
connectAttr "LEarCtrl.s" "LEarJnt_parentConstraint1.tg[0].ts";
connectAttr "LEarCtrl.pm" "LEarJnt_parentConstraint1.tg[0].tpm";
connectAttr "LEarJnt_parentConstraint1.w0" "LEarJnt_parentConstraint1.tg[0].tw";
connectAttr "Joints.di" "LEarJnt_parentConstraint1.do";
connectAttr "REarJnt_parentConstraint1.ctx" "REarJnt.tx";
connectAttr "REarJnt_parentConstraint1.cty" "REarJnt.ty";
connectAttr "REarJnt_parentConstraint1.ctz" "REarJnt.tz";
connectAttr "REarJnt_parentConstraint1.crx" "REarJnt.rx";
connectAttr "REarJnt_parentConstraint1.cry" "REarJnt.ry";
connectAttr "REarJnt_parentConstraint1.crz" "REarJnt.rz";
connectAttr "HeadJnt.s" "REarJnt.is";
connectAttr "Joints.di" "REarJnt.do";
connectAttr "REarJnt.s" "REarEndJnt.is";
connectAttr "Joints.di" "REarEndJnt.do";
connectAttr "REarJnt.ro" "REarJnt_parentConstraint1.cro";
connectAttr "REarJnt.pim" "REarJnt_parentConstraint1.cpim";
connectAttr "REarJnt.rp" "REarJnt_parentConstraint1.crp";
connectAttr "REarJnt.rpt" "REarJnt_parentConstraint1.crt";
connectAttr "REarJnt.jo" "REarJnt_parentConstraint1.cjo";
connectAttr "REarCtrl.t" "REarJnt_parentConstraint1.tg[0].tt";
connectAttr "REarCtrl.rp" "REarJnt_parentConstraint1.tg[0].trp";
connectAttr "REarCtrl.rpt" "REarJnt_parentConstraint1.tg[0].trt";
connectAttr "REarCtrl.r" "REarJnt_parentConstraint1.tg[0].tr";
connectAttr "REarCtrl.ro" "REarJnt_parentConstraint1.tg[0].tro";
connectAttr "REarCtrl.s" "REarJnt_parentConstraint1.tg[0].ts";
connectAttr "REarCtrl.pm" "REarJnt_parentConstraint1.tg[0].tpm";
connectAttr "REarJnt_parentConstraint1.w0" "REarJnt_parentConstraint1.tg[0].tw";
connectAttr "Joints.di" "REarJnt_parentConstraint1.do";
connectAttr "HeadJnt.s" "LBrow1Jnt.is";
connectAttr "BlendTransforms1.o[0].ot" "LBrow1Jnt.t";
connectAttr "BlendTransforms1.o[0].or" "LBrow1Jnt.r";
connectAttr "BlendTransforms1.o[0].os" "LBrow1Jnt.s";
connectAttr "Joints.di" "LBrow1Jnt.do";
connectAttr "HeadJnt.s" "LBrow2Jnt.is";
connectAttr "BlendTransforms1.o[1].ot" "LBrow2Jnt.t";
connectAttr "BlendTransforms1.o[1].or" "LBrow2Jnt.r";
connectAttr "BlendTransforms1.o[1].os" "LBrow2Jnt.s";
connectAttr "Joints.di" "LBrow2Jnt.do";
connectAttr "HeadJnt.s" "LBrow3Jnt.is";
connectAttr "BlendTransforms1.o[2].ot" "LBrow3Jnt.t";
connectAttr "BlendTransforms1.o[2].or" "LBrow3Jnt.r";
connectAttr "BlendTransforms1.o[2].os" "LBrow3Jnt.s";
connectAttr "Joints.di" "LBrow3Jnt.do";
connectAttr "HeadJnt.s" "RBrow1Jnt.is";
connectAttr "BlendTransforms1.o[3].ot" "RBrow1Jnt.t";
connectAttr "BlendTransforms1.o[3].or" "RBrow1Jnt.r";
connectAttr "BlendTransforms1.o[3].os" "RBrow1Jnt.s";
connectAttr "Joints.di" "RBrow1Jnt.do";
connectAttr "HeadJnt.s" "RBrow2Jnt.is";
connectAttr "BlendTransforms1.o[4].ot" "RBrow2Jnt.t";
connectAttr "BlendTransforms1.o[4].or" "RBrow2Jnt.r";
connectAttr "BlendTransforms1.o[4].os" "RBrow2Jnt.s";
connectAttr "Joints.di" "RBrow2Jnt.do";
connectAttr "HeadJnt.s" "RBrow3Jnt.is";
connectAttr "BlendTransforms1.o[5].ot" "RBrow3Jnt.t";
connectAttr "BlendTransforms1.o[5].or" "RBrow3Jnt.r";
connectAttr "BlendTransforms1.o[5].os" "RBrow3Jnt.s";
connectAttr "Joints.di" "RBrow3Jnt.do";
connectAttr "HeadJnt.s" "LEyeJnt.is";
connectAttr "unitConversion3.o" "LEyeJnt.rx";
connectAttr "unitConversion4.o" "LEyeJnt.ry";
connectAttr "Joints.di" "LEyeJnt.do";
connectAttr "HeadJnt.s" "REyeJnt.is";
connectAttr "unitConversion5.o" "REyeJnt.rx";
connectAttr "unitConversion6.o" "REyeJnt.ry";
connectAttr "Joints.di" "REyeJnt.do";
connectAttr "HeadJnt.s" "LUpperEyeLidJnt.is";
connectAttr "BlendTransforms2.o[0].ot" "LUpperEyeLidJnt.t";
connectAttr "BlendTransforms2.o[0].or" "LUpperEyeLidJnt.r";
connectAttr "BlendTransforms2.o[0].os" "LUpperEyeLidJnt.s";
connectAttr "Joints.di" "LUpperEyeLidJnt.do";
connectAttr "HeadJnt.s" "LLowerEyeLidJnt.is";
connectAttr "BlendTransforms2.o[1].ot" "LLowerEyeLidJnt.t";
connectAttr "BlendTransforms2.o[1].or" "LLowerEyeLidJnt.r";
connectAttr "BlendTransforms2.o[1].os" "LLowerEyeLidJnt.s";
connectAttr "Joints.di" "LLowerEyeLidJnt.do";
connectAttr "HeadJnt.s" "RUpperEyeLidJnt.is";
connectAttr "BlendTransforms2.o[2].ot" "RUpperEyeLidJnt.t";
connectAttr "BlendTransforms2.o[2].or" "RUpperEyeLidJnt.r";
connectAttr "BlendTransforms2.o[2].os" "RUpperEyeLidJnt.s";
connectAttr "Joints.di" "RUpperEyeLidJnt.do";
connectAttr "HeadJnt.s" "RLowerEyeLidJnt.is";
connectAttr "BlendTransforms2.o[3].ot" "RLowerEyeLidJnt.t";
connectAttr "BlendTransforms2.o[3].or" "RLowerEyeLidJnt.r";
connectAttr "BlendTransforms2.o[3].os" "RLowerEyeLidJnt.s";
connectAttr "Joints.di" "RLowerEyeLidJnt.do";
connectAttr "HeadJnt.s" "LCheek1Jnt.is";
connectAttr "BlendTransforms3.o[0].ot" "LCheek1Jnt.t";
connectAttr "BlendTransforms3.o[0].or" "LCheek1Jnt.r";
connectAttr "BlendTransforms3.o[0].os" "LCheek1Jnt.s";
connectAttr "Joints.di" "LCheek1Jnt.do";
connectAttr "BlendTransforms3.o[1].ot" "LCheek2Jnt.t";
connectAttr "BlendTransforms3.o[1].or" "LCheek2Jnt.r";
connectAttr "BlendTransforms3.o[1].os" "LCheek2Jnt.s";
connectAttr "Joints.di" "LCheek2Jnt.do";
connectAttr "HeadJnt.s" "RCheek1Jnt.is";
connectAttr "BlendTransforms3.o[2].ot" "RCheek1Jnt.t";
connectAttr "BlendTransforms3.o[2].or" "RCheek1Jnt.r";
connectAttr "BlendTransforms3.o[2].os" "RCheek1Jnt.s";
connectAttr "Joints.di" "RCheek1Jnt.do";
connectAttr "BlendTransforms3.o[3].ot" "RCheek2Jnt.t";
connectAttr "BlendTransforms3.o[3].or" "RCheek2Jnt.r";
connectAttr "BlendTransforms3.o[3].os" "RCheek2Jnt.s";
connectAttr "Joints.di" "RCheek2Jnt.do";
connectAttr "HeadJnt.s" "LNoseJnt.is";
connectAttr "BlendTransforms3.o[4].ot" "LNoseJnt.t";
connectAttr "BlendTransforms3.o[4].or" "LNoseJnt.r";
connectAttr "BlendTransforms3.o[4].os" "LNoseJnt.s";
connectAttr "Joints.di" "LNoseJnt.do";
connectAttr "HeadJnt.s" "RNoseJnt.is";
connectAttr "BlendTransforms3.o[5].ot" "RNoseJnt.t";
connectAttr "BlendTransforms3.o[5].or" "RNoseJnt.r";
connectAttr "BlendTransforms3.o[5].os" "RNoseJnt.s";
connectAttr "Joints.di" "RNoseJnt.do";
connectAttr "HeadJnt.s" "JawShiftJnt.is";
connectAttr "unitConversion1.o" "JawShiftJnt.rx";
connectAttr "unitConversion2.o" "JawShiftJnt.rz";
connectAttr "Joints.di" "JawShiftJnt.do";
connectAttr "JawShiftJnt.s" "JawJnt.is";
connectAttr "BlendTransforms3.o[6].ot" "JawJnt.t";
connectAttr "BlendTransforms3.o[6].or" "JawJnt.r";
connectAttr "BlendTransforms3.o[6].os" "JawJnt.s";
connectAttr "Joints.di" "JawJnt.do";
connectAttr "Joints.di" "JawEndJnt.do";
connectAttr "JawShiftJnt.s" "MLowerLipJnt.is";
connectAttr "BlendTransforms3.o[7].ot" "MLowerLipJnt.t";
connectAttr "BlendTransforms3.o[7].or" "MLowerLipJnt.r";
connectAttr "BlendTransforms3.o[7].os" "MLowerLipJnt.s";
connectAttr "Joints.di" "MLowerLipJnt.do";
connectAttr "JawShiftJnt.s" "MUpperLipJnt.is";
connectAttr "BlendTransforms3.o[8].ot" "MUpperLipJnt.t";
connectAttr "BlendTransforms3.o[8].or" "MUpperLipJnt.r";
connectAttr "BlendTransforms3.o[8].os" "MUpperLipJnt.s";
connectAttr "Joints.di" "MUpperLipJnt.do";
connectAttr "JawShiftJnt.s" "LCornerJnt.is";
connectAttr "BlendTransforms3.o[9].ot" "LCornerJnt.t";
connectAttr "BlendTransforms3.o[9].or" "LCornerJnt.r";
connectAttr "BlendTransforms3.o[9].os" "LCornerJnt.s";
connectAttr "Joints.di" "LCornerJnt.do";
connectAttr "JawShiftJnt.s" "LUpperLip1Jnt.is";
connectAttr "BlendTransforms3.o[10].ot" "LUpperLip1Jnt.t";
connectAttr "BlendTransforms3.o[10].or" "LUpperLip1Jnt.r";
connectAttr "BlendTransforms3.o[10].os" "LUpperLip1Jnt.s";
connectAttr "Joints.di" "LUpperLip1Jnt.do";
connectAttr "JawShiftJnt.s" "LUpperLip2Jnt.is";
connectAttr "BlendTransforms3.o[11].ot" "LUpperLip2Jnt.t";
connectAttr "BlendTransforms3.o[11].or" "LUpperLip2Jnt.r";
connectAttr "BlendTransforms3.o[11].os" "LUpperLip2Jnt.s";
connectAttr "Joints.di" "LUpperLip2Jnt.do";
connectAttr "JawShiftJnt.s" "LLowerLip1Jnt.is";
connectAttr "BlendTransforms3.o[12].ot" "LLowerLip1Jnt.t";
connectAttr "BlendTransforms3.o[12].or" "LLowerLip1Jnt.r";
connectAttr "BlendTransforms3.o[12].os" "LLowerLip1Jnt.s";
connectAttr "Joints.di" "LLowerLip1Jnt.do";
connectAttr "JawShiftJnt.s" "LLowerLip2Jnt.is";
connectAttr "BlendTransforms3.o[13].ot" "LLowerLip2Jnt.t";
connectAttr "BlendTransforms3.o[13].or" "LLowerLip2Jnt.r";
connectAttr "BlendTransforms3.o[13].os" "LLowerLip2Jnt.s";
connectAttr "Joints.di" "LLowerLip2Jnt.do";
connectAttr "JawShiftJnt.s" "RCornerJnt.is";
connectAttr "BlendTransforms3.o[14].ot" "RCornerJnt.t";
connectAttr "BlendTransforms3.o[14].or" "RCornerJnt.r";
connectAttr "BlendTransforms3.o[14].os" "RCornerJnt.s";
connectAttr "Joints.di" "RCornerJnt.do";
connectAttr "JawShiftJnt.s" "RUpperLip1Jnt.is";
connectAttr "BlendTransforms3.o[15].ot" "RUpperLip1Jnt.t";
connectAttr "BlendTransforms3.o[15].or" "RUpperLip1Jnt.r";
connectAttr "BlendTransforms3.o[15].os" "RUpperLip1Jnt.s";
connectAttr "Joints.di" "RUpperLip1Jnt.do";
connectAttr "JawShiftJnt.s" "RUpperLip2Jnt.is";
connectAttr "BlendTransforms3.o[16].ot" "RUpperLip2Jnt.t";
connectAttr "BlendTransforms3.o[16].or" "RUpperLip2Jnt.r";
connectAttr "BlendTransforms3.o[16].os" "RUpperLip2Jnt.s";
connectAttr "Joints.di" "RUpperLip2Jnt.do";
connectAttr "JawShiftJnt.s" "RLowerLip1Jnt.is";
connectAttr "BlendTransforms3.o[17].ot" "RLowerLip1Jnt.t";
connectAttr "BlendTransforms3.o[17].or" "RLowerLip1Jnt.r";
connectAttr "BlendTransforms3.o[17].os" "RLowerLip1Jnt.s";
connectAttr "Joints.di" "RLowerLip1Jnt.do";
connectAttr "JawShiftJnt.s" "RLowerLip2Jnt.is";
connectAttr "BlendTransforms3.o[18].ot" "RLowerLip2Jnt.t";
connectAttr "BlendTransforms3.o[18].or" "RLowerLip2Jnt.r";
connectAttr "BlendTransforms3.o[18].os" "RLowerLip2Jnt.s";
connectAttr "Joints.di" "RLowerLip2Jnt.do";
connectAttr "JawShiftJnt.s" "MLowerLipHelperJnt.is";
connectAttr "BlendTransforms3.o[19].ot" "MLowerLipHelperJnt.t";
connectAttr "BlendTransforms3.o[19].or" "MLowerLipHelperJnt.r";
connectAttr "BlendTransforms3.o[19].os" "MLowerLipHelperJnt.s";
connectAttr "Joints.di" "MLowerLipHelperJnt.do";
connectAttr "JawShiftJnt.s" "MUpperLipHelperJnt.is";
connectAttr "BlendTransforms3.o[20].ot" "MUpperLipHelperJnt.t";
connectAttr "BlendTransforms3.o[20].or" "MUpperLipHelperJnt.r";
connectAttr "BlendTransforms3.o[20].os" "MUpperLipHelperJnt.s";
connectAttr "Joints.di" "MUpperLipHelperJnt.do";
connectAttr "JawShiftJnt.s" "LUpperLipHelperJnt.is";
connectAttr "BlendTransforms3.o[21].ot" "LUpperLipHelperJnt.t";
connectAttr "BlendTransforms3.o[21].or" "LUpperLipHelperJnt.r";
connectAttr "BlendTransforms3.o[21].os" "LUpperLipHelperJnt.s";
connectAttr "Joints.di" "LUpperLipHelperJnt.do";
connectAttr "JawShiftJnt.s" "LLowerLipHelperJnt.is";
connectAttr "BlendTransforms3.o[22].ot" "LLowerLipHelperJnt.t";
connectAttr "BlendTransforms3.o[22].or" "LLowerLipHelperJnt.r";
connectAttr "BlendTransforms3.o[22].os" "LLowerLipHelperJnt.s";
connectAttr "Joints.di" "LLowerLipHelperJnt.do";
connectAttr "JawShiftJnt.s" "LCornerHelperJnt.is";
connectAttr "BlendTransforms3.o[23].ot" "LCornerHelperJnt.t";
connectAttr "BlendTransforms3.o[23].or" "LCornerHelperJnt.r";
connectAttr "BlendTransforms3.o[23].os" "LCornerHelperJnt.s";
connectAttr "Joints.di" "LCornerHelperJnt.do";
connectAttr "JawShiftJnt.s" "RUpperLipHelperJnt.is";
connectAttr "BlendTransforms3.o[24].ot" "RUpperLipHelperJnt.t";
connectAttr "BlendTransforms3.o[24].or" "RUpperLipHelperJnt.r";
connectAttr "BlendTransforms3.o[24].os" "RUpperLipHelperJnt.s";
connectAttr "Joints.di" "RUpperLipHelperJnt.do";
connectAttr "JawShiftJnt.s" "RLowerLipHelperJnt.is";
connectAttr "BlendTransforms3.o[25].ot" "RLowerLipHelperJnt.t";
connectAttr "BlendTransforms3.o[25].or" "RLowerLipHelperJnt.r";
connectAttr "BlendTransforms3.o[25].os" "RLowerLipHelperJnt.s";
connectAttr "Joints.di" "RLowerLipHelperJnt.do";
connectAttr "JawShiftJnt.s" "RCornerHelperJnt.is";
connectAttr "BlendTransforms3.o[26].ot" "RCornerHelperJnt.t";
connectAttr "BlendTransforms3.o[26].or" "RCornerHelperJnt.r";
connectAttr "BlendTransforms3.o[26].os" "RCornerHelperJnt.s";
connectAttr "Joints.di" "RCornerHelperJnt.do";
connectAttr "HeadJnt.ro" "HeadJnt_parentConstraint1.cro";
connectAttr "HeadJnt.pim" "HeadJnt_parentConstraint1.cpim";
connectAttr "HeadJnt.rp" "HeadJnt_parentConstraint1.crp";
connectAttr "HeadJnt.rpt" "HeadJnt_parentConstraint1.crt";
connectAttr "HeadJnt.jo" "HeadJnt_parentConstraint1.cjo";
connectAttr "HeadCtrl.t" "HeadJnt_parentConstraint1.tg[0].tt";
connectAttr "HeadCtrl.rp" "HeadJnt_parentConstraint1.tg[0].trp";
connectAttr "HeadCtrl.rpt" "HeadJnt_parentConstraint1.tg[0].trt";
connectAttr "HeadCtrl.r" "HeadJnt_parentConstraint1.tg[0].tr";
connectAttr "HeadCtrl.ro" "HeadJnt_parentConstraint1.tg[0].tro";
connectAttr "HeadCtrl.s" "HeadJnt_parentConstraint1.tg[0].ts";
connectAttr "HeadCtrl.pm" "HeadJnt_parentConstraint1.tg[0].tpm";
connectAttr "HeadJnt_parentConstraint1.w0" "HeadJnt_parentConstraint1.tg[0].tw";
connectAttr "Joints.di" "HeadJnt_parentConstraint1.do";
connectAttr "LEyeMesh_parentConstraint1.ctx" "LEyeMesh.tx" -l on;
connectAttr "LEyeMesh_parentConstraint1.cty" "LEyeMesh.ty" -l on;
connectAttr "LEyeMesh_parentConstraint1.ctz" "LEyeMesh.tz" -l on;
connectAttr "LEyeMesh_parentConstraint1.crx" "LEyeMesh.rx" -l on;
connectAttr "LEyeMesh_parentConstraint1.cry" "LEyeMesh.ry" -l on;
connectAttr "LEyeMesh_parentConstraint1.crz" "LEyeMesh.rz" -l on;
connectAttr "Face_HighRes.di" "LEyeMesh.do";
connectAttr "groupId35.id" "LEyeMeshShape.iog.og[0].gid";
connectAttr "blinn4SG.mwc" "LEyeMeshShape.iog.og[0].gco";
connectAttr "groupId37.id" "LEyeMeshShape.iog.og[1].gid";
connectAttr "blinn5SG.mwc" "LEyeMeshShape.iog.og[1].gco";
connectAttr "transformGeometry1.og" "LEyeMeshShape.i";
connectAttr "groupId36.id" "LEyeMeshShape.ciog.cog[0].cgid";
connectAttr "Face_HighRes.di" "LEyeMeshShape.do";
connectAttr "LEyeMesh.ro" "LEyeMesh_parentConstraint1.cro";
connectAttr "LEyeMesh.pim" "LEyeMesh_parentConstraint1.cpim";
connectAttr "LEyeMesh.rp" "LEyeMesh_parentConstraint1.crp";
connectAttr "LEyeMesh.rpt" "LEyeMesh_parentConstraint1.crt";
connectAttr "LEyeJnt.t" "LEyeMesh_parentConstraint1.tg[0].tt";
connectAttr "LEyeJnt.rp" "LEyeMesh_parentConstraint1.tg[0].trp";
connectAttr "LEyeJnt.rpt" "LEyeMesh_parentConstraint1.tg[0].trt";
connectAttr "LEyeJnt.r" "LEyeMesh_parentConstraint1.tg[0].tr";
connectAttr "LEyeJnt.ro" "LEyeMesh_parentConstraint1.tg[0].tro";
connectAttr "LEyeJnt.s" "LEyeMesh_parentConstraint1.tg[0].ts";
connectAttr "LEyeJnt.pm" "LEyeMesh_parentConstraint1.tg[0].tpm";
connectAttr "LEyeJnt.jo" "LEyeMesh_parentConstraint1.tg[0].tjo";
connectAttr "LEyeMesh_parentConstraint1.w0" "LEyeMesh_parentConstraint1.tg[0].tw"
		;
connectAttr "REyeMesh_parentConstraint1.ctx" "REyeMesh.tx" -l on;
connectAttr "REyeMesh_parentConstraint1.cty" "REyeMesh.ty" -l on;
connectAttr "REyeMesh_parentConstraint1.ctz" "REyeMesh.tz" -l on;
connectAttr "REyeMesh_parentConstraint1.crx" "REyeMesh.rx" -l on;
connectAttr "REyeMesh_parentConstraint1.cry" "REyeMesh.ry" -l on;
connectAttr "REyeMesh_parentConstraint1.crz" "REyeMesh.rz" -l on;
connectAttr "Face_HighRes.di" "REyeMesh.do";
connectAttr "groupId73.id" "REyeMeshShape.iog.og[0].gid";
connectAttr "blinn4SG.mwc" "REyeMeshShape.iog.og[0].gco";
connectAttr "groupId74.id" "REyeMeshShape.iog.og[1].gid";
connectAttr "blinn5SG.mwc" "REyeMeshShape.iog.og[1].gco";
connectAttr "groupId75.id" "REyeMeshShape.ciog.cog[1].cgid";
connectAttr "Face_HighRes.di" "REyeMeshShape.do";
connectAttr "REyeMesh.ro" "REyeMesh_parentConstraint1.cro";
connectAttr "REyeMesh.pim" "REyeMesh_parentConstraint1.cpim";
connectAttr "REyeMesh.rp" "REyeMesh_parentConstraint1.crp";
connectAttr "REyeMesh.rpt" "REyeMesh_parentConstraint1.crt";
connectAttr "REyeJnt.t" "REyeMesh_parentConstraint1.tg[0].tt";
connectAttr "REyeJnt.rp" "REyeMesh_parentConstraint1.tg[0].trp";
connectAttr "REyeJnt.rpt" "REyeMesh_parentConstraint1.tg[0].trt";
connectAttr "REyeJnt.r" "REyeMesh_parentConstraint1.tg[0].tr";
connectAttr "REyeJnt.ro" "REyeMesh_parentConstraint1.tg[0].tro";
connectAttr "REyeJnt.s" "REyeMesh_parentConstraint1.tg[0].ts";
connectAttr "REyeJnt.pm" "REyeMesh_parentConstraint1.tg[0].tpm";
connectAttr "REyeJnt.jo" "REyeMesh_parentConstraint1.tg[0].tjo";
connectAttr "REyeMesh_parentConstraint1.w0" "REyeMesh_parentConstraint1.tg[0].tw"
		;
connectAttr "Face_LowRes.di" "FaceMesh_LowRes.do";
connectAttr "skinCluster1.og[0]" "FaceMesh_LowResShape.i";
connectAttr "skinCluster1GroupId.id" "FaceMesh_LowResShape.iog.og[13].gid";
connectAttr "skinCluster1Set.mwc" "FaceMesh_LowResShape.iog.og[13].gco";
connectAttr "groupId69.id" "FaceMesh_LowResShape.iog.og[14].gid";
connectAttr "tweakSet1.mwc" "FaceMesh_LowResShape.iog.og[14].gco";
connectAttr "tweak1.vl[0].vt[0]" "FaceMesh_LowResShape.twl";
connectAttr "Face_LowRes.di" "FaceMesh_LowResShape.do";
connectAttr "Face_LowRes.di" "FaceMesh_LowResShape69Orig.do";
connectAttr "Face_HighRes.di" "FaceMesh_HighRes.do";
connectAttr "groupParts33.og" "FaceMesh_HighResShape.i";
connectAttr "groupId70.id" "FaceMesh_HighResShape.iog.og[0].gid";
connectAttr "blinn10SG.mwc" "FaceMesh_HighResShape.iog.og[0].gco";
connectAttr "groupId72.id" "FaceMesh_HighResShape.iog.og[1].gid";
connectAttr "blinn11SG.mwc" "FaceMesh_HighResShape.iog.og[1].gco";
connectAttr "groupId76.id" "FaceMesh_HighResShape.iog.og[2].gid";
connectAttr "blinn12SG.mwc" "FaceMesh_HighResShape.iog.og[2].gco";
connectAttr "Face_HighRes.di" "FaceMesh_HighResShape.do";
connectAttr "groupId71.id" "FaceMesh_HighResShape.ciog.cog[0].cgid";
connectAttr "Face_HighRes.di" "FaceMesh_HighResShape69Orig.do";
connectAttr "Face_HighRes.di" "Lower_Teeth.do";
connectAttr "Lower_Teeth_parentConstraint1.ctx" "Lower_Teeth.tx";
connectAttr "Lower_Teeth_parentConstraint1.cty" "Lower_Teeth.ty";
connectAttr "Lower_Teeth_parentConstraint1.ctz" "Lower_Teeth.tz";
connectAttr "Lower_Teeth_parentConstraint1.crx" "Lower_Teeth.rx";
connectAttr "Lower_Teeth_parentConstraint1.cry" "Lower_Teeth.ry";
connectAttr "Lower_Teeth_parentConstraint1.crz" "Lower_Teeth.rz";
connectAttr "Face_HighRes.di" "Lower_TeethShape.do";
connectAttr "Lower_Teeth.ro" "Lower_Teeth_parentConstraint1.cro";
connectAttr "Lower_Teeth.pim" "Lower_Teeth_parentConstraint1.cpim";
connectAttr "Lower_Teeth.rp" "Lower_Teeth_parentConstraint1.crp";
connectAttr "Lower_Teeth.rpt" "Lower_Teeth_parentConstraint1.crt";
connectAttr "JawJnt.t" "Lower_Teeth_parentConstraint1.tg[0].tt";
connectAttr "JawJnt.rp" "Lower_Teeth_parentConstraint1.tg[0].trp";
connectAttr "JawJnt.rpt" "Lower_Teeth_parentConstraint1.tg[0].trt";
connectAttr "JawJnt.r" "Lower_Teeth_parentConstraint1.tg[0].tr";
connectAttr "JawJnt.ro" "Lower_Teeth_parentConstraint1.tg[0].tro";
connectAttr "JawJnt.s" "Lower_Teeth_parentConstraint1.tg[0].ts";
connectAttr "JawJnt.pm" "Lower_Teeth_parentConstraint1.tg[0].tpm";
connectAttr "JawJnt.jo" "Lower_Teeth_parentConstraint1.tg[0].tjo";
connectAttr "Lower_Teeth_parentConstraint1.w0" "Lower_Teeth_parentConstraint1.tg[0].tw"
		;
connectAttr "Face_HighRes.di" "Upper_Teeth.do";
connectAttr "Upper_Teeth_parentConstraint1.ctx" "Upper_Teeth.tx";
connectAttr "Upper_Teeth_parentConstraint1.cty" "Upper_Teeth.ty";
connectAttr "Upper_Teeth_parentConstraint1.ctz" "Upper_Teeth.tz";
connectAttr "Upper_Teeth_parentConstraint1.crx" "Upper_Teeth.rx";
connectAttr "Upper_Teeth_parentConstraint1.cry" "Upper_Teeth.ry";
connectAttr "Upper_Teeth_parentConstraint1.crz" "Upper_Teeth.rz";
connectAttr "Face_HighRes.di" "Upper_TeethShape.do";
connectAttr "Upper_Teeth.ro" "Upper_Teeth_parentConstraint1.cro";
connectAttr "Upper_Teeth.pim" "Upper_Teeth_parentConstraint1.cpim";
connectAttr "Upper_Teeth.rp" "Upper_Teeth_parentConstraint1.crp";
connectAttr "Upper_Teeth.rpt" "Upper_Teeth_parentConstraint1.crt";
connectAttr "JawShiftJnt.t" "Upper_Teeth_parentConstraint1.tg[0].tt";
connectAttr "JawShiftJnt.rp" "Upper_Teeth_parentConstraint1.tg[0].trp";
connectAttr "JawShiftJnt.rpt" "Upper_Teeth_parentConstraint1.tg[0].trt";
connectAttr "JawShiftJnt.r" "Upper_Teeth_parentConstraint1.tg[0].tr";
connectAttr "JawShiftJnt.ro" "Upper_Teeth_parentConstraint1.tg[0].tro";
connectAttr "JawShiftJnt.s" "Upper_Teeth_parentConstraint1.tg[0].ts";
connectAttr "JawShiftJnt.pm" "Upper_Teeth_parentConstraint1.tg[0].tpm";
connectAttr "JawShiftJnt.jo" "Upper_Teeth_parentConstraint1.tg[0].tjo";
connectAttr "Upper_Teeth_parentConstraint1.w0" "Upper_Teeth_parentConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn10SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn11SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn12SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn11SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn12SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "blinn4.oc" "blinn4SG.ss";
connectAttr "LEyeMeshShape.iog.og[0]" "blinn4SG.dsm" -na;
connectAttr "LEyeMeshShape.ciog.cog[0]" "blinn4SG.dsm" -na;
connectAttr "REyeMeshShape.iog.og[0]" "blinn4SG.dsm" -na;
connectAttr "REyeMeshShape.ciog.cog[1]" "blinn4SG.dsm" -na;
connectAttr "groupId35.msg" "blinn4SG.gn" -na;
connectAttr "groupId36.msg" "blinn4SG.gn" -na;
connectAttr "groupId73.msg" "blinn4SG.gn" -na;
connectAttr "groupId75.msg" "blinn4SG.gn" -na;
connectAttr "blinn4SG.msg" "materialInfo8.sg";
connectAttr "blinn4.msg" "materialInfo8.m";
connectAttr "blinn5.oc" "blinn5SG.ss";
connectAttr "groupId37.msg" "blinn5SG.gn" -na;
connectAttr "groupId74.msg" "blinn5SG.gn" -na;
connectAttr "LEyeMeshShape.iog.og[1]" "blinn5SG.dsm" -na;
connectAttr "REyeMeshShape.iog.og[1]" "blinn5SG.dsm" -na;
connectAttr "blinn5SG.msg" "materialInfo9.sg";
connectAttr "blinn5.msg" "materialInfo9.m";
connectAttr "groupParts27.og" "groupParts28.ig";
connectAttr "groupId37.id" "groupParts28.gi";
connectAttr "polySphere1.out" "groupParts27.ig";
connectAttr "groupId35.id" "groupParts27.gi";
connectAttr "hyperView1.msg" "nodeEditorPanel2Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "Joystick_RUpperEyeLidCtrl.msg" "hyperLayout1.hyp[0].dn";
connectAttr "Joystick_RLowerEyeLidCtrl.msg" "hyperLayout1.hyp[1].dn";
connectAttr "Lids.msg" "hyperLayout1.hyp[2].dn";
connectAttr "multiplyDivide183.msg" "hyperLayout1.hyp[3].dn";
connectAttr "clamp16.msg" "hyperLayout1.hyp[4].dn";
connectAttr "multiplyDivide184.msg" "hyperLayout1.hyp[5].dn";
connectAttr "REyeJnt.msg" "hyperLayout1.hyp[6].dn";
connectAttr "unitConversion5.msg" "hyperLayout1.hyp[7].dn";
connectAttr "multiplyDivide185.msg" "hyperLayout1.hyp[8].dn";
connectAttr "unitConversion6.msg" "hyperLayout1.hyp[9].dn";
connectAttr "Joystick_LEyesCtrl.msg" "hyperLayout1.hyp[10].dn";
connectAttr "multiplyDivide186.msg" "hyperLayout1.hyp[11].dn";
connectAttr "plusMinusAverage7.msg" "hyperLayout1.hyp[12].dn";
connectAttr "plusMinusAverage8.msg" "hyperLayout1.hyp[13].dn";
connectAttr "multiplyDivide187.msg" "hyperLayout1.hyp[14].dn";
connectAttr "clamp17.msg" "hyperLayout1.hyp[15].dn";
connectAttr "blinn7.oc" "blinn7SG.ss";
connectAttr "Upper_TeethShape.iog" "blinn7SG.dsm" -na;
connectAttr "Lower_TeethShape.iog" "blinn7SG.dsm" -na;
connectAttr "blinn7SG.msg" "materialInfo11.sg";
connectAttr "blinn7.msg" "materialInfo11.m";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "FaceMesh_LowResShape.iog" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo3.sg";
connectAttr "blinn1.msg" "materialInfo3.m";
connectAttr "FaceMesh_LowResShape.o" "polySmoothProxy1.ip";
connectAttr "LBrow1Jnt.iog" "Brows.dsm" -na;
connectAttr "LBrow2Jnt.iog" "Brows.dsm" -na;
connectAttr "LBrow3Jnt.iog" "Brows.dsm" -na;
connectAttr "RBrow1Jnt.iog" "Brows.dsm" -na;
connectAttr "RBrow2Jnt.iog" "Brows.dsm" -na;
connectAttr "RBrow3Jnt.iog" "Brows.dsm" -na;
connectAttr "clamp10.opr" "Brows.BT_LUp";
connectAttr "clamp10.opg" "Brows.BT_LDown";
connectAttr "clamp11.opg" "Brows.BT_LAngry";
connectAttr "clamp11.opr" "Brows.BT_LSad";
connectAttr "clamp12.opr" "Brows.BT_RUp";
connectAttr "clamp12.opg" "Brows.BT_RDown";
connectAttr "clamp13.opr" "Brows.BT_RAngry";
connectAttr "clamp13.opg" "Brows.BT_RSad";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "RootJnt.wm" "skinCluster1.ma[0]";
connectAttr "HeadMainJnt.wm" "skinCluster1.ma[1]";
connectAttr "HeadJnt.wm" "skinCluster1.ma[2]";
connectAttr "LEarJnt.wm" "skinCluster1.ma[3]";
connectAttr "LEarEndJnt.wm" "skinCluster1.ma[4]";
connectAttr "REarJnt.wm" "skinCluster1.ma[5]";
connectAttr "REarEndJnt.wm" "skinCluster1.ma[6]";
connectAttr "LBrow1Jnt.wm" "skinCluster1.ma[7]";
connectAttr "LBrow2Jnt.wm" "skinCluster1.ma[8]";
connectAttr "LBrow3Jnt.wm" "skinCluster1.ma[9]";
connectAttr "RBrow1Jnt.wm" "skinCluster1.ma[10]";
connectAttr "RBrow2Jnt.wm" "skinCluster1.ma[11]";
connectAttr "RBrow3Jnt.wm" "skinCluster1.ma[12]";
connectAttr "LEyeJnt.wm" "skinCluster1.ma[13]";
connectAttr "REyeJnt.wm" "skinCluster1.ma[14]";
connectAttr "LUpperEyeLidJnt.wm" "skinCluster1.ma[15]";
connectAttr "LLowerEyeLidJnt.wm" "skinCluster1.ma[16]";
connectAttr "RUpperEyeLidJnt.wm" "skinCluster1.ma[17]";
connectAttr "RLowerEyeLidJnt.wm" "skinCluster1.ma[18]";
connectAttr "LCheek1Jnt.wm" "skinCluster1.ma[19]";
connectAttr "LCheek2Jnt.wm" "skinCluster1.ma[20]";
connectAttr "RCheek1Jnt.wm" "skinCluster1.ma[21]";
connectAttr "RCheek2Jnt.wm" "skinCluster1.ma[22]";
connectAttr "LNoseJnt.wm" "skinCluster1.ma[23]";
connectAttr "RNoseJnt.wm" "skinCluster1.ma[24]";
connectAttr "JawShiftJnt.wm" "skinCluster1.ma[25]";
connectAttr "JawJnt.wm" "skinCluster1.ma[26]";
connectAttr "MLowerLipJnt.wm" "skinCluster1.ma[27]";
connectAttr "MUpperLipJnt.wm" "skinCluster1.ma[28]";
connectAttr "LCornerJnt.wm" "skinCluster1.ma[29]";
connectAttr "LUpperLip1Jnt.wm" "skinCluster1.ma[30]";
connectAttr "LUpperLip2Jnt.wm" "skinCluster1.ma[31]";
connectAttr "LLowerLip1Jnt.wm" "skinCluster1.ma[32]";
connectAttr "LLowerLip2Jnt.wm" "skinCluster1.ma[33]";
connectAttr "RCornerJnt.wm" "skinCluster1.ma[34]";
connectAttr "RUpperLip1Jnt.wm" "skinCluster1.ma[35]";
connectAttr "RUpperLip2Jnt.wm" "skinCluster1.ma[36]";
connectAttr "RLowerLip1Jnt.wm" "skinCluster1.ma[37]";
connectAttr "RLowerLip2Jnt.wm" "skinCluster1.ma[38]";
connectAttr "MLowerLipHelperJnt.wm" "skinCluster1.ma[39]";
connectAttr "MUpperLipHelperJnt.wm" "skinCluster1.ma[40]";
connectAttr "LUpperLipHelperJnt.wm" "skinCluster1.ma[41]";
connectAttr "LLowerLipHelperJnt.wm" "skinCluster1.ma[42]";
connectAttr "LCornerHelperJnt.wm" "skinCluster1.ma[43]";
connectAttr "RUpperLipHelperJnt.wm" "skinCluster1.ma[44]";
connectAttr "RLowerLipHelperJnt.wm" "skinCluster1.ma[45]";
connectAttr "RCornerHelperJnt.wm" "skinCluster1.ma[46]";
connectAttr "RootJnt.liw" "skinCluster1.lw[0]";
connectAttr "HeadMainJnt.liw" "skinCluster1.lw[1]";
connectAttr "HeadJnt.liw" "skinCluster1.lw[2]";
connectAttr "LEarJnt.liw" "skinCluster1.lw[3]";
connectAttr "LEarEndJnt.liw" "skinCluster1.lw[4]";
connectAttr "REarJnt.liw" "skinCluster1.lw[5]";
connectAttr "REarEndJnt.liw" "skinCluster1.lw[6]";
connectAttr "LBrow1Jnt.liw" "skinCluster1.lw[7]";
connectAttr "LBrow2Jnt.liw" "skinCluster1.lw[8]";
connectAttr "LBrow3Jnt.liw" "skinCluster1.lw[9]";
connectAttr "RBrow1Jnt.liw" "skinCluster1.lw[10]";
connectAttr "RBrow2Jnt.liw" "skinCluster1.lw[11]";
connectAttr "RBrow3Jnt.liw" "skinCluster1.lw[12]";
connectAttr "LEyeJnt.liw" "skinCluster1.lw[13]";
connectAttr "REyeJnt.liw" "skinCluster1.lw[14]";
connectAttr "LUpperEyeLidJnt.liw" "skinCluster1.lw[15]";
connectAttr "LLowerEyeLidJnt.liw" "skinCluster1.lw[16]";
connectAttr "RUpperEyeLidJnt.liw" "skinCluster1.lw[17]";
connectAttr "RLowerEyeLidJnt.liw" "skinCluster1.lw[18]";
connectAttr "LCheek1Jnt.liw" "skinCluster1.lw[19]";
connectAttr "LCheek2Jnt.liw" "skinCluster1.lw[20]";
connectAttr "RCheek1Jnt.liw" "skinCluster1.lw[21]";
connectAttr "RCheek2Jnt.liw" "skinCluster1.lw[22]";
connectAttr "LNoseJnt.liw" "skinCluster1.lw[23]";
connectAttr "RNoseJnt.liw" "skinCluster1.lw[24]";
connectAttr "JawShiftJnt.liw" "skinCluster1.lw[25]";
connectAttr "JawJnt.liw" "skinCluster1.lw[26]";
connectAttr "MLowerLipJnt.liw" "skinCluster1.lw[27]";
connectAttr "MUpperLipJnt.liw" "skinCluster1.lw[28]";
connectAttr "LCornerJnt.liw" "skinCluster1.lw[29]";
connectAttr "LUpperLip1Jnt.liw" "skinCluster1.lw[30]";
connectAttr "LUpperLip2Jnt.liw" "skinCluster1.lw[31]";
connectAttr "LLowerLip1Jnt.liw" "skinCluster1.lw[32]";
connectAttr "LLowerLip2Jnt.liw" "skinCluster1.lw[33]";
connectAttr "RCornerJnt.liw" "skinCluster1.lw[34]";
connectAttr "RUpperLip1Jnt.liw" "skinCluster1.lw[35]";
connectAttr "RUpperLip2Jnt.liw" "skinCluster1.lw[36]";
connectAttr "RLowerLip1Jnt.liw" "skinCluster1.lw[37]";
connectAttr "RLowerLip2Jnt.liw" "skinCluster1.lw[38]";
connectAttr "MLowerLipHelperJnt.liw" "skinCluster1.lw[39]";
connectAttr "MUpperLipHelperJnt.liw" "skinCluster1.lw[40]";
connectAttr "LUpperLipHelperJnt.liw" "skinCluster1.lw[41]";
connectAttr "LLowerLipHelperJnt.liw" "skinCluster1.lw[42]";
connectAttr "LCornerHelperJnt.liw" "skinCluster1.lw[43]";
connectAttr "RUpperLipHelperJnt.liw" "skinCluster1.lw[44]";
connectAttr "RLowerLipHelperJnt.liw" "skinCluster1.lw[45]";
connectAttr "RCornerHelperJnt.liw" "skinCluster1.lw[46]";
connectAttr "groupParts30.og" "tweak1.ip[0].ig";
connectAttr "groupId69.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "FaceMesh_LowResShape.iog.og[13]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId69.msg" "tweakSet1.gn" -na;
connectAttr "FaceMesh_LowResShape.iog.og[14]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "FaceMesh_LowResShape69Orig.w" "groupParts30.ig";
connectAttr "groupId69.id" "groupParts30.gi";
connectAttr "RootJnt.msg" "bindPose1.m[0]";
connectAttr "HeadMainJnt.msg" "bindPose1.m[1]";
connectAttr "HeadJnt.msg" "bindPose1.m[2]";
connectAttr "LEarJnt.msg" "bindPose1.m[3]";
connectAttr "LEarEndJnt.msg" "bindPose1.m[4]";
connectAttr "REarJnt.msg" "bindPose1.m[5]";
connectAttr "REarEndJnt.msg" "bindPose1.m[6]";
connectAttr "LBrow1Jnt.msg" "bindPose1.m[7]";
connectAttr "LBrow2Jnt.msg" "bindPose1.m[8]";
connectAttr "LBrow3Jnt.msg" "bindPose1.m[9]";
connectAttr "RBrow1Jnt.msg" "bindPose1.m[10]";
connectAttr "RBrow2Jnt.msg" "bindPose1.m[11]";
connectAttr "RBrow3Jnt.msg" "bindPose1.m[12]";
connectAttr "LEyeJnt.msg" "bindPose1.m[13]";
connectAttr "REyeJnt.msg" "bindPose1.m[14]";
connectAttr "LUpperEyeLidJnt.msg" "bindPose1.m[15]";
connectAttr "LLowerEyeLidJnt.msg" "bindPose1.m[16]";
connectAttr "RUpperEyeLidJnt.msg" "bindPose1.m[17]";
connectAttr "RLowerEyeLidJnt.msg" "bindPose1.m[18]";
connectAttr "LCheek1Jnt.msg" "bindPose1.m[19]";
connectAttr "LCheek2Jnt.msg" "bindPose1.m[20]";
connectAttr "RCheek1Jnt.msg" "bindPose1.m[21]";
connectAttr "RCheek2Jnt.msg" "bindPose1.m[22]";
connectAttr "LNoseJnt.msg" "bindPose1.m[23]";
connectAttr "RNoseJnt.msg" "bindPose1.m[24]";
connectAttr "JawShiftJnt.msg" "bindPose1.m[25]";
connectAttr "JawJnt.msg" "bindPose1.m[26]";
connectAttr "MLowerLipJnt.msg" "bindPose1.m[27]";
connectAttr "MUpperLipJnt.msg" "bindPose1.m[28]";
connectAttr "LCornerJnt.msg" "bindPose1.m[29]";
connectAttr "LUpperLip1Jnt.msg" "bindPose1.m[30]";
connectAttr "LUpperLip2Jnt.msg" "bindPose1.m[31]";
connectAttr "LLowerLip1Jnt.msg" "bindPose1.m[32]";
connectAttr "LLowerLip2Jnt.msg" "bindPose1.m[33]";
connectAttr "RCornerJnt.msg" "bindPose1.m[34]";
connectAttr "RUpperLip1Jnt.msg" "bindPose1.m[35]";
connectAttr "RUpperLip2Jnt.msg" "bindPose1.m[36]";
connectAttr "RLowerLip1Jnt.msg" "bindPose1.m[37]";
connectAttr "RLowerLip2Jnt.msg" "bindPose1.m[38]";
connectAttr "MLowerLipHelperJnt.msg" "bindPose1.m[39]";
connectAttr "MUpperLipHelperJnt.msg" "bindPose1.m[40]";
connectAttr "LUpperLipHelperJnt.msg" "bindPose1.m[41]";
connectAttr "LLowerLipHelperJnt.msg" "bindPose1.m[42]";
connectAttr "LCornerHelperJnt.msg" "bindPose1.m[43]";
connectAttr "RUpperLipHelperJnt.msg" "bindPose1.m[44]";
connectAttr "RLowerLipHelperJnt.msg" "bindPose1.m[45]";
connectAttr "RCornerHelperJnt.msg" "bindPose1.m[46]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[2]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[2]" "bindPose1.p[7]";
connectAttr "bindPose1.m[2]" "bindPose1.p[8]";
connectAttr "bindPose1.m[2]" "bindPose1.p[9]";
connectAttr "bindPose1.m[2]" "bindPose1.p[10]";
connectAttr "bindPose1.m[2]" "bindPose1.p[11]";
connectAttr "bindPose1.m[2]" "bindPose1.p[12]";
connectAttr "bindPose1.m[2]" "bindPose1.p[13]";
connectAttr "bindPose1.m[2]" "bindPose1.p[14]";
connectAttr "bindPose1.m[2]" "bindPose1.p[15]";
connectAttr "bindPose1.m[2]" "bindPose1.p[16]";
connectAttr "bindPose1.m[2]" "bindPose1.p[17]";
connectAttr "bindPose1.m[2]" "bindPose1.p[18]";
connectAttr "bindPose1.m[2]" "bindPose1.p[19]";
connectAttr "bindPose1.m[2]" "bindPose1.p[20]";
connectAttr "bindPose1.m[2]" "bindPose1.p[21]";
connectAttr "bindPose1.m[2]" "bindPose1.p[22]";
connectAttr "bindPose1.m[2]" "bindPose1.p[23]";
connectAttr "bindPose1.m[2]" "bindPose1.p[24]";
connectAttr "bindPose1.m[2]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[25]" "bindPose1.p[27]";
connectAttr "bindPose1.m[25]" "bindPose1.p[28]";
connectAttr "bindPose1.m[25]" "bindPose1.p[29]";
connectAttr "bindPose1.m[25]" "bindPose1.p[30]";
connectAttr "bindPose1.m[25]" "bindPose1.p[31]";
connectAttr "bindPose1.m[25]" "bindPose1.p[32]";
connectAttr "bindPose1.m[25]" "bindPose1.p[33]";
connectAttr "bindPose1.m[25]" "bindPose1.p[34]";
connectAttr "bindPose1.m[25]" "bindPose1.p[35]";
connectAttr "bindPose1.m[25]" "bindPose1.p[36]";
connectAttr "bindPose1.m[25]" "bindPose1.p[37]";
connectAttr "bindPose1.m[25]" "bindPose1.p[38]";
connectAttr "bindPose1.m[25]" "bindPose1.p[39]";
connectAttr "bindPose1.m[25]" "bindPose1.p[40]";
connectAttr "bindPose1.m[25]" "bindPose1.p[41]";
connectAttr "bindPose1.m[25]" "bindPose1.p[42]";
connectAttr "bindPose1.m[25]" "bindPose1.p[43]";
connectAttr "bindPose1.m[25]" "bindPose1.p[44]";
connectAttr "bindPose1.m[25]" "bindPose1.p[45]";
connectAttr "bindPose1.m[25]" "bindPose1.p[46]";
connectAttr "RootJnt.bps" "bindPose1.wm[0]";
connectAttr "HeadMainJnt.bps" "bindPose1.wm[1]";
connectAttr "HeadJnt.bps" "bindPose1.wm[2]";
connectAttr "LEarJnt.bps" "bindPose1.wm[3]";
connectAttr "LEarEndJnt.bps" "bindPose1.wm[4]";
connectAttr "REarJnt.bps" "bindPose1.wm[5]";
connectAttr "REarEndJnt.bps" "bindPose1.wm[6]";
connectAttr "LBrow1Jnt.bps" "bindPose1.wm[7]";
connectAttr "LBrow2Jnt.bps" "bindPose1.wm[8]";
connectAttr "LBrow3Jnt.bps" "bindPose1.wm[9]";
connectAttr "RBrow1Jnt.bps" "bindPose1.wm[10]";
connectAttr "RBrow2Jnt.bps" "bindPose1.wm[11]";
connectAttr "RBrow3Jnt.bps" "bindPose1.wm[12]";
connectAttr "LEyeJnt.bps" "bindPose1.wm[13]";
connectAttr "REyeJnt.bps" "bindPose1.wm[14]";
connectAttr "LUpperEyeLidJnt.bps" "bindPose1.wm[15]";
connectAttr "LLowerEyeLidJnt.bps" "bindPose1.wm[16]";
connectAttr "RUpperEyeLidJnt.bps" "bindPose1.wm[17]";
connectAttr "RLowerEyeLidJnt.bps" "bindPose1.wm[18]";
connectAttr "LCheek1Jnt.bps" "bindPose1.wm[19]";
connectAttr "LCheek2Jnt.bps" "bindPose1.wm[20]";
connectAttr "RCheek1Jnt.bps" "bindPose1.wm[21]";
connectAttr "RCheek2Jnt.bps" "bindPose1.wm[22]";
connectAttr "LNoseJnt.bps" "bindPose1.wm[23]";
connectAttr "RNoseJnt.bps" "bindPose1.wm[24]";
connectAttr "JawShiftJnt.bps" "bindPose1.wm[25]";
connectAttr "JawJnt.bps" "bindPose1.wm[26]";
connectAttr "MLowerLipJnt.bps" "bindPose1.wm[27]";
connectAttr "MUpperLipJnt.bps" "bindPose1.wm[28]";
connectAttr "LCornerJnt.bps" "bindPose1.wm[29]";
connectAttr "LUpperLip1Jnt.bps" "bindPose1.wm[30]";
connectAttr "LUpperLip2Jnt.bps" "bindPose1.wm[31]";
connectAttr "LLowerLip1Jnt.bps" "bindPose1.wm[32]";
connectAttr "LLowerLip2Jnt.bps" "bindPose1.wm[33]";
connectAttr "RCornerJnt.bps" "bindPose1.wm[34]";
connectAttr "RUpperLip1Jnt.bps" "bindPose1.wm[35]";
connectAttr "RUpperLip2Jnt.bps" "bindPose1.wm[36]";
connectAttr "RLowerLip1Jnt.bps" "bindPose1.wm[37]";
connectAttr "RLowerLip2Jnt.bps" "bindPose1.wm[38]";
connectAttr "MLowerLipHelperJnt.bps" "bindPose1.wm[39]";
connectAttr "MUpperLipHelperJnt.bps" "bindPose1.wm[40]";
connectAttr "LUpperLipHelperJnt.bps" "bindPose1.wm[41]";
connectAttr "LLowerLipHelperJnt.bps" "bindPose1.wm[42]";
connectAttr "LCornerHelperJnt.bps" "bindPose1.wm[43]";
connectAttr "RUpperLipHelperJnt.bps" "bindPose1.wm[44]";
connectAttr "RLowerLipHelperJnt.bps" "bindPose1.wm[45]";
connectAttr "RCornerHelperJnt.bps" "bindPose1.wm[46]";
connectAttr "Brows.BT_LUp" "BlendTransforms1.t[0].p[0].w";
connectAttr "Brows.BT_LDown" "BlendTransforms1.t[0].p[1].w";
connectAttr "Brows.BT_LAngry" "BlendTransforms1.t[0].p[2].w";
connectAttr "Brows.BT_LSad" "BlendTransforms1.t[0].p[3].w";
connectAttr "Brows.BT_RUp" "BlendTransforms1.t[0].p[4].w";
connectAttr "Brows.BT_RDown" "BlendTransforms1.t[0].p[5].w";
connectAttr "Brows.BT_RAngry" "BlendTransforms1.t[0].p[6].w";
connectAttr "Brows.BT_RSad" "BlendTransforms1.t[0].p[7].w";
connectAttr "Brows.BT_LUp" "BlendTransforms1.t[1].p[0].w";
connectAttr "Brows.BT_LDown" "BlendTransforms1.t[1].p[1].w";
connectAttr "Brows.BT_LAngry" "BlendTransforms1.t[1].p[2].w";
connectAttr "Brows.BT_LSad" "BlendTransforms1.t[1].p[3].w";
connectAttr "Brows.BT_RUp" "BlendTransforms1.t[1].p[4].w";
connectAttr "Brows.BT_RDown" "BlendTransforms1.t[1].p[5].w";
connectAttr "Brows.BT_RAngry" "BlendTransforms1.t[1].p[6].w";
connectAttr "Brows.BT_RSad" "BlendTransforms1.t[1].p[7].w";
connectAttr "Brows.BT_LUp" "BlendTransforms1.t[2].p[0].w";
connectAttr "Brows.BT_LDown" "BlendTransforms1.t[2].p[1].w";
connectAttr "Brows.BT_LAngry" "BlendTransforms1.t[2].p[2].w";
connectAttr "Brows.BT_LSad" "BlendTransforms1.t[2].p[3].w";
connectAttr "Brows.BT_RUp" "BlendTransforms1.t[2].p[4].w";
connectAttr "Brows.BT_RDown" "BlendTransforms1.t[2].p[5].w";
connectAttr "Brows.BT_RAngry" "BlendTransforms1.t[2].p[6].w";
connectAttr "Brows.BT_RSad" "BlendTransforms1.t[2].p[7].w";
connectAttr "Brows.BT_LUp" "BlendTransforms1.t[3].p[0].w";
connectAttr "Brows.BT_LDown" "BlendTransforms1.t[3].p[1].w";
connectAttr "Brows.BT_LAngry" "BlendTransforms1.t[3].p[2].w";
connectAttr "Brows.BT_LSad" "BlendTransforms1.t[3].p[3].w";
connectAttr "Brows.BT_RUp" "BlendTransforms1.t[3].p[4].w";
connectAttr "Brows.BT_RDown" "BlendTransforms1.t[3].p[5].w";
connectAttr "Brows.BT_RAngry" "BlendTransforms1.t[3].p[6].w";
connectAttr "Brows.BT_RSad" "BlendTransforms1.t[3].p[7].w";
connectAttr "Brows.BT_LUp" "BlendTransforms1.t[4].p[0].w";
connectAttr "Brows.BT_LDown" "BlendTransforms1.t[4].p[1].w";
connectAttr "Brows.BT_LAngry" "BlendTransforms1.t[4].p[2].w";
connectAttr "Brows.BT_LSad" "BlendTransforms1.t[4].p[3].w";
connectAttr "Brows.BT_RUp" "BlendTransforms1.t[4].p[4].w";
connectAttr "Brows.BT_RDown" "BlendTransforms1.t[4].p[5].w";
connectAttr "Brows.BT_RAngry" "BlendTransforms1.t[4].p[6].w";
connectAttr "Brows.BT_RSad" "BlendTransforms1.t[4].p[7].w";
connectAttr "Brows.BT_LUp" "BlendTransforms1.t[5].p[0].w";
connectAttr "Brows.BT_LDown" "BlendTransforms1.t[5].p[1].w";
connectAttr "Brows.BT_LAngry" "BlendTransforms1.t[5].p[2].w";
connectAttr "Brows.BT_LSad" "BlendTransforms1.t[5].p[3].w";
connectAttr "Brows.BT_RUp" "BlendTransforms1.t[5].p[4].w";
connectAttr "Brows.BT_RDown" "BlendTransforms1.t[5].p[5].w";
connectAttr "Brows.BT_RAngry" "BlendTransforms1.t[5].p[6].w";
connectAttr "Brows.BT_RSad" "BlendTransforms1.t[5].p[7].w";
connectAttr "LUpperEyeLidJnt.iog" "Lids.dsm" -na;
connectAttr "LLowerEyeLidJnt.iog" "Lids.dsm" -na;
connectAttr "RUpperEyeLidJnt.iog" "Lids.dsm" -na;
connectAttr "RLowerEyeLidJnt.iog" "Lids.dsm" -na;
connectAttr "clamp14.opr" "Lids.BT_LUpperClose";
connectAttr "clamp14.opg" "Lids.BT_LUpperOpen";
connectAttr "clamp15.opg" "Lids.BT_LLowerClose";
connectAttr "clamp15.opr" "Lids.BT_LLowerOpen";
connectAttr "clamp16.opr" "Lids.BT_RUpperClose";
connectAttr "clamp16.opg" "Lids.BT_RUpperOpen";
connectAttr "clamp17.opg" "Lids.BT_RLowerClose";
connectAttr "clamp17.opr" "Lids.BT_RLowerOpen";
connectAttr "Lids.BT_LUpperClose" "BlendTransforms2.t[0].p[0].w";
connectAttr "Lids.BT_LUpperOpen" "BlendTransforms2.t[0].p[1].w";
connectAttr "Lids.BT_LLowerClose" "BlendTransforms2.t[0].p[2].w";
connectAttr "Lids.BT_LLowerOpen" "BlendTransforms2.t[0].p[3].w";
connectAttr "Lids.BT_RUpperClose" "BlendTransforms2.t[0].p[4].w";
connectAttr "Lids.BT_RUpperOpen" "BlendTransforms2.t[0].p[5].w";
connectAttr "Lids.BT_RLowerClose" "BlendTransforms2.t[0].p[6].w";
connectAttr "Lids.BT_RLowerOpen" "BlendTransforms2.t[0].p[7].w";
connectAttr "Lids.BT_LUpperClose" "BlendTransforms2.t[1].p[0].w";
connectAttr "Lids.BT_LUpperOpen" "BlendTransforms2.t[1].p[1].w";
connectAttr "Lids.BT_LLowerClose" "BlendTransforms2.t[1].p[2].w";
connectAttr "Lids.BT_LLowerOpen" "BlendTransforms2.t[1].p[3].w";
connectAttr "Lids.BT_RUpperClose" "BlendTransforms2.t[1].p[4].w";
connectAttr "Lids.BT_RUpperOpen" "BlendTransforms2.t[1].p[5].w";
connectAttr "Lids.BT_RLowerClose" "BlendTransforms2.t[1].p[6].w";
connectAttr "Lids.BT_RLowerOpen" "BlendTransforms2.t[1].p[7].w";
connectAttr "Lids.BT_LUpperClose" "BlendTransforms2.t[2].p[0].w";
connectAttr "Lids.BT_LUpperOpen" "BlendTransforms2.t[2].p[1].w";
connectAttr "Lids.BT_LLowerClose" "BlendTransforms2.t[2].p[2].w";
connectAttr "Lids.BT_LLowerOpen" "BlendTransforms2.t[2].p[3].w";
connectAttr "Lids.BT_RUpperClose" "BlendTransforms2.t[2].p[4].w";
connectAttr "Lids.BT_RUpperOpen" "BlendTransforms2.t[2].p[5].w";
connectAttr "Lids.BT_RLowerClose" "BlendTransforms2.t[2].p[6].w";
connectAttr "Lids.BT_RLowerOpen" "BlendTransforms2.t[2].p[7].w";
connectAttr "Lids.BT_LUpperClose" "BlendTransforms2.t[3].p[0].w";
connectAttr "Lids.BT_LUpperOpen" "BlendTransforms2.t[3].p[1].w";
connectAttr "Lids.BT_LLowerClose" "BlendTransforms2.t[3].p[2].w";
connectAttr "Lids.BT_LLowerOpen" "BlendTransforms2.t[3].p[3].w";
connectAttr "Lids.BT_RUpperClose" "BlendTransforms2.t[3].p[4].w";
connectAttr "Lids.BT_RUpperOpen" "BlendTransforms2.t[3].p[5].w";
connectAttr "Lids.BT_RLowerClose" "BlendTransforms2.t[3].p[6].w";
connectAttr "Lids.BT_RLowerOpen" "BlendTransforms2.t[3].p[7].w";
connectAttr "LCheek1Jnt.iog" "Mouth.dsm" -na;
connectAttr "LCheek2Jnt.iog" "Mouth.dsm" -na;
connectAttr "RCheek1Jnt.iog" "Mouth.dsm" -na;
connectAttr "RCheek2Jnt.iog" "Mouth.dsm" -na;
connectAttr "LNoseJnt.iog" "Mouth.dsm" -na;
connectAttr "RNoseJnt.iog" "Mouth.dsm" -na;
connectAttr "JawJnt.iog" "Mouth.dsm" -na;
connectAttr "MLowerLipJnt.iog" "Mouth.dsm" -na;
connectAttr "MUpperLipJnt.iog" "Mouth.dsm" -na;
connectAttr "LCornerJnt.iog" "Mouth.dsm" -na;
connectAttr "LUpperLip1Jnt.iog" "Mouth.dsm" -na;
connectAttr "LUpperLip2Jnt.iog" "Mouth.dsm" -na;
connectAttr "LLowerLip1Jnt.iog" "Mouth.dsm" -na;
connectAttr "LLowerLip2Jnt.iog" "Mouth.dsm" -na;
connectAttr "RCornerJnt.iog" "Mouth.dsm" -na;
connectAttr "RUpperLip1Jnt.iog" "Mouth.dsm" -na;
connectAttr "RUpperLip2Jnt.iog" "Mouth.dsm" -na;
connectAttr "RLowerLip1Jnt.iog" "Mouth.dsm" -na;
connectAttr "RLowerLip2Jnt.iog" "Mouth.dsm" -na;
connectAttr "MLowerLipHelperJnt.iog" "Mouth.dsm" -na;
connectAttr "MUpperLipHelperJnt.iog" "Mouth.dsm" -na;
connectAttr "LUpperLipHelperJnt.iog" "Mouth.dsm" -na;
connectAttr "LLowerLipHelperJnt.iog" "Mouth.dsm" -na;
connectAttr "LCornerHelperJnt.iog" "Mouth.dsm" -na;
connectAttr "RUpperLipHelperJnt.iog" "Mouth.dsm" -na;
connectAttr "RLowerLipHelperJnt.iog" "Mouth.dsm" -na;
connectAttr "RCornerHelperJnt.iog" "Mouth.dsm" -na;
connectAttr "multiplyDivide167.ox" "Mouth.BT_Open";
connectAttr "multiplyDivide166.ox" "Mouth.BT_Narrow";
connectAttr "clamp1.opg" "Mouth.BT_Wide";
connectAttr "clamp2.opg" "Mouth.BT_Close";
connectAttr "clamp3.opr" "Mouth.BT_LSmile";
connectAttr "clamp3.opg" "Mouth.BT_RSmile";
connectAttr "clamp7.opg" "Mouth.BT_LSad";
connectAttr "clamp7.opr" "Mouth.BT_RSad";
connectAttr "clamp8.opr" "Mouth.BT_LSneer";
connectAttr "clamp8.opg" "Mouth.BT_RSneer";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[0].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[0].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[0].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[0].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[0].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[0].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[0].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[0].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[0].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[0].p[9].w";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[1].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[1].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[1].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[1].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[1].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[1].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[1].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[1].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[1].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[1].p[9].w";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[2].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[2].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[2].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[2].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[2].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[2].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[2].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[2].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[2].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[2].p[9].w";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[3].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[3].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[3].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[3].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[3].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[3].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[3].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[3].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[3].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[3].p[9].w";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[4].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[4].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[4].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[4].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[4].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[4].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[4].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[4].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[4].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[4].p[9].w";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[5].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[5].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[5].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[5].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[5].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[5].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[5].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[5].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[5].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[5].p[9].w";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[6].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[6].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[6].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[6].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[6].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[6].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[6].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[6].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[6].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[6].p[9].w";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[7].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[7].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[7].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[7].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[7].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[7].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[7].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[7].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[7].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[7].p[9].w";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[8].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[8].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[8].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[8].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[8].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[8].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[8].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[8].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[8].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[8].p[9].w";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[9].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[9].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[9].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[9].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[9].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[9].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[9].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[9].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[9].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[9].p[9].w";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[10].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[10].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[10].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[10].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[10].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[10].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[10].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[10].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[10].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[10].p[9].w";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[11].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[11].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[11].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[11].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[11].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[11].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[11].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[11].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[11].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[11].p[9].w";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[12].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[12].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[12].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[12].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[12].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[12].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[12].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[12].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[12].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[12].p[9].w";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[13].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[13].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[13].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[13].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[13].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[13].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[13].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[13].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[13].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[13].p[9].w";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[14].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[14].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[14].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[14].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[14].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[14].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[14].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[14].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[14].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[14].p[9].w";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[15].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[15].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[15].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[15].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[15].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[15].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[15].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[15].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[15].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[15].p[9].w";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[16].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[16].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[16].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[16].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[16].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[16].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[16].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[16].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[16].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[16].p[9].w";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[17].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[17].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[17].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[17].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[17].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[17].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[17].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[17].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[17].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[17].p[9].w";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[18].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[18].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[18].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[18].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[18].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[18].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[18].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[18].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[18].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[18].p[9].w";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[19].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[19].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[19].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[19].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[19].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[19].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[19].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[19].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[19].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[19].p[9].w";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[20].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[20].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[20].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[20].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[20].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[20].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[20].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[20].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[20].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[20].p[9].w";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[21].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[21].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[21].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[21].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[21].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[21].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[21].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[21].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[21].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[21].p[9].w";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[22].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[22].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[22].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[22].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[22].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[22].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[22].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[22].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[22].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[22].p[9].w";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[23].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[23].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[23].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[23].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[23].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[23].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[23].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[23].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[23].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[23].p[9].w";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[24].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[24].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[24].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[24].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[24].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[24].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[24].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[24].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[24].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[24].p[9].w";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[25].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[25].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[25].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[25].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[25].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[25].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[25].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[25].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[25].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[25].p[9].w";
connectAttr "Mouth.BT_Open" "BlendTransforms3.t[26].p[0].w";
connectAttr "Mouth.BT_Narrow" "BlendTransforms3.t[26].p[1].w";
connectAttr "Mouth.BT_Wide" "BlendTransforms3.t[26].p[2].w";
connectAttr "Mouth.BT_LSmile" "BlendTransforms3.t[26].p[3].w";
connectAttr "Mouth.BT_RSmile" "BlendTransforms3.t[26].p[4].w";
connectAttr "Mouth.BT_LSad" "BlendTransforms3.t[26].p[5].w";
connectAttr "Mouth.BT_RSad" "BlendTransforms3.t[26].p[6].w";
connectAttr "Mouth.BT_Close" "BlendTransforms3.t[26].p[7].w";
connectAttr "Mouth.BT_LSneer" "BlendTransforms3.t[26].p[8].w";
connectAttr "Mouth.BT_RSneer" "BlendTransforms3.t[26].p[9].w";
connectAttr "Joystick_MouthCtrl.tx" "clamp1.ipr";
connectAttr "Joystick_MouthCtrl.tx" "clamp1.ipg";
connectAttr "clamp1.opr" "multiplyDivide166.i1x";
connectAttr "Joystick_MouthCtrl.ty" "clamp2.ipr";
connectAttr "Joystick_MouthCtrl.ty" "clamp2.ipg";
connectAttr "clamp2.opr" "multiplyDivide167.i1x";
connectAttr "plusMinusAverage1.o1" "clamp3.ipr";
connectAttr "plusMinusAverage2.o1" "clamp3.ipg";
connectAttr "Joystick_MouthEmotCtrl.tx" "clamp4.ipr";
connectAttr "Joystick_MouthEmotCtrl.tx" "clamp4.ipg";
connectAttr "Joystick_MouthEmotCtrl.ty" "plusMinusAverage1.i1[0]";
connectAttr "multiplyDivide168.ox" "plusMinusAverage1.i1[1]";
connectAttr "clamp4.opr" "multiplyDivide168.i1x";
connectAttr "clamp4.opg" "multiplyDivide168.i1y";
connectAttr "Joystick_MouthEmotCtrl.ty" "plusMinusAverage2.i1[0]";
connectAttr "multiplyDivide168.oy" "plusMinusAverage2.i1[1]";
connectAttr "plusMinusAverage3.o1" "clamp7.ipr";
connectAttr "plusMinusAverage4.o1" "clamp7.ipg";
connectAttr "multiplyDivide169.ox" "plusMinusAverage4.i1[0]";
connectAttr "multiplyDivide168.ox" "plusMinusAverage4.i1[1]";
connectAttr "multiplyDivide169.ox" "plusMinusAverage3.i1[0]";
connectAttr "multiplyDivide168.oy" "plusMinusAverage3.i1[1]";
connectAttr "Joystick_MouthEmotCtrl.ty" "multiplyDivide169.i1x";
connectAttr "Joystick_MouthSneerCtrl.tx" "multiplyDivide171.i1x";
connectAttr "Joystick_MouthSneerCtrl.tx" "clamp8.ipr";
connectAttr "multiplyDivide171.ox" "clamp8.ipg";
connectAttr "Joystick_MouthShiftCtrl.ty" "multiplyDivide172.i1x";
connectAttr "Joystick_MouthShiftCtrl.tx" "multiplyDivide172.i1y";
connectAttr "Joystick_MouthShiftCtrl.tx" "multiplyDivide172.i1z";
connectAttr "multiplyDivide172.ox" "unitConversion1.i";
connectAttr "multiplyDivide172.oy" "clamp9.ipr";
connectAttr "multiplyDivide172.oz" "clamp9.ipg";
connectAttr "clamp9.opr" "multiplyDivide173.i1x";
connectAttr "clamp9.opg" "multiplyDivide173.i1y";
connectAttr "multiplyDivide173.ox" "unitConversion2.i";
connectAttr "hyperView2.msg" "nodeEditorPanel3Info.b[0]";
connectAttr "hyperLayout2.msg" "hyperView2.hl";
connectAttr "multiplyDivide172.msg" "hyperLayout2.hyp[0].dn";
connectAttr "LEyeJnt.msg" "hyperLayout2.hyp[1].dn";
connectAttr "Joystick_LEyesCtrlShape.msg" "hyperLayout2.hyp[2].dn";
connectAttr "RLowerEyeLidJnt.msg" "hyperLayout2.hyp[3].dn";
connectAttr "plusMinusAverage5.msg" "hyperLayout2.hyp[4].dn";
connectAttr "LLowerEyeLidJnt.msg" "hyperLayout2.hyp[5].dn";
connectAttr "Lids.msg" "hyperLayout2.hyp[6].dn";
connectAttr "unitConversion4.msg" "hyperLayout2.hyp[7].dn";
connectAttr "plusMinusAverage6.msg" "hyperLayout2.hyp[8].dn";
connectAttr "multiplyDivide182.msg" "hyperLayout2.hyp[9].dn";
connectAttr "multiplyDivide180.msg" "hyperLayout2.hyp[10].dn";
connectAttr "multiplyDivide178.msg" "hyperLayout2.hyp[11].dn";
connectAttr "unitConversion3.msg" "hyperLayout2.hyp[12].dn";
connectAttr "RUpperEyeLidJnt.msg" "hyperLayout2.hyp[13].dn";
connectAttr "clamp14.msg" "hyperLayout2.hyp[14].dn";
connectAttr "multiplyDivide179.msg" "hyperLayout2.hyp[15].dn";
connectAttr "Joystick_LEyesCtrl.msg" "hyperLayout2.hyp[16].dn";
connectAttr "BlendTransforms2.msg" "hyperLayout2.hyp[17].dn";
connectAttr "LUpperEyeLidJnt.msg" "hyperLayout2.hyp[18].dn";
connectAttr "Joystick_LBrowCtrl.ty" "multiplyDivide174.i1x";
connectAttr "Joystick_LBrowCtrl.ty" "clamp10.ipr";
connectAttr "multiplyDivide174.ox" "clamp10.ipg";
connectAttr "Joystick_LBrowCtrl.tx" "multiplyDivide175.i1x";
connectAttr "Joystick_LBrowCtrl.tx" "clamp11.ipr";
connectAttr "multiplyDivide175.ox" "clamp11.ipg";
connectAttr "Joystick_RBrowCtrl.ty" "multiplyDivide176.i1x";
connectAttr "Joystick_RBrowCtrl.ty" "clamp12.ipr";
connectAttr "multiplyDivide176.ox" "clamp12.ipg";
connectAttr "Joystick_RBrowCtrl.tx" "multiplyDivide177.i1x";
connectAttr "Joystick_RBrowCtrl.tx" "clamp13.ipr";
connectAttr "multiplyDivide177.ox" "clamp13.ipg";
connectAttr "plusMinusAverage5.o1" "multiplyDivide178.i1x";
connectAttr "multiplyDivide178.ox" "clamp14.ipr";
connectAttr "plusMinusAverage6.o1" "clamp14.ipg";
connectAttr "groupParts28.og" "transformGeometry1.ig";
connectAttr "Joystick_LEyesCtrl.ty" "multiplyDivide179.i1x";
connectAttr "multiplyDivide179.ox" "unitConversion3.i";
connectAttr "Joystick_LUpperEyeLidCtrl.ty" "plusMinusAverage5.i1[0]";
connectAttr "Joystick_LEyesCtrl.ty" "plusMinusAverage5.i1[1]";
connectAttr "multiplyDivide182.ox" "plusMinusAverage6.i1[0]";
connectAttr "Joystick_LUpperEyeLidCtrl.ty" "plusMinusAverage6.i1[1]";
connectAttr "Joystick_LEyesCtrl.tx" "multiplyDivide180.i1x";
connectAttr "multiplyDivide180.ox" "unitConversion4.i";
connectAttr "Joystick_LLowerEyeLidCtrl.ty" "multiplyDivide181.i1x";
connectAttr "multiplyDivide181.ox" "clamp15.ipr";
connectAttr "Joystick_LLowerEyeLidCtrl.ty" "clamp15.ipg";
connectAttr "Joystick_LEyesCtrl.ty" "multiplyDivide182.i1x";
connectAttr "plusMinusAverage8.o1" "multiplyDivide183.i1x";
connectAttr "multiplyDivide183.ox" "clamp16.ipr";
connectAttr "plusMinusAverage7.o1" "clamp16.ipg";
connectAttr "Joystick_LEyesCtrl.ty" "multiplyDivide184.i1x";
connectAttr "multiplyDivide184.ox" "unitConversion5.i";
connectAttr "Joystick_LEyesCtrl.tx" "multiplyDivide185.i1x";
connectAttr "multiplyDivide185.ox" "unitConversion6.i";
connectAttr "Joystick_LEyesCtrl.ty" "multiplyDivide186.i1x";
connectAttr "Joystick_RUpperEyeLidCtrl.ty" "plusMinusAverage7.i1[0]";
connectAttr "multiplyDivide186.ox" "plusMinusAverage7.i1[1]";
connectAttr "Joystick_RUpperEyeLidCtrl.ty" "plusMinusAverage8.i1[0]";
connectAttr "Joystick_LEyesCtrl.ty" "plusMinusAverage8.i1[1]";
connectAttr "Joystick_RLowerEyeLidCtrl.ty" "multiplyDivide187.i1x";
connectAttr "multiplyDivide187.ox" "clamp17.ipr";
connectAttr "Joystick_RLowerEyeLidCtrl.ty" "clamp17.ipg";
connectAttr "layerManager.dli[7]" "Face_HighRes.id";
connectAttr "layerManager.dli[8]" "Face_LowRes.id";
connectAttr "layerManager.dli[12]" "Joints.id";
connectAttr "blinn10.oc" "blinn10SG.ss";
connectAttr "FaceMesh_HighResShape.iog.og[0]" "blinn10SG.dsm" -na;
connectAttr "FaceMesh_HighResShape.ciog.cog[0]" "blinn10SG.dsm" -na;
connectAttr "groupId70.msg" "blinn10SG.gn" -na;
connectAttr "groupId71.msg" "blinn10SG.gn" -na;
connectAttr "blinn10SG.msg" "materialInfo23.sg";
connectAttr "blinn10.msg" "materialInfo23.m";
connectAttr "blinn11.oc" "blinn11SG.ss";
connectAttr "groupId72.msg" "blinn11SG.gn" -na;
connectAttr "FaceMesh_HighResShape.iog.og[1]" "blinn11SG.dsm" -na;
connectAttr "blinn11SG.msg" "materialInfo24.sg";
connectAttr "blinn11.msg" "materialInfo24.m";
connectAttr "polySmoothProxy1.out" "groupParts31.ig";
connectAttr "groupId70.id" "groupParts31.gi";
connectAttr "groupParts31.og" "groupParts32.ig";
connectAttr "groupId72.id" "groupParts32.gi";
connectAttr "blinn12.oc" "blinn12SG.ss";
connectAttr "groupId76.msg" "blinn12SG.gn" -na;
connectAttr "FaceMesh_HighResShape.iog.og[2]" "blinn12SG.dsm" -na;
connectAttr "blinn12SG.msg" "materialInfo26.sg";
connectAttr "blinn12.msg" "materialInfo26.m";
connectAttr "groupParts32.og" "groupParts33.ig";
connectAttr "groupId76.id" "groupParts33.gi";
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn4SG.pa" ":renderPartition.st" -na;
connectAttr "blinn5SG.pa" ":renderPartition.st" -na;
connectAttr "blinn7SG.pa" ":renderPartition.st" -na;
connectAttr "blinn10SG.pa" ":renderPartition.st" -na;
connectAttr "blinn11SG.pa" ":renderPartition.st" -na;
connectAttr "blinn12SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn4.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn5.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn7.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn10.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn11.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn12.msg" ":defaultShaderList1.s" -na;
connectAttr "clamp1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide166.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "clamp2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide167.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "clamp3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "clamp4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide168.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "plusMinusAverage1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "plusMinusAverage2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "plusMinusAverage3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "clamp7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "plusMinusAverage4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide169.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide171.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "clamp8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide172.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "clamp9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide173.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide174.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "clamp10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide175.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "clamp11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide176.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "clamp12.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide177.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "clamp13.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide178.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "clamp14.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide179.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "plusMinusAverage5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "plusMinusAverage6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide180.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide181.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "clamp15.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide182.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide183.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "clamp16.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide184.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide185.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide186.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "plusMinusAverage7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "plusMinusAverage8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide187.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "clamp17.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Face_Rig_Done.ma
