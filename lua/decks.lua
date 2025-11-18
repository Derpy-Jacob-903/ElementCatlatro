SMODS.Atlas({
	key = "decks",
	path = "decks.png",
	px = 71,
	py = 95
})

--TODO: Prevent jimbo the joker from spawning (???????????)

SMODS.Back({
	key = "elements",
	loc_txt = {
		name = "Element Cattos Deck",
		text = {
			"Only Jokers from Element",
			"Catlatro may appear",
			"+24 Joker slots",
			"Start with additional $8",
			"and Overstock Plus"
		}
	},
	atlas = "decks",
	pos = {x = 0, y = 0},
	config = {
		joker_slot = 24,
		dollars = 8,
		vouchers = {'v_overstock_norm', 'v_overstock_plus'}
	},
	apply = function()
		for k,v in pairs(G.P_CENTERS) do
			if v.set == "Joker" and not (elementcattos.modsupported[v.key] or (v.original_mod and v.original_mod.id == "ElementCatlatro")) then
				G.GAME.banned_keys[v.key] = true
			end
		end
		G.GAME.starting_params.ecattos_deck = true
	end
})