NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Health Recharge, Normal Shield Recharge.pak",
["MOD_DESCRIPTION"]		= "No Health Recharge, Normal Shield Recharge",
["MOD_AUTHOR"]				= "GhengopelALPHA",
["NMS_VERSION"]				= "3.51",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HealthPipRechargeRate",	 "0"} -- Originally "200"		
							}	
						}						
					}
				}
			}
		}
	}	
}
