LightFOV = 360
LightFalloff = "linear"					--"quadratic" ; use linear if your lights are dim, quadratic if they are really bright
LightMultiplier = 0.5						--1
LightRedOf1 = 1.0
LightGreenOf1 = 1.0
LightBlueOf1 = 1.0

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= "GLight 234a Ships.pak",
["MOD_DESCRIPTION"]		= "Ship Light modifications",
["MOD_AUTHOR"]			= "Gumsk",
["NMS_VERSION"]			= "2.3.4",
["MODIFICATIONS"]		= {{ ["MBIN_CHANGE_TABLE"] = {{ ["MBIN_FILE_SOURCE"] = {

--Ships
		"MODELS\COMMON\SPACECRAFT\COMMONPARTS\SHIPINTERIORPARTS\CORRIDOR_XSHAPE.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\COMMONPARTS\SHIPINTERIORPARTS\CORRIDOR_XSHAPE_LOD.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\COMMONPARTS\SHIPINTERIORPARTS\ROUNDCORNER_2X3.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\COMMONPARTS\SHIPINTERIORPARTS\ROUNDCORNER_2X3_LOD.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\COMMONPARTS\SHIPINTERIORPARTS\STRAIGHTSTAIRS_2X4.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\COMMONPARTS\SHIPINTERIORPARTS\STRAIGHT_2X2.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\COMMONPARTS\SHIPINTERIORPARTS\STRAIGHT_2X2_LOD.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\COMMONPARTS\SHIPINTERIORPARTS\TSECTION_2X2.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\COMMONPARTS\SHIPINTERIORPARTS\TSECTION_2X2_LOD.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\DROPSHIPS\ENGINES\ENGINESB.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\DROPSHIPS\ENGINES\ENGINESC.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA_INTERIOR.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITB.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITB_INTERIOR.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\FIGHTERS\ENGINE\ENGINE_B\ENGINEB.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\FIGHTERS\ENGINE\ENGINE_C\ENGINEC.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\FIGHTERS\ENGINE\ENGINE_D\ENGINED.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPITCOMMON_INTERIOR.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\FIGHTERS\ACCESSORIES\HEADLAMP.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\FIGHTERS\ACCESSORIES\TURBINEBB.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\POLICE\POLICESHIP.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\S-CLASS\SQUIDPARTS\COCKPIT\COCKPIT_A.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\S-CLASS\SQUIDPARTS\ENGINE\ENGINE_A.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\S-CLASS\SQUIDPARTS\NOSESECTION\NOSESECTION_A.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\ENGINE\ENGINE_A.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\ENGINE\ENGINE_B.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\ENGINE\ENGINE_C.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\INTERIOR\CANOPYA_INTERIOR.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\ACCESSORIES\LAMP.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\SHUTTLE\INTERIORS\CANOPYA_INTERIOR\CANOPYA_INTERIOR.SCENE.MBIN",
		"MODELS\COMMON\SPACECRAFT\SHUTTLE\ACCESSORIES\HEADLAMP.SCENE.MBIN",
		"MODELS\EFFECTS\WARP\WARPLARGEPORTAL.SCENE.MBIN",
		"MODELS\EFFECTS\WARP\WARPPORTAL.SCENE.MBIN",
		"MODELS\EFFECTS\WARP\WARPTUNNEL.SCENE.MBIN",
		"MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE.SCENE.MBIN"
		},
		
["EXML_CHANGE_TABLE"] = {
	-- {["SPECIAL_KEY_WORDS"]		= {"Name","FOV"},
		-- ["REPLACE_TYPE"] 		= "ALL",
		-- ["VALUE_CHANGE_TABLE"]	= {
			-- {"Value", LightFOV}}},
	{["SPECIAL_KEY_WORDS"] 		= {"Name","FALLOFF"},
		["REPLACE_TYPE"] 		= "ALL",
		["VALUE_CHANGE_TABLE"]	= {
			{"Value", LightFalloff}}},
	{["SPECIAL_KEY_WORDS"] 		= {"Name","INTENSITY","Value","IGNORE"},
		["MATH_OPERATION"]		= "*",
		["REPLACE_TYPE"] 		= "ALL",
		["VALUE_CHANGE_TABLE"]	= {
			{"IGNORE", LightMultiplier}}},
	-- {["SPECIAL_KEY_WORDS"] = {"Name","COL_R"},
		-- ["REPLACE_TYPE"] 		= "ALL",
		-- ["VALUE_CHANGE_TABLE"]	= {
			-- {"Value", LightRedOf1}}},
	-- {["SPECIAL_KEY_WORDS"] = {"Name","COL_G"},
		-- ["REPLACE_TYPE"] 		= "ALL",
		-- ["VALUE_CHANGE_TABLE"]	= {
			-- {"Value", LightGreenOf1}}},
	-- {["SPECIAL_KEY_WORDS"] = {"Name","COL_B"},	
	-- ["REPLACE_TYPE"] 		= "ALL",
		-- ["VALUE_CHANGE_TABLE"]	= {
			-- {"Value", LightBlueOf1}}}
}}}}}}