elementcattos.validTransformElement = function(card)
	return not card.ability.eternal and card.config.center.atomic_number
end

elementcattos.getFusion = function()
	if not G.jokers then return end
	--N/Aium interaction
	do
		local dudes = {"naium", {}}
		local lol = 0
		local ind = 0
		for k,v in pairs(G.jokers.highlighted) do
			if v.config.center.key == "j_ecattos_naium" then
				lol = lol + 1
				ind = k
			elseif elementcattos.validTransformElement(v) or elementcattos.othercattos[card.config.center.key] then
				table.insert(dudes[2], k)
			else return end
		end
		if lol == 1 and #dudes[2] ~= 0 and #dudes[2] <= 3 then
			dudes[3] = ind
			return dudes
		end
	end
	if #G.jokers.highlighted ~= 2 then return end
	local a = elementcattos.validTransformElement(G.jokers.highlighted[1])
	local b = elementcattos.validTransformElement(G.jokers.highlighted[2])
	if a and b and elementcattos.atomicnumber[a + b] then
		return "j_ecattos_element" .. tostring(a + b)
	end
end

elementcattos.getFission = function()
	if not G.jokers or #G.jokers.highlighted ~= 1 then return end
	local a = elementcattos.validTransformElement(G.jokers.highlighted[1])
	local r1, r2 = math.floor(a * 0.5), math.ceil(a * 0.5)
	if a and elementcattos.atomicnumber[r1] and elementcattos.atomicnumber[r2] then
		return "j_ecattos_element" .. tostring(r1), "j_ecattos_element" .. tostring(r2)
	end
end

SMODS.Atlas({
	key = "tools",
	path = "tools.png",
	px = 71,
	py = 95
})

table.insert(elementcattos.tools, SMODS.Consumable {
	key = "fusion",
	set = "Tarot",
	loc_txt = {
		name = "Fusion Reactor",
		text = {
			"Combine 2 selected Element Cattos",
			"into one with an atomic number",
			"equal to the sum of the inputs",
			topuplib.formatText({{"(First Edition is kept)", "inactive"}}),
			topuplib.formatText({{"(Will create: #1#)", "inactive"}})
		}
	},
	atlas = "tools",
	pos = {x = 0, y = 0},
	loc_vars = function(self, info_queue, card)
		local fuse = elementcattos.getFusion()
		if type(fuse) == "table" then
			if fuse[1] == "naium" then
				fuse = "Negative Edition"
			end
		elseif fuse then
			fuse = SMODS.Centers[fuse].loc_txt.name
		end
		return {
			vars = {fuse or "None"}
		}
	end,
	can_use = elementcattos.getFusion,
	use = function()
		local result = elementcattos.getFusion()
		if not result then return print("Wrong use for Fusion Reactor") end
		if type(result) == "table" then
			if result[1] == "naium" then
				for k,v in pairs(result[2]) do
					G.jokers.highlighted[v]:set_edition("e_negative")
				end
				G.jokers.highlighted[result[3]]:shatter()
			end
			return
		end
		local j1 = G.jokers.highlighted[1]
		local j2 = G.jokers.highlighted[2]
		local resultEdition = (j1.edition and j1.edition.key) or (j2.edition and j2.edition.key)
		j2:shatter()
		j1:shatter()
		SMODS.add_card({
			set = "Joker",
			key = result,
			edition = resultEdition
		})
	end
}.key)

table.insert(elementcattos.tools, SMODS.Consumable {
	key = "fission",
	set = "Tarot",
	loc_txt = {
		name = "Fission Hammer",
		text = {
			"Split 1 selected Element Catto",
			"into two based on it's atomic number",
			topuplib.formatText({{"(Must have room)", "inactive"}}),
			topuplib.formatText({{"(Edition is given to the first output)", "inactive"}}),
			topuplib.formatText({{"(Will create: #1# and #2#)", "inactive"}})
		}
	},
	atlas = "tools",
	pos = {x = 1, y = 0},
	loc_vars = function(self, info_queue, card)
		local a, b = elementcattos.getFission()
		return {
			vars = a and {SMODS.Centers[a].loc_txt.name, SMODS.Centers[b].loc_txt.name} or {"None", "None"}
		}
	end,
	can_use = function()
		return #G.jokers.highlighted == 1 and elementcattos.validTransformElement(G.jokers.highlighted[1])
	end,
	use = function()
		local r1, r2 = elementcattos.getFission()
		if not r1 then return print("Wrong use for Fission Hammer") end
		local j1 = G.jokers.highlighted[1]
		local resultEdition = (j1.edition and j1.edition.key)
		j1:shatter()
		SMODS.add_card({
			set = "Joker",
			key = r1,
			edition = resultEdition
		})
		SMODS.add_card({
			set = "Joker",
			key = r2
		})
	end
}.key)

--Todo: implement the rest of the consumables
--[[table.insert(elementcattos.tools, SMODS.Consumable {
	key = "weakray",
	set = "Tarot",
	loc_txt = {
		name = "Weak Ray",
		text = {
			topuplib.txnyi,
			"Accelerates 1 selected",
			"radioactive Element Catto's decay"
		}
	},
	atlas = "tools",
	pos = {x = 4, y = 0},
	can_use = function()
		--return #G.jokers.highlighted == 1 and elementcattos.isRadioactive(G.jokers.highlighted[1])
		return false
	end,
	use = function() end
}.key)]]

table.insert(elementcattos.tools, SMODS.Consumable {
	key = "duplicator",
	set = "Tarot",
	loc_txt = {
		name = "Matter Duplicator",
		text = {
			"Creates a copy of 1",
			"selected Element Catto",
			"Common elements are",
			"copied twice",
			topuplib.formatText({{"(Must have room)", "inactive"}})
		}
	},
	atlas = "tools",
	pos = {x = 5, y = 0},
	can_use = function()
		if #G.jokers.highlighted ~= 1 or not elementcattos.cardFromMod(G.jokers.highlighted[1]) then return false end
		return topuplib.cardAreaHasRoom()
	end,
	use = function()
		for i = 1, ((G.jokers.highlighted[1].config.center.rarity or 1) == 1) and 2 or 1 do
			SMODS.add_card({
				set = "Joker",
				key = G.jokers.highlighted[1].config.center.key,
				--edition = resultEdition
			})
			if not topuplib.cardAreaHasRoom() then return end
		end
	end
}.key)

table.insert(elementcattos.tools, SMODS.Consumable {
	key = "eraser",
	set = "Tarot",
	loc_txt = {
		name = "Matter Eraser",
		text = {
			"Destroys 1 selected",
			"Element Catto",
			topuplib.formatText({{"(Bypasses Eternal)", "inactive"}})
		}
	},
	atlas = "tools",
	pos = {x = 6, y = 0},
	can_use = function()
		return #G.jokers.highlighted == 1 and elementcattos.cardFromMod(G.jokers.highlighted[1])
	end,
	use = function()
		G.jokers.highlighted[1]:shatter()
	end
}.key)

table.insert(elementcattos.tools, SMODS.Consumable {
	key = "compoundcreator",
	set = "Tarot",
	loc_txt = {
		name = "Compound Creator",
		text = {
			"Select 1 compound to form",
			"using elements you have",
			topuplib.formatText({{"(First Edition is kept)", "inactive"}})
		}
	},
	atlas = "tools",
	pos = {x = 7, y = 0},
	config = { extra = { ready = true } },
	can_use = topuplib.returnTrue,
	keep_on_use = function(self, card)
		return card.ability.extra.ready
	end,
	use = elementcattos.ui_compound_creator
}.key)