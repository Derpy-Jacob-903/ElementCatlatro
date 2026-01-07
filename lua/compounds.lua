local compounds = {
	{
		id = "water",
		name = "Water",
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
		pronouns = "she_her",
		formula = {{"starch"}, "_+", {"water"}},
		rarity = 3,
		cost = 24,
		config = {extra = {big_xmult = 4, mult_threshold = 25, small_xmult = 0.5}},
		loc_vars = function(self, info_queue, card)
			return { vars = { card.ability.extra.big_xmult, card.ability.extra.small_xmult, card.ability.extra.mult_threshold } }
		end
	},
	{
		id = "silica",
		name = "Silica",
		pronouns = "unknown",
		formula = {"Si", {"O", 2}},
		cost = 3,
		config = {extra = {mult = 2}},
		loc_vars = function(self, info_queue, card)
			return { vars = { card.ability.extra.mult } }
		end
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
		in_pool = inpool,
		config = v.config,
		loc_vars = v.loc_vars,
		calculate = v.calculate
	})
	elementcattos.compounds[v.id] = {v.formula, j.key}
end