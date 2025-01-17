LOOT_MULTIPLIER = 100
MULTIPLIER = 15

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "zz stall's combined loot and resources multiplier.pak", 
["MOD_AUTHOR"]				= "stallingblock2",
["NMS_VERSION"]				= "3.53",
["MOD_DESCRIPTION"]			= "multiplies gains from gathering and mining",
["MODIFICATIONS"] 			= 	
{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 																
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"]	= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountMax", MULTIPLIER},	
								
							}
						},
						{
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PercentageChance",  LOOT_MULTIPLIER}
							}
						}
					}
				}
			}
		}
	}	
}