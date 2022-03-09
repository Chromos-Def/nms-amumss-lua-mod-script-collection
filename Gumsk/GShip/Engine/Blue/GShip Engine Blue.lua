Color = "BLUE"

Author = "Gumsk"
ModName = "GShip"
ModNameSub = "Engine".." "..Color
BaseDescription = "Changes color of engine glow to "..Color
GameVersion = "353"
ModVersion = "a"

FileSource1 = "MODELS/COMMON/PLAYER/PLAYERCHARACTER/PLAYERCHARACTER/ENGINEGLOW_MAT.MATERIAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["ADD_FILES"] = {
	{
		["FILE_DESTINATION"] 		= "TEXTURES/COMMON/SPACECRAFT/SHARED/GUMSK.JETPACK.ENGINEGLOW.2.DDS",
		["EXTERNAL_FILE_SOURCE"] 	= "GUMSK.JETPACK.ENGINEGLOW.2.DDS",
	},
	{
		["FILE_DESTINATION"] 		= "TEXTURES/COMMON/SPACECRAFT/SHARED/ENGINEGLOW.1.DDS",
		["EXTERNAL_FILE_SOURCE"] 	= "GUMSK."..Color..".ENGINEGLOW.1.DDS",
	},
	{
		["FILE_DESTINATION"] 		= "TEXTURES/COMMON/SPACECRAFT/SHARED/ENGINEGLOW.2.DDS",
		["EXTERNAL_FILE_SOURCE"] 	= "GUMSK."..Color..".ENGINEGLOW.2.DDS",
	},
	{
		["FILE_DESTINATION"] 		= "TEXTURES/COMMON/SPACECRAFT/SHARED/ENGINEGLOW.3.DDS",
		["EXTERNAL_FILE_SOURCE"] 	= "GUMSK."..Color..".ENGINEGLOW.3.DDS",
	},
	{
		["FILE_DESTINATION"] 		= "TEXTURES/COMMON/SPACECRAFT/SHARED/ENGINEGLOWPROC.PRIMARY.DDS",
		["EXTERNAL_FILE_SOURCE"] 	= "GUMSK."..Color..".ENGINEGLOWPROC.PRIMARY.DDS",
	},
	{
		["FILE_DESTINATION"] 		= "TEXTURES/EFFECTS/SHIP/ENGINE_JET.DDS",
		["EXTERNAL_FILE_SOURCE"] 	= "GUMSK."..Color..".ENGINE_JET.DDS",
	},
	{
		["FILE_DESTINATION"] 		= "TEXTURES/EFFECTS/SHIP/ENGINE_JETSQUARE.DDS",
		["EXTERNAL_FILE_SOURCE"] 	= "GUMSK."..Color..".ENGINE_JETSQUARE.DDS",
	},
},

["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {

{["MBIN_FILE_SOURCE"] = FileSource1,
["EXML_CHANGE_TABLE"] = {
	{["PRECEDING_KEY_WORDS"] = {"Samplers"},
		["VALUE_CHANGE_TABLE"] = {
			{"Map", "TEXTURES/COMMON/SPACECRAFT/SHARED/GUMSK.JETPACK.ENGINEGLOW.2.DDS"}
		}},
	}
},

}},}}