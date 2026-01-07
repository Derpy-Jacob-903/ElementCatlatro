elementcattos.validTransformElement = function(card, allowEternal)
	return (allowEternal or not SMODS.is_eternal(card)) and card.config.center.atomic_number
end

elementcattos.getFusion = function()
	if not G.jokers then return end
	--N/Aium interaction
	do
		local dudes = {"naium", {}}
		local lol = 0
		local ind = 0
		for k,v in pairs(G.jokers.highlighted) do
			if v.config.center.key == "j_ecattos_naium" and not SMODS.is_eternal(v) then
				lol = lol + 1
				ind = k
			elseif elementcattos.validTransformElement(v, true) or elementcattos.othercattos[v.config.center.key] then
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
	if not a then return end
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
	atlas = "tools",
	pos = {x = 0, y = 0},
	loc_vars = function(self, info_queue, card)
		local fuse = elementcattos.getFusion()
		if type(fuse) == "table" then
			if fuse[1] == "naium" then
				fuse = localize("ecattos_fusion_negative")
			end
		elseif fuse then
			fuse = topuplib.nameFromKey(fuse)
		end
		return {
			vars = {fuse or localize("ecattos_fusion_none")}
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
				G.jokers.highlighted[result[3]]:start_dissolve()
			end
			return
		end
		local j1 = G.jokers.highlighted[1]
		local j2 = G.jokers.highlighted[2]
		local resultEdition = (j1.edition and j1.edition.key) or (j2.edition and j2.edition.key)
		j2:start_dissolve()
		j1:start_dissolve()
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
	atlas = "tools",
	pos = {x = 1, y = 0},
	loc_vars = function(self, info_queue, card)
		local a, b = elementcattos.getFission()
		return {
			vars = a and {topuplib.nameFromKey(a), topuplib.nameFromKey(b)} or {localize("ecattos_fission_none"), localize("ecattos_fission_none")}
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
		j1:start_dissolve()
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
if topuplib.debug then
	table.insert(elementcattos.tools, SMODS.Consumable {
		key = "weakray",
		set = "Tarot",
		atlas = "tools",
		pos = {x = 4, y = 0},
		can_use = function()
			--return #G.jokers.highlighted == 1 and elementcattos.isRadioactive(G.jokers.highlighted[1])
			return false
		end,
		use = function() end
	}.key)
	
	table.insert(elementcattos.tools, SMODS.Consumable {
		key = "tweezers",
		set = "Tarot",
		atlas = "tools",
		pos = {x = 2, y = 0},
		can_use = function()
			return #G.jokers.highlighted == 1 and elementcattos.validTransformElement(G.jokers.highlighted[1], true)
		end,
		use = function()
			--TODO: actually remove a neutron from the target
			--...which isn't a "stat" that exists yet
			SMODS.add_card({
				set = "Joker",
				key = "j_ecattos_neutron",
				no_edition = true
			})
		end
	}.key)
	
	table.insert(elementcattos.tools, SMODS.Consumable {
		key = "electromagnet",
		set = "Tarot",
		atlas = "tools",
		pos = {x = 3, y = 0},
		can_use = function()
			return false
		end,
		use = function() end
	}.key)
end

table.insert(elementcattos.tools, SMODS.Consumable {
	key = "duplicator",
	set = "Tarot",
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
	atlas = "tools",
	pos = {x = 6, y = 0},
	can_use = function()
		return #G.jokers.highlighted == 1 and elementcattos.cardFromMod(G.jokers.highlighted[1])
	end,
	use = function()
		G.jokers.highlighted[1]:start_dissolve()
	end
}.key)

table.insert(elementcattos.tools, SMODS.Consumable {
	key = "compoundcreator",
	set = "Tarot",
	atlas = "tools",
	pos = {x = 7, y = 0},
	config = { extra = { ready = true } },
	can_use = topuplib.returnTrue,
	keep_on_use = function(self, card)
		return card.ability.extra.ready
	end,
	use = elementcattos.ui_compound_creator
}.key)