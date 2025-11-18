SMODS.Atlas({
	key = "special",
	path = "special.png",
	px = 71,
	py = 95
})

SMODS.Joker {
	key = "purrcent",
	loc_txt = {
		name = "Purrcent",
		text = {
			"While held, Legendary Jokers",
			"can be found in the shop",
			--[["Absorbs Editions that would be",
			"discarded when using Fusion",
			"or when creating compounds",]] --that one should go to some other joker here
			"{C:inactive}Symbol: :3"
		}
	},
	pronouns = "he_him",
	atlas = "special",
	rarity = 3,
	pos = {x = 1, y = 0},
	element_symbol = ":3"
}

SMODS.Joker {
	key = "bungy",
	loc_txt = {
		name = "Bungy",
		text = {
			"Can be used as a substitute for any",
			"element when creating compounds",
			"{C:inactive}Symbol: Bu"
		}
	},
	pronouns = "he_him",
	atlas = "special",
	rarity = 2,
	pos = {x = 2, y = 0},
	element_symbol = "Bu"
}

SMODS.Joker {
	key = "naium",
	loc_txt = {
		name = "N/Aium",
		text = {
			"Fuse with up to 3 other Cattos",
			"to add {C:dark_edition}Negative{} edition to them",
			"{C:inactive}Atomic number: Omega, Symbol: N/A"
		}
	},
	pronouns = "ecatto_na",
	atlas = "special",
	rarity = 4,
	pos = {x = 3, y = 0},
	element_symbol = "N/A"
}

SMODS.Joker {
	key = "codecatto",
	loc_txt = {
		name = "://SYSOP",
		text = {
			"1 in 2 chance to create a",
			"Code Card when a Tool is used",
			"{C:inactive}Symbol: C:\\"
		}
	},
	pronouns = "she_her",
	atlas = "special",
	rarity = 2,
	pos = {x = 4, y = 0},
	element_symbol = "C:\\"
}