NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Milestone Fixes - No Notifications 1.1.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.10",
["MOD_DESCRIPTION"]			= "This mod fixes incorrect milestone total count and removes notifications",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\STATS\LEVELEDSTATSTABLE.MBIN", "METADATA\GAMESTATE\STATS\LEVELEDSTATSTABLESURVIVALMODE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"StatMessageType",	"Silent"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"StatId", "PIRATES_KILLED",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"StatMessageType",	"Silent"},
								{"ShowInTerminal",	"False"},
								{"ShowStatLevel", "False"},
							}
						},
					},
				}	
			}
		}
	}	
}
