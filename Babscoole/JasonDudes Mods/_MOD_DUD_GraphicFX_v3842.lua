NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_MOD_DUD_GraphicFX_v3842.pak",
["MOD_AUTHOR"]				= "jasondude7116",
["LUA_AUTHOR"]				= "Babscoole",
["NMS_VERSION"]				= "3.84",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LUTDistanceFlightMultiplier",				"1"}, -- Original "0"
								{"SunLightIntensity",				"5"}, -- Original "3"
								{"DOFFarStrengthWater",				"0.5"}, -- Original "0"
							}
						},
					}
				},
			}
		},
	}	
}