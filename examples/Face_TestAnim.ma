//Maya ASCII 2013 scene
//Name: Face_TestAnim.ma
//Last modified: Fri, Jun 10, 2016 02:08:44 PM
//Codeset: 1252
file -rdi 1 -ns "Face_Rig_Done" -rfn "Face_Rig_DoneRN" "Face_Rig_Done.ma";
file -r -ns "Face_Rig_Done" -dr 1 -rfn "Face_Rig_DoneRN" "Face_Rig_Done.ma";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2013";
fileInfo "version" "2013 x64";
fileInfo "cutIdentifier" "201209210409-845513";
fileInfo "osv" "Microsoft Windows 7 Ultimate Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 11.933333539825203 7.1389078004679902 25.546938695983822 ;
	setAttr ".r" -type "double3" -2.1383527296062996 25.000000000005468 1.0966730642436816e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 28.595090898622203;
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
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "Face_Rig_DoneRN";
	setAttr ".fn[0]" -type "string" "C:/Users/ukdskertch/Desktop/Face_Rig/Face_Rig_Done.ma";
	setAttr -s 41 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Face_Rig_DoneRN"
		"Face_Rig_DoneRN" 0
		"Face_Rig_DoneRN" 93
		2 "|Face_Rig_Done:RootJnt|Face_Rig_Done:HeadMainJnt|Face_Rig_Done:HeadJnt|Face_Rig_Done:LEarJnt" 
		"translate" " -type \"double3\" 3.457305 2.273995 -0.265364"
		2 "|Face_Rig_Done:RootJnt|Face_Rig_Done:HeadMainJnt|Face_Rig_Done:HeadJnt|Face_Rig_Done:LEarJnt" 
		"translateX" " -av"
		2 "|Face_Rig_Done:RootJnt|Face_Rig_Done:HeadMainJnt|Face_Rig_Done:HeadJnt|Face_Rig_Done:LEarJnt" 
		"translateY" " -av"
		2 "|Face_Rig_Done:RootJnt|Face_Rig_Done:HeadMainJnt|Face_Rig_Done:HeadJnt|Face_Rig_Done:LEarJnt" 
		"translateZ" " -av"
		2 "|Face_Rig_Done:RootJnt|Face_Rig_Done:HeadMainJnt|Face_Rig_Done:HeadJnt|Face_Rig_Done:LEarJnt" 
		"rotate" " -type \"double3\" 0 -0.0065792 0.00955697"
		2 "|Face_Rig_Done:RootJnt|Face_Rig_Done:HeadMainJnt|Face_Rig_Done:HeadJnt|Face_Rig_Done:LEarJnt" 
		"rotateX" " -av"
		2 "|Face_Rig_Done:RootJnt|Face_Rig_Done:HeadMainJnt|Face_Rig_Done:HeadJnt|Face_Rig_Done:LEarJnt" 
		"rotateY" " -av"
		2 "|Face_Rig_Done:RootJnt|Face_Rig_Done:HeadMainJnt|Face_Rig_Done:HeadJnt|Face_Rig_Done:LEarJnt" 
		"rotateZ" " -av"
		2 "|Face_Rig_Done:RootJnt|Face_Rig_Done:HeadMainJnt|Face_Rig_Done:HeadJnt|Face_Rig_Done:REarJnt" 
		"translate" " -type \"double3\" -3.457305 2.273995 -0.265364"
		2 "|Face_Rig_Done:RootJnt|Face_Rig_Done:HeadMainJnt|Face_Rig_Done:HeadJnt|Face_Rig_Done:REarJnt" 
		"translateX" " -av"
		2 "|Face_Rig_Done:RootJnt|Face_Rig_Done:HeadMainJnt|Face_Rig_Done:HeadJnt|Face_Rig_Done:REarJnt" 
		"translateY" " -av"
		2 "|Face_Rig_Done:RootJnt|Face_Rig_Done:HeadMainJnt|Face_Rig_Done:HeadJnt|Face_Rig_Done:REarJnt" 
		"translateZ" " -av"
		2 "|Face_Rig_Done:RootJnt|Face_Rig_Done:HeadMainJnt|Face_Rig_Done:HeadJnt|Face_Rig_Done:REarJnt" 
		"rotate" " -type \"double3\" 0 -0.00376754 -0.00437219"
		2 "|Face_Rig_Done:RootJnt|Face_Rig_Done:HeadMainJnt|Face_Rig_Done:HeadJnt|Face_Rig_Done:REarJnt" 
		"rotateX" " -av"
		2 "|Face_Rig_Done:RootJnt|Face_Rig_Done:HeadMainJnt|Face_Rig_Done:HeadJnt|Face_Rig_Done:REarJnt" 
		"rotateY" " -av"
		2 "|Face_Rig_Done:RootJnt|Face_Rig_Done:HeadMainJnt|Face_Rig_Done:HeadJnt|Face_Rig_Done:REarJnt" 
		"rotateZ" " -av"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl" 
		"translateX" " -av"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl" 
		"translateY" " -av"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl" 
		"translateZ" " -av"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl" 
		"rotateX" " -av"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl" 
		"rotateY" " -av"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl" 
		"rotateZ" " -av"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl" 
		"rotateOrder" " 3"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:MouthControlGrp|Face_Rig_Done:Joystick_MouthSneerGrp|Face_Rig_Done:JoystickFrame_MouthSneerGrp|Face_Rig_Done:Joystick_MouthSneerCtrl" 
		"translateX" " -av 0"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:MouthControlGrp|Face_Rig_Done:Joystick_MouthEmotGrp|Face_Rig_Done:JoystickFrame_MouthEmotGrp|Face_Rig_Done:Joystick_MouthEmotCtrl" 
		"translateX" " -av 0"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:MouthControlGrp|Face_Rig_Done:Joystick_MouthEmotGrp|Face_Rig_Done:JoystickFrame_MouthEmotGrp|Face_Rig_Done:Joystick_MouthEmotCtrl" 
		"translateY" " -av 0"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:MouthControlGrp|Face_Rig_Done:Joystick_MouthGrp|Face_Rig_Done:JoystickFrame_MouthGrp|Face_Rig_Done:Joystick_MouthCtrl" 
		"translateX" " -av 0"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:MouthControlGrp|Face_Rig_Done:Joystick_MouthGrp|Face_Rig_Done:JoystickFrame_MouthGrp|Face_Rig_Done:Joystick_MouthCtrl" 
		"translateY" " -av 0"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:MouthControlGrp|Face_Rig_Done:Joystick_MouthShiftGrp|Face_Rig_Done:JoystickFrame_MouthShiftGrp|Face_Rig_Done:Joystick_MouthShiftCtrl" 
		"translateX" " -av 0"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:MouthControlGrp|Face_Rig_Done:Joystick_MouthShiftGrp|Face_Rig_Done:JoystickFrame_MouthShiftGrp|Face_Rig_Done:Joystick_MouthShiftCtrl" 
		"translateY" " -av 0"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:Eye_ControlGrp|Face_Rig_Done:JoystickGrp_LBrowGrp|Face_Rig_Done:JoystickFrame_LBrowGrp|Face_Rig_Done:Joystick_LBrowCtrl" 
		"translateX" " -av 0"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:Eye_ControlGrp|Face_Rig_Done:JoystickGrp_LBrowGrp|Face_Rig_Done:JoystickFrame_LBrowGrp|Face_Rig_Done:Joystick_LBrowCtrl" 
		"translateY" " -av 0"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:Eye_ControlGrp|Face_Rig_Done:JoystickGrp_RBrowGrp|Face_Rig_Done:JoystickFrame_RBrowGrp|Face_Rig_Done:Joystick_RBrowCtrl" 
		"translateX" " -av 0"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:Eye_ControlGrp|Face_Rig_Done:JoystickGrp_RBrowGrp|Face_Rig_Done:JoystickFrame_RBrowGrp|Face_Rig_Done:Joystick_RBrowCtrl" 
		"translateY" " -av 0"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:Eye_ControlGrp|Face_Rig_Done:JoystickGrp_LUpperEyeLidGrp|Face_Rig_Done:JoystickFrame_LUpperEyeLidGrp|Face_Rig_Done:Joystick_LUpperEyeLidCtrl" 
		"translateY" " -av 0"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:Eye_ControlGrp|Face_Rig_Done:JoystickGrp_LLowerEyeLidGrp|Face_Rig_Done:JoystickFrame_LLowerEyeLidGrp|Face_Rig_Done:Joystick_LLowerEyeLidCtrl" 
		"translateY" " -av 0"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:Eye_ControlGrp|Face_Rig_Done:JoystickGrp_LEyesGrp|Face_Rig_Done:JoystickFrame_LEyesGrp|Face_Rig_Done:Joystick_LEyesCtrl" 
		"translateX" " -av 0"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:Eye_ControlGrp|Face_Rig_Done:JoystickGrp_LEyesGrp|Face_Rig_Done:JoystickFrame_LEyesGrp|Face_Rig_Done:Joystick_LEyesCtrl" 
		"translateY" " -av 0"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:Eye_ControlGrp|Face_Rig_Done:JoystickGrp_RUpperEyeLidGrp|Face_Rig_Done:JoystickFrame_RUpperEyeLidGrp|Face_Rig_Done:Joystick_RUpperEyeLidCtrl" 
		"translateY" " -av 0"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:Eye_ControlGrp|Face_Rig_Done:JoystickGrp_RLowerEyeLidGrp|Face_Rig_Done:JoystickFrame_RLowerEyeLidGrp|Face_Rig_Done:Joystick_RLowerEyeLidCtrl" 
		"translateY" " -av 0"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:LEarCtrl_ZeroGrp|Face_Rig_Done:LEarCtrl" 
		"rotate" " -type \"double3\" 0 -0.0065792 0.00955697"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:LEarCtrl_ZeroGrp|Face_Rig_Done:LEarCtrl" 
		"rotateX" " -av"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:LEarCtrl_ZeroGrp|Face_Rig_Done:LEarCtrl" 
		"rotateY" " -av"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:LEarCtrl_ZeroGrp|Face_Rig_Done:LEarCtrl" 
		"rotateZ" " -av"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:REarCtrl_ZeroGrp|Face_Rig_Done:REarCtrl" 
		"rotate" " -type \"double3\" 0 -0.00376754 -0.00437219"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:REarCtrl_ZeroGrp|Face_Rig_Done:REarCtrl" 
		"rotateX" " -av"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:REarCtrl_ZeroGrp|Face_Rig_Done:REarCtrl" 
		"rotateY" " -av"
		2 "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:REarCtrl_ZeroGrp|Face_Rig_Done:REarCtrl" 
		"rotateZ" " -av"
		2 "Face_Rig_Done:Joints" "displayType" " 0"
		2 "Face_Rig_Done:Joints" "visibility" " 1"
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl.rotateX" 
		"Face_Rig_DoneRN.placeHolderList[1]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl.rotateY" 
		"Face_Rig_DoneRN.placeHolderList[2]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl.rotateZ" 
		"Face_Rig_DoneRN.placeHolderList[3]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl.translateX" 
		"Face_Rig_DoneRN.placeHolderList[4]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl.translateY" 
		"Face_Rig_DoneRN.placeHolderList[5]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl.translateZ" 
		"Face_Rig_DoneRN.placeHolderList[6]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl.rotateX" 
		"Face_Rig_DoneRN.placeHolderList[7]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl.rotateY" 
		"Face_Rig_DoneRN.placeHolderList[8]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl.rotateZ" 
		"Face_Rig_DoneRN.placeHolderList[9]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl.translateX" 
		"Face_Rig_DoneRN.placeHolderList[10]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl.translateY" 
		"Face_Rig_DoneRN.placeHolderList[11]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl.translateZ" 
		"Face_Rig_DoneRN.placeHolderList[12]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl.translateX" 
		"Face_Rig_DoneRN.placeHolderList[13]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl.translateY" 
		"Face_Rig_DoneRN.placeHolderList[14]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl.translateZ" 
		"Face_Rig_DoneRN.placeHolderList[15]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl.rotateX" 
		"Face_Rig_DoneRN.placeHolderList[16]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl.rotateY" 
		"Face_Rig_DoneRN.placeHolderList[17]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl.rotateZ" 
		"Face_Rig_DoneRN.placeHolderList[18]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:MouthControlGrp|Face_Rig_Done:Joystick_MouthSneerGrp|Face_Rig_Done:JoystickFrame_MouthSneerGrp|Face_Rig_Done:Joystick_MouthSneerCtrl.translateX" 
		"Face_Rig_DoneRN.placeHolderList[19]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:MouthControlGrp|Face_Rig_Done:Joystick_MouthEmotGrp|Face_Rig_Done:JoystickFrame_MouthEmotGrp|Face_Rig_Done:Joystick_MouthEmotCtrl.translateX" 
		"Face_Rig_DoneRN.placeHolderList[20]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:MouthControlGrp|Face_Rig_Done:Joystick_MouthEmotGrp|Face_Rig_Done:JoystickFrame_MouthEmotGrp|Face_Rig_Done:Joystick_MouthEmotCtrl.translateY" 
		"Face_Rig_DoneRN.placeHolderList[21]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:MouthControlGrp|Face_Rig_Done:Joystick_MouthGrp|Face_Rig_Done:JoystickFrame_MouthGrp|Face_Rig_Done:Joystick_MouthCtrl.translateX" 
		"Face_Rig_DoneRN.placeHolderList[22]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:MouthControlGrp|Face_Rig_Done:Joystick_MouthGrp|Face_Rig_Done:JoystickFrame_MouthGrp|Face_Rig_Done:Joystick_MouthCtrl.translateY" 
		"Face_Rig_DoneRN.placeHolderList[23]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:MouthControlGrp|Face_Rig_Done:Joystick_MouthShiftGrp|Face_Rig_Done:JoystickFrame_MouthShiftGrp|Face_Rig_Done:Joystick_MouthShiftCtrl.translateY" 
		"Face_Rig_DoneRN.placeHolderList[24]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:MouthControlGrp|Face_Rig_Done:Joystick_MouthShiftGrp|Face_Rig_Done:JoystickFrame_MouthShiftGrp|Face_Rig_Done:Joystick_MouthShiftCtrl.translateX" 
		"Face_Rig_DoneRN.placeHolderList[25]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:Eye_ControlGrp|Face_Rig_Done:JoystickGrp_LBrowGrp|Face_Rig_Done:JoystickFrame_LBrowGrp|Face_Rig_Done:Joystick_LBrowCtrl.translateY" 
		"Face_Rig_DoneRN.placeHolderList[26]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:Eye_ControlGrp|Face_Rig_Done:JoystickGrp_LBrowGrp|Face_Rig_Done:JoystickFrame_LBrowGrp|Face_Rig_Done:Joystick_LBrowCtrl.translateX" 
		"Face_Rig_DoneRN.placeHolderList[27]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:Eye_ControlGrp|Face_Rig_Done:JoystickGrp_RBrowGrp|Face_Rig_Done:JoystickFrame_RBrowGrp|Face_Rig_Done:Joystick_RBrowCtrl.translateY" 
		"Face_Rig_DoneRN.placeHolderList[28]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:Eye_ControlGrp|Face_Rig_Done:JoystickGrp_RBrowGrp|Face_Rig_Done:JoystickFrame_RBrowGrp|Face_Rig_Done:Joystick_RBrowCtrl.translateX" 
		"Face_Rig_DoneRN.placeHolderList[29]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:Eye_ControlGrp|Face_Rig_Done:JoystickGrp_LUpperEyeLidGrp|Face_Rig_Done:JoystickFrame_LUpperEyeLidGrp|Face_Rig_Done:Joystick_LUpperEyeLidCtrl.translateY" 
		"Face_Rig_DoneRN.placeHolderList[30]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:Eye_ControlGrp|Face_Rig_Done:JoystickGrp_LLowerEyeLidGrp|Face_Rig_Done:JoystickFrame_LLowerEyeLidGrp|Face_Rig_Done:Joystick_LLowerEyeLidCtrl.translateY" 
		"Face_Rig_DoneRN.placeHolderList[31]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:Eye_ControlGrp|Face_Rig_Done:JoystickGrp_LEyesGrp|Face_Rig_Done:JoystickFrame_LEyesGrp|Face_Rig_Done:Joystick_LEyesCtrl.translateY" 
		"Face_Rig_DoneRN.placeHolderList[32]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:Eye_ControlGrp|Face_Rig_Done:JoystickGrp_LEyesGrp|Face_Rig_Done:JoystickFrame_LEyesGrp|Face_Rig_Done:Joystick_LEyesCtrl.translateX" 
		"Face_Rig_DoneRN.placeHolderList[33]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:Eye_ControlGrp|Face_Rig_Done:JoystickGrp_RUpperEyeLidGrp|Face_Rig_Done:JoystickFrame_RUpperEyeLidGrp|Face_Rig_Done:Joystick_RUpperEyeLidCtrl.translateY" 
		"Face_Rig_DoneRN.placeHolderList[34]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:Eye_ControlGrp|Face_Rig_Done:JoystickGrp_RLowerEyeLidGrp|Face_Rig_Done:JoystickFrame_RLowerEyeLidGrp|Face_Rig_Done:Joystick_RLowerEyeLidCtrl.translateY" 
		"Face_Rig_DoneRN.placeHolderList[35]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:LEarCtrl_ZeroGrp|Face_Rig_Done:LEarCtrl.rotateX" 
		"Face_Rig_DoneRN.placeHolderList[36]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:LEarCtrl_ZeroGrp|Face_Rig_Done:LEarCtrl.rotateY" 
		"Face_Rig_DoneRN.placeHolderList[37]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:LEarCtrl_ZeroGrp|Face_Rig_Done:LEarCtrl.rotateZ" 
		"Face_Rig_DoneRN.placeHolderList[38]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:REarCtrl_ZeroGrp|Face_Rig_Done:REarCtrl.rotateX" 
		"Face_Rig_DoneRN.placeHolderList[39]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:REarCtrl_ZeroGrp|Face_Rig_Done:REarCtrl.rotateY" 
		"Face_Rig_DoneRN.placeHolderList[40]" ""
		5 4 "Face_Rig_DoneRN" "|Face_Rig_Done:RootCtrl_ZeroGrp|Face_Rig_Done:RootCtrl|Face_Rig_Done:NeckCtrl_ZeroGrp|Face_Rig_Done:NeckCtrl|Face_Rig_Done:HeadCtrl_ZeroGrp|Face_Rig_Done:HeadCtrl|Face_Rig_Done:REarCtrl_ZeroGrp|Face_Rig_Done:REarCtrl.rotateZ" 
		"Face_Rig_DoneRN.placeHolderList[41]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 340 -ast 0 -aet 340 ";
	setAttr ".st" 6;
createNode animCurveTA -n "Face_Rig_Done:RootCtrl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 11 0 23 0 53 0 66 0 124 0 163 0 174 0
		 222 0 284 0 299 0;
createNode animCurveTA -n "Face_Rig_Done:RootCtrl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 11 0 23 0 53 0 66 0 124 0 163 0 174 0
		 222 0 284 0 299 0;
createNode animCurveTA -n "Face_Rig_Done:RootCtrl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 11 0 23 0 53 0 66 0 124 0 163 0 174 0
		 222 0 284 0 299 0;
createNode animCurveTA -n "Face_Rig_Done:NeckCtrl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 11 0 23 0 53 0 66 0 124 0 163 0 174 0
		 222 0 284 0 299 0;
createNode animCurveTA -n "Face_Rig_Done:NeckCtrl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 11 0 23 0 53 0 66 0 124 0 163 0 174 0
		 222 0 284 0 299 0;
createNode animCurveTA -n "Face_Rig_Done:NeckCtrl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 11 0 23 0 53 0 66 0 124 0 163 0 174 0
		 222 0 284 0 299 0;
createNode animCurveTA -n "Face_Rig_Done:HeadCtrl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 5 6.9411856331156487 11 -9.5742157969530624
		 23 -10.847972415059417 53 -11.08159358684186 58 -14.904002895582693 62 -15.438124528570539
		 66 -9.542231522044478 124 -8.5865074942223032 128 7.8451455142317181 132 -16.987556553247305
		 161 -21.541461821060309 168 1.3335453159211583 175 -11.524005788182494 211 -15.186056121167292
		 215 -12.257567935194382 219 -1.8557825330740492 222 -0.21107393719410605 284 1.0393217152038672
		 292 4.8540690641875992 299 0.49923188132863666 308 0;
	setAttr -s 22 ".kit[2:21]"  1 1 1 1 1 18 18 18 
		18 18 18 1 18 18 1 1 18 18 18 18;
	setAttr -s 22 ".kot[2:21]"  1 1 1 1 1 18 18 18 
		18 18 18 1 18 18 1 1 18 18 18 18;
	setAttr -s 22 ".kix[2:21]"  0.99552065134048462 0.99980336427688599 
		0.99999469518661499 0.95332598686218262 0.96628576517105103 0.99966520071029663 0.99966526031494141 
		1 0.97089970111846924 1 1 0.97625905275344849 1 0.75352305173873901 0.85682862997055054 
		0.99872797727584839 0.99949854612350464 1 0.99622541666030884 1;
	setAttr -s 22 ".kiy[2:21]"  -0.094544388353824615 -0.019829839468002319 
		-0.0032603433355689049 -0.30194288492202759 0.25747185945510864 0.025874918326735497 
		0.025874920189380646 0 -0.23948606848716736 0 0 -0.21660639345645905 0 0.65742146968841553 
		0.51560133695602417 0.050422299653291702 0.031663425266742706 0 -0.086803458631038666 
		0;
	setAttr -s 22 ".kox[2:21]"  0.99552065134048462 0.99980336427688599 
		0.99999469518661499 0.95332598686218262 0.9662858247756958 0.99966526031494141 0.99966520071029663 
		1 0.97089976072311401 1 1 0.97625905275344849 1 0.75352305173873901 0.85682857036590576 
		0.99872797727584839 0.99949854612350464 1 0.99622541666030884 1;
	setAttr -s 22 ".koy[2:21]"  -0.094544380903244019 -0.019829912111163139 
		-0.0032603431027382612 -0.30194291472434998 0.25747191905975342 0.025874920189380646 
		0.025874918326735497 0 -0.23948608338832855 0 0 -0.21660639345645905 0 0.65742146968841553 
		0.51560145616531372 0.050422292202711105 0.031663428992033005 0 -0.086803458631038666 
		0;
createNode animCurveTA -n "Face_Rig_Done:HeadCtrl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 10.636045260035218 11 42.848558325728575
		 23 47.917172498179333 53 48.580416725112265 58 42.613406035108525 62 24.844908828782213
		 66 -0.43745600253506933 124 -2.3561298377351023 132 1.7973138883847015 161 1.7973138883847015
		 168 24.484749105249325 175 36.639443541327559 211 40.308996329534772 215 16.965649585989606
		 219 0 222 -4.0726732405917767 284 -4.0726732405917767 292 1.4590854319412787 299 0.49923188132863666
		 308 0;
	setAttr -s 21 ".kit[2:20]"  1 1 18 18 1 18 18 18 
		18 1 1 3 18 18 18 18 1 1 18;
	setAttr -s 21 ".kot[2:20]"  1 1 18 18 1 18 18 18 
		18 1 1 3 18 18 18 18 1 1 18;
	setAttr -s 21 ".kix[2:20]"  0.91664153337478638 0.99944943189620972 
		1 0.58653104305267334 0.28443077206611633 0.99865269660949707 1 1 1 0.47052943706512451 
		0.98233240842819214 1 0.35443657636642456 0.53633302450180054 1 1 0.99223899841308594 
		0.99769115447998047 1;
	setAttr -s 21 ".kiy[2:20]"  0.39971035718917847 0.033179059624671936 
		0 -0.80992668867111206 -0.95869660377502441 -0.051892850548028946 0 0 0 0.88238430023193359 
		0.18714466691017151 0 -0.93508005142211914 -0.84400641918182373 0 0 0.12434551119804382 
		-0.067914828658103943 0;
	setAttr -s 21 ".kox[2:20]"  0.9166414737701416 0.99944943189620972 
		1 0.58653104305267334 0.28443074226379395 0.99865269660949707 1 1 1 0.47052937746047974 
		0.98233240842819214 1 0.35443657636642456 0.53633302450180054 1 1 0.99223899841308594 
		0.99769115447998047 1;
	setAttr -s 21 ".koy[2:20]"  0.39971044659614563 0.033179033547639847 
		0 -0.80992668867111206 -0.95869660377502441 -0.051892854273319244 0 0 0 0.88238435983657837 
		0.18714465200901031 0 -0.93508005142211914 -0.84400647878646851 0 0 0.12434549629688263 
		-0.067914821207523346 0;
createNode animCurveTA -n "Face_Rig_Done:HeadCtrl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 -8.0302728413355116 11 8.1622673969639088
		 23 15.568376028561602 53 17.771854003430569 58 10.647994556560322 62 -5.1231089354572852
		 66 -7.8246941774825389 124 -9.2437995521275891 132 1.1895919213004105 161 1.1895919213004105
		 168 4.2437177876230843 175 16.760496388857423 211 18.792658252522038 215 11.672492880338057
		 219 1.350967113938957 222 -5.8531323939236009 284 -5.8531323939236009 292 -4.2393412566300963
		 299 -1.1374241184723954 308 0;
	setAttr -s 21 ".kit[2:20]"  1 1 3 1 1 18 18 18 
		18 18 18 18 1 18 18 18 18 1 18;
	setAttr -s 21 ".kot[2:20]"  1 1 3 1 1 18 18 18 
		18 18 18 18 1 18 18 18 18 1 18;
	setAttr -s 21 ".kix[2:20]"  0.85114103555679321 0.99161225557327271 
		1 0.53315877914428711 0.81938415765762329 0.99939495325088501 1 1 1 0.86414837837219238 
		0.99609184265136719 1 0.5205073356628418 0.60650736093521118 1 1 0.98672109842300415 
		0.98904252052307129 1;
	setAttr -s 21 ".kiy[2:20]"  0.52493715286254883 0.12924860417842865 
		0 -0.84601521492004395 -0.57324475049972534 -0.034778762608766556 0 0 0 0.50323718786239624 
		0.08832327276468277 0 -0.85385721921920776 -0.79507791996002197 0 0 0.16242344677448273 
		0.14763125777244568 0;
	setAttr -s 21 ".kox[2:20]"  0.85114127397537231 0.99161225557327271 
		1 0.53315883874893188 0.81938433647155762 0.99939507246017456 1 1 1 0.86414837837219238 
		0.99609184265136719 1 0.5205073356628418 0.60650736093521118 1 1 0.98672109842300415 
		0.98904252052307129 1;
	setAttr -s 21 ".koy[2:20]"  0.52493667602539063 0.12924860417842865 
		0 -0.84601515531539917 -0.57324457168579102 -0.034778762608766556 0 0 0 0.50323718786239624 
		0.088323265314102173 0 -0.85385721921920776 -0.79507791996002197 0 0 0.16242344677448273 
		0.1476311981678009 0;
createNode animCurveTL -n "Face_Rig_Done:HeadCtrl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 11 0 53 0 58 0 66 0 124 0 161 0 175 0
		 222 0 284 0 299 0 308 0;
createNode animCurveTL -n "Face_Rig_Done:HeadCtrl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 11 0 53 0 58 0 66 0 124 0 161 0 175 0
		 222 0 284 0 299 0 308 0;
createNode animCurveTL -n "Face_Rig_Done:HeadCtrl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 11 0 53 0 58 0 66 0 124 0 161 0 175 0
		 222 0 284 0 299 0 308 0;
createNode animCurveTL -n "Face_Rig_Done:Joystick_LBrowCtrl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 15 0.96316951615629787 23 0.96316951615629787
		 53 0.96316951615629787 62 0.12405449172947744 66 0.19929827624935484 81 0.22260305416618595
		 88 0.77185576782161547 124 0.80043529459938412 132 0.5940954778605495 163 0.5940954778605495
		 174 0.22707428525062195 211 0.22707428525062195 219 0.45170619281940994 224 0.62738874082798013
		 251 0.62738874082798013 257 0.071781859948348958 284 0.11293902909775357 299 0;
	setAttr -s 19 ".kit[6:18]"  3 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 19 ".kot[6:18]"  3 18 18 18 18 18 18 18 
		18 18 18 18 18;
createNode animCurveTL -n "Face_Rig_Done:Joystick_LBrowCtrl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 15 0.99708728946686942 23 0.99708728946686942
		 53 1 62 0.99517447901510292 66 0.221873585176805 81 0.18734798826298121 88 -0.14949058411429017
		 124 -0.17568848114394026 132 1 163 1 174 0.93223825416254236 211 0.93223825416254236
		 219 0.90949799846981361 224 0.91570190681068186 251 0.91570190681068186 257 0.55355949011945049
		 284 0.57708688733932079 299 0;
	setAttr -s 19 ".kit[6:18]"  3 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 19 ".kot[6:18]"  3 18 18 18 18 18 18 18 
		18 18 18 18 18;
createNode animCurveTL -n "Face_Rig_Done:Joystick_LEyesCtrl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 5 0.92122884486718148 15 0.90657375963187548
		 23 0.92434185561056259 35 0.92434185561056259 37 0.7965753066696396 46 0.7965753066696396
		 48 0.92434185561056259 53 0.92434185561056259 66 1 81 1 86 0.59829402448735025 101 0.59829402448735025
		 103 0.93113919200178796 119 0.93113919200178796 124 -0.3867582029155775 132 -0.044898219929697829
		 139 -0.044898219929697829 141 0.37417729789340809 147 0.29766674415298344 149 -0.25549240304552467
		 156 -0.22916821177801971 158 0.42540598080651559 163 0.42540598080651559 174 1 211 1
		 219 0 224 0 245 0 251 0 256 0 258 -0.19195727345850844 263 -0.19195727345850844 271 -0.19195727345850844
		 284 -0.19195727345850844 299 0;
createNode animCurveTL -n "Face_Rig_Done:Joystick_LEyesCtrl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 5 -0.14605972593045297 15 0.14437369556939728
		 23 0.098768715415247454 35 0.098768715415249231 46 0.098768715415249134 48 0.098768715415247454
		 53 0.098768715415247454 66 0.86819049036327356 81 0.86819049036327356 101 0.86819049036327356
		 119 0.868190490363275 124 -0.52006082768069017 132 -0.48976268503556603 139 -0.48976268503556603
		 147 -0.48976268503556603 156 -0.48976268503556603 158 -0.4897626850355678 163 -0.4897626850355678
		 174 -0.14845624187608736 211 -0.14845624187608736 219 -0.22917829357003328 224 -0.22917829357003328
		 245 -0.22917829357003328 251 0.40009323742168823 256 0.40009323742168823 263 0.40009323742168823
		 267 -0.1195951387493055 271 0.40009323742168823 284 0.40009323742168823 299 0;
createNode animCurveTL -n "Face_Rig_Done:Joystick_LLowerEyeLidCtrl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 15 0.87733979833682962 23 0.87733979833682962
		 53 0.87733979833682962 66 -0.2172463112137184 124 -0.2172463112137184 132 0.64325919193846137
		 163 0.64325919193846137 169 -0.11819247501501312 174 0.64038889262736498 211 0.64038889262736498
		 219 1 224 1 245 1 251 -0.063144213436025554 284 -0.063144213436025554 299 0;
createNode animCurveTL -n "Face_Rig_Done:Joystick_LUpperEyeLidCtrl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 7 -1 15 0.22862789534071523 23 0.33899199112500666
		 53 0.35445040554500784 66 0.23451291195928839 99 0.23451291195928839 124 0.23451291195928839
		 132 1 163 1 169 -1 174 0.25908412585199936 179 0.42501042393522553 195 0.47867877859325769
		 211 0.47867877859325769 219 0.42165919413445774 224 0.42165919413445774 245 0.42165919413445774
		 251 0.25147351513050725 264 0.25147351513050725 268 -1 272 0.25147351513050725 284 0.25147351513050725
		 299 0;
	setAttr -s 24 ".kit[2:23]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 24 ".kot[2:23]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 24 ".kix[2:23]"  0.73224717378616333 0.99892634153366089 
		1 1 1 1 1 1 1 0.31749653816223145 0.95732831954956055 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[2:23]"  0.68103897571563721 0.046325452625751495 
		0 0 0 0 0 0 0 0.94825941324234009 0.28900259733200073 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[2:23]"  0.73224717378616333 0.99892634153366089 
		1 1 1 1 1 1 1 0.31749656796455383 0.95732831954956055 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".koy[2:23]"  0.68103897571563721 0.046325456351041794 
		0 0 0 0 0 0 0 0.94825947284698486 0.28900259733200073 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Face_Rig_Done:Joystick_MouthCtrl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 5 0.13511764675978102 9 0.17978581595366208
		 15 0.02844405232703881 23 0.21498789993095421 53 0.44108803719610878 66 -0.33461307676478541
		 124 -0.33461307676478541 132 0.86605545192052757 163 1.0439430356667436 168 0.67169686561706354
		 174 0.32119403492712811 178 0.48921342014708258 211 0.75681256169111988 219 -0.14823411412866161
		 224 -0.14823411412866161 229 -0.14823411412866161 247 -0.14823411412866161 255 -0.14823411412866161
		 284 -0.14823411412866161 299 0 308 0;
	setAttr -s 22 ".kit[4:21]"  1 18 18 18 1 18 1 18 
		1 18 18 18 18 18 18 18 18 18;
	setAttr -s 22 ".kot[4:21]"  1 18 18 18 1 18 1 18 
		1 18 18 18 18 18 18 18 18 18;
	setAttr -s 22 ".kix[4:21]"  0.87568962574005127 1 1 1 0.79926782846450806 
		1 0.35585075616836548 1 0.86330842971801758 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".kiy[4:21]"  0.48287442326545715 0 0 0 0.60097503662109375 
		0 -0.93454289436340332 0 0.50467664003372192 0 0 0 0 0 0 0 0 0;
	setAttr -s 22 ".kox[4:21]"  0.87568968534469604 1 1 1 0.79926794767379761 
		1 0.35585063695907593 1 0.8633083701133728 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".koy[4:21]"  0.48287439346313477 0 0 0 0.6009749174118042 
		0 -0.93454283475875854 0 0.50467681884765625 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Face_Rig_Done:Joystick_MouthCtrl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  0 0 5 -0.39949043335842199 9 -0.73426199808311554
		 15 -0.19410363154602064 26 0.97 53 0.97046450085565572 66 -0.44165294325503845 124 -0.44165294325503845
		 128 -0.94166214156886863 132 -0.5344645593890065 135 -0.02629977415232258 138 1 140 0.32762174300691921
		 142 0.98258756657168012 144 0.037168071843119599 146 1 148 0.28105871785476483 150 0.99896088338964539
		 152 0.032830951221215099 154 1 156 0.023700818528286205 158 1 160 0.090130986360879572
		 163 -0.1336410387504684 168 -0.18169258817812245 174 0.28943394406004214 178 0.96661865547437276
		 211 0.96661865547437276 215 1 219 0.77463093971695507 224 -0.82971481382322321 229 -0.59068572771069228
		 247 -0.54198851661269654 255 -0.31264512556929014 284 -0.25297761323361334 292 -0.28102516156956209
		 299 0 308 0;
	setAttr -s 38 ".kit[1:37]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 1 18 1 1 
		18 18 18 18 1 18 18 18 18 18 18 18;
	setAttr -s 38 ".kot[1:37]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 1 18 1 1 
		18 18 18 18 1 18 18 18 18 18 18 18;
	setAttr -s 38 ".kix[1:37]"  0.29410669207572937 0.85806936025619507 
		0.2427329421043396 0.99999880790710449 1 1 1 1 0.24700911343097687 0.12924531102180481 
		1 1 1 1 1 1 1 1 1 1 1 0.2839522659778595 0.75633925199508667 0.98941725492477417 
		0.22264774143695831 1 1 1 0.19348146021366119 0.44878479838371277 0.97161346673965454 
		0.97161346673965454 0.98328375816345215 1 1 1 1;
	setAttr -s 38 ".kiy[1:37]"  -0.95577263832092285 -0.5135338306427002 
		0.97009319067001343 0.0015483343740925193 0 0 0 0 0.96901309490203857 0.99161267280578613 
		0 0 0 0 0 0 0 0 0 0 0 -0.95883846282958984 -0.65417951345443726 0.14509817957878113 
		0.97489899396896362 0 0 0 -0.98110395669937134 -0.89363986253738403 0.23657415807247162 
		0.23657418787479401 0.18207968771457672 0 0 0 0;
	setAttr -s 38 ".kox[1:37]"  0.29410669207572937 0.85806941986083984 
		0.24273297190666199 0.99999880790710449 1 1 1 1 0.24700911343097687 0.12924531102180481 
		1 1 1 1 1 1 1 1 1 1 1 0.28395217657089233 0.75633931159973145 0.98941725492477417 
		0.22264774143695831 1 1 1 0.1934814453125 0.44878479838371277 0.97161346673965454 
		0.97161334753036499 0.98328375816345215 1 1 1 1;
	setAttr -s 38 ".koy[1:37]"  -0.95577263832092285 -0.5135338306427002 
		0.97009313106536865 0.0015483343740925193 0 0 0 0 0.96901315450668335 0.99161267280578613 
		0 0 0 0 0 0 0 0 0 0 0 -0.95883852243423462 -0.65417957305908203 0.14509819447994232 
		0.97489899396896362 0 0 0 -0.98110389709472656 -0.89363986253738403 0.23657418787479401 
		0.23657417297363281 0.18207970261573792 0 0 0 0;
createNode animCurveTL -n "Face_Rig_Done:Joystick_MouthEmotCtrl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 15 -0.12534121243847551 23 -0.063487111563903575
		 53 -0.063487111563903575 66 0.037468674514943026 124 0.037468674514943026 132 -0.062707204777025211
		 163 -0.062707204777025211 174 0.95018250402714843 211 0.95018250402714843 219 0.13923210878627046
		 224 0.13923210878627046 251 0.13923210878627046 284 0.13923210878627046 299 0;
createNode animCurveTL -n "Face_Rig_Done:Joystick_MouthEmotCtrl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 15 1 23 0.97641331782107665 53 0.97641331782107665
		 66 -0.53653055147139361 124 -0.53653055147139361 132 -0.75723340574510956 163 -0.75723340574510956
		 174 0.90895680215040686 211 0.90895680215040686 219 -0.84908731601526277 224 -0.84908731601526277
		 251 -0.84908731601526277 284 -0.84908731601526277 299 0;
createNode animCurveTL -n "Face_Rig_Done:Joystick_MouthShiftCtrl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 -1 11 0.34233277023568537 17 -0.32848993313649233
		 23 -0.70989673766526162 29 -0.81534375687334304 53 -0.81534375687334304 62 1 66 0.050226844588900255
		 75 -1 124 -1 128 -0.75611776314067503 132 -0.12825233253786172 163 -0.12825233253786172
		 169 -0.40043846695253815 174 0.41991992704106418 193 0.87185555498878908 211 0.89653663709175635
		 219 0.31560382880657301 224 0.31560382880657301 251 0.31560382880657301 284 0.31560382880657301
		 299 0;
	setAttr -s 23 ".kit[3:22]"  1 1 18 3 18 18 18 18 
		18 18 18 1 1 18 18 18 18 18 18 18;
	setAttr -s 23 ".kot[3:22]"  1 1 18 3 18 18 18 18 
		18 18 18 1 1 18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[3:22]"  0.36833003163337708 0.84496396780014038 
		1 1 1 0.21175338327884674 1 1 0.29251903295516968 1 1 0.87041741609573364 0.4945949912071228 
		0.99247145652770996 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[3:22]"  -0.92969512939453125 -0.53482329845428467 
		0 0 0 -0.97732317447662354 0 0 0.95625966787338257 0 0 0.49231460690498352 0.86912357807159424 
		0.12247636169195175 0 0 0 0 0 0;
	setAttr -s 23 ".kox[3:22]"  0.36833009123802185 0.84496414661407471 
		1 1 1 0.21175338327884674 1 1 0.29251906275749207 1 1 0.87041735649108887 0.49459517002105713 
		0.99247139692306519 1 1 1 1 1 1;
	setAttr -s 23 ".koy[3:22]"  -0.92969506978988647 -0.53482300043106079 
		0 0 0 -0.97732311487197876 0 0 0.95625972747802734 0 0 0.49231460690498352 0.86912351846694946 
		0.12247636169195175 0 0 0 0 0 0;
createNode animCurveTL -n "Face_Rig_Done:Joystick_MouthShiftCtrl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 5 -0.051955199238817411 11 -0.053022380844557467
		 17 -0.092207261004979876 23 -0.18327972312363733 29 -0.21954067725212401 53 -0.24225348427848867
		 66 -0.22051851458832544 70 -0.52405634364997222 75 -0.21400973482253577 124 -0.10897516353500793
		 132 -0.64360839983216089 163 -0.64360839983216089 174 -0.12226548171541488 193 -0.025722285612175311
		 211 -0.025722285612175311 215 0 219 0 224 -0.30262727427062597 251 -0.30262727427062597
		 284 -0.30262727427062597 299 0;
	setAttr -s 22 ".kit[4:21]"  1 18 18 1 18 18 18 18 
		18 1 18 18 18 18 18 18 18 18;
	setAttr -s 22 ".kot[4:21]"  1 18 18 1 18 18 18 18 
		18 1 18 18 18 18 18 18 18 18;
	setAttr -s 22 ".kix[4:21]"  0.95601850748062134 0.99826556444168091 
		1 0.97603684663772583 1 0.98189467191696167 1 1 1 0.86802417039871216 1 1 1 1 1 1 
		1 1;
	setAttr -s 22 ".kiy[4:21]"  -0.29330649971961975 -0.058871474117040634 
		0 -0.21760565042495728 0 0.18942776322364807 0 0 0 0.49652197957038879 0 0 0 0 0 
		0 0 0;
	setAttr -s 22 ".kox[4:21]"  0.95601850748062134 0.99826556444168091 
		1 0.97603678703308105 1 0.98189467191696167 1 1 1 0.86802417039871216 1 1 1 1 1 1 
		1 1;
	setAttr -s 22 ".koy[4:21]"  -0.29330646991729736 -0.058871474117040634 
		0 -0.21760565042495728 0 0.18942776322364807 0 0 0 0.49652197957038879 0 0 0 0 0 
		0 0 0;
createNode animCurveTL -n "Face_Rig_Done:Joystick_MouthSneerCtrl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 15 0 23 0 53 0 66 -1 124 -1 132 0.74529659331447395
		 163 0.74529659331447395 174 0 211 0 224 0 251 0 284 0 299 0;
createNode animCurveTL -n "Face_Rig_Done:Joystick_RBrowCtrl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 15 -0.74028463115356957 23 -0.74028463115356957
		 53 -0.74028463115356957 62 0.21467011842369452 66 -0.18346935067620856 81 -0.18346935067620923
		 88 -0.18346935067620929 124 -0.18346935067620929 132 -0.75898197036995196 163 -0.75898197036995196
		 174 0.64415165258211338 211 0.64415165258211338 219 -0.73755562971659216 224 -0.73755562971659216
		 251 -0.73755562971659216 257 -0.46945132259498912 284 -0.48931143357924867 299 0;
createNode animCurveTL -n "Face_Rig_Done:Joystick_RBrowCtrl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 15 0.73619050717416956 23 0.73619050717416956
		 53 0.73619050717416956 62 0.78080097335820253 66 -0.71108972381324442 81 -0.81552572157162517
		 88 -0.44131826546159264 124 -0.40559386101083433 132 0.71431551633172363 163 0.71431551633172363
		 174 -0.48273949597561494 211 -0.48273949597561494 219 0.42756616679859683 224 0.42756616679859683
		 251 0.42756616679859683 257 0.022327846943487772 284 -0.12260488940604714 299 0;
	setAttr -s 19 ".kit[8:18]"  3 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 19 ".kot[8:18]"  3 18 18 18 18 18 18 18 
		18 18 18;
createNode animCurveTL -n "Face_Rig_Done:Joystick_RLowerEyeLidCtrl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 15 0.45591413295639355 23 0.45591413295639355
		 53 0.45591413295639355 66 0.47426385051823267 99 0.47426385051823267 124 0.47426385051823267
		 132 0.47480273452509697 163 0.47480273452509697 169 -0.08493735861675672 174 0.82706220339292524
		 211 0.82706220339292524 219 1 224 1 245 1 251 -0.063144213436025554 284 -0.063144213436025554
		 299 0;
createNode animCurveTL -n "Face_Rig_Done:Joystick_RUpperEyeLidCtrl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 7 -1 15 0.02668721741162355 23 0.13284584559776069
		 53 0.17379089823702243 66 0.25959525246192455 124 0.25959525246192455 132 1 163 1
		 169 -1 174 -0.22770470063755313 179 -0.061778402554326997 195 -0.0081100478962948114
		 211 -0.0081100478962948114 219 0.42165919413445774 224 0.42165919413445774 245 0.42165919413445774
		 251 0.25147351513050725 263 0.25147351513050725 267 -1 271 0.25147351513050725 284 0.25147351513050725
		 299 0;
	setAttr -s 23 ".kit[2:22]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 23 ".kot[2:22]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[2:22]"  0.76160591840744019 0.99557703733444214 
		0.99818849563598633 1 1 1 1 1 0.33478102087974548 0.95732831954956055 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 23 ".kiy[2:22]"  0.64804047346115112 0.093948803842067719 
		0.060165442526340485 0 0 0 0 0 0.94229590892791748 0.28900259733200073 0 0 0 0 0 
		0 0 0 0 0 0;
	setAttr -s 23 ".kox[2:22]"  0.76160591840744019 0.99557703733444214 
		0.99818849563598633 1 1 1 1 1 0.33478102087974548 0.95732831954956055 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 23 ".koy[2:22]"  0.6480405330657959 0.093948796391487122 
		0.06016545370221138 0 0 0 0 0 0.94229596853256226 0.28900259733200073 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTL -n "Face_Rig_Done:NeckCtrl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 11 0 23 0 53 0 66 0 124 0 163 0 174 0
		 222 0 284 0 299 0;
createNode animCurveTL -n "Face_Rig_Done:NeckCtrl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 11 0 23 0 53 0 66 0 124 0 163 0 174 0
		 222 0 284 0 299 0;
createNode animCurveTL -n "Face_Rig_Done:NeckCtrl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 11 0 23 0 53 0 66 0 124 0 163 0 174 0
		 222 0 284 0 299 0;
createNode animCurveTL -n "Face_Rig_Done:RootCtrl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 11 0 23 0 53 0 66 0 124 0 163 0 174 0
		 222 0 284 0 299 0;
createNode animCurveTL -n "Face_Rig_Done:RootCtrl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 11 0 23 0 53 0 66 0 124 0 163 0 174 0
		 222 0 284 0 299 0;
createNode animCurveTL -n "Face_Rig_Done:RootCtrl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 11 0 23 0 53 0 66 0 124 0 163 0 174 0
		 222 0 284 0 299 0;
createNode animCurveTU -n "LEarJnt_blendAim1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 341 ".ktv";
	setAttr ".ktv[0:249]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1 11 1
		 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1
		 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1
		 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1
		 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1 79 1
		 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1
		 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1 110 1
		 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1 124 1
		 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1 137 1 138 1
		 139 1 140 1 141 1 142 1 143 1 144 1 145 1 146 1 147 1 148 1 149 1 150 1 151 1 152 1
		 153 1 154 1 155 1 156 1 157 1 158 1 159 1 160 1 161 1 162 1 163 1 164 1 165 1 166 1
		 167 1 168 1 169 1 170 1 171 1 172 1 173 1 174 1 175 1 176 1 177 1 178 1 179 1 180 1
		 181 1 182 1 183 1 184 1 185 1 186 1 187 1 188 1 189 1 190 1 191 1 192 1 193 1 194 1
		 195 1 196 1 197 1 198 1 199 1 200 1 201 1 202 1 203 1 204 1 205 1 206 1 207 1 208 1
		 209 1 210 1 211 1 212 1 213 1 214 1 215 1 216 1 217 1 218 1 219 1 220 1 221 1 222 1
		 223 1 224 1 225 1 226 1 227 1 228 1 229 1 230 1 231 1 232 1 233 1 234 1 235 1 236 1
		 237 1 238 1 239 1 240 1 241 1 242 1 243 1 244 1 245 1 246 1 247 1 248 1 249 1;
	setAttr ".ktv[250:340]" 250 1 251 1 252 1 253 1 254 1 255 1 256 1 257 1 258 1
		 259 1 260 1 261 1 262 1 263 1 264 1 265 1 266 1 267 1 268 1 269 1 270 1 271 1 272 1
		 273 1 274 1 275 1 276 1 277 1 278 1 279 1 280 1 281 1 282 1 283 1 284 1 285 1 286 1
		 287 1 288 1 289 1 290 1 291 1 292 1 293 1 294 1 295 1 296 1 297 1 298 1 299 1 300 1
		 301 1 302 1 303 1 304 1 305 1 306 1 307 1 308 1 309 1 310 1 311 1 312 1 313 1 314 1
		 315 1 316 1 317 1 318 1 319 1 320 1 321 1 322 1 323 1 324 1 325 1 326 1 327 1 328 1
		 329 1 330 1 331 1 332 1 333 1 334 1 335 1 336 1 337 1 338 1 339 1 340 1;
createNode animCurveTA -n "Face_Rig_Done:LEarCtrl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 317 ".ktv";
	setAttr ".ktv[0:249]"  0 0 1 0.00086277942352132645 2 -0.023476375722600324
		 3 -0.24504304703769955 4 -0.97232209540144499 5 -2.0760457506561711 6 -2.0678270025957484
		 7 3.0293986119568608 8 12.58317812350659 9 18.798369200927723 10 16.778025384628922
		 11 8.520109555481266 12 2.0015555012797601 13 -0.066518859818996121 14 -0.0941340994749401
		 15 0.41733899651199191 16 0.82000588582381995 17 0.91888165457820803 18 0.74521841095290686
		 19 0.44074900567032238 20 0.16577217844622119 21 0.016519117984386711 22 -0.0082325673520100215
		 23 0.028489695446294361 24 0.066333028561294513 25 0.079495669735063196 26 0.068185336818517198
		 27 0.045132062248244578 28 0.022729089203177202 29 0.0074471406231086876 30 5.7623187988244627e-005
		 31 -0.0017844003042376978 32 -0.0010437684554279391 33 0.00012773805832203488 34 0.0007575124896692419
		 35 0.00076194623405090452 36 0.00045286133222426637 37 0.00014806684515892614 38 -1.5016855299800934e-006
		 39 -5.066274533580835e-006 40 5.4765992093883555e-005 41 0.00010282617660760442 42 0.00010778466766565334
		 43 7.7793973601842991e-005 44 3.7794479382084062e-005 45 8.8678586448399456e-006
		 46 -1.0558523024405919e-006 47 4.105793689058181e-006 48 1.5036214262203077e-005
		 49 2.331419115469195e-005 50 2.4776711438118789e-005 51 1.9743372247961013e-005 52 1.1349158394516303e-005
		 53 3.4710064281351639e-006 54 0.0022357199106381766 55 0.04378373530774967 56 0.25045173990149572
		 57 0.8468780618041073 58 2.1189831232273706 59 4.6910927960152309 60 8.6892520930997001
		 61 11.998410031887747 62 11.587885902297469 63 8.3566703116812189 64 4.0530449870075511
		 65 0.11558994457097783 66 -1.525210313848411 67 -0.87833092528105361 68 0.43067963590962721
		 69 1.3394613664617077 70 1.5316805689678812 71 1.1634487088147751 72 0.57008811216648958
		 73 0.074906997787458199 74 -0.14968115150307201 75 -0.13023618563867836 76 -0.0083197172309750784
		 77 0.091569842862455494 78 0.12360770180676911 79 0.10206589387573572 80 0.06017617247046371
		 81 0.023527226493808329 82 0.0025061575727917443 83 -0.0041758906906962968 84 -0.0028095310607340346
		 85 0.00057295780420500589 86 0.0025986747295350626 87 0.002576006288111281 88 0.0013415090766526062
		 89 2.1712436379312918e-005 90 -0.00069876268989002934 91 -0.0007222550816390436 92 -0.00032131526048445326
		 93 0.00015622883419858768 94 0.00047964061287550581 95 0.00058318294906488453 96 0.00051750125383231689
		 97 0.00037380880006776491 98 0.00022801482668634873 99 0.00011910018584396077 100 5.3587817281949162e-005
		 101 2.0727983976940702e-005 102 6.3538753730675625e-006 103 2.6766803106572295e-007
		 104 -2.4233656064636433e-006 105 -3.164213895676276e-006 106 -2.2677812858576779e-006
		 107 -2.6412508349123917e-007 108 1.8755365959216722e-006 109 3.1330970113807248e-006
		 110 2.8848990405361685e-006 111 1.0772348879795659e-006 112 -1.889914550488292e-006
		 113 -5.4296279056532856e-006 114 -9.0247713692129926e-006 115 -1.2378517389459684e-005
		 116 -1.544292863144351e-005 117 -1.8362742455782575e-005 118 -2.1385386019347258e-005
		 119 -2.4779845045308083e-005 120 -2.8781096196216782e-005 121 -3.3564386160550211e-005
		 122 -3.9241381410237214e-005 123 -4.5869161181353099e-005 124 -5.3464802475402252e-005
		 125 -0.07797364001297187 126 -0.54691407489444066 127 -0.91091923389230667 128 -0.38838839419326154
		 129 0.96107228604517325 130 1.5953122486809144 131 0.71588163831255447 132 -0.86761168699858837
		 133 -1.3262161529870009 134 -0.83828614718872929 135 -0.18620512647615498 136 0.22162068218182937
		 137 0.33690285418267391 138 0.26855393376697023 139 0.14022682610203319 140 0.033161214266435798
		 141 -0.021750666608049411 142 -0.030118311933010882 143 -0.013928097137002981 144 0.0054336599187766177
		 145 0.016097369228275274 146 0.016378003979678216 147 0.010533536261881856 148 0.0037985714864263603
		 149 -0.00061660775390513149 150 -0.0020714270685727454 151 -0.0015383203271196579
		 152 -0.00036148785279093522 153 0.00053281979453667736 154 0.0008355270302948456
		 155 0.00067467997737411509 156 0.00033219181823642861 157 3.6967036241285343e-005
		 158 -0.00011268175300137293 159 -0.00012875466476882904 160 -7.408169629856664e-005
		 161 -9.9366164252361041e-006 162 0.020991536426618961 163 0.24421332508799568 164 0.84910348946761538
		 165 1.7019506700065383 166 2.4141007986456251 167 2.6592555394250939 168 2.4126971169660023
		 169 2.0798515191078097 170 1.923673081047601 171 1.7289112310701622 172 1.3244252390716953
		 173 0.75583112472228753 174 0.23224781240682435 175 -0.0026904734491952579 176 0.15547568252747385
		 177 0.39164882319890199 178 0.48467519567105599 179 0.41218938863506577 180 0.25507863757493182
		 181 0.10733068116886406 182 0.021625243202199735 183 -0.00014327331513731045 184 0.014502309684325148
		 185 0.035547968245080157 186 0.045796442709395403 187 0.042337203746398856 188 0.03054609660754622
		 189 0.01737509288235459 190 0.0073987153374802089 191 0.0019476678400953571 192 0.00010712164573555677
		 193 0.00017981255435880149 194 0.00074358414050820537 195 0.0010573802057319986 196 0.00097573170551475835
		 197 0.00066140011689255112 198 0.00032492789007141558 199 9.0224687021917121e-005
		 200 -2.2198566478371738e-005 201 -5.1412151767184461e-005 202 -4.6186346139887628e-005
		 203 -3.7073103133144266e-005 204 -3.2722382324676031e-005 205 -2.9474075723819795e-005
		 206 -2.2296443144192421e-005 207 -1.0578989512291616e-005 208 1.8449631533958009e-006
		 209 9.7984019123907162e-006 210 9.9553142764683397e-006 211 2.3798364633888287e-006
		 212 0.29971917748347227 213 2.9796525676471992 214 8.1055318219997101 215 11.731769668416447
		 216 11.221137671709622 217 8.1834428424436556 218 4.9576260787222575 219 2.9124418020561862
		 220 1.9501987494664561 221 0.74574817237019619 222 -0.61488964141575353 223 -0.53078749710648632
		 224 0.30126084989112567 225 0.99269460088047856 226 1.2123692857470554 227 1.0013763437105727
		 228 0.58778091036091773 229 0.21142683694453562 230 0.00049913177069392208 231 -0.048920113358261651
		 232 -0.011350722185536672 233 0.039324090071484186 234 0.064654457220636521 235 0.060472663198611082
		 236 0.040064592641211379 237 0.018369344349397992 238 0.0039681777730335432 239 -0.0017172770034797275
		 240 -0.001524025545379991 241 0.00079695701857868519 242 0.0026468185679492289 243 0.003102076581677981
		 244 0.0024399220983572704 245 0.0013746051204431104 246 0.00048945574119478238 247 2.156967856638564e-005
		 248 -8.147439165234799e-005 249 2.5770599368294716e-006;
	setAttr ".ktv[250:316]" 250 0.00011133462841658408 251 0.00016136811662586094
		 252 0.00014419608825003437 253 9.0630736986367974e-005 254 3.5718393239535403e-005
		 255 -1.5579761906530706e-007 256 -1.3714921731562235e-005 257 -1.2105595271180942e-005
		 258 -4.7908261824700476e-006 259 1.5705841213078532e-006 260 4.4493653176996954e-006
		 261 4.3064402774901122e-006 262 2.7489199676898446e-006 263 1.1649339895281024e-006
		 264 1.9291200936759457e-007 265 -1.7772184290533988e-007 266 -2.5959159961602683e-007
		 267 -3.6918262374393153e-007 268 -6.9380624922995668e-007 269 -1.3001862512334337e-006
		 270 -2.205029875184234e-006 271 -3.438170176097675e-006 272 -5.0680591289665355e-006
		 273 -7.1935918380165581e-006 274 -9.9189626956694814e-006 275 -1.3334524028019277e-005
		 276 -1.7505444580383886e-005 277 -2.2478602682960603e-005 278 -2.8288307862081146e-005
		 279 -3.4974038889548226e-005 280 -4.2581462765280947e-005 281 -5.1176828799043771e-005
		 282 -6.0835596809789356e-005 283 -7.1655258829514019e-005 284 -8.3734337028276471e-005
		 285 0.0010450455917622231 286 0.012020800915846784 287 0.040617473644534066 288 0.080543102149579826
		 289 0.11497397108326957 290 0.12813909791572153 291 0.11382732633518898 292 0.076799542727874245
		 293 0.039637554564007471 294 0.015796692974062835 295 0.00191967867106184 296 -0.0050064779675919975
		 297 -0.007638883039576088 298 -0.0080958046902589696 299 -0.0078117666839213531 300 -0.0065782516262199988
		 301 -0.0043930190364267988 302 -0.0022819234806682551 303 -0.00079262426179043852
		 304 -5.3591399964805967e-005 305 7.2074677731110884e-005 306 -0.00017065605338733518
		 307 -0.000544144106070116 308 -0.00087882784745294017 309 -0.00098108046701908687
		 310 -0.00078816670521493796 311 -0.0004773438540876394 312 -0.00020784437153683035
		 313 -5.1442595092508026e-005 314 9.0996399349122521e-020 315 -9.6962949353641612e-006
		 328 -3.7005202401976497e-019;
createNode animCurveTA -n "Face_Rig_Done:LEarCtrl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 317 ".ktv";
	setAttr ".ktv[0:249]"  0 0 1 0.031096028888981327 2 -0.25755406267068653
		 3 -1.5343277963442625 4 -4.8035967782075053 5 -11.132812264516932 6 -23.094338315364645
		 7 -36.458208291410863 8 -43.300904879467446 9 -42.361268152536169 10 -35.672769506026853
		 11 -23.602524301124308 12 -9.5071034016131861 13 0.69579684965145028 14 6.9089407616572105
		 15 10.05429992242483 16 10.980567246086904 17 10.288154839380864 18 8.4387657890943402
		 19 5.8789937421046519 20 3.0950099107227742 21 0.56851761485197827 22 -1.3323253076090282
		 23 -2.4381655311362671 24 -2.8318221085655937 25 -2.7110580804333733 26 -2.256677941205715
		 27 -1.6424459694997842 28 -1.0066556385030141 29 -0.44337447744389785 30 -0.0051865384401177514
		 31 0.28902765634774769 32 0.44505198278977925 33 0.48477385639068776 34 0.43869053668119506
		 35 0.33967190466359676 36 0.21810279738944105 37 0.098553659005311017 38 -0.0019531854456981451
		 39 -0.074184110532375239 40 -0.11575447014409555 41 -0.12945034201823499 42 -0.12127866769529921
		 43 -0.098627793061972432 44 -0.068789988794926649 45 -0.037954835071027475 46 -0.010673055311810439
		 47 0.010282784539258514 48 0.023766167542016884 49 0.029925268700060351 50 0.029793347447372151
		 51 0.024880100374003809 52 0.016819547810582394 53 0.0071055759949391938 54 0.14156875749573064
		 55 0.73842569301754257 56 2.0061244917082397 57 4.1188202633995346 58 7.2139193509767283
		 59 11.426935319124034 60 16.51081162508779 61 21.831686936759436 62 26.667883242768362
		 63 31.95770880334717 64 35.428105454491885 65 33.589742540589107 66 23.700736975490106
		 67 8.6949884889646452 68 -3.7915758174996581 69 -12.470304470656757 70 -17.329562973780437
		 71 -18.823590259077086 72 -17.496082428164005 73 -14.019964224436984 74 -9.3065496151857623
		 75 -4.4130829645857119 76 -0.2387621493983233 77 2.7211248512267119 78 4.3799413472777982
		 79 4.9135542535320935 80 4.6121790759841268 81 3.7850826185569488 82 2.7097415352571681
		 83 1.6074068150263523 84 0.63412968085664478 85 -0.1181578155463867 86 -0.61385337816431962
		 87 -0.86184641350015012 88 -0.90181367924937283 89 -0.79040501843877298 90 -0.58882967293669319
		 91 -0.35304343866196308 92 -0.12730297601777721 93 0.058778320484836853 94 0.19015223218513569
		 95 0.2641146835157408 96 0.28694648643591242 97 0.2702780871322501 98 0.22781540088998628
		 99 0.17278436004979203 100 0.11622907969895264 101 0.066133145860827872 102 0.027231013970505095
		 103 0.0013235616483437838 104 -0.012092652087539865 105 -0.01506739694881621 106 -0.010448411653592372
		 107 -0.0012449011934839733 108 0.0098418792031699353 109 0.020705042829016272 110 0.029948530261626055
		 111 0.036870827918251581 112 0.041354235185316529 113 0.043706323844257863 114 0.044489192911914117
		 115 0.044364337388406686 116 0.043970189636331529 117 0.043839876788796618 118 0.044357376711796258
		 119 0.045749655871169109 120 0.048101271838442622 121 0.051385412625648448 122 0.055501049746466226
		 123 0.060309344789710707 124 0.06566443904204057 125 1.7435910752624357 126 4.0518155039804489
		 127 4.2738659985908365 128 1.6316174557895082 129 -5.0726726467107168 130 -14.738529466490705
		 131 -22.352716934315556 132 -21.757785783066183 133 -14.512192164425759 134 -7.4047052875112831
		 135 -1.6610580892176592 136 2.2945598472198139 137 4.554914787226938 138 5.4272291324105
		 139 5.2701247202511308 140 4.4307817254520465 141 3.2221817766402667 142 1.9097346800351975
		 143 0.69930070552515611 144 -0.27130203038142753 145 -0.93356501844706885 146 -1.2807659577529404
		 147 -1.3531810333781529 148 -1.219502364536629 149 -0.95847789942324046 150 -0.64402799133917232
		 151 -0.33557061732103766 152 -0.073680475055192471 153 0.1199324968630632 154 0.23961328589823039
		 155 0.29154907234908101 156 0.28925431361910947 157 0.24947679364957676 158 0.18892839712213882
		 159 0.1220072426921692 160 0.059507130519256296 161 0.0081966015833473838 162 -0.78313898734930476
		 163 -2.8959107888170283 164 -5.9210771161682958 165 -9.3127859453398543 166 -12.50767915700208
		 167 -15.096132687813279 168 -16.965208778447888 169 -17.751654265834208 170 -17.035418846596151
		 171 -15.01270716585427 172 -12.01649935142707 173 -8.43293667929977 174 -4.5732757009532463
		 175 -0.56954032694086143 176 2.7618853676026927 177 4.597929560513677 178 5.1634964104440293
		 179 4.761102263124843 180 3.7218091381470848 181 2.3744198429389605 182 1.0086431755934286
		 183 -0.16093146767259797 184 -1.0127765385037857 185 -1.5122618253048039 186 -1.689436548989028
		 187 -1.6125379266088726 188 -1.3648812870737821 189 -1.0278684382578984 190 -0.67028508444855261
		 191 -0.34288279375274372 192 -0.077158107708984167 193 0.11294918438772625 194 0.2275938900271218
		 195 0.27677954654010173 196 0.27608489746085285 197 0.24289939866342741 198 0.19350326289588821
		 199 0.14114213734164099 200 0.095081180159980516 201 0.060493178983773009 202 0.038955581041435469
		 203 0.029306540191337101 204 0.028628634738639063 205 0.033186064615543347 206 0.039191757220633332
		 207 0.04335168394327836 208 0.043176595168035618 209 0.03708819290742156 210 0.024366794549830855
		 211 0.0049951794906922045 212 5.3655280734987159 213 16.720408685781404 214 27.038122708584289
		 215 32.043984369623381 216 32.569384535452997 217 30.866511812918979 218 26.713615114054281
		 219 20.422361840184365 220 12.746674733588057 221 4.2951396750947879 222 -4.6460204912303897
		 223 -11.586880542402559 224 -14.869728314351178 225 -15.295281725084136 226 -13.627895785276667
		 227 -10.575973213427105 228 -6.8507597430577025 229 -3.142772715222959 230 -0.011224058608630421
		 231 2.2183038870537106 232 3.4690879959280521 233 3.851069682048931 234 3.5756290930272727
		 235 2.8845759653375156 236 2.0027734467833258 237 1.1113213520753815 238 0.33637056974138568
		 239 -0.25076300152196845 240 -0.62613172122287464 241 -0.8018351489277149 242 -0.81356534080251952
		 243 -0.7088647656612469 244 -0.53725677801837901 245 -0.34290044181949575 246 -0.16003397879487738
		 247 -0.011081059097989092 248 0.093028490007285969 249 0.15098859627988254;
	setAttr ".ktv[250:316]" 250 0.16842123966862346 251 0.15499507325866599 252 0.1218395235790376
		 253 0.07953415118828247 254 0.036789630576284406 255 -0.00021114830925917643 256 -0.027915296228308493
		 257 -0.045106039146382657 258 -0.052371840141296595 259 -0.05148093228611194 260 -0.044782358551001974
		 261 -0.034701693260698954 262 -0.023380404386377875 263 -0.012459677751003734 264 -0.0030019080273117286
		 265 0.0044857094921887299 266 0.0099547442598559993 267 0.013685275329176749 268 0.016147686156248446
		 269 0.01787963240662363 270 0.019390912407611097 271 0.021099922323366289 272 0.023302481543833888
		 273 0.026168371249161628 274 0.029753292562133014 275 0.034028088400485983 276 0.038904940964371075
		 277 0.044271240380801186 278 0.050008160449465315 279 0.056014461971542522 280 0.062209351618491129
		 281 0.068544436775460543 282 0.074993202422430474 283 0.081556555995454139 284 0.088245223709185153
		 285 -0.29602945645855405 286 -1.2423494466688183 287 -2.3895717215818792 288 -3.4192777839184618
		 289 -4.0879814726753931 290 -4.2426079641639234 291 -3.8185704273637624 292 -2.8254629213314284
		 293 -1.6643014294075853 294 -0.75611942109760555 295 -0.10588070848484664 296 0.32423273523381124
		 297 0.59313236344134912 298 0.76547152163081467 299 0.90243093229113835 300 0.95342610926089044
		 301 0.86100208133983891 302 0.68035989237426875 303 0.46225831368671888 304 0.24744041740395423
		 305 0.063881925728828337 306 -0.073459270725903247 307 -0.16097442566662781 308 -0.2035814012306616
		 309 -0.20754780615566987 310 -0.18117790705221912 311 -0.13731390557524212 312 -0.087401843100010534
		 313 -0.040274085721933875 314 -0.0016936511478827093 315 0.025518902896274457 328 -0.0065791993115183189;
createNode animCurveTA -n "Face_Rig_Done:LEarCtrl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 317 ".ktv";
	setAttr ".ktv[0:249]"  0 0 1 1.589300778524966 2 5.2082075207324445 3 9.0750342529924257
		 4 11.457073897560774 5 10.63297509057986 6 5.2592270499669507 7 -5.0892985229209255
		 8 -18.028604996908904 9 -26.802276319286943 10 -27.339593634459369 11 -20.513856057103364
		 12 -11.946889365099926 13 -5.4610719801985592 14 -0.78250028955930973 15 2.3891687340998775
		 16 4.2972522455319364 17 5.1316240659830328 18 5.0651189725114802 19 4.2950410530735414
		 20 3.0673934348573595 21 1.6643724541223055 22 0.35406358449321423 23 -0.66966652836160834
		 24 -1.3424064720903264 25 -1.6802159813296778 26 -1.7311087758712695 27 -1.5742256645153141
		 28 -1.293517499982114 29 -0.96228783820416719 30 -0.63653816206554958 31 -0.35372995918217703
		 32 -0.1343753569065472 33 0.015097635072352743 34 0.098936826511708598 35 0.1285254544932832
		 36 0.11896715094705114 37 0.086081056745539758 38 0.044051230607945378 39 0.0039129164982636307
		 40 -0.027107913010986643 41 -0.045511735428544961 42 -0.050920822748209402 43 -0.045192815303511338
		 44 -0.031479354721031777 45 -0.013386723946097173 46 0.0056680939733715846 47 0.022877522997020228
		 48 0.036249493033739165 49 0.044638013546742739 50 0.0476482454700657 51 0.045466524866509671
		 52 0.038660895971544817 53 0.02798844212647213 54 0.90476740803724143 55 3.3933803881544096
		 56 7.1176753618739914 57 11.629326593957282 58 16.417462182548949 59 22.498822689475666
		 60 28.269608807327629 61 29.747665817054241 62 24.554095115284532 63 15.510907613907717
		 64 6.9689691417036803 65 0.20893117325696856 66 -3.7897972087687095 67 -5.7907100798546383
		 68 -6.4851826504021766 69 -6.180167436834819 70 -5.1296304760402522 71 -3.6015994956310369
		 72 -1.8956152929641576 73 -0.30919805957940971 74 0.92549834657465935 75 1.6920616014422154
		 76 1.9956818056920724 77 1.9280855452326848 78 1.6181103205346394 79 1.1914555149146189
		 80 0.74831702788200272 81 0.35639234195548475 82 0.053010869139559949 83 -0.14886820201165771
		 84 -0.25385423558528952 85 -0.27783037321440962 86 -0.2425580092971954 87 -0.17125953364813198
		 88 -0.085234818505758689 89 -0.0015739657439505406 90 0.067993922220672395 91 0.1172160915948106
		 92 0.14461550661051939 93 0.15228800777001547 94 0.14452302058887909 95 0.12651316939141014
		 96 0.1033319135669398 97 0.079243317831448098 98 0.057346067212213962 99 0.039494010031457923
		 100 0.026416432603051005 101 0.017958108756589555 102 0.013368956714803808 103 0.01158710371956246
		 104 0.011482065422061821 105 0.012032344253003776 106 0.012435794120147937 107 0.012156191067191872
		 108 0.010918680093841194 109 0.0086700249728462915 110 0.0055192204833268647 111 0.0016739797660525269
		 112 -0.0026184534625316429 113 -0.0071178438974678236 114 -0.011622628433221288 115 -0.0159866435970825
		 116 -0.020123058218019498 117 -0.023998874072634919 118 -0.027623193268029297 119 -0.031033688049127688
		 120 -0.03428257250995588 121 -0.037424972475875957 122 -0.040510324124135515 123 -0.043577149331752066
		 124 -0.046650935785927189 125 -2.5609656434001309 126 -7.6938878202239955 127 -12.043642933453381
		 128 -13.391384339204256 129 -10.742829067788104 130 -6.2474193771690603 131 -1.8817979868481836
		 132 2.339449738303077 133 5.2784203765132824 134 6.4772711551017395 135 6.3970823458464627
		 136 5.5183090445503726 137 4.2346530826347495 138 2.8370935999637488 139 1.5263127313899003
		 140 0.42923741653492703 141 -0.38696129771978183 142 -0.90370079888625809 143 -1.1410477624226782
		 144 -1.1473755921647415 145 -0.98789129131682685 146 -0.73270024178789717 147 -0.44603868949147352
		 148 -0.17848087108401475 149 0.036861220167299834 150 0.18428720524842879 151 0.26265454792295356
		 152 0.28109981411484647 153 0.25454441217307461 154 0.19978908032722817 155 0.13258973088452722
		 156 0.065801133327072742 157 0.0084900154571808661 158 -0.034172733719204366 159 -0.06046445732583336
		 160 -0.071328714218805753 161 -0.069458775104745824 162 -1.535456695788554 163 -4.822443275031941
		 164 -8.1757186228983247 165 -10.404491636633317 166 -11.015785534394078 167 -10.111686279809756
		 168 -8.2166765115626372 169 -6.7926002775271686 170 -6.54018448833392 171 -6.6465270733029316
		 172 -6.3366859225178347 173 -5.1403829504608973 174 -2.9102934506171838 175 0.27066418008883225
		 176 3.2232221966329182 177 4.8739470992596159 178 5.3697465688945085 179 4.9537638662154091
		 180 3.9234794423636745 181 2.5889169721019609 182 1.2282930459810737 183 0.051009072479057602
		 184 -0.82042543691856029 185 -1.346731189285908 186 -1.5529917389578776 187 -1.5041546561476162
		 188 -1.2821891130059373 189 -0.96848785698482565 190 -0.63242883927391069 191 -0.32545410587985013
		 192 -0.079545964649799988 193 0.091213570897508506 194 0.18719392428318857 195 0.21888670888280817
		 196 0.20249311992572239 197 0.15601296393647243 198 0.096210339612329984 199 0.036626186856309237
		 200 -0.013376829458866283 201 -0.048694732186830111 202 -0.067930745714641 203 -0.07247977037535655
		 204 -0.065488755680716895 205 -0.050887015760413469 206 -0.032595937050070307 207 -0.013981729003214269
		 208 0.002448285044577312 209 0.01513708426354227 210 0.023408802352265369 211 0.027297232316339279
		 212 3.2019251037020116 213 10.255157086105363 214 17.39561885445816 215 21.375677015964744
		 216 20.230493483112621 217 15.658414597575145 218 10.921801581287776 219 8.2953374226640246
		 220 8.7729983719840927 221 9.8594421559838565 222 7.5476036850824997 223 2.6408623072320654
		 224 -1.1737936153465889 225 -3.758126467322235 226 -5.1325406521500652 227 -5.4400769642931195
		 228 -4.9156677003938203 229 -3.850658348832988 230 -2.5462549545417157 231 -1.2636512571815397
		 232 -0.18758350503061441 233 0.58547983356345945 234 1.0365813071416261 235 1.2014887896845139
		 236 1.1462572829718194 237 0.94703127864923287 238 0.67589325302524572 239 0.39236849135522578
		 240 0.13946234354967663 241 -0.056949048921080062 242 -0.18640923681005783 243 -0.2507379465614536
		 244 -0.26020765473999657 245 -0.22968509388514674 246 -0.1752358934938478 247 -0.11152814868355344
		 248 -0.050179677703850178 249 0.00097792041650644193;
	setAttr ".ktv[250:316]" 250 0.037875345163513395 251 0.059651702304258342 252 0.067809110027495803
		 253 0.065289665709752753 254 0.055627432080230542 255 0.042276190949195255 256 0.028149696338018757
		 257 0.015377089084847384 258 0.0052412546330879968 259 -0.0017479841851825426 260 -0.0056926409978213669
		 261 -0.0071103410957473676 262 -0.0067364754200272192 263 -0.0053569438521987259
		 264 -0.0036820057771526291 265 -0.0022700322820278012 266 -0.0014941109456667993
		 267 -0.0015456474866483621 268 -0.0024617865289748744 269 -0.0041664823039968494
		 270 -0.0065153662873198804 271 -0.0093361780376154009 272 -0.012461264731391756 273 -0.015750405688851717
		 274 -0.019100900750151483 275 -0.022452391014757989 276 -0.025780481469686669 277 -0.029091777603774745
		 278 -0.032410723846194221 279 -0.0357740624975793 280 -0.039218190511982033 281 -0.04277832896931439
		 282 -0.046479188323019539 283 -0.05033984317206476 284 -0.054366960246162131 285 -0.20226608593893525
		 286 -0.55441216269727178 287 -0.97409116661741957 288 -1.3501881756208882 289 -1.6123810971649573
		 290 -1.7315570976769585 291 -1.7086838425850157 292 -1.5576179487895081 293 -1.3645093859152817
		 294 -1.1968724118056335 295 -1.038692511648325 296 -0.88463860630974622 297 -0.7378780994548485
		 298 -0.60596891480940174 299 -0.49598099313138905 300 -0.39532950305312359 301 -0.2923439386524978
		 302 -0.19217353709647197 303 -0.098244794174140115 304 -0.012409333156708951 305 0.064643857169337918
		 306 0.13310582345724106 307 0.1936772391835152 308 0.2473355602929081 309 0.27083627484386841
		 310 0.2492490204561594 311 0.19917650577134649 312 0.13625098194573959 313 0.073184573293128538
		 314 0.01885546099562329 315 -0.021770341942406728 328 0.0095569669221436792;
createNode animCurveTU -n "REarJnt_blendAim1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 341 ".ktv";
	setAttr ".ktv[0:249]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1 11 1
		 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1
		 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1
		 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1
		 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1 79 1
		 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1
		 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1 110 1
		 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1 124 1
		 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1 137 1 138 1
		 139 1 140 1 141 1 142 1 143 1 144 1 145 1 146 1 147 1 148 1 149 1 150 1 151 1 152 1
		 153 1 154 1 155 1 156 1 157 1 158 1 159 1 160 1 161 1 162 1 163 1 164 1 165 1 166 1
		 167 1 168 1 169 1 170 1 171 1 172 1 173 1 174 1 175 1 176 1 177 1 178 1 179 1 180 1
		 181 1 182 1 183 1 184 1 185 1 186 1 187 1 188 1 189 1 190 1 191 1 192 1 193 1 194 1
		 195 1 196 1 197 1 198 1 199 1 200 1 201 1 202 1 203 1 204 1 205 1 206 1 207 1 208 1
		 209 1 210 1 211 1 212 1 213 1 214 1 215 1 216 1 217 1 218 1 219 1 220 1 221 1 222 1
		 223 1 224 1 225 1 226 1 227 1 228 1 229 1 230 1 231 1 232 1 233 1 234 1 235 1 236 1
		 237 1 238 1 239 1 240 1 241 1 242 1 243 1 244 1 245 1 246 1 247 1 248 1 249 1;
	setAttr ".ktv[250:340]" 250 1 251 1 252 1 253 1 254 1 255 1 256 1 257 1 258 1
		 259 1 260 1 261 1 262 1 263 1 264 1 265 1 266 1 267 1 268 1 269 1 270 1 271 1 272 1
		 273 1 274 1 275 1 276 1 277 1 278 1 279 1 280 1 281 1 282 1 283 1 284 1 285 1 286 1
		 287 1 288 1 289 1 290 1 291 1 292 1 293 1 294 1 295 1 296 1 297 1 298 1 299 1 300 1
		 301 1 302 1 303 1 304 1 305 1 306 1 307 1 308 1 309 1 310 1 311 1 312 1 313 1 314 1
		 315 1 316 1 317 1 318 1 319 1 320 1 321 1 322 1 323 1 324 1 325 1 326 1 327 1 328 1
		 329 1 330 1 331 1 332 1 333 1 334 1 335 1 336 1 337 1 338 1 339 1 340 1;
createNode animCurveTA -n "Face_Rig_Done:REarCtrl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 319 ".ktv";
	setAttr ".ktv[0:249]"  0 -1.0042352539033956e-015 1 -0.051987116012374296
		 2 -0.51465663454749688 3 -1.4549810001163159 4 -2.3691068724940116 5 -2.5199360412014133
		 6 -0.98409994615916885 7 3.3455953236118736 8 9.5261316231278386 9 13.870917810372474
		 10 12.685765618761724 11 5.9532830047182959 12 0.59160643265735602 13 -0.68553504543754662
		 14 -0.28091969285427437 15 0.33556599799853115 16 0.66169005585524499 17 0.66226828911163804
		 18 0.46693641987551759 19 0.22878666640422696 20 0.055315290151231461 21 -0.017619865805233677
		 22 -0.013921711431406575 23 0.018462347014370824 24 0.043508894672978742 25 0.049646558440032379
		 26 0.040107916378551121 27 0.024305745137134138 28 0.010259618055982451 29 0.0015881534050672884
		 30 -0.0018696748099901932 31 -0.0020680243016894199 32 -0.001047075225040381 33 -9.5562840572708149e-005
		 34 0.00033364063072459154 35 0.00032317584575807011 36 0.00013493017980216034 37 -2.3438645829074395e-005
		 38 -7.4789300940930831e-005 39 -4.2368209827125555e-005 40 1.512680550908699e-005
		 41 5.3004593080969118e-005 42 5.7789771816456238e-005 43 3.9784762349419097e-005
		 44 1.6945100129988049e-005 45 2.3611738614519195e-006 46 -1.7030155228174616e-007
		 47 5.8914413160875768e-006 48 1.4398130490093276e-005 49 2.0337816095589085e-005
		 50 2.1514095152986857e-005 51 1.8287146124777364e-005 52 1.234153213475349e-005 53 5.4249767601727449e-006
		 54 0.0068661044903831825 55 0.10230481653443524 56 0.46214233925176135 57 1.2380358270045313
		 58 2.4452741871609112 59 4.2028976635802131 60 6.2741824505390165 61 8.2300282277670522
		 62 9.5613928266237043 63 10.059734695183254 64 8.4507479028748289 65 4.0757963549454619
		 66 -0.043730273766777045 67 -0.50979772181665806 68 0.7549147422494632 69 1.7532925398384429
		 70 2.0214217382880757 71 1.6858741816576006 72 1.0541424654808107 73 0.4431115270270059
		 74 0.063093879654611704 75 -0.046480341991972339 76 0.015106798046351072 77 0.11304672108517913
		 78 0.16326024613721279 79 0.15137136171675947 80 0.10395049161688628 81 0.053240276037088675
		 82 0.01806397967639695 83 0.0017705788450729757 84 -0.0013325638996621418 85 0.0011309380370048742
		 86 0.0037780959746481538 87 0.0044702398939264008 88 0.0034140973004315564 89 0.0017380243911512036
		 90 0.00041981028223251504 91 -0.00014886304903631494 92 -9.0552860398112779e-005
		 93 0.0002475652032959623 94 0.00055518390885728143 95 0.00068086127467250799 96 0.00062411094903436128
		 97 0.00046385122709834039 98 0.00028668560765258858 99 0.00014708633720215836 100 6.1074415362537068e-005
		 101 1.9219611071198352e-005 102 3.4755160922935748e-006 103 -1.3468516875277066e-006
		 104 -3.5375019386413501e-006 105 -5.6151181249502997e-006 106 -7.2838612195678821e-006
		 107 -7.8627658585814093e-006 108 -7.3507225379491797e-006 109 -6.3863543788472937e-006
		 110 -5.7545805660368171e-006 111 -5.9670997891230586e-006 112 -7.1288025570747126e-006
		 113 -9.0459597874187471e-006 114 -1.1426053538395612e-005 115 -1.4039662846855257e-005
		 116 -1.678894378649419e-005 117 -1.9693851205633457e-005 118 -2.2837070507531822e-005
		 119 -2.6311034414458204e-005 120 -3.0185066915865505e-005 121 -3.4498486615270032e-005
		 122 -3.9270008430647241e-005 123 -4.4512574271991597e-005 124 -5.0245579701736861e-005
		 125 -0.021448174980513639 126 -0.16529322770466978 127 -0.2388182168566218 128 0.38274290601932498
		 129 1.3370250522682492 130 -1.106569373410925 131 -5.710346499758006 132 -4.7335146561003789
		 133 -1.4525346610140699 134 -0.03757348402249136 135 0.23474882401857047 136 0.070491147486516956
		 137 -0.13693098235607945 138 -0.24047468446936079 139 -0.22994626313321684 140 -0.15336001162801521
		 141 -0.067337063090732827 142 -0.0092010295799129487 143 0.01160475644288592 144 0.0063473372322208508
		 145 -0.0072774401483240965 146 -0.016621265643112757 147 -0.017802962043046659 148 -0.013184668562555749
		 149 -0.0069760542210733347 150 -0.0022037080215532114 151 0.00014648158854790367
		 152 0.00056254990550069848 153 5.351107452756703e-005 154 -0.00054378271950232635
		 155 -0.00082563819357644834 156 -0.00076244701202975781 157 -0.00051071842447359263
		 158 -0.00024311708631231813 159 -6.0417946252593711e-005 160 1.847740998823097e-005
		 161 2.4375836872509841e-005 162 0.0024410539047622424 163 -0.048673802486337403 164 -0.39424984237931066
		 165 -1.1027417012869341 166 -1.7120939486083673 167 -1.5089487961233263 168 -0.15167831856279443
		 169 1.6346608494205974 170 2.249267753832314 171 0.84377842983087714 172 -1.8106622042867857
		 173 -3.8671618435623247 174 -3.9461161974664294 175 -2.2073865565337822 176 -0.44954371650946529
		 177 0.30848702560665947 178 0.36779158561092001 179 0.13647586202265238 180 -0.099701938121543529
		 181 -0.21419713074533892 182 -0.20138208394185697 183 -0.1178789377821657 184 -0.028761606301991361
		 185 0.026122115357775585 186 0.039952888198257763 187 0.027448336198584042 188 0.0079117970169813503
		 189 -0.0060161332294063966 190 -0.010841734690612597 191 -0.0090663758248146417 192 -0.0048682322115002497
		 193 -0.0013063641470953333 194 0.00046524893177263266 195 0.00070076593919243043
		 196 0.00019881680291940494 197 -0.00034588027724613356 198 -0.00060150769060008389
		 199 -0.00055802432113336378 200 -0.00036085777852977647 201 -0.00015966540096919309
		 202 -3.3779244990516802e-005 203 1.0449693150086276e-005 204 5.9825065091778131e-006
		 205 -1.0413196476355352e-005 206 -1.7622093555035428e-005 207 -1.2322464867485177e-005
		 208 -1.3860344153007034e-006 209 7.0548848406738817e-006 210 8.9872503359181315e-006
		 211 5.503226590075891e-006 212 0.29452094159838993 213 3.3061077663816327 214 9.7095660265968249
		 215 13.971377442178484 216 12.872790134754197 217 9.4464738537239086 218 5.7604205973064566
		 219 3.0179165029653654 220 1.3523152633819593 221 0.22070209468997029 222 -0.30816262151777418
		 223 0.22694327324959293 224 1.0871200718152771 225 1.6139087464767563 226 1.5922583532304464
		 227 1.1498441666156167 228 0.58732719466942795 229 0.17060416104481901 230 -0.0070940371172115765
		 231 -0.0099772877987313619 232 0.048739988996933277 233 0.091547929942468381 234 0.095367435399344835
		 235 0.071322653480303297 236 0.03964942786920047 237 0.014882218307421228 238 0.0019902249780314823
		 239 -0.0011119195692797341 240 0.00075149013140342498 241 0.0033616486117009309 242 0.0045511932656389252
		 243 0.0040662240270959802 244 0.0026702683678807675 245 0.0012497733531816747 246 0.00031947340960391754
		 247 -4.6064924834492142e-005 248 -3.7558079423104319e-005 249 0.00010188823874471959;
	setAttr ".ktv[250:318]" 250 0.00020825470252179272 251 0.00022649445155231129
		 252 0.00017660405957413042 253 0.00010388052477026491 254 4.3940425797589132e-005
		 255 1.0609193354662857e-005 256 2.5125546875522406e-007 257 2.0091010016563164e-006
		 258 6.1825191900328141e-006 259 7.8370524411071324e-006 260 6.4108520023730622e-006
		 261 3.5387759076651143e-006 262 1.0017357865088428e-006 263 -3.1398030341547294e-007
		 264 -4.8165613086352031e-007 265 -8.892124726796442e-008 266 2.4798950916222524e-007
		 267 1.5957019394946814e-007 268 -4.4126606034200033e-007 269 -1.4668144656968292e-006
		 270 -2.7910506505307819e-006 271 -4.3423029878848122e-006 272 -6.1339123083365389e-006
		 273 -8.2502970477041127e-006 274 -1.08129207028636e-005 275 -1.3952230944645524e-005
		 276 -1.7786827111495266e-005 277 -2.2420590571463351e-005 278 -2.7938786459540469e-005
		 279 -3.4418064632664043e-005 280 -4.1922972821211129e-005 281 -5.0519641531125757e-005
		 282 -6.0267384741625323e-005 283 -7.1236706932251704e-005 284 -8.3494633645807777e-005
		 285 -0.00073096334289770529 286 -0.0022611537676082163 287 -0.003611962171354564
		 288 -0.0023504489113833514 289 0.0061218080974501481 290 0.025452207414123719 291 0.051078233833959055
		 292 0.063199210275427964 293 0.035064565663395594 294 -0.062561048480801476 295 -0.21030478893049476
		 296 -0.3373219104510134 297 -0.37593087296952898 298 -0.30681007022616191 299 -0.16904910456450839
		 300 -0.055740785425247831 301 -0.0073757461153420171 302 -0.00058875171968492969
		 303 -0.010171219812145554 304 -0.019741610068059297 305 -0.022897428631259563 306 -0.019957146842843977
		 307 -0.013989398132592205 308 -0.0079692605250619355 309 -0.0033245092268023775 310 -0.00067515941278187188
		 311 0.00011984499987629672 312 -0.00012319104113887346 313 -0.00059449446249885886
		 314 -0.0008399633393573211 315 -0.00077626413506664009 316 -0.00053022457710828579
		 317 -0.00026553297398596145 328 -1.0040049807019038e-015;
createNode animCurveTA -n "Face_Rig_Done:REarCtrl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 319 ".ktv";
	setAttr ".ktv[0:249]"  0 3.1699992874204259e-032 1 1.2709952795059407 2 4.1456455393358924
		 3 7.3592691156930483 4 10.451353963209408 5 13.525296836485929 6 17.935792779838788
		 7 22.873418613516723 8 25.561012803767483 9 24.737847297156261 10 20.346992608777608
		 11 11.910942448646002 12 1.9818300456211315 13 -4.8168042020344588 14 -8.3347110142734042
		 15 -9.4123447607690629 16 -8.8823242668391877 17 -7.3569889257123933 18 -5.2960099769752764
		 19 -3.0806443198199003 20 -1.0366693189487377 21 0.58486719680078536 22 1.6388387365020334
		 23 2.099171950828703 24 2.0994328863402818 25 1.818644820546873 26 1.3808752448674106
		 27 0.89710903765558014 28 0.45034833829501847 29 0.091454047359724011 30 -0.15772321447244855
		 31 -0.29765430230194062 32 -0.34360462674708886 33 -0.31879506822389242 34 -0.24887241412554956
		 35 -0.15784707941550094 36 -0.065441401537665714 37 0.014276955937851528 38 0.073163853957032329
		 39 0.10840781271186238 40 0.1213754561809995 41 0.11619666778350342 42 0.098364915540684023
		 43 0.073550978027873942 44 0.04674528598058704 45 0.021755969873787851 46 0.0010289764353446336
		 47 -0.01428431845298023 48 -0.024097325754175173 49 -0.029078713403266634 50 -0.030331622324844376
		 51 -0.029109074796174236 52 -0.026594224514322726 53 -0.023756324680975278 54 -0.82074172432837378
		 55 -2.943224047770133 56 -5.7997330606022697 57 -8.7608509682962854 58 -11.321137263731522
		 59 -13.20166115035407 60 -14.746546184322582 61 -16.93778803552815 62 -20.887550463478867
		 63 -27.069041535979188 64 -31.703325393350887 65 -30.089018302047918 66 -19.052658083943054
		 67 -4.7744729318083809 68 4.8206654177459232 69 10.378358769059012 70 12.928302112222545
		 71 13.209502243529528 72 11.754862502803638 73 9.0744280792155596 74 5.7554697596791629
		 75 2.4244669005019621 76 -0.38905153380442631 77 -2.371074695775742 78 -3.4459112489445065
		 79 -3.7194179024482681 80 -3.3968722031578125 81 -2.7114224113532148 82 -1.8750991989210066
		 83 -1.0525438754221756 84 -0.35285413749937267 85 0.16674353960073551 86 0.49122031270888794
		 87 0.63612185260831289 88 0.63620452914915981 89 0.53533947620033939 90 0.37821307625612638
		 91 0.20415746681638991 92 0.043312899070998397 93 -0.084927607651603371 94 -0.17153102661342712
		 95 -0.21605488010946017 96 -0.22415091520971103 97 -0.20492274395523596 98 -0.16858564034356832
		 99 -0.12468157865171066 100 -0.080938374223127399 101 -0.042735577361168925 102 -0.01306345152742419
		 103 0.0071735572983229572 104 0.018653490852131999 105 0.023068010800544967 106 0.022582708393128197
		 107 0.019393315235318623 108 0.015410279878380896 109 0.012077231884849993 110 0.010309061383433548
		 111 0.01052201574411786 112 0.012725094444894777 113 0.016640874966096508 114 0.021830297193351191
		 115 0.02780265043016087 116 0.034099776409547887 117 0.040350593453624496 118 0.04629631818995824
		 119 0.051793797962192481 120 0.056800377841362146 121 0.061349850451092057 122 0.065524813608566518
		 123 0.069430485471752762 124 0.073173199242092354 125 2.8484426099436848 126 8.29323490384742
		 127 12.772587965113736 128 13.960440158426696 129 8.6893908381532832 130 -3.665813746704675
		 131 -16.423725749871569 132 -19.349324110085849 133 -14.290808606228708 134 -8.9317614484177863
		 135 -4.3399850147050163 136 -0.85457169712405168 137 1.5311535696470433 138 2.9383489403124607
		 139 3.5200247832868397 140 3.4452396774773613 141 2.8995196344905936 142 2.0788688623081137
		 143 1.171925426023759 144 0.33618338946151022 145 -0.32119219382928593 146 -0.75021147640446373
		 147 -0.95170382980573076 148 -0.96230710909984252 149 -0.83703820207727675 150 -0.63427811890329766
		 151 -0.40547683246649219 152 -0.1897365858721578 153 -0.012260455373606996 154 0.11465171962962908
		 155 0.18920040494902976 156 0.21709987358313837 157 0.2085562218265469 158 0.17556666177556721
		 159 0.12976503759839927 160 0.080928720689939782 161 0.036164870644301225 162 3.0535546138572438
		 163 9.9931728573642147 164 17.477566904735681 165 23.323325668023799 166 26.651354469398171
		 167 27.2155027122487 168 24.699385794737495 169 19.126390436531839 170 11.449416359325385
		 171 2.8449741358366576 172 -5.095149343533941 173 -11.007400721379655 174 -14.011454350851356
		 175 -13.738098930170258 176 -11.098144828428545 177 -7.6693654077766018 178 -4.2565528438224245
		 179 -1.3036200067880794 180 0.97661046496117709 181 2.5081098190986721 182 3.3071731300083473
		 183 3.4636358821795907 184 3.1245964966808919 185 2.4695507376801968 186 1.6788936949339996
		 187 0.90502351620055133 188 0.2543297846256467 189 -0.21735794409312389 190 -0.49844613087402234
		 191 -0.60934739839875673 192 -0.58888735278216198 193 -0.48243690208307294 194 -0.33318333117800142
		 195 -0.17673899446284161 196 -0.038622280945029321 197 0.066088245275128313 198 0.13162204454678952
		 199 0.15951237355069306 200 0.15622153336562491 201 0.1307966438012626 202 0.092851408944629926
		 203 0.051055454466208391 204 0.012197157830037428 205 -0.019208808502015055 206 -0.040876276550654934
		 207 -0.052398629281756717 208 -0.054739262651349728 209 -0.049683117398037747 210 -0.039339140730003101
		 211 -0.025748237940927701 212 -6.7811263334017573 213 -20.820183683277985 214 -31.873905856422844
		 215 -34.046139291336203 216 -29.803436034924541 217 -24.003394633998123 218 -17.579338568334371
		 219 -11.676304744677118 220 -6.3441500541437836 221 -1.2845444000603343 222 3.6907253881447493
		 223 7.8274886317189116 224 9.9194875670002318 225 10.255078263629766 226 9.1919581543879438
		 227 7.1360615549785322 228 4.563462024468266 229 1.98543046008352 230 -0.16643177575679319
		 231 -1.6498735413085828 232 -2.4289022967515108 233 -2.6097761972969442 234 -2.3612156792572851
		 235 -1.8579505413964859 236 -1.2510481083149652 237 -0.65584457426612675 238 -0.14954450731377261
		 239 0.22597242760813219 240 0.45847151236856448 241 0.55819942495352659 242 0.5502180015573247
		 243 0.46702725640843606 244 0.34214831534984252 245 0.20521862285624612 246 0.078913862932766213
		 247 -0.022283757465018969 248 -0.091759654954506109 249 -0.12936772300368402;
	setAttr ".ktv[250:318]" 250 -0.1394939815444062 251 -0.12905067648041288 252 -0.10572308267277986
		 253 -0.076651364247951811 254 -0.04759347399155274 255 -0.02254115890510841 256 -0.003695128812714481
		 257 0.0083021978280972027 258 0.013987964403534218 259 0.014652418428105822 260 0.011931583239806065
		 261 0.0074767940785018753 262 0.0027172411414563779 263 -0.0012722366742445449 264 -0.0038169709575569715
		 265 -0.0046158184789920117 266 -0.0036721211176213402 267 -0.0012010817750519784
		 268 0.0024637404368872415 269 0.0069527379882314538 270 0.01192321484833516 271 0.017098737017217598
		 272 0.022287854028526736 273 0.027386492015308309 274 0.032364148152286679 275 0.037248836464944819
		 276 0.042102251089227563 277 0.047005008451088674 278 0.052035081648527035 279 0.057263013001879706
		 280 0.062738262961331559 281 0.068495417258229663 282 0.074546250195934458 283 0.080893326163678683
		 284 0.087523153554022459 285 0.71295273925839353 286 2.1930946820972976 287 3.9198903292241334
		 288 5.395180852582099 289 6.2697418605922763 290 6.3327193430518367 291 5.4781340514693753
		 292 3.67124559670127 293 1.1815192053331427 294 -1.3854408127260514 295 -3.5864931449298822
		 296 -5.0792613136152136 297 -5.6612843649257751 298 -5.2827413924420821 299 -4.0302447500735328
		 300 -2.4059396475299089 301 -0.96528887880047776 302 0.15445986838374373 303 0.90859934768025197
		 304 1.3150747672712344 305 1.4291202847918687 306 1.3243983156709909 307 1.0791764087797115
		 308 0.76611207552539828 309 0.44238472025499487 310 0.15239425124242942 311 -0.073182988310362324
		 312 -0.22154854403499932 313 -0.29459513641453416 314 -0.30441443530991213 315 -0.26853912748255776
		 316 -0.20576018053394557 317 -0.13302054241048433 328 -0.0037675444008655914;
createNode animCurveTA -n "Face_Rig_Done:REarCtrl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 319 ".ktv";
	setAttr ".ktv[0:249]"  0 3.6172317098547284e-015 1 -2.3424379661986325 2 -7.0830197446681886
		 3 -11.215945674790811 4 -12.847770803108864 5 -10.657058685323332 6 -3.1926437115980217
		 7 8.5529114204826744 8 21.252447461224467 9 30.54474737766564 10 32.918395735544131
		 11 26.805375849569938 12 16.624855137432519 13 8.1098307828677783 14 1.937246904528884
		 15 -2.0510548658944949 16 -4.2776271584105245 17 -5.158154870485216 18 -5.0458577400146627
		 19 -4.2493847362078441 20 -3.0544970380515366 21 -1.7256160860601033 22 -0.48677449978263126
		 23 0.50401969041885442 24 1.1875004061858363 25 1.5639722577014188 26 1.6638658088645295
		 27 1.5520219945190199 28 1.3050724452224918 29 0.9948753868432304 30 0.67916187244278636
		 31 0.39807148768681128 32 0.17459941006073881 33 0.01717522030555492 34 -0.076811440658380706
		 35 -0.11730726742803212 36 -0.11813500907021839 37 -0.094063068895678378 38 -0.058568688388839732
		 39 -0.022392490596603067 40 0.0071406756001802085 41 0.026136217189953785 42 0.033661506829454957
		 43 0.030992101590349357 44 0.020769640338991712 45 0.0062183073560166157 46 -0.0094827862664168313
		 47 -0.023631138923554035 48 -0.034234173967030851 49 -0.04007298651878001 50 -0.040639656129397933
		 51 -0.035994829983329313 52 -0.02658914474970403 53 -0.01308402246210073 54 -0.47932629172308144
		 55 -1.9916448547204282 56 -4.5637504705495955 57 -8.0757233152301193 58 -12.272684822038894
		 59 -17.836780120900904 60 -23.360948669238606 61 -26.402867380302418 62 -25.28830811296589
		 63 -21.297834353354222 64 -15.786355574908804 65 -8.0892858834791515 66 0.13396214972985934
		 67 6.101871184226539 68 8.9110649662420762 69 9.6434660566900803 70 8.9648982545546367
		 71 7.3393293418429693 72 5.1609250254508892 73 2.8073365876051515 74 0.62913295736879871
		 75 -1.0986317987847467 76 -2.2236843560541804 77 -2.7304294633081261 78 -2.7141696351485005
		 79 -2.3321555524786013 80 -1.7538369794606363 81 -1.1253098987087258 82 -0.55204683191580084
		 83 -0.096387721127323231 84 0.21637951472274417 85 0.38860320732065856 86 0.44067261087217391
		 87 0.40263814937206199 88 0.30747267487274177 89 0.18601759406121365 90 0.063597806858682646
		 91 -0.041777756667200183 92 -0.11978624777218028 93 -0.16701761312037722 94 -0.18544535004103541
		 95 -0.18055801735350752 96 -0.15953056494825127 97 -0.12969145539648444 98 -0.097433465883874235
		 99 -0.067591613599927228 100 -0.043234210830434959 101 -0.025767819101518336 102 -0.015243475537341051
		 103 -0.010757412625816622 104 -0.010865737344552815 105 -0.013946697655622273 106 -0.018480267958532231
		 107 -0.023229823047503428 108 -0.027330155789815635 109 -0.030297598495123992 110 -0.031982848263407887
		 111 -0.032492785489794146 112 -0.0320980142851372 113 -0.031145914870104863 114 -0.029988808435315924
		 115 -0.02893297499963645 116 -0.028209440082571143 117 -0.027964261797245551 118 -0.028262890960362091
		 119 -0.029106019682241538 120 -0.030448337200996885 121 -0.032218788465855436 122 -0.034338227614423421
		 123 -0.036732897619963595 124 -0.039343093088897246 125 -0.43159481660414112 126 -1.1458151669324477
		 127 -1.0801032347933519 128 1.5861049243490906 129 8.7820915081394979 130 16.809853985547569
		 131 19.477062799247538 132 14.031718672499604 133 5.8651224709620795 134 0.24200529896163989
		 135 -3.0990731179741746 136 -4.7156639631319246 137 -5.1109784795370414 138 -4.6807333666341284
		 139 -3.7399123493715738 140 -2.550299354999654 141 -1.3309391810680644 142 -0.25364390140795401
		 143 0.56738098626426881 144 1.0816552178950043 145 1.2979688453896101 146 1.2692418764115876
		 147 1.0717226557263662 148 0.78500316089639133 149 0.47752113181184719 150 0.19906920340813836
		 151 -0.020698707833911232 152 -0.16987603980670332 153 -0.25006732533100012 154 -0.27174683531002003
		 155 -0.25002784538333356 156 -0.20122038813745216 157 -0.14030756844187128 158 -0.079340779895437114
		 159 -0.026676646513680739 160 0.013081609770029898 161 0.038618483384520598 162 0.045824720650236198
		 163 -0.2804886325170754 164 -1.3125028937732754 165 -2.7834205880739682 166 -3.812364529062672
		 167 -3.296533671483048 168 -0.3629866728126237 169 4.9777905999079906 170 11.192419544047333
		 171 16.527149096383518 172 19.593548804559852 173 19.495594143043711 174 15.902912453557343
		 175 9.2190886759097133 176 2.3341667689269321 177 -2.3102901080652924 178 -4.9430224102887834
		 179 -5.9770424843175984 180 -5.8294041413725282 181 -4.8828937071934853 182 -3.4865266868651559
		 183 -1.9504013125895807 184 -0.52764870233837824 185 0.60622148409076593 186 1.3634143199872677
		 187 1.7372557877996724 188 1.7818122421259872 189 1.5854579781989884 190 1.2460635284014101
		 191 0.85244728778790813 192 0.47365207559287614 193 0.1551495197094977 194 -0.080006802964793122
		 195 -0.22717558248343558 196 -0.29494021723108138 197 -0.29986124599187536 198 -0.26183792042867515
		 199 -0.20043805168242215 200 -0.13234805813029582 201 -0.069941832898565703 202 -0.020844152690687071
		 203 0.011726923334787302 204 0.02810263898286814 205 0.031060343099018766 206 0.024700674616787457
		 207 0.013474118348573488 208 0.0014507674610506316 209 -0.0081358653852103731 210 -0.013089547194039724
		 211 -0.012245950227120304 212 -2.4927632200703149 213 -9.23117434180398 214 -17.953919268403279
		 215 -23.959980049333581 216 -24.692806152067561 217 -22.245160794120455 218 -18.469608739003405
		 219 -14.60124658227546 220 -12.0591207206469 221 -9.7498517916882328 222 -4.776258287771066
		 223 1.665900803929812 224 6.2861862658808381 225 8.9931465346863817 226 9.8713699525267558
		 227 9.1779928713348351 228 7.3417016872545497 229 4.9122431662411579 230 2.4407182459247818
		 231 0.34652869574181844 232 -1.1499259853067532 233 -2.0097418851791113 234 -2.3135255324906709
		 235 -2.1987661760569415 236 -1.8154101441432815 237 -1.2999430882447194 238 -0.76248129345095228
		 239 -0.2819279776246193 240 0.093915614467774231 241 0.34505409290094924 242 0.47392529228757518
		 243 0.49884490786106561 244 0.44715377517863714 245 0.34892547953751291 246 0.23195396996606216
		 247 0.11844151826406138 248 0.023451703810971967 249 -0.045125396637190486;
	setAttr ".ktv[250:318]" 250 -0.085538589602867809 251 -0.10055874318156076
		 252 -0.095709123137200841 253 -0.07764915678454086 254 -0.05289801953205002 255 -0.026966758779509041
		 256 -0.0038959066222981884 257 0.013865368769153685 258 0.025324076372975537 259 0.030645449769541932
		 260 0.030785078395471708 261 0.027118160735389193 262 0.021122608122049316 263 0.014140216723111049
		 264 0.0072300411248989198 265 0.0011037829105310681 266 -0.0038693454659774989 267 -0.007612049667170718
		 268 -0.010261934169528506 269 -0.012087655681531192 270 -0.01341210877894531 271 -0.014550527889220123
		 272 -0.01576855617742038 273 -0.017260596850918283 274 -0.019142624700058845 275 -0.021461181561637972
		 276 -0.024205598251607015 277 -0.027329114168259765 278 -0.030763373386139922 279 -0.034437760887422446
		 280 -0.03828619724817818 281 -0.042259212875218735 282 -0.046321136336493943 283 -0.050456115359207715
		 284 -0.054658571970785261 285 -0.058744680430578032 286 -0.059088266276044403 287 -0.05283608539249747
		 288 -0.024998238293975659 289 0.056055680540590069 290 0.23074915645029845 291 0.53502642224997854
		 292 0.98690485442449172 293 1.7000186022643964 294 2.5857479340669967 295 3.358069780302539
		 296 3.8045358456037928 297 3.8053059368609055 298 3.328615024593446 299 2.4038569400281178
		 300 1.3275810120188656 301 0.43780768817074367 302 -0.21839243595014429 303 -0.64139167322788437
		 304 -0.86012244552936379 305 -0.91801220206352185 306 -0.86339252409321154 307 -0.74272933958303533
		 308 -0.59599913388804582 309 -0.43057240883403874 310 -0.25383882266972252 311 -0.093827941723369335
		 312 0.031859126845483608 313 0.11562352045670712 314 0.15809518944070641 315 0.16562464399960891
		 316 0.14764581099410598 317 0.1143726517724892 328 -0.0043721943030805939;
createNode reference -n "sharedReferenceNode";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 340;
	setAttr -av ".unw" 340;
	setAttr -k on ".etw";
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 10 ".st";
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
	setAttr -s 10 ".s";
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
	setAttr -s 2 ".r";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultRenderGlobals;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".macc";
	setAttr -k on ".macd";
	setAttr -k on ".macq";
	setAttr ".mcfr" 30;
	setAttr -k on ".ifg";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -cb on ".ren";
	setAttr -av -k on ".esr";
	setAttr -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av -k on ".outf";
	setAttr -cb on ".imfkey";
	setAttr -k on ".gama";
	setAttr -k on ".an";
	setAttr -k on ".ar";
	setAttr -av ".bfs";
	setAttr -k on ".me";
	setAttr -k on ".se";
	setAttr -k on ".be";
	setAttr -k on ".ep";
	setAttr -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -k on ".umfn";
	setAttr -k on ".ufe";
	setAttr -cb on ".pff";
	setAttr -cb on ".peie";
	setAttr -cb on ".ifp";
	setAttr -k on ".rv";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -k on ".shs";
	setAttr -av -k on ".lpr";
	setAttr -k on ".gv";
	setAttr -k on ".sv";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".itf";
	setAttr -k on ".shp";
	setAttr -k on ".isp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -k on ".mot";
	setAttr -av -k on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -k on ".pram";
	setAttr -k on ".poam";
	setAttr -k on ".prlm";
	setAttr -k on ".polm";
	setAttr -cb on ".prm";
	setAttr -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -av -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -k on ".mbt";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -k on ".isl";
	setAttr -k on ".ism";
	setAttr -k on ".imb";
	setAttr -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
	setAttr -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -k on ".ope";
	setAttr -k on ".oppf";
	setAttr -cb on ".hbl";
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
	setAttr -k on ".hwfr" 30;
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
connectAttr "Face_Rig_Done:RootCtrl_rotateX.o" "Face_Rig_DoneRN.phl[1]";
connectAttr "Face_Rig_Done:RootCtrl_rotateY.o" "Face_Rig_DoneRN.phl[2]";
connectAttr "Face_Rig_Done:RootCtrl_rotateZ.o" "Face_Rig_DoneRN.phl[3]";
connectAttr "Face_Rig_Done:RootCtrl_translateX.o" "Face_Rig_DoneRN.phl[4]";
connectAttr "Face_Rig_Done:RootCtrl_translateY.o" "Face_Rig_DoneRN.phl[5]";
connectAttr "Face_Rig_Done:RootCtrl_translateZ.o" "Face_Rig_DoneRN.phl[6]";
connectAttr "Face_Rig_Done:NeckCtrl_rotateX.o" "Face_Rig_DoneRN.phl[7]";
connectAttr "Face_Rig_Done:NeckCtrl_rotateY.o" "Face_Rig_DoneRN.phl[8]";
connectAttr "Face_Rig_Done:NeckCtrl_rotateZ.o" "Face_Rig_DoneRN.phl[9]";
connectAttr "Face_Rig_Done:NeckCtrl_translateX.o" "Face_Rig_DoneRN.phl[10]";
connectAttr "Face_Rig_Done:NeckCtrl_translateY.o" "Face_Rig_DoneRN.phl[11]";
connectAttr "Face_Rig_Done:NeckCtrl_translateZ.o" "Face_Rig_DoneRN.phl[12]";
connectAttr "Face_Rig_Done:HeadCtrl_translateX.o" "Face_Rig_DoneRN.phl[13]";
connectAttr "Face_Rig_Done:HeadCtrl_translateY.o" "Face_Rig_DoneRN.phl[14]";
connectAttr "Face_Rig_Done:HeadCtrl_translateZ.o" "Face_Rig_DoneRN.phl[15]";
connectAttr "Face_Rig_Done:HeadCtrl_rotateX.o" "Face_Rig_DoneRN.phl[16]";
connectAttr "Face_Rig_Done:HeadCtrl_rotateY.o" "Face_Rig_DoneRN.phl[17]";
connectAttr "Face_Rig_Done:HeadCtrl_rotateZ.o" "Face_Rig_DoneRN.phl[18]";
connectAttr "Face_Rig_Done:Joystick_MouthSneerCtrl_translateX.o" "Face_Rig_DoneRN.phl[19]"
		;
connectAttr "Face_Rig_Done:Joystick_MouthEmotCtrl_translateX.o" "Face_Rig_DoneRN.phl[20]"
		;
connectAttr "Face_Rig_Done:Joystick_MouthEmotCtrl_translateY.o" "Face_Rig_DoneRN.phl[21]"
		;
connectAttr "Face_Rig_Done:Joystick_MouthCtrl_translateX.o" "Face_Rig_DoneRN.phl[22]"
		;
connectAttr "Face_Rig_Done:Joystick_MouthCtrl_translateY.o" "Face_Rig_DoneRN.phl[23]"
		;
connectAttr "Face_Rig_Done:Joystick_MouthShiftCtrl_translateY.o" "Face_Rig_DoneRN.phl[24]"
		;
connectAttr "Face_Rig_Done:Joystick_MouthShiftCtrl_translateX.o" "Face_Rig_DoneRN.phl[25]"
		;
connectAttr "Face_Rig_Done:Joystick_LBrowCtrl_translateY.o" "Face_Rig_DoneRN.phl[26]"
		;
connectAttr "Face_Rig_Done:Joystick_LBrowCtrl_translateX.o" "Face_Rig_DoneRN.phl[27]"
		;
connectAttr "Face_Rig_Done:Joystick_RBrowCtrl_translateY.o" "Face_Rig_DoneRN.phl[28]"
		;
connectAttr "Face_Rig_Done:Joystick_RBrowCtrl_translateX.o" "Face_Rig_DoneRN.phl[29]"
		;
connectAttr "Face_Rig_Done:Joystick_LUpperEyeLidCtrl_translateY.o" "Face_Rig_DoneRN.phl[30]"
		;
connectAttr "Face_Rig_Done:Joystick_LLowerEyeLidCtrl_translateY.o" "Face_Rig_DoneRN.phl[31]"
		;
connectAttr "Face_Rig_Done:Joystick_LEyesCtrl_translateY.o" "Face_Rig_DoneRN.phl[32]"
		;
connectAttr "Face_Rig_Done:Joystick_LEyesCtrl_translateX.o" "Face_Rig_DoneRN.phl[33]"
		;
connectAttr "Face_Rig_Done:Joystick_RUpperEyeLidCtrl_translateY.o" "Face_Rig_DoneRN.phl[34]"
		;
connectAttr "Face_Rig_Done:Joystick_RLowerEyeLidCtrl_translateY.o" "Face_Rig_DoneRN.phl[35]"
		;
connectAttr "Face_Rig_Done:LEarCtrl_rotateX.o" "Face_Rig_DoneRN.phl[36]";
connectAttr "Face_Rig_Done:LEarCtrl_rotateY.o" "Face_Rig_DoneRN.phl[37]";
connectAttr "Face_Rig_Done:LEarCtrl_rotateZ.o" "Face_Rig_DoneRN.phl[38]";
connectAttr "Face_Rig_Done:REarCtrl_rotateX.o" "Face_Rig_DoneRN.phl[39]";
connectAttr "Face_Rig_Done:REarCtrl_rotateY.o" "Face_Rig_DoneRN.phl[40]";
connectAttr "Face_Rig_Done:REarCtrl_rotateZ.o" "Face_Rig_DoneRN.phl[41]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "sharedReferenceNode.sr" "Face_Rig_DoneRN.sr";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Face_TestAnim.ma
