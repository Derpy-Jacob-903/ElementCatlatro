SMODS.Atlas({
	key = "boosters",
	path = "boosters.png",
	px = 71,
	py = 95
})

elementcattos.boosterPackCard = function(self, card, i)
	local istool = self.key == "p_ecattos_element_tools"
	local tbl = elementcattos.booster_pools[self.ecattos_booster_pool]
	return {
		set = istool and "Tarot" or "Joker",
		key = tbl[math.random(#tbl)]
	}
end

SMODS.Booster {
	key = "element_common",
	loc_txt = {
		name = "Common Elements Pack",
		text = {
			"Select 2 of 5 Common",
			"Element Cattos"
		},
		group_name = "Elements Pack"
	},
	config = {extra = 5, choose = 2},
	atlas = "boosters",
	pos = {x = 1, y = 0},
	cost = 3,
	ecattos_booster_pool = 1,
	create_card = elementcattos.boosterPackCard
}

SMODS.Booster {
	key = "element_uncommon",
	loc_txt = {
		name = "Uncommon Elements Pack",
		text = {
			"Select 2 of 5 Uncommon",
			"Element Cattos"
		},
		group_name = "Elements Pack"
	},
	config = {extra = 5, choose = 2},
	atlas = "boosters",
	pos = {x = 2, y = 0},
	cost = 4,
	ecattos_booster_pool = 2,
	create_card = elementcattos.boosterPackCard
}

SMODS.Booster {
	key = "element_rare",
	loc_txt = {
		name = "Rare Elements Pack",
		text = {
			"Select 1 of 3 Rare",
			"Element Cattos"
		},
		group_name = "Elements Pack"
	},
	config = {extra = 3, choose = 1},
	atlas = "boosters",
	pos = {x = 3, y = 0},
	cost = 5,
	ecattos_booster_pool = 3,
	create_card = elementcattos.boosterPackCard
}

SMODS.Booster {
	key = "element_tools",
	loc_txt = {
		name = "Elemental Tools Pack",
		text = {
			"Select 1 of 4 Tools",
			"to use immediately"
		},
		group_name = "Tools Pack"
	},
	config = {extra = 4, choose = 1},
	atlas = "boosters",
	pos = {x = 4, y = 0},
	cost = 4,
	ecattos_booster_pool = "tool",
	create_card = elementcattos.boosterPackCard
}