LightFOV = 360
LightFalloff = "linear"					--"quadratic" ; use linear if your lights are dim, quadratic if they are really bright
LightMultiplier = 0.5						--1
LightRedOf1 = 1.0
LightGreenOf1 = 1.0
LightBlueOf1 = 1.0

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= "GLight 234a Buildable Lights.pak",
["MOD_DESCRIPTION"]		= "Buildable light modifications",
["MOD_AUTHOR"]			= "Gumsk",
["NMS_VERSION"]			= "2.3.4",
["MODIFICATIONS"]		= {{ ["MBIN_CHANGE_TABLE"] = {{ ["MBIN_FILE_SOURCE"] = {

--Lights
		"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\CEILINGLIGHT.SCENE.MBIN",
		"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\LABLAMP.SCENE.MBIN",
		"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\LIGHTTABLE.SCENE.MBIN",
		"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\SMALLLIGHT.SCENE.MBIN",
		"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT1.SCENE.MBIN",
		"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT2.SCENE.MBIN",
		"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT3.SCENE.MBIN",
		"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_BLUE.SCENE.MBIN",
		"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_GREEN.SCENE.MBIN",
		"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_PINK.SCENE.MBIN",
		"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_RED.SCENE.MBIN",
		"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_WHITE.SCENE.MBIN",
		"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_YELLOW.SCENE.MBIN"
		},
		
["EXML_CHANGE_TABLE"] = {
	{["SPECIAL_KEY_WORDS"]		= {"Name","FOV"},
		["REPLACE_TYPE"] 		= "ALL",
		["VALUE_CHANGE_TABLE"]	= {
			{"Value", LightFOV}}},
	{["SPECIAL_KEY_WORDS"] 		= {"Name","FALLOFF"},
		["REPLACE_TYPE"] 		= "ALL",
		["VALUE_CHANGE_TABLE"]	= {
			{"Value", LightFalloff}}},
	{["SPECIAL_KEY_WORDS"] 		= {"Name","INTENSITY","Value","IGNORE"},
		["MATH_OPERATION"]		= "*",
		["REPLACE_TYPE"] 		= "ALL",
		["VALUE_CHANGE_TABLE"]	= {
			{"IGNORE", LightMultiplier}}},
	{["SPECIAL_KEY_WORDS"] = {"Name","COL_R"},
		["REPLACE_TYPE"] 		= "ALL",
		["VALUE_CHANGE_TABLE"]	= {
			{"Value", LightRedOf1}}},
	{["SPECIAL_KEY_WORDS"] = {"Name","COL_G"},
		["REPLACE_TYPE"] 		= "ALL",
		["VALUE_CHANGE_TABLE"]	= {
			{"Value", LightGreenOf1}}},
	{["SPECIAL_KEY_WORDS"] = {"Name","COL_B"},	
	["REPLACE_TYPE"] 		= "ALL",
		["VALUE_CHANGE_TABLE"]	= {
			{"Value", LightBlueOf1}}}
}}}}}}