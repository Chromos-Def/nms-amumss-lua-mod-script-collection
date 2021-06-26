LightFOV = 360
LightFalloff = "linear"					--"quadratic" ; use linear if your lights are dim, quadratic if they are really bright
LightMultiplier = 0.5						--1
LightRedOf1 = 1.0
LightGreenOf1 = 1.0
LightBlueOf1 = 1.0

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= "GLight 234a Sentinels.pak",
["MOD_DESCRIPTION"]		= "Sentinel Light modifications",
["MOD_AUTHOR"]			= "Gumsk",
["NMS_VERSION"]			= "2.3.4",
["MODIFICATIONS"]		= {{ ["MBIN_CHANGE_TABLE"] = {{ ["MBIN_FILE_SOURCE"] = {

--Sentinels
		"MODELS\COMMON\ROBOTS\CORRUPTEDDRONE.SCENE.MBIN",
		"MODELS\COMMON\ROBOTS\DRONE.SCENE.MBIN",
		"MODELS\COMMON\ROBOTS\DRONEARMOURED.SCENE.MBIN",
		"MODELS\COMMON\ROBOTS\QUADRUPED.SCENE.MBIN",
		"MODELS\COMMON\ROBOTS\WALKER.SCENE.MBIN",
		"MODELS\COMMON\ROBOTS\LOOTDROP\DRONELOOT.SCENE.MBIN",
		"MODELS\COMMON\ROBOTS\LOOTDROP\QUADLOOT.SCENE.MBIN",		
		"MODELS\COMMON\ROBOTS\LOOTDROP\WALKERLOOT.SCENE.MBIN",
		"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVE\CORRUPTEDDRONEPILEPARTS\CORRUPTEDDRONECORE.SCENE.MBIN"
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