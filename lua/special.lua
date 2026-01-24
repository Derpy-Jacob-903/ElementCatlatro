SMODS.Atlas({
	key = "special",
	path = "special.png",
	px = 71,
	py = 95
})

--Subatomic particles

SMODS.Joker {
	key = "neutron",
	atlas = "special",
	rarity = 1,
	pos = {x = 6, y = 0},
	in_pool = topuplib.returnFalse,
    pixel_size = { w = 47, h = 39 }
}

SMODS.Joker {
	key = "electron",
	atlas = "special",
	rarity = 1,
	pos = {x = 7, y = 0},
	in_pool = topuplib.returnFalse,
    pixel_size = { w = 26, h = 26 }
}

SMODS.Joker {
	key = "photon",
	atlas = "special",
	rarity = 1,
	pos = {x = 1, y = 1},
	in_pool = topuplib.returnFalse,
    pixel_size = { w = 26, h = 26 }
}

--Cattos

SMODS.Joker {
	key = "purrcent",
			--[["Absorbs Editions that would be",
			"discarded when using Fusion",
			"or when creating compounds",]] --that one should go to some other joker here
	pronouns = "he_him",
	atlas = "special",
	rarity = 3,
	pos = {x = 1, y = 0},
	element_symbol = "cta"
}

SMODS.Joker {
	key = "bungy",
	pronouns = "he_him",
	atlas = "special",
	rarity = 2,
	pos = {x = 2, y = 0},
	element_symbol = "Bu"
}

SMODS.Joker {
	key = "naium",
	pronouns = "ecatto_na",
	atlas = "special",
	rarity = 4,
	pos = {x = 3, y = 0},
	element_symbol = "N/A"
}

SMODS.Joker {
	key = "codecatto",
	config = {extra = {odds = 2}},
	pronouns = "she_her",
	atlas = "special",
	rarity = 2,
	pos = {x = 4, y = 0},
	element_symbol = "C:\\",
	loc_vars = function(self, info_queue, card)
		local aaa, bbb = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, "ECattos_Sysop")
		return {vars = {aaa, bbb}}
	end,
}

SMODS.Joker {
	key = "element_extended",
	config = {extra = {atomic_number = 121}},
	atlas = "elements",
	rarity = 2,
	pos = {x = 2, y = 15},
	no_collection = false,
	in_pool = topuplib.returnFalse,
	discovered = true,
	not_in_booster = true,
	loc_vars = function(self, info_queue, card)
		return {
			vars = {atomic_number = card.ability.extra.atomic_number}
		}
	end,
}

-- if a state change or deletion should happen, but eternal prevents it from fully completing,
-- you should get garbage instead
elementcattos.garbage = SMODS.Joker {
	key = "garbage",
	pronouns = "it_its",
	atlas = "special",
	rarity = 1,
	pos = {x = 0, y = 1},
	in_pool = topuplib.returnFalse,
	no_collection = true,
	discovered = true
}

elementcattos.becomeGarbage = function(card)
	card:set_ability(elementcattos.garbage)
end