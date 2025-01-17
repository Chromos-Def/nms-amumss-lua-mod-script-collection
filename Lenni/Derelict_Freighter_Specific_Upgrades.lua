Replacement = [[
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardProceduralProduct.xml">
              <Property name="Type" value="GcProceduralProductCategory.xml">
                <Property name="ProceduralProductCategory" value="FreighterTechHyp" />
              </Property>
              <Property name="OSDMessage" value="" />
              <Property name="SubIfPlayerAlreadyHasOne" value="False" />
              <Property name="OverrideRarity" value="False" />
              <Property name="Rarity" value="GcRarity.xml">
                <Property name="Rarity" value="Common" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardProceduralProduct.xml">
              <Property name="Type" value="GcProceduralProductCategory.xml">
                <Property name="ProceduralProductCategory" value="FreighterTechFuel" />
              </Property>
              <Property name="OSDMessage" value="" />
              <Property name="SubIfPlayerAlreadyHasOne" value="False" />
              <Property name="OverrideRarity" value="False" />
              <Property name="Rarity" value="GcRarity.xml">
                <Property name="Rarity" value="Common" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]             = "Derelict_Freighter_Specific_Upgrades.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]        = "Limits derelict freighter loot to hyperdrive and fuel modules",         --optional, for reference
  ["MOD_AUTHOR"]                = "Lenni",         --optional, for reference
  ["NMS_VERSION"]                = "3.62",     --optional, for reference
  ["MODIFICATIONS"]         =             --REQUIRED SECTION
    {
        {
            ["MBIN_CHANGE_TABLE"] = { 
			
				{
                    ["MBIN_FILE_SOURCE"]     = {"METADATA\REALITY\TABLES\REWARDTABLE.MBIN",},
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_CRATE","List","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"] = {"List",},
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_CRATE","OverrideZeroSeed","False",},
							["ADD_OPTION"] 	= "ADDafterLINE",
                            ["ADD"] = Replacement,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_CASE","List","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"] = {"List",},							
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_CASE","OverrideZeroSeed","False",},
							["ADD_OPTION"] 	= "ADDafterLINE",							
                            ["ADD"] = Replacement,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_CAPS","List","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"] = {"List",},							
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_CAPS","OverrideZeroSeed","False",},
							["ADD_OPTION"] 	= "ADDafterLINE",								
                            ["ADD"] = Replacement,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_LOCK","List","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"] = {"List",},							
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_LOCK","OverrideZeroSeed","False",},
							["ADD_OPTION"] 	= "ADDafterLINE",								
                            ["ADD"] = Replacement,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_AMMO","List","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"] = {"List",},							
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_AMMO","OverrideZeroSeed","False"},
							["ADD_OPTION"] 	= "ADDafterLINE",								
                            ["ADD"] = Replacement,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_GIFT","List","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"] = {"List",},							
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_GIFT","OverrideZeroSeed","False"},
							["ADD_OPTION"] 	= "ADDafterLINE",							
                            ["ADD"] = Replacement,
                        },						
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_FREI_TECH","List","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"] = {"List",},							
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_FREI_TECH","OverrideZeroSeed","False"},
							["ADD_OPTION"] 	= "ADDafterLINE",							
                            ["ADD"] = Replacement,
                        },					

                    },
                },
            }
        },
    }
}