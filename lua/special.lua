SMODS.Atlas({
	key = "special",
	path = "special.png",
	px = 71,
	py = 95
})

SMODS.Joker {
	key = "purrcent",
			--[["Absorbs Editions that would be",
			"discarded when using Fusion",
			"or when creating compounds",]] --that one should go to some other joker here
	pronouns = "he_him",
	atlas = "special",
	rarity = 3,
	pos = {x = 1, y = 0},
	element_symbol = ":3"
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