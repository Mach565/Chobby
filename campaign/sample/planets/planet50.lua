--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Planet config

local function GetPlanet(planetUtilities, planetID)
	
	local image = LUA_DIRNAME .. "images/planets/swamp02.png"
	
	local planetData = {
		name = "Arteri",
		startingPlanet = false,
		mapDisplay = {
			x = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][1]) or 0.68,
			y = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][2]) or 0.57,
			image = image,
			size = planetUtilities.PLANET_SIZE_MAP,
		},
		infoDisplay = {
			image = image,
			size = planetUtilities.PLANET_SIZE_INFO,
			backgroundImage = planetUtilities.backgroundImages[math.floor(math.random()*#planetUtilities.backgroundImages) + 1],
			terrainType = "Terran",
			radius = "2545 km",
			primary = "Varis",
			primaryType = "G4V",
			milRating = 1,
			feedbackLink = "http://zero-k.info/Forum/Thread/24594",
			text = "Lying on an interstellar crossroad, this planet seems to have attracted many smugglers. They operated from its fields of broken plateaus, while bribed local officials looked the other way."
			.. "\n "
			.. "\nNow, this is bound to attract some attention, but if I could just manage to gain access to the operations of a data smuggler... "
			,
			extendedText = "The smuggler's defenses are barely perfunctory, so I will have to rely on my Jumpbots' inherent advantage on rough terrain - and either strike quickly to take out one opponent or prepare for a long game of attrition."
		},
		tips = {
			{
				image = "unitpics/module_jumpjet.png",
				text = [[Your Commander has been equipped with an experimental jumpjet module for this mission (default hotkey J).]]
			},
			{
				image = "unitpics/factoryjump.png",
				text = [[Many Jumpbot units are unlocked by missions earlier in the campaign. If you're finding this mission too difficult, try backtracking to make sure you didn't miss any. Switching to another factory later might also be helpful.]]
			},
			{
				image = "unitpics/jumpcon.png",
				text = [[The Constable constructor has jumpjets which allow it to set up metal extractors, wind generators, radar towers and defences on high mountains.]]
			},
			{
				image = "unitpics/jumpskirm.png",
				text = [[The Moderator does not jump, but its long-range disruptor beam deals with tougher close-range fighters like the Knight and Reaver, which Pyros would not want to fight directly.]]
			},
		},
		gameConfig = {
			mapName = "Vein",
			playerConfig = {
				startX = 3750,
				startZ = 770,
				allyTeam = 0,
				facplop = false,
				commanderParameters = {
					facplop = false,
					defeatIfDestroyedObjectiveID = 2,
				},
				-- Extra commander modules.
				extraModules = {
					{name = "module_jumpjet", count = 1, add = false},
					-- List of:
					--  * name - Module name. See commConfig.lua.
					--  * count - Number of copies of the module.
					--  * add - Boolean controlling whether count adds to the number of modules of
					--          the type the player has equiped or overwrites the number.
				},
				extraUnlocks = {
					"factoryjump",
					"jumpcon",
					"jumpraid",
					"jumpskirm",
					"jumpaa",
				},
				startUnits = {
					{
						name = "staticmex",
						x = 4232,
						z = 216,
						facing = 0,
					},
 					{
						name = "staticmex",
						x = 3720,
						z = 488,
						facing = 0,
					},
 					{
						name = "staticmex",
						x = 4216,
						z = 904,
						facing = 0,
					},
 					{
						name = "energywind",
						x = 4312,
						z = 872,
						facing = 0,
					},
 					{
						name = "energywind",
						x = 4136,
						z = 856,
						facing = 0,
					},
 					{
						name = "factoryjump",
						x = 3944,
						z = 696,
						facing = 0,
					},
 					{
						name = "staticcon",
						x = 3976,
						z = 568,
						facing = 0,
						commands = {
							{cmdID = planetUtilities.COMMAND.PATROL, pos = {3976, 568}},
							{cmdID = planetUtilities.COMMAND.PATROL, pos = {4001, 593}, options = {"shift"}},
						},
					},
 					{
						name = "energywind",
						x = 3800,
						z = 424,
						facing = 0,
					},
 					{
						name = "energywind",
						x = 3896,
						z = 360,
						facing = 0,
					},
 					{
						name = "energywind",
						x = 3992,
						z = 312,
						facing = 0,
					},
 					{
						name = "energywind",
						x = 4072,
						z = 280,
						facing = 0,
					},
 					{
						name = "energywind",
						x = 4168,
						z = 264,
						facing = 0,
					},
 					{
						name = "jumpcon",
						x = 2694,
						z = 622,
						facing = 0,
					},
 					{
						name = "turretlaser",
						x = 3984,
						z = 1008,
						facing = 0,
					},
 					{
						name = "staticmex",
						x = 2696,
						z = 1048,
						facing = 0,
					},
 					{
						name = "energywind",
						x = 2648,
						z = 968,
						facing = 0,
					},
 					{
						name = "staticmex",
						x = 2312,
						z = 584,
						facing = 0,
					},
 					{
						name = "energywind",
						x = 2392,
						z = 552,
						facing = 0,
					},
 					{
						name = "staticmex",
						x = 2936,
						z = 360,
						facing = 0,
					},
 					{
						name = "energywind",
						x = 2872,
						z = 280,
						facing = 0,
					},
 					{
						name = "turretlaser",
						x = 2448,
						z = 384,
						facing = 3,
					},
 					{
						name = "staticradar",
						x = 5472,
						z = 576,
						facing = 0,
					},
 					{
						name = "staticradar",
						x = 3472,
						z = 1056,
						facing = 0,
					},
 					{
						name = "turretlaser",
						x = 2544,
						z = 928,
						facing = 0,
					},
 					{
						name = "jumpraid",
						x = 3700,
						z = 1000,
						facing = 0,
					},
 					{
						name = "jumpraid",
						x = 3800,
						z = 1000,
						facing = 0,
					},
 					{
						name = "jumpraid",
						x = 3900,
						z = 1000,
						facing = 0,
					},
 					{
						name = "jumpskirm",
						x = 3750,
						z = 900,
						facing = 0,
					},
 					{
						name = "jumpskirm",
						x = 3850,
						z = 900,
						facing = 0,
					},
 					{
						name = "jumpcon",
						x = 5367,
						z = 479,
						facing = 0,
					},
 					{
						name = "energywind",
						x = 5336,
						z = 312,
						facing = 3,
					},
 					{
						name = "energywind",
						x = 5416,
						z = 312,
						facing = 3,
					},
				}
			},
			aiConfig = {
				{
					startX = 410,
					startZ = 7700,
					humanName = "Marillia",
					--aiLib = "Null AI",
					--bitDependant = false,
					aiLib = "Circuit_difficulty_autofill",
					bitDependant = true,
					allyTeam = 0,
					unlocks = {
						"staticmex",
						"energysolar",
						"energywind",
						"energypylon",
						"staticstorage",
						"turretlaser",
						"turretmissile",
						"turretriot",
						"turretaalaser",
						"turretaaclose",
						"staticradar",
						--"staticcon",
						--"factoryspider",
						--"spidercon",
						"spiderscout",
						"spideremp",
						"spiderskirm",
						"spiderriot",
						"spiderassault",
					},
					difficultyDependantUnlocks = {
						[4] = {"cloakheavyraid"},
					},
					commander = false,
					startUnits = {
						{
							name = "factoryspider",
							x = 4100,
							z = 4100,
							facing = 0,
							bonusObjectiveID = 2,
						},
						{
							name = "spiderskirm",
							x = 4100,
							z = 4200,
							facing = 0,
						},
						{
							name = "spideremp",
							x = 4000,
							z = 4200,
							facing = 0,
						},
						{
							name = "spiderriot",
							x = 4200,
							z = 4200,
							facing = 0,
						},
						-- {
							-- name = "staticcon",
							-- x = 4100,
							-- z = 3900,
							-- facing = 0,
						-- },
						{
							name = "staticstorage",
							x = 3900,
							z = 3900,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 4000,
							z = 3750,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 4444,
							z = 4100,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 3980,
							z = 4400,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 3860,
							z = 3780,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 4040,
							z = 3600,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 4460,
							z = 4220,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 3870,
							z = 4480,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 4080,
							z = 4280,
							facing = 0,
							difficultyAtMost = 2,
						},
						{
							name = "turretlaser",
							x = 4080,
							z = 4280,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "turretlaser",
							x = 4100,
							z = 3700,
							facing = 2,
						},
						{
							name = "turretlaser",
							x = 4400,
							z = 4400,
							facing = 1,
						},
					}
				},
				{
					startX = 410,
					startZ = 7700,
					humanName = "Pulmox",
					--aiLib = "Null AI",
					--bitDependant = false,
					aiLib = "Circuit_difficulty_autofill",
					bitDependant = true,
					commanderParameters = {
						facplop = false,
						bonusObjectiveID = 1,
					},
					allyTeam = 1,
					unlocks = {
						"staticmex",
						"energysolar",
						"energywind",
						--"energyfusion",
						"energygeo",
						"energypylon",
						"staticstorage",
						"turretlaser",
						"turretmissile",
						"turretriot",
						"turretaalaser",
						"turretaaclose",
						"staticradar",
						"staticcon",
						"staticantinuke",
						"factorycloak",
						"cloakcon",
						"cloakraid",
						"cloakriot",
						"cloakskirm",
						"cloakassault",
						"cloakaa",
						--"cloakarty",
						--"cloaksnipe",
						"cloakbomb",
						--"striderhub",
						--"striderscorpion",
					},
					difficultyDependantUnlocks = {
						[4] = {"cloakheavyraid"},
					},
					commanderLevel = 5,
					commander = {
						name = "Kuro",
						chassis = "recon",
						decorations = {
							"skin_recon_dark",
						},
						modules = {
							"commweapon_clusterbomb",
							"commweapon_heavymachinegun",
							"module_ablative_armor",
							"module_ablative_armor",
							"module_ablative_armor",
							"module_personal_cloak",
							"module_high_power_servos",
							"module_high_power_servos",
							"module_high_power_servos",
							"module_autorepair",
							"module_autorepair",
							"module_autorepair",
						}
					},
					startUnits = {
						{
							name = "cloakcon",
							x = 303,
							z = 7344,
							facing = 3,
							difficultyAtLeast = 3,
						},
 						{
							name = "cloakcon",
							x = 412,
							z = 7412,
							facing = 0,
							difficultyAtLeast = 4,
						},
						{
							name = "staticmex",
							x = 248,
							z = 7176,
							facing = 0,
							difficultyAtLeast = 2,
						},
 						{
							name = "staticmex",
							x = 632,
							z = 7560,
							facing = 0,
							difficultyAtLeast = 3,
						},
 						{
							name = "staticmex",
							x = 216,
							z = 8008,
							facing = 0,
							difficultyAtLeast = 4,
						},
 						{
							name = "energysolar",
							x = 280,
							z = 8024,
							facing = 3,
						},
 						{
							name = "energysolar",
							x = 200,
							z = 8072,
							facing = 2,
						},
 						{
							name = "energysolar",
							x = 152,
							z = 7992,
							facing = 1,
						},
 						{
							name = "energysolar",
							x = 232,
							z = 7944,
							facing = 0,
						},
 						{
							name = "energysolar",
							x = 696,
							z = 7576,
							facing = 3,
						},
 						{
							name = "energysolar",
							x = 616,
							z = 7624,
							facing = 2,
						},
 						{
							name = "energysolar",
							x = 568,
							z = 7544,
							facing = 1,
						},
 						{
							name = "energysolar",
							x = 648,
							z = 7496,
							facing = 0,
						},
 						{
							name = "energysolar",
							x = 312,
							z = 7192,
							facing = 3,
						},
 						{
							name = "energysolar",
							x = 232,
							z = 7240,
							facing = 2,
						},
 						{
							name = "energysolar",
							x = 184,
							z = 7160,
							facing = 1,
						},
 						{
							name = "energysolar",
							x = 264,
							z = 7112,
							facing = 0,
						},
 						{
							name = "factorycloak",
							x = 264,
							z = 7600,
							facing = 2,
						},
 						{
							name = "staticcon",
							x = 232,
							z = 7736,
							facing = 2,
						},
 						{
							name = "staticradar",
							x = 16,
							z = 7584,
							facing = 2,
						},
 						{
							name = "turretmissile",
							x = 352,
							z = 6976,
							facing = 2,
						},
 						{
							name = "turretmissile",
							x = 464,
							z = 7008,
							facing = 2,
						},
 						{
							name = "turretmissile",
							x = 864,
							z = 7360,
							facing = 1,
						},
 						{
							name = "turretmissile",
							x = 912,
							z = 7488,
							facing = 1,
						},
 						{
							name = "turretmissile",
							x = 960,
							z = 7920,
							facing = 1,
						},
 						{
							name = "turretmissile",
							x = 976,
							z = 8032,
							facing = 1,
						},
 						{
							name = "cloakraid",
							x = 552,
							z = 7350,
							facing = 1,
						},
 						{
							name = "cloakraid",
							x = 598,
							z = 7358,
							facing = 1,
						},
 						{
							name = "cloakraid",
							x = 508,
							z = 7328,
							facing = 1,
						},
 						{
							name = "cloakraid",
							x = 419,
							z = 7290,
							facing = 2,
						},
 						{
							name = "cloakassault",
							x = 468,
							z = 7312,
							facing = 2,
						},
 						{
							name = "cloakassault",
							x = 648,
							z = 7381,
							facing = 1,
						},
					}
				},
				{
					startX = 5400,
					startZ = 7300,
					humanName = "Umbilis",
					--aiLib = "Null AI",
					--bitDependant = false,
					aiLib = "Circuit_difficulty_autofill",
					bitDependant = true,
					commanderParameters = {
						facplop = false,
						bonusObjectiveID = 1,
					},
					allyTeam = 1,
					unlocks = {
						"staticmex",
						"energysolar",
						"energywind",
						--"energyfusion",
						"energygeo",
						"energypylon",
						"staticstorage",
						"turretlaser",
						"turretmissile",
						"turretriot",
						"turretaalaser",
						"turretaaclose",
						"staticradar",
						"staticcon",
						"staticantinuke",
						"staticrearm",
						"factoryshield",
						"shieldcon",
						"shieldraid",
						"shieldassault",
						"shieldskirm",
						--"shieldbomb",
						"shieldaa",
						--"shieldfelon",
						"factorygunship",
						"gunshipraid",
						"gunshipskirm",
					},
					difficultyDependantUnlocks = {
						[2] = {"shieldarty"},
						[3] = {"shieldarty","shieldriot"},
						[4] = {"shieldarty","shieldriot","shieldfelon","shieldshield"},
					},
					commanderLevel = 5,
					commander = {
						name = "Clifford",
						chassis = "engineer",
						decorations = {
							"skin_support_hotrod",
						},
						modules = {
							"commweapon_disruptorbomb",
							"commweapon_lparticlebeam",
							"module_battle_drone",
							"module_battle_drone",
							"module_companion_drone",
							"module_companion_drone",
							"module_heavy_armor",
							"module_heavy_armor",
							"module_adv_nano",
							"module_adv_nano",
						}
					},
					startUnits = {
						{
							name = "shieldcon",
							x = 5545,
							z = 7324,
							facing = 0,
							difficultyAtLeast = 4,
						},
						{
							name = "turretlaser",
							x = 5200,
							z = 7312,
							facing = 3,
						},
 						
 						{
							name = "staticmex",
							x = 5608,
							z = 7752,
							facing = 2,
							difficultyAtLeast = 2,
						},
 						{
							name = "staticmex",
							x = 5032,
							z = 7736,
							facing = 2,
							difficultyAtLeast = 3,
						},
 						{
							name = "staticmex",
							x = 5928,
							z = 7160,
							facing = 2,
							difficultyAtLeast = 4,
						},
 						{
							name = "energysolar",
							x = 5896,
							z = 7096,
							facing = 2,
						},
 						{
							name = "energysolar",
							x = 5976,
							z = 7096,
							facing = 2,
						},
 						{
							name = "energysolar",
							x = 4968,
							z = 7768,
							facing = 2,
						},
 						{
							name = "energysolar",
							x = 5048,
							z = 7800,
							facing = 2,
						},
 						{
							name = "energysolar",
							x = 5672,
							z = 7768,
							facing = 1,
						},
 						{
							name = "energysolar",
							x = 5592,
							z = 7816,
							facing = 0,
						},
 						{
							name = "energysolar",
							x = 5544,
							z = 7736,
							facing = 3,
						},
 						{
							name = "energysolar",
							x = 5624,
							z = 7688,
							facing = 2,
						},
 						{
							name = "staticradar",
							x = 6208,
							z = 7136,
							facing = 1,
						},
 						{
							name = "turretmissile",
							x = 6160,
							z = 7088,
							facing = 1,
						},
 						{
							name = "turretmissile",
							x = 6224,
							z = 7232,
							facing = 1,
						},
 						{
							name = "turretmissile",
							x = 6000,
							z = 7872,
							facing = 1,
						},
 						{
							name = "turretmissile",
							x = 6000,
							z = 7968,
							facing = 1,
						},
 						{
							name = "turretemp",
							x = 4896,
							z = 7712,
							facing = 3,
						},
 						{
							name = "turretemp",
							x = 5440,
							z = 6880,
							facing = 2,
						},
 						{
							name = "staticcon",
							x = 5240,
							z = 8040,
							facing = 2,
						},
 						{
							name = "factoryshield",
							x = 5488,
							z = 7448,
							facing = 2,
						},
 						{
							name = "shieldskirm",
							x = 5463,
							z = 7201,
							facing = 2,
						},
 						{
							name = "shieldskirm",
							x = 5558,
							z = 7228,
							facing = 2,
						},
 						{
							name = "shieldskirm",
							x = 5668,
							z = 7237,
							facing = 2,
						},
 						{
							name = "shieldraid",
							x = 5385,
							z = 7070,
							facing = 2,
						},
 						{
							name = "shieldraid",
							x = 5529,
							z = 7085,
							facing = 2,
						},
 						{
							name = "shieldraid",
							x = 5603,
							z = 7088,
							facing = 2,
						},
 						{
							name = "shieldraid",
							x = 5460,
							z = 7083,
							facing = 2,
						},
					}
				},
			},
			defeatConditionConfig = {
				-- Indexed by allyTeam.
				[0] = { },
				[1] = {
					ignoreUnitLossDefeat = false,
					vitalCommanders = false,
					vitalUnitTypes = {
						"factoryshield",
						"factorycloak",
					},
					loseAfterSeconds = false,
					allyTeamLossObjectiveID = 1,
				},
			},
			objectiveConfig = {
				-- This is just related to displaying objectives on the UI.
				[1] = {
					description = "Destroy all enemy Factories",
				},
				[2] = {
					description = "Protect your Commander",
				},
			},
			bonusObjectiveConfig = {
				[1] = { -- Kill enemy commander in 7:30
					satisfyOnce = true,
					comparisionType = planetUtilities.COMPARE.AT_MOST,
					targetNumber = 0,
					-- See bonusObjectiveID in units table
					image = planetUtilities.ICON_DIR .. "skin_support_hotrod.png",
					imageOverlay = planetUtilities.ICON_OVERLAY.ATTACK,
					description = "Destroy both enemy Commanders",
					experience = planetUtilities.BONUS_EXP,
				},
				[2] = {
					satisfyForever = true,
					comparisionType = planetUtilities.COMPARE.AT_LEAST,
					targetNumber = 1,
					-- See bonusObjectiveID in units table
					image = planetUtilities.ICON_DIR .. "factoryspider.png",
					imageOverlay = planetUtilities.ICON_OVERLAY.GUARD,
					description = "Protect your ally's Spider Factory",
					experience = planetUtilities.BONUS_EXP,
				},
				[3] = {
					satisfyByTime = 10*60,
					comparisionType = planetUtilities.COMPARE.AT_LEAST,
					targetNumber = 24,
					unitTypes = {
						"staticmex",
					},
					image = planetUtilities.ICON_DIR .. "staticmex.png",
					imageOverlay = planetUtilities.ICON_OVERLAY.REPAIR,
					description = "Have 24 Metal Extractors (including allies) by 10:00",
					experience = planetUtilities.BONUS_EXP,
				},
			},
		},
		completionReward = {
			experience = planetUtilities.MAIN_EXP,
			units = {
				"factoryjump",
				"jumpcon",
				"jumpraid",
				"jumpskirm",
				"jumpaa",
			},
			modules = {
				"module_jumpjet",
			},
			abilities = {
			},
			codexEntries = {
				"faction_lawless"
			}
		},
	}
	
	return planetData
end

return GetPlanet
