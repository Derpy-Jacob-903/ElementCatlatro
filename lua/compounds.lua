local compounds = {
	{
		id = "water",
		name = "Water",
		desc = {
			"All played cards",
			"count in scoring"
		},
		pronouns = "she_her",
		formula = {{"H", 2}, "O"},
	},
	{
		id = "starch",
		name = "Starch",
		pronouns = "she_her",
		formula = {"_(", {"C", 6}, {"H", 10}, {"O", 5}, "_)n"},
		rarity = 2,
		cost = 18
	},
	{
		id = "oobleck",
		name = "Oobleck",
		desc = {
			topuplib.formatText({{"X4", "xmult"}, {" Mult if played hand"}}),
			topuplib.formatText({{"has at most "}, {"25", "mult"}, {" base Mult,"}}),
			topuplib.formatText({{"otherwise "}, {"X0.5", "xmult"}, {" Mult"}})
		},
		pronouns = "she_her",
		formula = {{"starch"}, "_+", {"water"}},
		rarity = 3,
		cost = 24
	},
	{
		id = "silica",
		name = "Silica",
		desc = {
			topuplib.formatText({{"+2", "mult"}, {" Mult per"}}),
			topuplib.formatText({{"scored Stone card"}})
		},
		pronouns = "unknown",
		formula = {"Si", {"O", 2}},
		cost = 3
	}
}

SMODS.Atlas({
	key = "compounds",
	path = "compounds.png",
	px = 71,
	py = 95
})

local inpool = function(self, args)
	if self.rarity == 1 and pseudorandom("ecatto_spawnrate") > 0.65 then return true end
	if self.rarity == 2 and pseudorandom("ecatto_spawnrate") > 0.85 then return true end
	return false
end

for k,v in ipairs(compounds) do
	v.desc = v.desc or {}
	table.insert(v.desc, topuplib.formatText({{"Formula: " .. elementcattos.formatFormula(v.formula), "inactive"}}))
	local j = SMODS.Joker({
		key = "compound_" .. v.id,
		loc_txt = {
			name = v.name,
			text = v.desc
		},
		atlas = "compounds",
		pos = {
			x = v.id == "water" and 1 or 0,
			y = 0
		},
		pronouns = elementcattos.pronoun(v.pronouns),
		cost = v.cost or 6,
		compound_formula = v.formula,
		element_symbol = v.id,
		rarity = v.rarity,
		in_pool = inpool
	})
	elementcattos.compounds[v.id] = {v.formula, j.key}
end