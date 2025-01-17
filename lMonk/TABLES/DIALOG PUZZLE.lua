----------------------------------------------------------------------------------------
local desc = [[
  replace freighter battles reward for each race, require additions in rewards table(!)
  insert the test reward into the construction recipe analyzer 'Cancel' menu
]]--------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE DIALOG PUZZLE.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.75,
	MOD_BATCHNAME		= '_TABLES ~@~collection.pak',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_MATCH			= 'FREIGHTERLOOT',
				SPECIAL_KEY_WORDS	= {'Id', '?FREIGHTER', 'AlienRace', 'Warriors'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'Value',		'FREIGHTERLOOT_W'}
				}
			},
			{
				VALUE_MATCH			= 'FREIGHTERLOOT',
				SPECIAL_KEY_WORDS	= {'Id', '?FREIGHTER', 'AlienRace', 'Explorers'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'Value',		'FREIGHTERLOOT_E'}
				}
			},
			{
				VALUE_MATCH			= 'FREIGHTERLOOT',
				SPECIAL_KEY_WORDS	= {'Id', '?FREIGHTER', 'AlienRace', 'Traders'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'Value',		'FREIGHTERLOOT_T'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', '?BLUEPRINT_ANALYSER', 'Name', 'ALL_REQUEST_LEAVE'},
				PRECEDING_KEY_WORDS	= 'Rewards',
				VALUE_CHANGE_TABLE 	= {
					{'Value',		'TEST_REWARD_09'}
				}
			}
		}
	}
}}}}
