-------------------------------------------
local desc = [[
  camera POV tweaks for vehicles and ships
  Remove auto-centering; photo-mode tweaks
  Decrease camera shake for various events
]]-----------------------------------------

local Cam_Follow = {
--	PRECEDING_KEY				OffsetX	OffsetY	OffsetZ	BackMin	BackMax	UpMin	UpMax	LookStick
	{'CharacterRideCamMedium',	2.2,	0.6,	1,		0.6,	0.6,	0.6,	0.8,	0},
	{'CharacterRideCamLarge',	2.2,	0.6,	1,		0.6,	0.6,	0.6,	0.8,	0},
	{'CharacterRideCamHuge',	2.8,	1,		1.2,	-8,		-6,		1,		1.4,	0},
	{'BuggyFollowCam',			0,		-0.2,	-0.7,	1,		2,		1,		1,		0},
	{'SubmarineFollowCam',		0,		3.3,	-2.5,	5,		5,		3,		4,		0},
	{'BikeFollowCam',			0,		0.01,	-0.4,	0,		2,		0.2,	0,		0},
	{'WheeledBikeFollowCam',	0,		0.4,	-0.7,	0,		-7,		0,		1,		0},
	{'TruckFollowCam',			0,		2.6,	-2,		4,		4,		2.5,	2.25,	0},
	{'MechFollowCam',			0,		1.8,	0,		6,		6,		1.2,	1.4,	0},
	{'MechShootCam',			0,		0.3,	0,		3,		4,		0.3,	0.4,	0},
	{'MechJetpackCam',			0.4,	0.65,	0,		5,		5,		0,		2,		0},
	{'SpaceshipFollowCam',		0,		3.2,	-3.2,	-1.6,	-3,		2,		0,		255},
	{'DropshipFollowCam',		0,		2.4,	-3.8,	0.2,	-2,		2.2,	1.2,	255},
	{'ShuttleFollowCam',		0,		0.2,	-1,		1,		-1,		1,		0,		255},
	{'RoyalShipFollowCam',		0,		1.4,	-8,		4,		-4,		1,		1,		255},
	{'ScienceShipFollowCam',	0,		2,		-2,		5,		6,		2,		1,		255},
	{'AlienShipFollowCam',		0,		-0.2,	-4,		0,		0,		-0.2,	-2,		255}
}
function Cam_Follow:Get(x)
	return {
		MATH_OPERATION 		= '+',
		INTEGER_TO_FLOAT	= 'FORCE',
		PRECEDING_KEY_WORDS = x[1],
		VALUE_CHANGE_TABLE 	= {
			{'OffsetX',				x[2]},
			{'OffsetY',				x[3]},
			{'OffsetZFlat',			x[4]},
			{'BackMinDistance',		x[5]},
			{'BackMaxDistance',		x[6]},
			{'UpMinDistance',		x[7]},
			{'UpMaxDistance',		x[8]},
			{'LookStickLimitAngle',	x[9]}
		}
	}
end

local Shake_Strength_Mult = {
	{'LAND',			0.5},	-- 0.01
	{'WALKERWALK',		0.5},	-- 0.03
	{'DOCKINGSHAKE', 	0.4},	-- 0.01
	{'WARP_FRT_ATMOS',	0.1},	-- 0.01
	{'LARGECREATUREWA', 0.35},	-- 0.02
	{'RUNNING',			0.8},	-- 30
	{'FLYBY',			0.1},	-- 2
	{'VENTBUILDUP',		0.4},	-- 0.05
	{'VENTEXPLODE',		0.65},	-- 0.3
	{'EXTRACTOR',		0.2},	-- 0.3
	{'MECHTITANFALL',	0.35},	-- 0.03
	{'MECHLAND',		0.35},	-- 0.03
	{'SANDWORMEMERGE',	0.6},	-- 0.06
	{'SANDWORMSHAKE',	0.8},	-- 0.004
	{'WORMGRNDEMERGE',	0.6},	-- 0.06
	{'WORMGRNDROAR',	0.9},	-- 0.004
}
function Shake_Strength_Mult:Get(x)
	return {
		MATH_OPERATION 		= '*',
		INTEGER_TO_FLOAT	= 'FORCE',
		SPECIAL_KEY_WORDS	= {'Name', x[1]},
		VALUE_CHANGE_TABLE 	= { {'ShakeStrength', x[2]} }
	}
end

local function BuildExmlChangeTable(tbl)
	local T = {}
	for _,v in ipairs(tbl) do table.insert(T, tbl:Get(v)) end
	return T
end

Source_Global_Camera = 'GCCAMERAGLOBALS.GLOBAL.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC CAMERA.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.75,
	MOD_BATCHNAME		= '_GLOBALS ~@~collection.pak',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= Source_Global_Camera,
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'ALL',
				VALUE_CHANGE_TABLE 	= {
					{'CenterStartTime',		42},
					{'VertRotationMin',		-80},
					{'VertRotationMax',		80},
					{'Time',				0}, -- disable charting arial view
					{'PauseTime',			0},
					{'TimeBack',			0}
				}
			},
			{
				MATH_OPERATION 		= '+',
				VALUE_CHANGE_TABLE 	= {
					{'VehicleExitFlashTime',			-0.3},	-- 0.8
					{'VehicleExitFlashStrength',		-0.3},	-- 0.8
					{'BinocularFlashTime',				-0.12},	-- 0.24
					{'BinocularFlashStrength',			-0.5},	-- 0.9
					{'InteractionHeadHeightDefault',	-0.15},	-- 1.65
					{'PhotoModeVelocitySmoothTime',		0.3},	-- 0.5
					{'PhotoModeMoveSpeed',				5},		-- 11
					{'PhotoModeTurnSpeed',				-30},	-- 60
					{'PhotoModeMaxDistance',			1000},	-- 150
					{'PhotoModeMaxDistanceSpace',		5000},	-- 200
					{'PhotoModeRollSpeed',				-10},	-- 45
					{'BuildingModeMaxDistance',			1600},	-- 60
					{'ModelViewMouseRotateSpeed',		-0.4},	-- 1.6	-- inventory models
					{'ModelViewMouseRotateSnapStrength',-0.56},	-- 0.94
					{'BobAmountAbandFreighter',			-0.02},	-- 0.1
					{'FirstPersonCamHeight',			-0.06},	-- 0.85
					{'OffsetYStartBias',				6.5},	-- 3.5
					{'OffsetZStartBias',				70},	-- 10
				}
			},
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = 'VehicleExitFlashColour',
				VALUE_CHANGE_TABLE 	= {
					{'R',			0.08},
					{'G',			0.08},
					{'B',			0.16},
					{'A',			0.5}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= Source_Global_Camera,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Cam_Follow)
	},
	{
		MBIN_FILE_SOURCE	= Source_Global_Camera,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Shake_Strength_Mult)
	}
}}}}
