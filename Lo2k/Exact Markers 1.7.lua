NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Exact Markers 1.7.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.81",
["MOD_DESCRIPTION"]			= "This mods place markers at the exact item position",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCBUILDINGGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxLineLength",	"0"}
							}
						}
					}
				}
			}
		}
	}	
}
