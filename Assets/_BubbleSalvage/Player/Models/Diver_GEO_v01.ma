//Maya ASCII 2024 scene
//Name: Diver_GEO_v01.ma
//Last modified: Sat, Jan 25, 2025 09:13:30 AM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.1.1";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202304191415-7fa20164c6";
fileInfo "osv" "Windows 11 Home v2009 (Build: 26100)";
fileInfo "UUID" "02962ADA-472A-CEFB-887D-1BB7D5DBF03C";
createNode transform -s -n "persp";
	rename -uid "D6C2A460-4A3B-6227-7770-68B3BF6FA89B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -213.03134217940121 70.632402602415553 549.57491547404334 ;
	setAttr ".r" -type "double3" 2.6616472704236531 -21.800000000000175 1.0704776628591767e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "056BC75B-456E-8FAD-60A7-449F99AE93E0";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 891.67903406710332;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 15.417856908602122 18.636636572363628 0.61868702770193096 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "D458533D-4544-C686-F9DC-9BB30C6C0F6B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "1787EBAB-404E-FAE3-136D-54A354EE1555";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "F867A6C8-424F-5DD6-76F6-3B95A7436612";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -9.2725547714507996 6.2853893122488111 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "4350E36E-4212-EC1C-6C5C-C8BE9C030C72";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 103.41608018113331;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "3C0D85D0-4F70-9EC8-67C5-4BB6D3045784";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "11D2811E-4337-C231-095F-4BBE81253564";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode dagContainer -n "animBot";
	rename -uid "FC07E621-440D-024E-932F-C5AED20FD094";
	addAttr -ci true -sn "animBot" -ln "animBot" -nn "animBot" -dt "string";
	addAttr -ci true -sn "iconSimpleName" -ln "iconSimpleName" -dt "string";
	addAttr -s false -ci true -sn "tempNodes" -ln "tempNodes" -at "message";
	addAttr -s false -ci true -sn "animBot_Anim_Recovery_Scene_ID" -ln "animBot_Anim_Recovery_Scene_ID" 
		-at "message";
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
	setAttr ".animBot" -type "string" "2.5.1";
	setAttr ".iconSimpleName" -type "string" "animBot";
createNode dagContainer -n "animBot_Anim_Recovery_Scene_ID" -p "animBot";
	rename -uid "E1EFDE47-4F94-8229-F352-79B300FB34EE";
	addAttr -ci true -sn "animBot" -ln "animBot" -nn "animBot" -dt "string";
	addAttr -ci true -sn "iconSimpleName" -ln "iconSimpleName" -dt "string";
	addAttr -ci true -sn "sceneID" -ln "sceneID" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ovdt" 2;
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
	setAttr ".animBot" -type "string" "2.5.1";
	setAttr ".iconSimpleName" -type "string" "anim_recovery";
	setAttr ".sceneID" -type "string" "1737788134.384485";
createNode transform -n "diver_geo_01";
	rename -uid "9B74A92A-4F09-E83E-9368-D7926CD6E54E";
	setAttr ".t" -type "double3" 0 60 0 ;
	setAttr ".s" -type "double3" 0.9104459474350306 0.36342970520559192 0.82284696665336687 ;
createNode mesh -n "diver_geo_01Shape" -p "diver_geo_01";
	rename -uid "9B044D01-4B33-629E-94A2-4A88EE32AD55";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.53125 0.59375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 19 ".pt";
	setAttr ".pt[0]" -type "float3" -5.2463365 -26.643503 11.618773 ;
	setAttr ".pt[1]" -type "float3" 3.5378648e-07 -26.643503 16.431425 ;
	setAttr ".pt[2]" -type "float3" 5.2463374 -26.643503 11.618773 ;
	setAttr ".pt[3]" -type "float3" 7.4194393 -26.643503 0 ;
	setAttr ".pt[4]" -type "float3" 5.2463374 -26.643503 -11.618773 ;
	setAttr ".pt[5]" -type "float3" 3.5378648e-07 -26.643503 -16.431425 ;
	setAttr ".pt[6]" -type "float3" -5.2463374 -26.643503 -11.618775 ;
	setAttr ".pt[7]" -type "float3" -7.4194393 -26.643503 0 ;
	setAttr ".pt[12]" -type "float3" 0.020265335 -2.7854819 1.2421045 ;
	setAttr ".pt[13]" -type "float3" 0.020265335 -2.7854819 1.2421045 ;
	setAttr ".pt[14]" -type "float3" 0.020265335 -2.7854819 1.2421045 ;
	setAttr ".pt[24]" -type "float3" 2.7913029 0 0 ;
	setAttr ".pt[25]" -type "float3" 3.9474978 0 0 ;
	setAttr ".pt[26]" -type "float3" 2.8115675 -2.7854819 1.2421045 ;
	setAttr ".pt[27]" -type "float3" 0.02026535 -2.7854819 1.2421045 ;
	setAttr ".pt[28]" -type "float3" -2.7710371 -2.7854819 1.2421045 ;
	setAttr ".pt[29]" -type "float3" -3.9474978 0 0 ;
	setAttr ".pt[30]" -type "float3" -2.7913029 0 0 ;
	setAttr ".pt[31]" -type "float3" 5.4859051e-09 0 0 ;
createNode transform -n "capsule_01";
	rename -uid "9A182FED-4F99-71FC-3187-7F8EE088B352";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 60 0 ;
createNode mesh -n "capsule_01Shape" -p "capsule_01";
	rename -uid "07276C53-478B-3D8A-79E5-1BB4AE3B8003";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:7]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[8:15]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-08 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.6875 0.40625 0.6875 0.4375 0.6875 0.46875 0.6875 0.5 0.6875 0.53125 0.6875
		 0.5625 0.6875 0.59375 0.6875 0.625 0.6875 0.61048543 0.73326457 0.5 0.6875 0.38951457
		 0.73326457 0.34375 0.84375 0.38951457 0.95423543 0.5 1 0.61048543 0.95423543 0.65625
		 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  28.28426743 -60 -28.28426743 0 -60 -39.99999619
		 -28.28426743 -60 -28.28426743 -39.99999619 -60 0 -28.28426743 -60 28.28426743 0 -60 39.99999619
		 28.28427124 -60 28.28427124 40 -60 0 28.28426743 60 -28.28426743 0 60 -39.99999619
		 -28.28426743 60 -28.28426743 -39.99999619 60 0 -28.28426743 60 28.28426743 0 60 39.99999619
		 28.28427124 60 28.28427124 40 60 0;
	setAttr -s 24 ".ed[0:23]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0;
	setAttr -s 10 -ch 48 ".fc[0:9]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 8 9 10 11 12 13 14 15
		mu 0 8 32 31 30 29 28 27 26 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "diver_geo_02";
	rename -uid "069205DD-4D54-D997-A59B-B9A8CE045624";
	setAttr ".t" -type "double3" 44.115579666825539 79.140406229465128 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.3581794270006583 0.333 0.3581794270006583 ;
createNode mesh -n "diver_geo_02Shape" -p "diver_geo_02";
	rename -uid "7AF5E0C9-4A78-C282-9BB4-A29ACE73BBF0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.1562500074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[56]" -type "float3" 0 -24.449739 0 ;
	setAttr ".pt[57]" -type "float3" 0 -24.449739 5.5273137 ;
	setAttr ".pt[58]" -type "float3" 0 -24.449739 -5.5273156 ;
	setAttr ".pt[59]" -type "float3" 0 -24.449739 -7.8168001 ;
	setAttr ".pt[60]" -type "float3" 0 -24.449739 -5.5273137 ;
	setAttr ".pt[61]" -type "float3" 0 -24.449739 0 ;
	setAttr ".pt[62]" -type "float3" 0 -24.449739 5.5273137 ;
	setAttr ".pt[63]" -type "float3" 0 -24.449739 7.8168001 ;
createNode mesh -n "polySurfaceShape1" -p "diver_geo_02";
	rename -uid "555C79EA-4E91-15B9-1DF6-11BC43F08197";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "e[16:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:7]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[8:15]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-08 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.6875 0.40625 0.6875 0.4375 0.6875 0.46875 0.6875 0.5 0.6875 0.53125 0.6875
		 0.5625 0.6875 0.59375 0.6875 0.625 0.6875 0.61048543 0.73326457 0.5 0.6875 0.38951457
		 0.73326457 0.34375 0.84375 0.38951457 0.95423543 0.5 1 0.61048543 0.95423543 0.65625
		 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  28.28426743 -60 -28.28426743 0 -60 -39.99999619
		 -28.28426743 -60 -28.28426743 -39.99999619 -60 0 -28.28426743 -60 28.28426743 0 -60 39.99999619
		 28.28427124 -60 28.28427124 40 -60 0 28.28426743 60 -28.28426743 0 60 -39.99999619
		 -28.28426743 60 -28.28426743 -39.99999619 60 0 -28.28426743 60 28.28426743 0 60 39.99999619
		 28.28427124 60 28.28427124 40 60 0;
	setAttr -s 24 ".ed[0:23]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0;
	setAttr -s 10 -ch 48 ".fc[0:9]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 8 9 10 11 12 13 14 15
		mu 0 8 32 31 30 29 28 27 26 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "diver_geo_03";
	rename -uid "51257A35-41C7-107C-BC01-74A449C1C5EC";
	setAttr ".t" -type "double3" 15.417856351224884 18.636636572363628 0.61868702770193096 ;
	setAttr ".s" -type "double3" 0.29222619817018641 0.35875569896697779 0.29222619817018641 ;
createNode mesh -n "diver_geo_03Shape" -p "diver_geo_03";
	rename -uid "0ABA8E31-486F-6691-6416-DEA3F5B0B4CE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:7]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[8:15]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-08 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.6875 0.40625 0.6875 0.4375 0.6875 0.46875 0.6875 0.5 0.6875 0.53125 0.6875
		 0.5625 0.6875 0.59375 0.6875 0.625 0.6875 0.61048543 0.73326457 0.5 0.6875 0.38951457
		 0.73326457 0.34375 0.84375 0.38951457 0.95423543 0.5 1 0.61048543 0.95423543 0.65625
		 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  28.28426743 -60 -28.28426743 0 -60 -39.99999619
		 -28.28426743 -60 -28.28426743 -39.99999619 -60 0 -28.28426743 -60 28.28426743 0 -60 39.99999619
		 28.28427124 -60 28.28427124 40 -60 0 28.28426743 60 -28.28426743 0 60 -39.99999619
		 -28.28426743 60 -28.28426743 -39.99999619 60 0 -28.28426743 60 28.28426743 0 60 39.99999619
		 28.28427124 60 28.28427124 40 60 0;
	setAttr -s 24 ".ed[0:23]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0;
	setAttr -s 10 -ch 48 ".fc[0:9]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 8 9 10 11 12 13 14 15
		mu 0 8 32 31 30 29 28 27 26 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere1";
	rename -uid "A5DD24B0-4FBA-306D-3638-DA9A4BDA721D";
	setAttr ".t" -type "double3" 0 126.12562659602528 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 39.198542435812229 39.198542435812229 39.198542435812229 ;
createNode transform -n "transform1" -p "pSphere1";
	rename -uid "CCD27D38-4B12-EC18-D236-F885DD4D61E5";
	setAttr ".v" no;
createNode mesh -n "pSphereShape1" -p "transform1";
	rename -uid "CA7CF5EB-4A96-D4D0-F49B-18A554FF991C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.70000001788139343 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pTorus1";
	rename -uid "4BCFDD3F-49FB-38F4-FAD3-68B1125F6A77";
	setAttr ".t" -type "double3" 0 126.49527394304889 52.638592577577 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode transform -n "transform2" -p "pTorus1";
	rename -uid "308093EE-436F-899B-0CBD-F0B64D7CA123";
	setAttr ".v" no;
createNode mesh -n "pTorusShape1" -p "transform2";
	rename -uid "1DAAAB28-4AB1-2B38-6D92-AC8A3711E2C8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".pt";
	setAttr ".pt[72]" -type "float3" 0 -5.8748422 1.4210855e-14 ;
	setAttr ".pt[73]" -type "float3" 0 -5.8748422 1.4210855e-14 ;
	setAttr ".pt[74]" -type "float3" 0 -5.8748422 1.4210855e-14 ;
	setAttr ".pt[75]" -type "float3" 0 -5.8748422 1.4210855e-14 ;
	setAttr ".pt[76]" -type "float3" 0 -5.8748422 1.4210855e-14 ;
	setAttr ".pt[77]" -type "float3" 0 -5.8748422 1.4210855e-14 ;
	setAttr ".pt[78]" -type "float3" 0 -5.8748422 1.4210855e-14 ;
	setAttr ".pt[79]" -type "float3" 0 -5.8748422 1.4210855e-14 ;
	setAttr ".pt[80]" -type "float3" 0 -5.8748422 1.4210855e-14 ;
	setAttr ".pt[81]" -type "float3" 0 -5.8748422 1.4210855e-14 ;
	setAttr ".pt[82]" -type "float3" 0 -5.8748422 1.4210855e-14 ;
	setAttr ".pt[83]" -type "float3" 0 -5.8748422 1.4210855e-14 ;
createNode transform -n "pTorus2";
	rename -uid "5F20382C-484A-7ACC-A007-22AFB4AF4436";
	setAttr ".rp" -type "double3" 4.6728303928489368e-06 126.12563594168607 8.2138672160417983 ;
	setAttr ".sp" -type "double3" 4.6728303928489368e-06 126.12563594168607 8.2138672160417983 ;
createNode mesh -n "pTorus2Shape" -p "pTorus2";
	rename -uid "0CC35095-48CD-F4D8-A999-C69202142DDF";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.60000002384185791 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt";
	setAttr ".pt[81]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[82]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[83]" -type "float3" 0 0 2.3841858e-07 ;
	setAttr ".pt[85]" -type "float3" 0 0 2.1122434 ;
	setAttr ".pt[86]" -type "float3" 0 0 2.1122434 ;
	setAttr ".pt[87]" -type "float3" 0 0 2.1122434 ;
	setAttr ".pt[93]" -type "float3" 5.4919615 0 2.1122434 ;
	setAttr ".pt[94]" -type "float3" 0 3.9238524 2.1122434 ;
	setAttr ".pt[95]" -type "float3" -5.4919615 0 2.1122434 ;
	setAttr ".pt[97]" -type "float3" 0 7.1525574e-07 -9.2502861 ;
	setAttr ".pt[98]" -type "float3" 0 0 -9.2502861 ;
	setAttr ".pt[99]" -type "float3" 5.853076 0 0 ;
	setAttr ".pt[100]" -type "float3" -5.8530731 0 0 ;
	setAttr ".pt[101]" -type "float3" 0 0 2.5199599 ;
	setAttr ".pt[102]" -type "float3" 0 3.0176246 -3.4896815 ;
	setAttr ".pt[104]" -type "float3" 1.165323 3.9946411 6.1470966 ;
	setAttr ".pt[105]" -type "float3" 0 3.9238524 0 ;
	setAttr ".pt[106]" -type "float3" 1.165323 3.9946411 6.1470966 ;
createNode transform -n "pSphere2";
	rename -uid "34E3AFB5-482D-F9B3-D177-6585140FF3C3";
	setAttr ".t" -type "double3" -12.900249630352686 122.02437649713302 50.344302521454352 ;
	setAttr ".s" -type "double3" 4.598244498191721 4.598244498191721 4.598244498191721 ;
createNode mesh -n "pSphereShape2" -p "pSphere2";
	rename -uid "0E895B27-49BC-3B23-5988-0EB7B83F007C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000000157108504 0.50000001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt";
	setAttr ".pt[12]" -type "float3" 0 1.4231044 0 ;
	setAttr ".pt[13]" -type "float3" 0 1.4231044 0 ;
	setAttr ".pt[14]" -type "float3" 0 1.4231044 0 ;
	setAttr ".pt[15]" -type "float3" 0 1.4231044 0 ;
	setAttr ".pt[16]" -type "float3" 0 1.4231044 0 ;
	setAttr ".pt[17]" -type "float3" 0 1.4231044 0 ;
	setAttr ".pt[18]" -type "float3" 0 1.4231044 0 ;
	setAttr ".pt[19]" -type "float3" 0 1.4231044 0 ;
	setAttr ".pt[20]" -type "float3" 0 1.4231044 0 ;
	setAttr ".pt[21]" -type "float3" 0 1.4231044 0 ;
	setAttr ".pt[22]" -type "float3" 0 1.4231044 0 ;
	setAttr ".pt[23]" -type "float3" 0 1.4231044 0 ;
	setAttr ".pt[25]" -type "float3" 0 1.4231044 0 ;
	setAttr ".pt[26]" -type "float3" 0.06486433 0.26693302 -0.11234827 ;
	setAttr ".pt[27]" -type "float3" 0.06486433 1.156171 -0.11234827 ;
	setAttr ".pt[28]" -type "float3" -0.064864293 0.26693302 -0.11234828 ;
	setAttr ".pt[29]" -type "float3" -0.064864293 1.156171 -0.11234828 ;
	setAttr ".pt[30]" -type "float3" -0.12972859 0.26693302 -1.5187306e-08 ;
	setAttr ".pt[31]" -type "float3" -0.12972859 1.156171 -1.5187306e-08 ;
	setAttr ".pt[32]" -type "float3" -0.064864315 0.26693302 0.1123483 ;
	setAttr ".pt[33]" -type "float3" -0.064864315 1.156171 0.1123483 ;
	setAttr ".pt[34]" -type "float3" 0.064864293 0.26693302 0.1123483 ;
	setAttr ".pt[35]" -type "float3" 0.064864293 1.156171 0.1123483 ;
	setAttr ".pt[36]" -type "float3" 0.12972859 0.26693302 4.1437658e-09 ;
	setAttr ".pt[37]" -type "float3" 0.12972859 1.156171 4.1437658e-09 ;
createNode transform -n "pSphere3";
	rename -uid "093340AB-4279-2BBB-94C1-24BDA57D9BFE";
	setAttr ".t" -type "double3" 12.150418588443603 122.02437649713302 50.344302521454352 ;
	setAttr ".s" -type "double3" 4.598244498191721 4.598244498191721 4.598244498191721 ;
createNode mesh -n "pSphereShape3" -p "pSphere3";
	rename -uid "2B8BC571-4653-8BB5-5D71-D8AB58704051";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000000157108504 0.50000001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0 0.16666667 0.16666667
		 0.16666667 0.33333334 0.16666667 0.5 0.16666667 0.66666669 0.16666667 0.83333337
		 0.16666667 1 0.16666667 0 0.33333334 1 0.66666669 0 0.83333337 0.16666667 0.83333337
		 0.33333334 0.83333337 0.5 0.83333337 0.66666669 0.83333337 0.83333337 0.83333337
		 1 0.83333337 0.083333336 0 0.25 0 0.41666669 0 0.58333331 0 0.75 0 0.91666669 0 0.083333336
		 1 0.25 1 0.41666669 1 0.58333331 1 0.75 1 0.91666669 1 1 0.416675 3.5349417e-09 0.58332503
		 0.16666667 0.33333337 3.1421701e-09 0.416675 0.33333334 0.33333334 0.16666669 0.416675
		 0.5 0.33333337 0.33333334 0.416675 0.66666669 0.33333337 0.5 0.41667503 0.83333337
		 0.33333337 0.66666669 0.416675 1 0.33333334 0.83333337 0.416675 0.16666669 0.58332503
		 6.3145644e-10 0.66666663 0.33333334 0.58332503 0.16666667 0.66666663 0.5 0.58332503
		 0.33333334 0.66666669 0.66666669 0.58332503 0.5 0.66666663 0.83333337 0.58332503
		 0.66666669 0.66666663 1 0.58332503 0.83333337 0.66666669;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt";
	setAttr ".pt[12]" -type "float3" 0 1.4231044 0 ;
	setAttr ".pt[13]" -type "float3" 0 1.4231044 0 ;
	setAttr ".pt[14]" -type "float3" 0 1.4231044 0 ;
	setAttr ".pt[15]" -type "float3" 0 1.4231044 0 ;
	setAttr ".pt[16]" -type "float3" 0 1.4231044 0 ;
	setAttr ".pt[17]" -type "float3" 0 1.4231044 0 ;
	setAttr ".pt[18]" -type "float3" 0 1.4231044 0 ;
	setAttr ".pt[19]" -type "float3" 0 1.4231044 0 ;
	setAttr ".pt[20]" -type "float3" 0 1.4231044 0 ;
	setAttr ".pt[21]" -type "float3" 0 1.4231044 0 ;
	setAttr ".pt[22]" -type "float3" 0 1.4231044 0 ;
	setAttr ".pt[23]" -type "float3" 0 1.4231044 0 ;
	setAttr ".pt[25]" -type "float3" 0 1.4231044 0 ;
	setAttr ".pt[26]" -type "float3" 0.06486433 0.26693302 -0.11234827 ;
	setAttr ".pt[27]" -type "float3" 0.06486433 1.156171 -0.11234827 ;
	setAttr ".pt[28]" -type "float3" -0.064864293 0.26693302 -0.11234828 ;
	setAttr ".pt[29]" -type "float3" -0.064864293 1.156171 -0.11234828 ;
	setAttr ".pt[30]" -type "float3" -0.12972859 0.26693302 -1.5187306e-08 ;
	setAttr ".pt[31]" -type "float3" -0.12972859 1.156171 -1.5187306e-08 ;
	setAttr ".pt[32]" -type "float3" -0.064864315 0.26693302 0.1123483 ;
	setAttr ".pt[33]" -type "float3" -0.064864315 1.156171 0.1123483 ;
	setAttr ".pt[34]" -type "float3" 0.064864293 0.26693302 0.1123483 ;
	setAttr ".pt[35]" -type "float3" 0.064864293 1.156171 0.1123483 ;
	setAttr ".pt[36]" -type "float3" 0.12972859 0.26693302 4.1437658e-09 ;
	setAttr ".pt[37]" -type "float3" 0.12972859 1.156171 4.1437658e-09 ;
	setAttr -s 38 ".vt[0:37]"  0.25000012 -0.86602539 -0.43301266 -0.2499999 -0.86602539 -0.43301269
		 -0.5 -0.86602539 -7.4505806e-08 -0.25000006 -0.86602539 0.43301269 0.24999996 -0.86602539 0.43301269
		 0.5 -0.86602539 0 0.43301293 -0.49999991 -0.74999988 -0.43301257 -0.49999991 -0.75000012
		 -0.86602539 -0.49999991 -1.2904783e-07 -0.43301281 -0.49999991 0.74999988 0.43301269 -0.49999991 0.75000006
		 0.86602539 -0.49999991 0 0.43301293 0.49999991 -0.74999988 -0.43301257 0.49999991 -0.75000012
		 -0.86602539 0.49999991 -1.2904783e-07 -0.43301281 0.49999991 0.74999988 0.43301269 0.49999991 0.75000006
		 0.86602539 0.49999991 0 0.25000012 0.86602539 -0.43301266 -0.2499999 0.86602539 -0.43301269
		 -0.5 0.86602539 -7.4505806e-08 -0.25000006 0.86602539 0.43301269 0.24999996 0.86602539 0.43301269
		 0.5 0.86602539 0 0 -1 0 0 1 0 0.46650988 -0.24997498 -0.80801845 0.46650988 0.24997498 -0.80801845
		 -0.46650958 -0.24997498 -0.80801857 -0.46650958 0.24997498 -0.80801857 -0.93301928 -0.24997498 -1.3903073e-07
		 -0.93301928 0.24997498 -1.3903073e-07 -0.46650976 -0.24997498 0.80801851 -0.46650976 0.24997498 0.80801851
		 0.46650964 -0.24997498 0.80801851 0.46650964 0.24997498 0.80801851 0.93301928 -0.24997498 0
		 0.93301928 0.24997498 0;
	setAttr -s 78 ".ed[0:77]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 1
		 7 8 1 8 9 1 9 10 1 10 11 1 11 6 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 12 1
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 18 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0
		 12 18 0 13 19 0 14 20 0 15 21 0 16 22 0 17 23 0 24 0 0 24 1 0 24 2 0 24 3 0 24 4 0
		 24 5 0 18 25 0 19 25 0 20 25 0 21 25 0 22 25 0 23 25 0 26 27 0 27 37 1 37 36 0 36 26 1
		 26 28 1 28 29 0 29 27 1 28 30 1 30 31 0 31 29 1 30 32 1 32 33 0 33 31 1 32 34 1 34 35 0
		 35 33 1 34 36 1 37 35 1 7 28 0 26 6 0 8 30 0 9 32 0 10 34 0 11 36 0 29 13 0 12 27 0
		 31 14 0 33 15 0 35 16 0 37 17 0;
	setAttr -s 42 -ch 156 ".fc[0:41]" -type "polyFaces" 
		f 4 0 25 -7 -25
		mu 0 4 0 1 30 7
		f 4 1 26 -8 -26
		mu 0 4 1 2 32 30
		f 4 2 27 -9 -27
		mu 0 4 2 3 34 32
		f 4 3 28 -10 -28
		mu 0 4 3 4 36 34
		f 4 4 29 -11 -29
		mu 0 4 4 5 38 36
		f 4 5 24 -12 -30
		mu 0 4 5 6 40 38
		f 4 12 31 -19 -31
		mu 0 4 43 45 10 9
		f 4 13 32 -20 -32
		mu 0 4 45 47 11 10
		f 4 14 33 -21 -33
		mu 0 4 47 49 12 11
		f 4 15 34 -22 -34
		mu 0 4 49 51 13 12
		f 4 16 35 -23 -35
		mu 0 4 51 53 14 13
		f 4 17 30 -24 -36
		mu 0 4 53 8 15 14
		f 3 -1 -37 37
		mu 0 3 1 0 16
		f 3 -2 -38 38
		mu 0 3 2 1 17
		f 3 -3 -39 39
		mu 0 3 3 2 18
		f 3 -4 -40 40
		mu 0 3 4 3 19
		f 3 -5 -41 41
		mu 0 3 5 4 20
		f 3 -6 -42 36
		mu 0 3 6 5 21
		f 3 18 43 -43
		mu 0 3 9 10 22
		f 3 19 44 -44
		mu 0 3 10 11 23
		f 3 20 45 -45
		mu 0 3 11 12 24
		f 3 21 46 -46
		mu 0 3 12 13 25
		f 3 22 47 -47
		mu 0 3 13 14 26
		f 3 23 42 -48
		mu 0 3 14 15 27
		f 4 48 49 50 51
		mu 0 4 28 52 50 41
		f 4 -49 52 53 54
		mu 0 4 29 31 33 42
		f 4 -54 55 56 57
		mu 0 4 42 33 35 44
		f 4 -57 58 59 60
		mu 0 4 44 35 37 46
		f 4 -60 61 62 63
		mu 0 4 46 37 39 48
		f 4 -63 64 -51 65
		mu 0 4 48 39 41 50
		f 4 6 66 -53 67
		mu 0 4 7 30 33 31
		f 4 7 68 -56 -67
		mu 0 4 30 32 35 33
		f 4 8 69 -59 -69
		mu 0 4 32 34 37 35
		f 4 9 70 -62 -70
		mu 0 4 34 36 39 37
		f 4 10 71 -65 -71
		mu 0 4 36 38 41 39
		f 4 11 -68 -52 -72
		mu 0 4 38 40 28 41
		f 4 -55 72 -13 73
		mu 0 4 29 42 45 43
		f 4 -58 74 -14 -73
		mu 0 4 42 44 47 45
		f 4 -61 75 -15 -75
		mu 0 4 44 46 49 47
		f 4 -64 76 -16 -76
		mu 0 4 46 48 51 49
		f 4 -66 77 -17 -77
		mu 0 4 48 50 53 51
		f 4 -50 -74 -18 -78
		mu 0 4 50 52 8 53;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "diver_geo_04";
	rename -uid "78307839-488A-DB0E-40D1-C4B952C1C93E";
	setAttr ".t" -type "double3" -43.630468142938263 79.140406229465128 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.3581794270006583 -0.333 0.3581794270006583 ;
createNode mesh -n "diver_geo_04Shape" -p "diver_geo_04";
	rename -uid "EB5424AA-4735-BB54-688A-A690E1FA405E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[8]" "f[18:57]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 2 "f[0:7]" "f[10:17]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[8:15]";
	setAttr ".pv" -type "double2" 0.5 0.1562500074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 83 ".uvst[0].uvsp[0:82]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-08 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.6875 0.40625 0.6875 0.4375 0.6875 0.46875 0.6875 0.5 0.6875 0.53125 0.6875
		 0.5625 0.6875 0.59375 0.6875 0.625 0.6875 0.61048543 0.73326457 0.5 0.6875 0.38951457
		 0.73326457 0.34375 0.84375 0.38951457 0.95423543 0.5 1 0.61048543 0.95423543 0.65625
		 0.84375 0.625 0.5 0.375 0.5 0.59375 0.5 0.5625 0.5 0.53125 0.5 0.5 0.5 0.46875 0.5
		 0.4375 0.5 0.40625 0.5 0.61048543 0.04576458 0.65625 0.15625 0.61048543 0.26673543
		 0.5 0.3125 0.38951457 0.26673543 0.34375 0.15625 0.38951457 0.04576458 0.5 1.4901161e-08
		 0.61048543 0.04576458 0.65625 0.15625 0.61048543 0.26673543 0.5 0.3125 0.38951457
		 0.26673543 0.34375 0.15625 0.38951457 0.04576458 0.5 1.4901161e-08 0.61048543 0.04576458
		 0.65625 0.15625 0.61048543 0.26673543 0.5 0.3125 0.38951457 0.26673543 0.34375 0.15625
		 0.38951457 0.04576458 0.5 1.4901161e-08 0.61048543 0.04576458 0.65625 0.15625 0.61048543
		 0.26673543 0.5 0.3125 0.38951457 0.26673543 0.34375 0.15625 0.38951457 0.04576458
		 0.5 1.4901161e-08 0.61048543 0.04576458 0.65625 0.15625 0.61048543 0.26673543 0.5
		 0.3125 0.38951457 0.26673543 0.34375 0.15625 0.38951457 0.04576458 0.5 1.4901161e-08;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[56]" -type "float3" 0 -24.449739 0 ;
	setAttr ".pt[57]" -type "float3" 0 -24.449739 5.5273137 ;
	setAttr ".pt[58]" -type "float3" 0 -24.449739 -5.5273156 ;
	setAttr ".pt[59]" -type "float3" 0 -24.449739 -7.8168001 ;
	setAttr ".pt[60]" -type "float3" 0 -24.449739 -5.5273137 ;
	setAttr ".pt[61]" -type "float3" 0 -24.449739 0 ;
	setAttr ".pt[62]" -type "float3" 0 -24.449739 5.5273137 ;
	setAttr ".pt[63]" -type "float3" 0 -24.449739 7.8168001 ;
	setAttr -s 64 ".vt[0:63]"  17.77359009 -41.51373291 -17.77358818 0 -41.51373291 -25.13565063
		 -17.77359009 -41.51373291 -17.77358818 -25.13565063 -41.51373291 0 -17.77359009 -41.51373291 17.77358818
		 0 -41.51373291 25.13565063 17.77359009 -41.51373291 17.77359581 25.13565063 -41.51373291 0
		 28.28427124 60 -28.28426552 0 60 -39.99999619 -28.28427124 60 -28.28426552 -39.99998474 60 0
		 -28.28427124 60 28.28426552 0 60 39.99999619 28.28427124 60 28.28427124 40 60 0 17.79959106 0 -17.79961014
		 25.17245483 0 0 17.79962158 0 17.79961395 0 0 25.17245483 -17.79960632 0 17.79961014
		 -25.17247009 0 0 -17.79960632 0 -17.79961014 0 0 -25.17245483 19.37973022 -57.76853943 0
		 13.70353699 -57.76853943 -13.70353794 13.70353699 -57.76853943 13.70354271 0 -57.76853943 19.37973022
		 -13.70353699 -57.76853943 13.70353794 -19.37973022 -57.76853943 0 -13.70353699 -57.76853943 -13.70353794
		 0 -57.76853943 -19.37973022 19.37973022 -79.7518158 0 13.70353699 -79.7518158 -13.70353794
		 13.70353699 -79.7518158 13.70354271 0 -79.7518158 19.37973022 -13.70353699 -79.7518158 13.70353794
		 -19.37973022 -79.7518158 0 -13.70353699 -79.7518158 -13.70353794 0 -79.7518158 -19.37973022
		 15.6277771 -83.97679138 0 11.050521851 -83.97679138 -11.050510406 11.050521851 -83.97679138 11.050515175
		 0 -83.97679138 15.62778282 -11.050521851 -83.97679138 11.050510406 -15.6277771 -83.97679138 0
		 -11.050521851 -83.97679138 -11.050510406 0 -83.97679138 -15.62778282 9.89497375 -110.77772522 0
		 6.99679565 -110.77772522 -15.63449287 6.99679565 -110.77772522 15.6345005 0 -110.77772522 22.11051178
		 -6.99681091 -110.77772522 15.63449287 -9.89497375 -110.77772522 0 -6.99681091 -110.77772522 -15.63449287
		 0 -110.77772522 -22.11051178 9.89497375 -110.77772522 0 6.99679565 -110.77772522 -15.63449287
		 6.99679565 -110.77772522 15.6345005 0 -110.77772522 22.11051178 -6.99681091 -110.77772522 15.63449287
		 -9.89497375 -110.77772522 0 -6.99681091 -110.77772522 -15.63449287 0 -110.77772522 -22.11051178;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 16 0 1 23 0 2 22 0
		 3 21 0 4 20 0 5 19 0 6 18 0 7 17 0 16 8 0 17 15 0 18 14 0 19 13 0 20 12 0 21 11 0
		 22 10 0 23 9 0 16 17 1 17 18 1 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 23 16 1 7 24 0
		 0 25 0 24 25 0 6 26 0 26 24 0 5 27 0 27 26 0 4 28 0 28 27 0 3 29 0 29 28 0 2 30 0
		 30 29 0 1 31 0 31 30 0 25 31 0 24 32 0 25 33 0 32 33 0 26 34 0 34 32 0 27 35 0 35 34 0
		 28 36 0 36 35 0 29 37 0 37 36 0 30 38 0 38 37 0 31 39 0 39 38 0 33 39 0 32 40 0 33 41 0
		 40 41 0 34 42 0 42 40 0 35 43 0 43 42 0 36 44 0 44 43 0 37 45 0 45 44 0 38 46 0 46 45 0
		 39 47 0 47 46 0 41 47 0 40 48 0 41 49 0 48 49 0 42 50 0 50 48 0 43 51 0 51 50 0 44 52 0
		 52 51 0 45 53 0 53 52 0 46 54 0 54 53 0 47 55 0 55 54 0 49 55 0 48 56 0 49 57 0 56 57 0
		 50 58 0 58 56 0 51 59 0 59 58 0 52 60 0 60 59 0 53 61 0 61 60 0 54 62 0 62 61 0 55 63 0
		 63 62 0 57 63 0;
	setAttr -s 58 -ch 240 ".fc[0:57]" -type "polyFaces" 
		f 4 0 17 39 -17
		mu 0 4 8 9 42 35
		f 4 1 18 38 -18
		mu 0 4 9 10 41 42
		f 4 2 19 37 -19
		mu 0 4 10 11 40 41
		f 4 3 20 36 -20
		mu 0 4 11 12 39 40
		f 4 4 21 35 -21
		mu 0 4 12 13 38 39
		f 4 5 22 34 -22
		mu 0 4 13 14 37 38
		f 4 6 23 33 -23
		mu 0 4 14 15 36 37
		f 4 7 16 32 -24
		mu 0 4 15 16 34 36
		f 8 -107 -109 -111 -113 -115 -117 -119 -120
		mu 0 8 75 76 77 78 79 80 81 82
		f 8 8 9 10 11 12 13 14 15
		mu 0 8 32 31 30 29 28 27 26 33
		f 4 -33 24 -16 -26
		mu 0 4 36 34 25 24
		f 4 -34 25 -15 -27
		mu 0 4 37 36 24 23
		f 4 -35 26 -14 -28
		mu 0 4 38 37 23 22
		f 4 -36 27 -13 -29
		mu 0 4 39 38 22 21
		f 4 -37 28 -12 -30
		mu 0 4 40 39 21 20
		f 4 -38 29 -11 -31
		mu 0 4 41 40 20 19
		f 4 -39 30 -10 -32
		mu 0 4 42 41 19 18
		f 4 -40 31 -9 -25
		mu 0 4 35 42 18 17
		f 4 -8 40 42 -42
		mu 0 4 0 7 44 43
		f 4 -7 43 44 -41
		mu 0 4 7 6 45 44
		f 4 -6 45 46 -44
		mu 0 4 6 5 46 45
		f 4 -5 47 48 -46
		mu 0 4 5 4 47 46
		f 4 -4 49 50 -48
		mu 0 4 4 3 48 47
		f 4 -3 51 52 -50
		mu 0 4 3 2 49 48
		f 4 -2 53 54 -52
		mu 0 4 2 1 50 49
		f 4 -1 41 55 -54
		mu 0 4 1 0 43 50
		f 4 -43 56 58 -58
		mu 0 4 43 44 52 51
		f 4 -45 59 60 -57
		mu 0 4 44 45 53 52
		f 4 -47 61 62 -60
		mu 0 4 45 46 54 53
		f 4 -49 63 64 -62
		mu 0 4 46 47 55 54
		f 4 -51 65 66 -64
		mu 0 4 47 48 56 55
		f 4 -53 67 68 -66
		mu 0 4 48 49 57 56
		f 4 -55 69 70 -68
		mu 0 4 49 50 58 57
		f 4 -56 57 71 -70
		mu 0 4 50 43 51 58
		f 4 -59 72 74 -74
		mu 0 4 51 52 60 59
		f 4 -61 75 76 -73
		mu 0 4 52 53 61 60
		f 4 -63 77 78 -76
		mu 0 4 53 54 62 61
		f 4 -65 79 80 -78
		mu 0 4 54 55 63 62
		f 4 -67 81 82 -80
		mu 0 4 55 56 64 63
		f 4 -69 83 84 -82
		mu 0 4 56 57 65 64
		f 4 -71 85 86 -84
		mu 0 4 57 58 66 65
		f 4 -72 73 87 -86
		mu 0 4 58 51 59 66
		f 4 -75 88 90 -90
		mu 0 4 59 60 68 67
		f 4 -77 91 92 -89
		mu 0 4 60 61 69 68
		f 4 -79 93 94 -92
		mu 0 4 61 62 70 69
		f 4 -81 95 96 -94
		mu 0 4 62 63 71 70
		f 4 -83 97 98 -96
		mu 0 4 63 64 72 71
		f 4 -85 99 100 -98
		mu 0 4 64 65 73 72
		f 4 -87 101 102 -100
		mu 0 4 65 66 74 73
		f 4 -88 89 103 -102
		mu 0 4 66 59 67 74
		f 4 -91 104 106 -106
		mu 0 4 67 68 76 75
		f 4 -93 107 108 -105
		mu 0 4 68 69 77 76
		f 4 -95 109 110 -108
		mu 0 4 69 70 78 77
		f 4 -97 111 112 -110
		mu 0 4 70 71 79 78
		f 4 -99 113 114 -112
		mu 0 4 71 72 80 79
		f 4 -101 115 116 -114
		mu 0 4 72 73 81 80
		f 4 -103 117 118 -116
		mu 0 4 73 74 82 81
		f 4 -104 105 119 -118
		mu 0 4 74 67 75 82;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "diver_geo_04";
	rename -uid "D75D6A41-4654-C7ED-9384-2BAFEA4ECED6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "e[16:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:7]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[8:15]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-08 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.6875 0.40625 0.6875 0.4375 0.6875 0.46875 0.6875 0.5 0.6875 0.53125 0.6875
		 0.5625 0.6875 0.59375 0.6875 0.625 0.6875 0.61048543 0.73326457 0.5 0.6875 0.38951457
		 0.73326457 0.34375 0.84375 0.38951457 0.95423543 0.5 1 0.61048543 0.95423543 0.65625
		 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  28.28426743 -60 -28.28426743 0 -60 -39.99999619
		 -28.28426743 -60 -28.28426743 -39.99999619 -60 0 -28.28426743 -60 28.28426743 0 -60 39.99999619
		 28.28427124 -60 28.28427124 40 -60 0 28.28426743 60 -28.28426743 0 60 -39.99999619
		 -28.28426743 60 -28.28426743 -39.99999619 60 0 -28.28426743 60 28.28426743 0 60 39.99999619
		 28.28427124 60 28.28427124 40 60 0;
	setAttr -s 24 ".ed[0:23]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0;
	setAttr -s 10 -ch 48 ".fc[0:9]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 8 9 10 11 12 13 14 15
		mu 0 8 32 31 30 29 28 27 26 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "diver_geo_05";
	rename -uid "3887235F-4694-3914-FDEF-079B41A194E2";
	setAttr ".t" -type "double3" -15.58972363294528 18.636636572363628 0.61868702770193096 ;
	setAttr ".s" -type "double3" 0.29222619817018641 0.35875569896697779 0.29222619817018641 ;
createNode mesh -n "diver_geo_05Shape" -p "diver_geo_05";
	rename -uid "BF6B6C50-46C2-DE4A-E021-1AAC29E1C5FE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:7]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[8:15]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-08 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.6875 0.40625 0.6875 0.4375 0.6875 0.46875 0.6875 0.5 0.6875 0.53125 0.6875
		 0.5625 0.6875 0.59375 0.6875 0.625 0.6875 0.61048543 0.73326457 0.5 0.6875 0.38951457
		 0.73326457 0.34375 0.84375 0.38951457 0.95423543 0.5 1 0.61048543 0.95423543 0.65625
		 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  28.28426743 -60 -28.28426743 0 -60 -39.99999619
		 -28.28426743 -60 -28.28426743 -39.99999619 -60 0 -28.28426743 -60 28.28426743 0 -60 39.99999619
		 28.28427124 -60 28.28427124 40 -60 0 28.28426743 60 -28.28426743 0 60 -39.99999619
		 -28.28426743 60 -28.28426743 -39.99999619 60 0 -28.28426743 60 28.28426743 0 60 39.99999619
		 28.28427124 60 28.28427124 40 60 0;
	setAttr -s 24 ".ed[0:23]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0;
	setAttr -s 10 -ch 48 ".fc[0:9]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 8 8 9 10 11 12 13 14 15
		mu 0 8 32 31 30 29 28 27 26 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "C7E21352-4A8C-DCEA-917E-35B1BED1A21C";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "2668DBE0-4CE1-F645-8F8D-E086BEAE551B";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "6790272B-4EE5-D0FF-1A75-D1A7BC126961";
createNode displayLayerManager -n "layerManager";
	rename -uid "A15F1012-46B8-B4C8-3CF0-C0967033994F";
createNode displayLayer -n "defaultLayer";
	rename -uid "71EBA830-4DA9-D728-3D60-DE90D80E6DCF";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B7A00BCB-43A4-5101-564A-45B956BE69B6";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "56C305A1-4318-F8E1-355A-FDA1037F39B9";
	setAttr ".g" yes;
createNode hyperLayout -n "hyperLayout1";
	rename -uid "1998B4F7-4A1F-0BF2-4BC5-0794E0096748";
	setAttr ".ihi" 0;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "1B949346-4BBE-F409-407B-FC854E198548";
	setAttr ".version" -type "string" "5.3.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "F307FC76-49C0-DC93-5574-E3AF4E9F5E5A";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "DF1B99C4-41CB-7909-2B57-E6A74D522602";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "438F92FF-4C9A-6F88-1878-419E2988DF95";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode polyCylinder -n "polyCylinder1";
	rename -uid "EE9E8346-4553-6509-F03F-4B8F8C62F97D";
	setAttr ".r" 40;
	setAttr ".h" 120;
	setAttr ".sa" 8;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "0F44A9D1-40F8-99EB-2F43-90998E1DE16F";
	setAttr ".ics" -type "componentList" 1 "f[9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.36342970520559192 0 0 0 0 1 0 0 60 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.9073486e-06 81.805779 0 ;
	setAttr ".rs" 62198;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -39.999996185302734 81.805782312335509 -39.999996185302734 ;
	setAttr ".cbx" -type "double3" 40 81.805782312335509 39.999996185302734 ;
	setAttr ".raf" no;
createNode polySphere -n "polySphere1";
	rename -uid "785C37FF-4F13-01E7-E5B4-508B4EDF9E2F";
	setAttr ".sa" 8;
	setAttr ".sh" 5;
createNode polyTweak -n "polyTweak1";
	rename -uid "2E9E7DB9-46EA-C754-822F-24BDB4FACEFC";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[8]" -type "float3" 0 -0.075180307 0 ;
	setAttr ".tk[9]" -type "float3" 0 -0.075180307 0 ;
	setAttr ".tk[10]" -type "float3" 0 -0.075180307 0 ;
	setAttr ".tk[11]" -type "float3" 0 -0.075180307 0 ;
	setAttr ".tk[12]" -type "float3" 0 -0.075180307 0 ;
	setAttr ".tk[13]" -type "float3" 0 -0.075180307 0 ;
	setAttr ".tk[14]" -type "float3" 0 -0.075180307 0 ;
	setAttr ".tk[15]" -type "float3" 0 -0.075180307 0 ;
	setAttr ".tk[16]" -type "float3" 0.044219404 0.26668257 -0.018976685 ;
	setAttr ".tk[17]" -type "float3" -3.9192392e-09 0.26668257 -0.02683707 ;
	setAttr ".tk[18]" -type "float3" -0.044219412 0.26668257 -0.018976685 ;
	setAttr ".tk[19]" -type "float3" -0.062535681 0.26668257 -8.4096752e-10 ;
	setAttr ".tk[20]" -type "float3" -0.044219412 0.26668257 0.018976685 ;
	setAttr ".tk[21]" -type "float3" -3.9192392e-09 0.26668257 0.026837099 ;
	setAttr ".tk[22]" -type "float3" 0.044219404 0.26668257 0.018976685 ;
	setAttr ".tk[23]" -type "float3" 0.062535681 0.26668257 -8.4096752e-10 ;
	setAttr ".tk[32]" -type "float3" 0 -0.034247294 0 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "C1DF758C-49DD-024E-81C5-C092D89488E2";
	setAttr ".dc" -type "componentList" 1 "f[32:39]";
createNode polyTorus -n "polyTorus1";
	rename -uid "071A0D86-4281-527C-2027-C7917B8E4F3E";
	setAttr ".r" 33.6;
	setAttr ".sr" 5;
	setAttr ".sa" 8;
	setAttr ".sh" 6;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "61414265-4ED7-943F-3AC1-36AF2B39DEEB";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 924\n            -height 405\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n"
		+ "\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 924\\n    -height 405\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 924\\n    -height 405\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 500 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "47DB9F2D-4F58-451E-89BC-14806B23642E";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 16 -ast 0 -aet 175 ";
	setAttr ".st" 6;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "568ADDA2-4265-2DE6-3ECF-47AF3DD7DB9F";
	setAttr ".dc" -type "componentList" 1 "f[24:47]";
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "ACFE8E36-4079-132F-344A-2A8559862EA6";
	setAttr ".ics" -type "componentList" 1 "e[0:7]";
createNode polyBevel3 -n "polyBevel1";
	rename -uid "450E182E-45BB-C3A4-5F1D-7D89EE6ACDCB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[33]" "e[37]" "e[41]" "e[45]" "e[49]" "e[53]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 0.93750378188030936 120.00394995713495 53.753853961612769 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak2";
	rename -uid "2B4A02C3-4D82-73C5-F955-EB80CFD8E9DC";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk[0:31]" -type "float3"  0 0 5.74746275 0 0 8.1281414
		 0 0 5.74746275 0 0 0 0 0 -5.74746275 0 0 -8.12814236 0 0 -5.74746275 0 0 0 0 0 6.24986506
		 0 0 8.83864307 0 0 6.24986506 0 0 0 0 0 -6.24986506 0 0 -8.83864117 0 0 -6.2498641
		 0 0 0 0 0 7.25466871 0 0 10.25964737 0 0 7.25466871 0 0 0 0 0 -7.25466871 0 0 -10.25964737
		 0 0 -7.25466919 0 0 0 0 0 7.75706673 0 0 10.97015762 0 0 7.75706673 0 0 0 0 0 -7.75706673
		 0 0 -10.97015762 0 0 -7.75706768 0 0 0;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "588A5792-4D7A-7BFB-0462-87959C6E67AE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[22]" "e[25]" "e[28]" "e[31]" "e[34]" "e[37]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 0.93750378188030936 120.00394995713495 53.753853961612769 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.3;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "0A2C9148-4A39-4C36-30C4-7A9CF4CFF6D0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[4:7]" "e[24:25]" "e[39]" "e[42]" "e[56:57]" "e[71]" "e[74]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 0.93750378188030936 120.00394995713495 53.753853961612769 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.93750566 120.00395 53.753853 ;
	setAttr ".rs" 63192;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -35.149719271098206 95.371839361431824 53.753853961612769 ;
	setAttr ".cbx" -type "double3" 37.024730649556091 144.63606055283807 53.753853961612769 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "DB055A16-4DCB-C909-0014-56AE7AEC906D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[86]" "e[89]" "e[92]" "e[95]" "e[97]" "e[99:101]" "e[103]" "e[105:107]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 0.93750378188030936 120.00394995713495 53.753853961612769 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.93750566 120.00395 48.589001 ;
	setAttr ".rs" 61943;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -35.149719271098206 95.371839361431824 48.588999911930152 ;
	setAttr ".cbx" -type "double3" 37.024730649556091 144.63606055283807 48.588999911930152 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "F2A224D9-4669-5F71-843F-C5AE62EABD38";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[48]" -type "float3" 0 -5.164854 0 ;
	setAttr ".tk[49]" -type "float3" 0 -5.164854 0 ;
	setAttr ".tk[50]" -type "float3" 0 -5.164854 0 ;
	setAttr ".tk[51]" -type "float3" 0 -5.164854 0 ;
	setAttr ".tk[52]" -type "float3" 0 -5.164854 0 ;
	setAttr ".tk[53]" -type "float3" 0 -5.164854 0 ;
	setAttr ".tk[54]" -type "float3" 0 -5.164854 0 ;
	setAttr ".tk[55]" -type "float3" 0 -5.164854 0 ;
	setAttr ".tk[56]" -type "float3" 0 -5.164854 0 ;
	setAttr ".tk[57]" -type "float3" 0 -5.164854 0 ;
	setAttr ".tk[58]" -type "float3" 0 -5.164854 0 ;
	setAttr ".tk[59]" -type "float3" 0 -5.164854 0 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	rename -uid "A09F8A4C-41D2-FE56-976B-97B032B7FB44";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[110]" "e[113]" "e[116]" "e[119]" "e[121]" "e[123:125]" "e[127]" "e[129:131]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 0.93750378188030936 120.00394995713495 53.753853961612769 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.93750566 120.00395 46.040119 ;
	setAttr ".rs" 50167;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -26.558414492045472 101.23601897263788 46.04011933484275 ;
	setAttr ".cbx" -type "double3" 28.433425870503356 138.77188094163202 46.04011933484275 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "BCDA97EA-4D63-3616-737D-E28CFBAB5E83";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[60]" -type "float3" -6.4979725 -2.5488784 4.6512437 ;
	setAttr ".tk[61]" -type "float3" -2.4070392 -2.5488784 5.8641801 ;
	setAttr ".tk[62]" -type "float3" 6.4979749 -2.5488784 4.6512437 ;
	setAttr ".tk[63]" -type "float3" 8.5913057 -2.5488784 1.0337738 ;
	setAttr ".tk[64]" -type "float3" 6.4979749 -2.5488784 -4.6512437 ;
	setAttr ".tk[65]" -type "float3" 2.4070394 -2.5488784 -5.8641791 ;
	setAttr ".tk[66]" -type "float3" -6.4979749 -2.5488784 -4.6512456 ;
	setAttr ".tk[67]" -type "float3" -8.5913057 -2.5488784 -1.0337738 ;
	setAttr ".tk[68]" -type "float3" 2.4070396 -2.5488784 5.8641801 ;
	setAttr ".tk[69]" -type "float3" -2.4070392 -2.5488784 -5.8641801 ;
	setAttr ".tk[70]" -type "float3" 8.5913057 -2.5488784 -1.0337738 ;
	setAttr ".tk[71]" -type "float3" -8.5913057 -2.5488784 1.0337738 ;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "C77654A6-48A8-5A8F-22C9-7DADE88B5D9A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[49]" "e[51]" "e[53]" "e[55]";
	setAttr ".ix" -type "matrix" 39.198542435812229 0 0 0 0 0 39.198542435812229 0 0 -39.198542435812229 0 0
		 0 126.12562659602528 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyUnite -n "polyUnite1";
	rename -uid "2D2F8738-40CF-46B5-5C39-52A14210285E";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId1";
	rename -uid "E37CA692-4F1E-948B-B2BD-259C7A8B7DCA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "208BDFDC-4DDA-E6F7-940B-5EA4A66F9E64";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:72]";
createNode groupId -n "groupId2";
	rename -uid "DC1291EC-4C13-C5C6-5BB2-5995F96183C3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "471294B9-4406-9D86-CB46-BA9C6DEDA03D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "1DBDB58F-4789-53D5-41DC-DDB048937FE9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:39]";
createNode groupId -n "groupId4";
	rename -uid "CB52479F-463B-0735-4FD7-56A68A6C3DE7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "236E249C-44D4-286A-D6BE-5EB8A612FB29";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "DD24D8F4-4764-BDC1-74F2-FA857B214A57";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:112]";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "638FEA09-44BE-70BF-019B-9BABFFEBBBA1";
	setAttr ".uopa" yes;
	setAttr -s 7 ".uvtk";
	setAttr ".uvtk[152]" -type "float2" 1.6231047e-07 -1.6142718e-06 ;
	setAttr ".uvtk[167]" -type "float2" -2.4068899e-07 -1.4465427e-06 ;
	setAttr ".uvtk[175]" -type "float2" -1.7108079e-07 -1.8357396e-06 ;
	setAttr ".uvtk[176]" -type "float2" 2.7023705e-07 -1.4044214e-06 ;
	setAttr ".uvtk[232]" -type "float2" 0.13181667 0.16045977 ;
	setAttr ".uvtk[234]" -type "float2" 0.061666239 0.16046061 ;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "A032DA7C-4561-E119-9031-E1ACDDECE5B9";
	setAttr ".ics" -type "componentList" 3 "vtx[73]" "vtx[80]" "vtx[112:113]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak5";
	rename -uid "D468C56D-4F2D-BC8C-799D-BC9A95D129F0";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[112]" -type "float3" -0.44159508 -0.52890015 7.3377304 ;
	setAttr ".tk[113]" -type "float3" 0.44159508 -0.52890015 7.3377304 ;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "B0FE4BE4-4F9D-B903-5577-93805CA5A075";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk";
	setAttr ".uvtk[151]" -type "float2" -2.8147917e-07 -1.9259696e-06 ;
	setAttr ".uvtk[152]" -type "float2" 1.8622315e-07 -1.5650636e-06 ;
	setAttr ".uvtk[175]" -type "float2" -3.0692195e-08 -1.3423266e-06 ;
	setAttr ".uvtk[188]" -type "float2" 2.5279689e-07 -1.4631697e-06 ;
	setAttr ".uvtk[232]" -type "float2" 0.0035411492 -2.5101841e-07 ;
	setAttr ".uvtk[233]" -type "float2" 0.15861373 0.16045895 ;
	setAttr ".uvtk[244]" -type "float2" 3.2977014 0.150473 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "7C823BDD-4BBE-82A3-6445-9BA4B71E2DD4";
	setAttr ".ics" -type "componentList" 2 "vtx[72:73]" "vtx[104]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak6";
	rename -uid "965D7E1A-4193-3268-D470-26B9F0AD9F5C";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[104]" -type "float3" 4.5043755 -1.0363159 7.3377304 ;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "ED4A95E3-422C-7C33-6DBA-288685B5D498";
	setAttr ".uopa" yes;
	setAttr -s 7 ".uvtk";
	setAttr ".uvtk[155]" -type "float2" -2.5932707e-07 -1.4256677e-06 ;
	setAttr ".uvtk[167]" -type "float2" -1.3918715e-07 -1.1605681e-06 ;
	setAttr ".uvtk[168]" -type "float2" 8.0692004e-08 -2.14799e-06 ;
	setAttr ".uvtk[176]" -type "float2" 1.337674e-08 -1.9052732e-06 ;
	setAttr ".uvtk[234]" -type "float2" 0.0032737919 -3.7711425e-07 ;
	setAttr ".uvtk[235]" -type "float2" 0.048478648 0.16046038 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "3CE9EFC6-4CA5-560E-6D06-109777A151E8";
	setAttr ".ics" -type "componentList" 3 "vtx[74]" "vtx[80]" "vtx[104]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak7";
	rename -uid "2D8A7BD1-4A6D-932F-ED30-E4AE43D5AEB0";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[104]" -type "float3" -4.5043736 -1.0363159 7.3377304 ;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "DC49A9A9-42CC-D52E-7EA0-E0B69FAB5E95";
	setAttr ".uopa" yes;
	setAttr -s 7 ".uvtk";
	setAttr ".uvtk[164]" -type "float2" 2.7970083e-07 -1.4468246e-06 ;
	setAttr ".uvtk[187]" -type "float2" -2.0063348e-07 -1.8507634e-06 ;
	setAttr ".uvtk[195]" -type "float2" -8.5646133e-07 -1.8026186e-06 ;
	setAttr ".uvtk[196]" -type "float2" 1.1425118e-06 -1.4444186e-06 ;
	setAttr ".uvtk[242]" -type "float2" 4.0080976 0.14866574 ;
	setAttr ".uvtk[243]" -type "float2" 3.7882948 0.14903356 ;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "9BDC4270-4AA0-AB7F-C284-C1A1161D94B4";
	setAttr ".ics" -type "componentList" 3 "vtx[79]" "vtx[83]" "vtx[123:124]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak8";
	rename -uid "16E21929-450D-1608-8893-1E915AB51533";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[123]" -type "float3" 7.8294373 5.2062988 7.3377304 ;
	setAttr ".tk[124]" -type "float3" 7.8294315 -4.4669952 7.3377304 ;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "0E9BC83D-4EF8-40E3-83ED-6EAA1125CA06";
	setAttr ".uopa" yes;
	setAttr -s 7 ".uvtk";
	setAttr ".uvtk[156]" -type "float2" 2.1721446e-07 -1.8202868e-06 ;
	setAttr ".uvtk[183]" -type "float2" -2.7110752e-07 -1.4365519e-06 ;
	setAttr ".uvtk[191]" -type "float2" -8.5507776e-07 -1.8072404e-06 ;
	setAttr ".uvtk[192]" -type "float2" 1.1402483e-06 -1.4499517e-06 ;
	setAttr ".uvtk[236]" -type "float2" 0.11738241 0.16045928 ;
	setAttr ".uvtk[237]" -type "float2" 0.060949046 0.16045927 ;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "69CE656C-4005-7D69-EFC8-D4A0B51CF2C4";
	setAttr ".ics" -type "componentList" 3 "vtx[75]" "vtx[82]" "vtx[113:114]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak9";
	rename -uid "FBBC10B5-470C-BCEE-39AB-A1ACFBAD5143";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[113]" -type "float3" -7.8294334 -4.4669952 7.3377304 ;
	setAttr ".tk[114]" -type "float3" -7.8294353 5.2062988 7.3377304 ;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "99D66BA0-4EDB-1B5E-D404-8380D3A115DD";
	setAttr ".uopa" yes;
	setAttr -s 7 ".uvtk";
	setAttr ".uvtk[163]" -type "float2" -2.1264518e-07 -1.8049498e-06 ;
	setAttr ".uvtk[164]" -type "float2" 1.6963911e-07 -1.5348801e-06 ;
	setAttr ".uvtk[172]" -type "float2" 2.4219824e-07 -1.4790687e-06 ;
	setAttr ".uvtk[195]" -type "float2" -6.4966417e-07 -1.3565549e-06 ;
	setAttr ".uvtk[241]" -type "float2" 3.1702881 0.15115216 ;
	setAttr ".uvtk[242]" -type "float2" -0.1222073 0.00035862191 ;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "D65E27B2-41C4-533D-4818-1884E6EF1628";
	setAttr ".ics" -type "componentList" 2 "vtx[78:79]" "vtx[105]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak10";
	rename -uid "1EEE9EC4-4F3E-7178-1B1B-4AA8DB8696CA";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[105]" -type "float3" 4.5043774 1.7756195 7.3377304 ;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "F4FB9E9A-45C3-7591-1EBD-47BC20AC7DB4";
	setAttr ".uopa" yes;
	setAttr -s 7 ".uvtk";
	setAttr ".uvtk[159]" -type "float2" -2.1603944e-07 -1.4333341e-06 ;
	setAttr ".uvtk[183]" -type "float2" -1.9218736e-07 -1.0846729e-06 ;
	setAttr ".uvtk[184]" -type "float2" 1.5904082e-07 -2.0647126e-06 ;
	setAttr ".uvtk[192]" -type "float2" 6.4837189e-07 -1.5397331e-06 ;
	setAttr ".uvtk[237]" -type "float2" -0.011187161 -1.1944607e-07 ;
	setAttr ".uvtk[238]" -type "float2" 0.032225013 0.16045965 ;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "382084E8-4DD2-6200-025F-21B0D371D077";
	setAttr ".ics" -type "componentList" 3 "vtx[76]" "vtx[82]" "vtx[104]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak11";
	rename -uid "EA48B5A2-4814-09AE-0B22-F49D8BCAC79D";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[104]" -type "float3" -4.5043736 1.7756271 7.3377304 ;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "093AE154-4747-028E-68E3-3692FE4056C8";
	setAttr ".uopa" yes;
	setAttr -s 7 ".uvtk";
	setAttr ".uvtk[160]" -type "float2" 2.340154e-07 -1.8307876e-06 ;
	setAttr ".uvtk[171]" -type "float2" -1.9822087e-07 -1.8273369e-06 ;
	setAttr ".uvtk[179]" -type "float2" -1.408502e-07 -1.7947548e-06 ;
	setAttr ".uvtk[180]" -type "float2" 2.23204e-07 -1.4528435e-06 ;
	setAttr ".uvtk[239]" -type "float2" 1.3603902 0.15660752 ;
	setAttr ".uvtk[240]" -type "float2" 2.9177287 0.15191433 ;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "35E1403B-4B39-7C14-B7DF-B0B14788D5C0";
	setAttr ".ics" -type "componentList" 3 "vtx[77]" "vtx[81]" "vtx[114:115]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak12";
	rename -uid "798EE97D-448A-10AD-9C80-7CBD68C7CC87";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[114]" -type "float3" 0.44159603 1.268219 7.3377304 ;
	setAttr ".tk[115]" -type "float3" -0.44159508 1.2682114 7.3377304 ;
createNode polyMergeVert -n "polyMergeVert9";
	rename -uid "BEE92657-4A6D-A806-4C5C-61B95A8272DD";
	setAttr ".ics" -type "componentList" 2 "vtx[108]" "vtx[110]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 4.6918;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak13";
	rename -uid "72729FE4-4A2A-D03E-5693-D8883C9A7B84";
	setAttr ".uopa" yes;
	setAttr -s 85 ".tk";
	setAttr ".tk[0]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[1]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[2]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[3]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[4]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[5]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[6]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[7]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[8]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[9]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[10]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[11]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[12]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[13]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[14]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[15]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[16]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[17]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[18]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[19]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[20]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[21]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[22]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[23]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[24]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[25]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[26]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[27]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[28]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[29]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[30]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[31]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[32]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[33]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[34]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[35]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[36]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[37]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[38]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[39]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[40]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[41]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[42]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[43]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[44]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[45]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[46]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[47]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[48]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[49]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[50]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[51]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[52]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[53]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[54]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[55]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[56]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[57]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[58]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[59]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[60]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[61]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[62]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[63]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[64]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[65]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[66]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[67]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[68]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[69]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[70]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[71]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[72]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[73]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[74]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[75]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[76]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[77]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[78]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[79]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[80]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[81]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[82]" -type "float3" 0 1.3989743 -2.7245793 ;
	setAttr ".tk[83]" -type "float3" 0 1.3989743 -2.7245793 ;
createNode polyMergeVert -n "polyMergeVert10";
	rename -uid "283F0F05-491C-097C-1863-4581B29C89DB";
	setAttr ".ics" -type "componentList" 2 "vtx[113]" "vtx[115]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 4.6918;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert11";
	rename -uid "D5A95D76-489E-BB2B-B913-E9A9C40F9BD2";
	setAttr ".ics" -type "componentList" 2 "vtx[105]" "vtx[107]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 4.6918;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert12";
	rename -uid "AD674A06-49FD-4372-40C0-2687BD6C0BB0";
	setAttr ".ics" -type "componentList" 1 "vtx[80]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 4.6918;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert13";
	rename -uid "3F5DA264-4015-BF4D-1BF5-948D2FB5AD4B";
	setAttr ".ics" -type "componentList" 2 "vtx[73]" "vtx[80]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 4.6918;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert14";
	rename -uid "6AAC2C16-47A7-7605-19E3-BA8BCD8B1F37";
	setAttr ".ics" -type "componentList" 2 "vtx[79]" "vtx[82]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 4.6918;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert15";
	rename -uid "DB8B7F38-4B46-2754-8DEA-3484F21FE342";
	setAttr ".ics" -type "componentList" 2 "vtx[75]" "vtx[81]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 4.6918;
	setAttr ".am" yes;
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "335F7797-4826-4E57-E20A-27930A08875B";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[212]" -type "float2" -2.0674699e-10 0.043277901 ;
	setAttr ".uvtk[213]" -type "float2" 0.0036885585 0.010771482 ;
createNode polyMergeVert -n "polyMergeVert16";
	rename -uid "0A188C8B-476B-B47D-F9E5-40AE6CB151A1";
	setAttr ".ics" -type "componentList" 1 "vtx[102:103]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak14";
	rename -uid "B005B0F0-4FD2-C0CE-613B-52A27AFDE4CB";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[103]" -type "float3" 1.203849e-07 -3.0274048 8.1419868 ;
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "12A97B83-42F8-0495-AEA0-FE851C510B77";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[222]" -type "float2" 5.1960685e-09 0.04320322 ;
	setAttr ".uvtk[223]" -type "float2" 0.42617327 0.030078143 ;
createNode polyMergeVert -n "polyMergeVert17";
	rename -uid "599FD65D-4A3D-920F-0F66-AEBE5CFC4B60";
	setAttr ".ics" -type "componentList" 1 "vtx[108:109]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak15";
	rename -uid "CB968CEE-4719-DBB8-DE70-259B24C618F9";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[109]" -type "float3" -2.9674911 0 8.1279392 ;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "C66F689F-4AA1-D6D8-5847-CAAE98198891";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[215]" -type "float2" -5.1967719e-09 0.04320322 ;
	setAttr ".uvtk[216]" -type "float2" 0.01068652 0.031350102 ;
createNode polyMergeVert -n "polyMergeVert18";
	rename -uid "69A737C6-42DD-4144-A638-61A6FF0760CC";
	setAttr ".ics" -type "componentList" 1 "vtx[103:104]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak16";
	rename -uid "6E884C79-4AB1-6CBA-DF7E-8E9790062999";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[104]" -type "float3"  2.96747971 0 8.12793922;
createNode polySphere -n "polySphere2";
	rename -uid "9C7A4652-4412-D7E8-0655-498EB31F271E";
	setAttr ".sa" 6;
	setAttr ".sh" 6;
createNode polyBevel3 -n "polyBevel4";
	rename -uid "FD46E324-44C0-6282-2A19-F1BDC96D8380";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:17]";
	setAttr ".ix" -type "matrix" 24.400571410192288 0 0 0 0 24.400571410192288 0 0 0 0 24.400571410192288 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polySplit -n "polySplit1";
	rename -uid "091087C1-48E1-BCB7-12B8-2E9425D1DD08";
	setAttr -s 9 ".e[0:8]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 9 ".d[0:8]"  -2147483632 -2147483625 -2147483626 -2147483627 -2147483628 -2147483629 
		-2147483630 -2147483631 -2147483632;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak17";
	rename -uid "C2C68321-415A-00DD-C392-20BB8CE15AE9";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[0]" -type "float3" -1.6019723 0 1.6019723 ;
	setAttr ".tk[1]" -type "float3" 1.0802894e-07 0 2.2655311 ;
	setAttr ".tk[2]" -type "float3" 1.6019723 0 1.6019723 ;
	setAttr ".tk[3]" -type "float3" 2.2655311 0 0 ;
	setAttr ".tk[4]" -type "float3" 1.6019723 0 -1.6019723 ;
	setAttr ".tk[5]" -type "float3" 1.0802894e-07 0 -2.2655311 ;
	setAttr ".tk[6]" -type "float3" -1.6019723 0 -1.6019726 ;
	setAttr ".tk[7]" -type "float3" -2.2655311 0 0 ;
	setAttr ".tk[16]" -type "float3" -8.2826118 45.690578 8.2826118 ;
	setAttr ".tk[17]" -type "float3" 5.5853769e-07 45.690578 11.713383 ;
	setAttr ".tk[18]" -type "float3" 8.2826118 45.690578 8.2826118 ;
	setAttr ".tk[19]" -type "float3" 11.713383 45.690578 0 ;
	setAttr ".tk[20]" -type "float3" 8.2826118 45.690578 -8.2826118 ;
	setAttr ".tk[21]" -type "float3" 5.5853769e-07 45.690578 -11.713383 ;
	setAttr ".tk[22]" -type "float3" -8.2826118 45.690578 -8.2826128 ;
	setAttr ".tk[23]" -type "float3" -11.713383 45.690578 0 ;
createNode polySplit -n "polySplit2";
	rename -uid "95599398-4200-793F-71B6-449BE7A6BCF3";
	setAttr -s 9 ".e[0:8]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 9 ".d[0:8]"  -2147483632 -2147483625 -2147483626 -2147483627 -2147483628 -2147483629 
		-2147483630 -2147483631 -2147483632;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "8CECC8C6-4A45-49A7-3864-3693A297751A";
	setAttr ".ics" -type "componentList" 1 "f[8]";
	setAttr ".ix" -type "matrix" 0 0.3581794270006583 0 0 -0.33300000000000002 0 0 0
		 0 0 0.3581794270006583 0 62.219734470080425 79.140406229465128 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 76.043808 79.140404 0 ;
	setAttr ".rs" 43797;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 76.043804988574081 70.13733397098909 -9.0030729416490853 ;
	setAttr ".cbx" -type "double3" 76.043804988574081 88.14347985428725 9.0030729416490853 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak18";
	rename -uid "8A8C23A1-45F7-2C95-07C4-83A21576B9BE";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[0]" -type "float3" -10.510679 18.486277 10.510679 ;
	setAttr ".tk[1]" -type "float3" 7.0878741e-07 18.486277 14.864346 ;
	setAttr ".tk[2]" -type "float3" 10.510681 18.486277 10.510679 ;
	setAttr ".tk[3]" -type "float3" 14.864347 18.486277 0 ;
	setAttr ".tk[4]" -type "float3" 10.510681 18.486277 -10.510679 ;
	setAttr ".tk[5]" -type "float3" 7.0878741e-07 18.486277 -14.864346 ;
	setAttr ".tk[6]" -type "float3" -10.510681 18.486277 -10.510675 ;
	setAttr ".tk[7]" -type "float3" -14.864347 18.486277 0 ;
	setAttr ".tk[16]" -type "float3" -10.484656 0 10.484656 ;
	setAttr ".tk[17]" -type "float3" -14.827541 0 0 ;
	setAttr ".tk[18]" -type "float3" -10.484657 0 -10.484657 ;
	setAttr ".tk[19]" -type "float3" 7.0703231e-07 0 -14.827541 ;
	setAttr ".tk[20]" -type "float3" 10.484657 0 -10.484656 ;
	setAttr ".tk[21]" -type "float3" 14.827541 0 0 ;
	setAttr ".tk[22]" -type "float3" 10.484657 0 10.484656 ;
	setAttr ".tk[23]" -type "float3" 7.0703231e-07 0 14.827541 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "BB2352B0-45D8-82CE-55FD-D496C10FC77F";
	setAttr ".ics" -type "componentList" 1 "f[8]";
	setAttr ".ix" -type "matrix" 0 0.3581794270006583 0 0 -0.33300000000000002 0 0 0
		 0 0 0.3581794270006583 0 62.219734470080425 79.140406229465128 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 81.456657 79.140404 0 ;
	setAttr ".rs" 36740;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 81.456656829546972 72.198985562187204 -6.9414206672779253 ;
	setAttr ".cbx" -type "double3" 81.456656829546972 86.081826896743053 6.9414206672779253 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak19";
	rename -uid "046D2C25-41AE-C3B2-AAF8-779E865CB348";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[24]" -type "float3" -5.7559214 -16.254803 0 ;
	setAttr ".tk[25]" -type "float3" -4.0700507 -16.254803 4.0700502 ;
	setAttr ".tk[26]" -type "float3" -4.0700507 -16.254803 -4.0700526 ;
	setAttr ".tk[27]" -type "float3" -6.5084097e-15 -16.254803 -5.7559214 ;
	setAttr ".tk[28]" -type "float3" 4.0700507 -16.254803 -4.0700502 ;
	setAttr ".tk[29]" -type "float3" 5.7559214 -16.254803 0 ;
	setAttr ".tk[30]" -type "float3" 4.0700507 -16.254803 4.0700502 ;
	setAttr ".tk[31]" -type "float3" -6.5084097e-15 -16.254803 5.7559214 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "AEC9C74C-4D41-3366-ECF9-0CACC65250BC";
	setAttr ".ics" -type "componentList" 1 "f[8]";
	setAttr ".ix" -type "matrix" 0 0.3581794270006583 0 0 -0.33300000000000002 0 0 0
		 0 0 0.3581794270006583 0 62.219734470080425 79.140406229465128 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 88.777092 79.140404 0 ;
	setAttr ".rs" 59685;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 88.777089130114604 72.198985562187204 -6.9414206672779253 ;
	setAttr ".cbx" -type "double3" 88.777089130114604 86.081826896743053 6.9414206672779253 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak20";
	rename -uid "E442AF72-4A41-0CF1-2141-639D836FC153";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[32]" -type "float3" 0 -21.98328 0 ;
	setAttr ".tk[33]" -type "float3" 0 -21.98328 0 ;
	setAttr ".tk[34]" -type "float3" 0 -21.98328 0 ;
	setAttr ".tk[35]" -type "float3" 0 -21.98328 0 ;
	setAttr ".tk[36]" -type "float3" 0 -21.98328 0 ;
	setAttr ".tk[37]" -type "float3" 0 -21.98328 0 ;
	setAttr ".tk[38]" -type "float3" 0 -21.98328 0 ;
	setAttr ".tk[39]" -type "float3" 0 -21.98328 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "1676B135-47F3-9721-3509-7A83D9A87701";
	setAttr ".ics" -type "componentList" 1 "f[8]";
	setAttr ".ix" -type "matrix" 0 0.3581794270006583 0 0 -0.33300000000000002 0 0 0
		 0 0 0.3581794270006583 0 62.219734470080425 79.140406229465128 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 90.184006 79.140404 0 ;
	setAttr ".rs" 64996;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 90.184003459643407 73.542855933113913 -5.5975502963512165 ;
	setAttr ".cbx" -type "double3" 90.184003459643407 84.737956525816344 5.5975502963512165 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak21";
	rename -uid "40855630-47B6-0DD5-2D82-3AAA1154F034";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[40]" -type "float3" -3.7519469 -4.2249665 0 ;
	setAttr ".tk[41]" -type "float3" -2.6530268 -4.2249665 2.6530271 ;
	setAttr ".tk[42]" -type "float3" -2.6530268 -4.2249665 -2.6530275 ;
	setAttr ".tk[43]" -type "float3" -5.5024887e-15 -4.2249665 -3.7519469 ;
	setAttr ".tk[44]" -type "float3" 2.6530268 -4.2249665 -2.6530271 ;
	setAttr ".tk[45]" -type "float3" 3.7519469 -4.2249665 0 ;
	setAttr ".tk[46]" -type "float3" 2.6530268 -4.2249665 2.6530271 ;
	setAttr ".tk[47]" -type "float3" -5.5024887e-15 -4.2249665 3.7519469 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "D9E41EFA-4B4D-225E-EFF9-4199B7D35F60";
	setAttr ".ics" -type "componentList" 1 "f[8]";
	setAttr ".ix" -type "matrix" 0 0.3581794270006583 0 0 -0.33300000000000002 0 0 0
		 0 0 0.3581794270006583 0 62.219734470080425 79.140406229465128 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 99.108711 79.140404 0 ;
	setAttr ".rs" 51298;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 99.108711887072616 75.596230199754643 -7.9195304399747526 ;
	setAttr ".cbx" -type "double3" 99.108711887072616 82.684582259175613 7.9195304399747526 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak22";
	rename -uid "C8F72DCD-4FE0-ACB2-3381-C7BEBFD6D202";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[48]" -type "float3" -5.7328033 -26.800917 0 ;
	setAttr ".tk[49]" -type "float3" -4.0537105 -26.800917 -4.5839825 ;
	setAttr ".tk[50]" -type "float3" -4.0537105 -26.800917 4.5839853 ;
	setAttr ".tk[51]" -type "float3" -1.0426054e-14 -26.800917 6.4827299 ;
	setAttr ".tk[52]" -type "float3" 4.0537105 -26.800917 4.5839825 ;
	setAttr ".tk[53]" -type "float3" 5.7328033 -26.800917 0 ;
	setAttr ".tk[54]" -type "float3" 4.0537105 -26.800917 -4.5839825 ;
	setAttr ".tk[55]" -type "float3" -1.0426054e-14 -26.800917 -6.4827299 ;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 13 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 5 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".fs" 1;
	setAttr ".ef" 10;
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "hyperLayout1.msg" "animBot.hl";
connectAttr "animBot_Anim_Recovery_Scene_ID.msg" "animBot.animBot_Anim_Recovery_Scene_ID"
		;
connectAttr "polySplit1.out" "diver_geo_01Shape.i";
connectAttr "polyExtrudeFace6.out" "diver_geo_02Shape.i";
connectAttr "groupId3.id" "pSphereShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pSphereShape1.iog.og[0].gco";
connectAttr "groupParts2.og" "pSphereShape1.i";
connectAttr "groupId4.id" "pSphereShape1.ciog.cog[0].cgid";
connectAttr "groupId1.id" "pTorusShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pTorusShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pTorusShape1.i";
connectAttr "groupId2.id" "pTorusShape1.ciog.cog[0].cgid";
connectAttr "polyMergeVert18.out" "pTorus2Shape.i";
connectAttr "groupId5.id" "pTorus2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pTorus2Shape.iog.og[0].gco";
connectAttr "polyTweakUV11.uvtk[0]" "pTorus2Shape.uvst[0].uvtw";
connectAttr "polyBevel4.out" "pSphereShape2.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "animBot_Anim_Recovery_Scene_ID.msg" "hyperLayout1.hyp[0].dn";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polyCylinder1.out" "polyExtrudeFace1.ip";
connectAttr "diver_geo_01Shape.wm" "polyExtrudeFace1.mp";
connectAttr "polySphere1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "deleteComponent1.ig";
connectAttr "polyTorus1.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyCloseBorder1.ip";
connectAttr "polyTweak2.out" "polyBevel1.ip";
connectAttr "pTorusShape1.wm" "polyBevel1.mp";
connectAttr "polyCloseBorder1.out" "polyTweak2.ip";
connectAttr "polyBevel1.out" "polyBevel2.ip";
connectAttr "pTorusShape1.wm" "polyBevel2.mp";
connectAttr "polyBevel2.out" "polyExtrudeEdge1.ip";
connectAttr "pTorusShape1.wm" "polyExtrudeEdge1.mp";
connectAttr "polyTweak3.out" "polyExtrudeEdge2.ip";
connectAttr "pTorusShape1.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeEdge3.ip";
connectAttr "pTorusShape1.wm" "polyExtrudeEdge3.mp";
connectAttr "polyExtrudeEdge2.out" "polyTweak4.ip";
connectAttr "deleteComponent1.og" "polyBevel3.ip";
connectAttr "pSphereShape1.wm" "polyBevel3.mp";
connectAttr "pTorusShape1.o" "polyUnite1.ip[0]";
connectAttr "pSphereShape1.o" "polyUnite1.ip[1]";
connectAttr "pTorusShape1.wm" "polyUnite1.im[0]";
connectAttr "pSphereShape1.wm" "polyUnite1.im[1]";
connectAttr "polyExtrudeEdge3.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyBevel3.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyUnite1.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "groupParts3.og" "polyTweakUV1.ip";
connectAttr "polyTweak5.out" "polyMergeVert1.ip";
connectAttr "pTorus2Shape.wm" "polyMergeVert1.mp";
connectAttr "polyTweakUV1.out" "polyTweak5.ip";
connectAttr "polyMergeVert1.out" "polyTweakUV2.ip";
connectAttr "polyTweak6.out" "polyMergeVert2.ip";
connectAttr "pTorus2Shape.wm" "polyMergeVert2.mp";
connectAttr "polyTweakUV2.out" "polyTweak6.ip";
connectAttr "polyMergeVert2.out" "polyTweakUV3.ip";
connectAttr "polyTweak7.out" "polyMergeVert3.ip";
connectAttr "pTorus2Shape.wm" "polyMergeVert3.mp";
connectAttr "polyTweakUV3.out" "polyTweak7.ip";
connectAttr "polyMergeVert3.out" "polyTweakUV4.ip";
connectAttr "polyTweak8.out" "polyMergeVert4.ip";
connectAttr "pTorus2Shape.wm" "polyMergeVert4.mp";
connectAttr "polyTweakUV4.out" "polyTweak8.ip";
connectAttr "polyMergeVert4.out" "polyTweakUV5.ip";
connectAttr "polyTweak9.out" "polyMergeVert5.ip";
connectAttr "pTorus2Shape.wm" "polyMergeVert5.mp";
connectAttr "polyTweakUV5.out" "polyTweak9.ip";
connectAttr "polyMergeVert5.out" "polyTweakUV6.ip";
connectAttr "polyTweak10.out" "polyMergeVert6.ip";
connectAttr "pTorus2Shape.wm" "polyMergeVert6.mp";
connectAttr "polyTweakUV6.out" "polyTweak10.ip";
connectAttr "polyMergeVert6.out" "polyTweakUV7.ip";
connectAttr "polyTweak11.out" "polyMergeVert7.ip";
connectAttr "pTorus2Shape.wm" "polyMergeVert7.mp";
connectAttr "polyTweakUV7.out" "polyTweak11.ip";
connectAttr "polyMergeVert7.out" "polyTweakUV8.ip";
connectAttr "polyTweak12.out" "polyMergeVert8.ip";
connectAttr "pTorus2Shape.wm" "polyMergeVert8.mp";
connectAttr "polyTweakUV8.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyMergeVert9.ip";
connectAttr "pTorus2Shape.wm" "polyMergeVert9.mp";
connectAttr "polyMergeVert8.out" "polyTweak13.ip";
connectAttr "polyMergeVert9.out" "polyMergeVert10.ip";
connectAttr "pTorus2Shape.wm" "polyMergeVert10.mp";
connectAttr "polyMergeVert10.out" "polyMergeVert11.ip";
connectAttr "pTorus2Shape.wm" "polyMergeVert11.mp";
connectAttr "polyMergeVert11.out" "polyMergeVert12.ip";
connectAttr "pTorus2Shape.wm" "polyMergeVert12.mp";
connectAttr "polyMergeVert12.out" "polyMergeVert13.ip";
connectAttr "pTorus2Shape.wm" "polyMergeVert13.mp";
connectAttr "polyMergeVert13.out" "polyMergeVert14.ip";
connectAttr "pTorus2Shape.wm" "polyMergeVert14.mp";
connectAttr "polyMergeVert14.out" "polyMergeVert15.ip";
connectAttr "pTorus2Shape.wm" "polyMergeVert15.mp";
connectAttr "polyMergeVert15.out" "polyTweakUV9.ip";
connectAttr "polyTweak14.out" "polyMergeVert16.ip";
connectAttr "pTorus2Shape.wm" "polyMergeVert16.mp";
connectAttr "polyTweakUV9.out" "polyTweak14.ip";
connectAttr "polyMergeVert16.out" "polyTweakUV10.ip";
connectAttr "polyTweak15.out" "polyMergeVert17.ip";
connectAttr "pTorus2Shape.wm" "polyMergeVert17.mp";
connectAttr "polyTweakUV10.out" "polyTweak15.ip";
connectAttr "polyMergeVert17.out" "polyTweakUV11.ip";
connectAttr "polyTweak16.out" "polyMergeVert18.ip";
connectAttr "pTorus2Shape.wm" "polyMergeVert18.mp";
connectAttr "polyTweakUV11.out" "polyTweak16.ip";
connectAttr "polySphere2.out" "polyBevel4.ip";
connectAttr "pSphereShape2.wm" "polyBevel4.mp";
connectAttr "polyTweak17.out" "polySplit1.ip";
connectAttr "polyExtrudeFace1.out" "polyTweak17.ip";
connectAttr "|diver_geo_02|polySurfaceShape1.o" "polySplit2.ip";
connectAttr "polyTweak18.out" "polyExtrudeFace2.ip";
connectAttr "diver_geo_02Shape.wm" "polyExtrudeFace2.mp";
connectAttr "polySplit2.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polyExtrudeFace3.ip";
connectAttr "diver_geo_02Shape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polyExtrudeFace4.ip";
connectAttr "diver_geo_02Shape.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polyExtrudeFace5.ip";
connectAttr "diver_geo_02Shape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polyExtrudeFace6.ip";
connectAttr "diver_geo_02Shape.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak22.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "diver_geo_01Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "capsule_01Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "diver_geo_02Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "diver_geo_03Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pTorusShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pTorusShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pTorus2Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "diver_geo_04Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "diver_geo_05Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
// End of Diver_GEO_v01.ma
