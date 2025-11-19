--	so uhhh yeah
--	this is cattos!

local mod = SMODS.current_mod
local config = mod.config
elementcattos = {
	--Radioactive
	isRadioactive = function(card)
		return elementcattos.radioactive(card.config.center.key) ~= nil
	end,
	fromyears = function(n)
		return n * 315570000
	end,
	fromminutes = function(n)
		return n * 60
	end,
	fromhours = function(n)
		return n * 3600
	end,
	fromdays = function(n)
		return n * 86400
	end,
	halflife = function(n)
		return math.floor((math.log(n) * 0.999) + (n * 0.001))
	end,
	--Cards
	atomicnumber = {},
	tools = {},
	cardFromMod = function(card)
		return card.config.center.original_mod.id == SMODS.Mods.ElementCatlatro.id
	end,
	modsupported = { -- Keys of jokers to consider "part of Element Catlatro" for Element Cattos deck
		j_ecattos_element1 = true
	},
	othercattos = { -- Keys of jokers that are cattos
	
	},
	pronoun = function(n)
		if not CardPronouns then return end
		if CardPronouns.badge_types[n] then return n end
		return "ecatto_" .. n
	end,
	fallbacks = {
		"j_ecattos_element1", "j_ecattos_element2", "j_ecattos_element6", "j_ecattos_element8"
	},
	--Compounds
	compounds = {},
	formatFormula = function(formula, method)
		local result = ""
		for k,v in ipairs(formula) do
			if type(v) == "table" then
				if #v == 1 or v[2] == 1 then
					local c = elementcattos.compounds[v[1]]
					if not c then error("Compound subpart "..v[1].." does not exist") end
					result = result .. elementcattos.formatFormula(c[1], method)
				elseif #v == 2 then
					local subnum = ""
					local ns = tostring(v[2])
					result = result .. v[1] .. (method and ("("..ns..")") or topuplib.formatText({{ns, "small"}, {"", "inactive"}}))
				end
			else
				if type(v) == "string" and string.sub(v, 1, 1) == "_" then
					v = string.sub(v, 2)
				end
				result = result .. v
			end
		end
		return result
	end,
	hasFormula = function(formula, source)
		local inputs = {}
		local source = source or G.jokers.cards
		formula = topuplib.tableShallowCopy(formula)
		local count, element, iscompound
		for k,v in pairs(formula) do
			iscompound = false
			if type(v) == "table" then
				if #v == 1 then
					count = 1
					element = v[1]
					iscompound = true
				else
					count, element = v[2], v[1]
				end
			else
				local firstlet = string.sub(v, 1, 1)
				if firstlet == "_" then
					count = 0
				else
					count, element = 1, v
				end
			end
			if count ~= 0 then
				for k,v in ipairs(source) do
					if count ~= 0 and v.config.center.element_symbol == element and not inputs[k] then
						inputs[k] = v
						count = count - 1
					end
				end
				if count ~= 0 then
					if iscompound then
						for _,v2 in ipairs(elementcattos.compounds[element][1]) do
							table.insert(formula, v2)
						end
					else
						return
					end
				end
			end
		end
		return inputs
	end
}
--todo: element decaying and isotopes are gonna be a thing to figure out
elementcattos.radioactive = {
	ecatto_element82_214 = { --lead 214
		hands = elementcattos.halflife(elementcattos.fromminutes(27.06)),
		result = "ecatto_element83_214"
	},
	ecatto_element84 = { --polonium
		hands = elementcattos.halflife(elementcattos.fromdays(138.38)),
		result = "ecatto_element82_214"
	},
	ecatto_element86 = { --radium
		hands = elementcattos.halflife(elementcattos.fromdays(3.8)),
		result = "ecatto_element84"
	},
	ecatto_element88 = { --radium
		hands = elementcattos.halflife(elementcattos.fromdays(11.43)),
		result = "ecatto_element86"
	},
	ecatto_element118 = { --oganesson
		hands = 0
	},
	ecatto_element118 = { --oganesson
		hands = 0
	},
	ecatto_element118 = { --oganesson
		hands = 0
	},
	ecatto_element118 = { --oganesson
		hands = 0
	},
	ecatto_element118 = { --oganesson
		hands = 0
	},
	ecatto_element118 = { --oganesson
		hands = 0
	},
	ecatto_element118 = { --oganesson
		hands = 0
	},
	ecatto_element118 = { --oganesson
		explode = true,
		hands = 0
	}
}

local rq = {
	"elements",
	"compoundcreator",
	"consumables",
	"compounds",
	"compounds_extra_recipes",
	"decks",
	"boosters",
	"special"
}

--Pronouns
if CardPronouns then
	local in_pool = topuplib.returnFalse
	CardPronouns.Pronoun {
		colour = HEX("F0FF9F"),
		text_colour = G.C.BLACK,
		pronoun_table = { "Hse", "Ehr" },
		in_pool = in_pool,
		key = "ecatto_hse_ehr"
	}
	CardPronouns.Pronoun {
		colour = HEX("8823FF"),
		text_colour = G.C.WHITE,
		pronoun_table = { "They", "It", "Xe" },
		in_pool = in_pool,
		key = "ecatto_they_it_xe"
	}
	CardPronouns.Pronoun {
		colour = G.C.BLACK,
		text_colour = G.C.WHITE,
		pronoun_table = { "Unknown" },
		in_pool = in_pool,
		key = "ecatto_unknown"
	}
	CardPronouns.Pronoun {
		colour = CardPronouns.badge_types.they_them.colour,
		text_colour = G.C.WHITE,
		pronoun_table = { "They", "Any" },
		in_pool = in_pool,
		key = "ecatto_they_any"
	}
	CardPronouns.Pronoun {
		colour = HEX("C492FE"),
		text_colour = G.C.WHITE,
		pronoun_table = { "She", "He" },
		in_pool = in_pool,
		key = "ecatto_she_he"
	}
	CardPronouns.Pronoun {
		colour = HEX("89A0FE"),
		text_colour = G.C.WHITE,
		pronoun_table = { "He", "She" },
		in_pool = in_pool,
		key = "ecatto_he_she"
	}
	CardPronouns.Pronoun {
		colour = CardPronouns.badge_types.he_him.colour,
		text_colour = G.C.WHITE,
		pronoun_table = { "He", "Any" },
		in_pool = in_pool,
		key = "ecatto_he_any"
	}
	CardPronouns.Pronoun {
		colour = HEX("9137E6"),
		text_colour = G.C.WHITE,
		pronoun_table = { "Xe", "Xem" },
		in_pool = in_pool,
		key = "ecatto_xe_xem"
	}
	CardPronouns.Pronoun {
		colour = G.C.GREEN,
		text_colour = G.C.WHITE,
		pronoun_table = { "Tree", "Trim" },
		in_pool = in_pool,
		key = "ecatto_tree_trim"
	}
	CardPronouns.Pronoun {
		colour = G.C.RED,
		text_colour = G.C.WHITE,
		pronoun_table = { "*Eagle noise*", "Any" },
		in_pool = in_pool,
		key = "ecatto_eaglenoise_any"
	}
	CardPronouns.Pronoun {
		colour = G.C.DARK_EDITION,
		text_colour = G.C.WHITE,
		pronoun_table = { "None", "All" },
		in_pool = in_pool,
		key = "ecatto_na"
	}
	
	elementcattos.usa_flag = love.graphics.newImage(NFS.read('data', SMODS.current_mod.path .. "assets/gfx/usa.png"))
end

topuplib.addFontOption("Century Schoolbook", "lua/fonts/centuryschoolbook")

local meme = topuplib.createFallbackPoolItem
topuplib.createFallbackPoolItem = function(type, pool)
	if type == "Joker" and G.GAME.starting_params.ecattos_deck then
		return elementcattos.fallbacks[math.random(#elementcattos.fallbacks)]
	end
	return meme(type, pool)
end

SMODS.Sound {
	--This song is a WIP
	key = "music_ecattos",
	path = "balatro-elementcatto.ogg",
	pitch = 1,
	select_music_track = function(self)
		return G.OVERLAY_MENU and topuplib.music == "ecattos"
	end
}

for i, v in ipairs(rq) do
	local a = assert(SMODS.load_file("lua/"..v..".lua"))()
end

elementcattos.booster_pools = {
	[1] = {},
	[2] = {},
	[3] = {},
	[4] = {},
	tool = {}
}

for k,v in pairs(SMODS.Centers) do
	if v.original_mod and v.original_mod.id == SMODS.current_mod.id then
		if v.set == "Joker" then
			table.insert(elementcattos.booster_pools[v.rarity], v.key)
		elseif v.set == "Tarot" then
			table.insert(elementcattos.booster_pools.tool, v.key)
		end
	end
end