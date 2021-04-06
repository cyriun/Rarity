local addonName, addonTable = ...

local L = LibStub("AceLocale-3.0"):GetLocale("Rarity")
local CONSTANTS = addonTable.constants

local legionMounts = {
	-- 7.0
	--["Brinedeep Bottom-Feeder"] =                       { cat = CONSTANTS.ITEM_CATEGORIES.LEGION, type = CONSTANTS.ITEM_TYPES.MOUNT, method = CONSTANTS.DETECTION_METHODS.COLLECTION, name = L["Brinedeep Bottom-Feeder"], spellId = 214791, itemId = 138811, collectedItemId = { 138777, }, chance = 100, },
	["Cloudwing Hippogryph"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Cloudwing Hippogryph"],
		spellId = 242881,
		itemId = 147806,
		items = {152102},
		chance = 20,
		coords = {{m = CONSTANTS.UIMAPIDS.AZSUNA}}
	},
	["Highmountain Elderhorn"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Highmountain Elderhorn"],
		spellId = 242874,
		itemId = 147807,
		items = {152104},
		chance = 20,
		coords = {{m = CONSTANTS.UIMAPIDS.HIGHMOUNTAIN}}
	},
	["Leywoven Flying Carpet"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Leywoven Flying Carpet"],
		spellId = 233364,
		itemId = 143764,
		items = {152105},
		chance = 20,
		coords = {{m = CONSTANTS.UIMAPIDS.SURAMAR}}
	},
	["Torn Invitation"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.SPECIAL,
		name = L["Torn Invitation"],
		spellId = 171850,
		itemId = 140495,
		chance = 200,
		questId = 43943,
		sourceText = L["The quest starter item for Reins of the Llothien Prowler"],
		coords = {{m = CONSTANTS.UIMAPIDS.SURAMAR}}
	},
	["Valarjar Stormwing"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Valarjar Stormwing"],
		spellId = 242882,
		itemId = 147805,
		items = {152106},
		chance = 20,
		coords = {{m = CONSTANTS.UIMAPIDS.STORMHEIM}}
	},
	["Wild Dreamrunner"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Wild Dreamrunner"],
		spellId = 242875,
		itemId = 147804,
		items = {152103},
		chance = 20,
		coords = {{m = CONSTANTS.UIMAPIDS.VALSHARAH}}
	},
	-- 7.1
	["Smoldering Ember Wyrm"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Smoldering Ember Wyrm"],
		spellId = 231428,
		itemId = 142552,
		npcs = {114895},
		chance = 5,
		instanceDifficulties = {[CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_DUNGEON] = true},
		lockDungeonId = 1475,
		lockBossName = "Nightbane",
		coords = {
			{m = 814, i = true}
		}
	},
	-- 7.3
	["Lambent Mana Ray"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Lambent Mana Ray"],
		itemId = 152844,
		spellId = 253107,
		npcs = {126867},
		chance = 30,
		questId = 48705,
		coords = {
			{m = CONSTANTS.UIMAPIDS.MACAREE, x = 34.01, y = 47.83, n = L["Venomtail Skyfin"]}
		}
	},
	["Maddened Chaosrunner"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Maddened Chaosrunner"],
		itemId = 152814,
		spellId = 253058,
		npcs = {126852},
		chance = 30,
		questId = 48695,
		coords = {
			{m = CONSTANTS.UIMAPIDS.MACAREE, x = 55.65, y = 59.95, n = L["Wrangler Kravos"]}
		}
	},
	["Vile Fiend"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Vile Fiend"],
		itemId = 152790,
		spellId = 243652,
		npcs = {127288},
		chance = 30,
		questId = 48821,
		coords = {
			{m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES, x = 62.96, y = 24.86, n = L["Houndmaster Kerrax"]}
		}
	},
	["Crimson Slavermaw"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Crimson Slavermaw"],
		itemId = 152905,
		spellId = 253661,
		npcs = {122958},
		chance = 30,
		questId = 49183,
		coords = {
			{m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES, x = 61.78, y = 36.97, n = L["Blistermaw"]}
		}
	},
	["Biletooth Gnasher"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Biletooth Gnasher"],
		itemId = 152903,
		spellId = 253660,
		npcs = {126040, 126199},
		chance = 30,
		questId = {48809, 48810},
		defeatAllQuests = true,
		defeatSteps = {
			[48809] = L["Puscilla"],
			[48810] = L["Vrax'thul"]
		},
		sourceText = format(
			L["Has a chance to drop from either %s or %s on Argus. Each can be looted once per day."],
			L["Puscilla"],
			L["Vrax'thul"]
		),
		coords = {
			{m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES, x = 64.42, y = 20.35, q = 48809, n = L["Puscilla"]},
			{m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES, x = 53.06, y = 36.12, q = 48810, n = L["Vrax'thul"]}
		}
	},
	["Acid Belcher "] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Acid Belcher"],
		itemId = 152904,
		spellId = 253662,
		npcs = {126912},
		chance = 30,
		questId = 48721,
		coords = {
			{m = CONSTANTS.UIMAPIDS.MACAREE, x = 49.79, y = 9.40, n = L["Skreeg the Devourer"]}
		}
	},
	["Scintillating Mana Ray"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Scintillating Mana Ray"],
		spellId = 253109,
		itemId = 152840,
		items = {153191},
		chance = 16,
		sourceText = L[
			"Contained in Cracked Fel-Spotted Egg, which is obtained by defeating any of the panthara rares on Argus, looting a Fel-Spotted Egg from them, and waiting five days. Each mount has a 6% chance to appear in the Cracked Fel-Spotted Egg, and each pet has a 20% chance to appear in it."
		],
		coords = {
			{m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES, x = 64.32, y = 48.62, n = L["Varga"]},
			{m = CONSTANTS.UIMAPIDS.KROKUUN, x = 70.21, y = 34.38, n = L["Naroua"]},
			{m = CONSTANTS.UIMAPIDS.MACAREE, x = 43.55, y = 49.19, n = L["Sabuul"]}
		}
	},
	["Felglow Mana Ray"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Felglow Mana Ray"],
		spellId = 253108,
		itemId = 152841,
		items = {153191},
		chance = 16,
		sourceText = L[
			"Contained in Cracked Fel-Spotted Egg, which is obtained by defeating any of the panthara rares on Argus, looting a Fel-Spotted Egg from them, and waiting five days. Each mount has a 6% chance to appear in the Cracked Fel-Spotted Egg, and each pet has a 20% chance to appear in it."
		],
		coords = {
			{m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES, x = 64.32, y = 48.62, n = L["Varga"]},
			{m = CONSTANTS.UIMAPIDS.KROKUUN, x = 70.21, y = 34.38, n = L["Naroua"]},
			{m = CONSTANTS.UIMAPIDS.MACAREE, x = 43.55, y = 49.19, n = L["Sabuul"]}
		}
	},
	["Darkspore Mana Ray"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Darkspore Mana Ray"],
		spellId = 235764,
		itemId = 152843,
		items = {153191},
		chance = 16,
		sourceText = L[
			"Contained in Cracked Fel-Spotted Egg, which is obtained by defeating any of the panthara rares on Argus, looting a Fel-Spotted Egg from them, and waiting five days. Each mount has a 6% chance to appear in the Cracked Fel-Spotted Egg, and each pet has a 20% chance to appear in it."
		],
		coords = {
			{m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES, x = 64.32, y = 48.62, n = L["Varga"]},
			{m = CONSTANTS.UIMAPIDS.KROKUUN, x = 70.21, y = 34.38, n = L["Naroua"]},
			{m = CONSTANTS.UIMAPIDS.MACAREE, x = 43.55, y = 49.19, n = L["Sabuul"]}
		}
	},
	["Vibrant Mana Ray"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Vibrant Mana Ray"],
		spellId = 253106,
		itemId = 152842,
		items = {153191},
		chance = 16,
		sourceText = L[
			"Contained in Cracked Fel-Spotted Egg, which is obtained by defeating any of the panthara rares on Argus, looting a Fel-Spotted Egg from them, and waiting five days. Each mount has a 6% chance to appear in the Cracked Fel-Spotted Egg, and each pet has a 20% chance to appear in it."
		],
		coords = {
			{m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES, x = 64.32, y = 48.62, n = L["Varga"]},
			{m = CONSTANTS.UIMAPIDS.KROKUUN, x = 70.21, y = 34.38, n = L["Naroua"]},
			{m = CONSTANTS.UIMAPIDS.MACAREE, x = 43.55, y = 49.19, n = L["Sabuul"]}
		}
	},
	["Pond Nettle"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.FISHING,
		name = L["Pond Nettle"],
		zones = {"885", "830", "882"},
		spellId = 253711,
		itemId = 152912,
		chance = 2000,
		requiresPool = false,
		coords = {
			{m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES},
			{m = CONSTANTS.UIMAPIDS.KROKUUN},
			{m = CONSTANTS.UIMAPIDS.MACAREE}
		}
	},
	["Avenging Felcrusher"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Avenging Felcrusher"],
		spellId = 254259,
		itemId = 153044,
		items = {152923},
		chance = 20,
		coords = {
			{m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES},
			{m = CONSTANTS.UIMAPIDS.KROKUUN},
			{m = CONSTANTS.UIMAPIDS.MACAREE}
		}
	},
	["Blessed Felcrusher"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Blessed Felcrusher"],
		spellId = 254258,
		itemId = 153043,
		items = {152923},
		chance = 20,
		coords = {
			{m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES},
			{m = CONSTANTS.UIMAPIDS.KROKUUN},
			{m = CONSTANTS.UIMAPIDS.MACAREE}
		}
	},
	["Glorious Felcrusher"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Glorious Felcrusher"],
		spellId = 254069,
		itemId = 153042,
		items = {152923},
		chance = 20,
		coords = {
			{m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES},
			{m = CONSTANTS.UIMAPIDS.KROKUUN},
			{m = CONSTANTS.UIMAPIDS.MACAREE}
		}
	},
	-- 7.x
	["Abyss Worm"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Abyss Worm"],
		spellId = 232519,
		itemId = 143643,
		npcs = {99999},
		tooltipNpcs = {115767},
		chance = 100,
		groupSize = 3,
		equalOdds = true,
		statisticId = {11893, 11894, 11895, 11896},
		coords = {{m = 851, i = true}}
	},
	["Living Infernal Core"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Living Infernal Core"],
		sourceText = L["All raid formats except Raid Finder"],
		spellId = 213134,
		itemId = 137574,
		npcs = {99999},
		tooltipNpcs = {
			105503,
			104154 -- Gul'dan (normal)
		},
		chance = 100,
		groupSize = 3,
		equalOdds = true,
		statisticId = {10979, 10980, 10978},
		coords = {{m = 772, i = true}}
	},
	["Midnight's Eternal Reins"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Midnight's Eternal Reins"],
		spellId = 229499,
		itemId = 142236,
		npcs = {114262},
		chance = 100,
		instanceDifficulties = {[CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_DUNGEON] = true},
		lockDungeonId = 1475,
		lockBossName = "Attumen the Huntsman",
		coords = {{m = 794, i = true}}
	},
	["Fiendish Hellfire Core"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Fiendish Hellfire Core"],
		spellId = 171827,
		itemId = 137575,
		npcs = {99999},
		tooltipNpcs = {105503, 111022}, -- Gul'dan / The Demon Within (Mythic only)
		instanceDifficulties = {[CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_RAID] = true},
		chance = 100,
		wasGuaranteed = true,
		groupSize = 3,
		equalOdds = true,
		statisticId = {10980},
		coords = {{m = 772, i = true}}
	},
	["Antoran Charhound"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Antoran Charhound"],
		spellId = 253088,
		itemId = 152816,
		npcs = {99999},
		tooltipNpcs = {126915, 126916},
		chance = 100,
		groupSize = 3,
		equalOdds = true,
		statisticId = {12118, 11957, 11958, 11959},
		coords = {{m = 910, i = true}}
	},
	["Shackled Ur'zul"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Shackled Ur'zul"],
		spellId = 243651,
		itemId = 152789,
		npcs = {99999},
		tooltipNpcs = {130352}, -- Argus the Unmaker
		instanceDifficulties = {[CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_RAID] = true},
		chance = 100,
		wasGuaranteed = true,
		groupSize = 3,
		equalOdds = true,
		statisticId = {11986},
		coords = {{m = 910, i = true}}
	}
}

Rarity.ItemDB.MergeItems(Rarity.ItemDB.mounts, legionMounts)
