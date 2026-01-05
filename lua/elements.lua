--[[
	may be changed if needed
	
	rarity 1:
		15000 atomic fraction in earth or above
		100 atomic fraction in solar system or above
		(source: https://en.wikipedia.org/wiki/Abundance_of_the_chemical_elements)
	rarity 2: 
		3000 atomic fraction in earth or above
		5 atomic fraction in solar system or above
			(isotopes: Neon-22, Hydrogen-2, Helium-3)
	rarity 3: 
		150 atomic fraction in earth or above
		1 atomic fraction in solar system or above
			(isotopes: Magnesium-26, Carbon-12, Magnesium-25, Argon-36, Iron-54, Silicon-29, Silicon-30, Iron-57)
	
	
	idk what do for further rarity stuff aaaaa
]]

local elements = {
	--Atomic number, Symbol, Name, Pronouns, Text, Calculate
	{0, "Mu", "Muonium", "hse_ehr", nil, rarity = 3},
	
	{1, "H", "Hydrogen", "she_her", nil, rarity = 1, config = { extra = {chips = 25} }, loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips } }
    end},
	
	{2, "He", "Helium", "he_him", nil, rarity = 1, config = { extra = {mult = 2.5} }, loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end},
	
	{3, "Li", "Lithium", "he_him", nil, rarity = 2, config = { extra = {chips = 0} }, loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips } }
    end},
	
	{4, "Be", "Beryllium", "she_her"},
	
	{5, "B", "Boron", "he_him", rarity = 3},
	
	{6, "C", "Carbon", "he_him", rarity = 1, config = { extra = {xchips = 1.15} }, loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xchips } }
    end},
	
	{7, "N", "Nitrogen", "she_her", rarity = 1},
	
	{8, "O", "Oxygen", "she_her", rarity = 1, config = { extra = {chips = 10, mult = 0.5} }, loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.mult } }
    end},
	
	{9, "F", "Fluorine", "she_her", rarity = 2},
	
	{10, "Ne", "Neon", "she_her", rarity = 1, config = { extra = {xmult = 1.5} }, loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end},
	
	{11, "Na", "Sodium", "he_him", rarity = 1},
	
	{12, "Mg", "Magnesium", "she_her", rarity = 1},
	
	{13, "Al", "Aluminium", "he_him", rarity = 1},
	
	{14, "Si", "Silicon", "he_him", rarity = 1, config = { extra = {more = 1} }, loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.more } }
    end},
	
	{15, "P", "Phosphorus", "he_him", rarity = 1},
	
	{16, "S", "Sulfur", "she_her", rarity = 1},
	
	{17, "Cl", "Chlorine", "she_her", rarity = 1},
	
	{18, "Ar", "Argon", "they_them"},
	
	{19, "K", "Potassium", "she_her", rarity = 1},
	
	{20, "Ca", "Calcium", "they_them", rarity = 1},
	
	{21, "Sc", "Scandium", "he_him", rarity = 2},
	
	{22, "Ti", "Titanium", "she_her", rarity = 1},
	
	{23, "V", "Vanadium", "he_him", rarity = 1},
	
	{24, "Cr", "Chromium", "she_her", rarity = 1},
	
	{25, "Mn", "Manganese", "he_him", rarity = 1},
	
	{26, "Fe", "Iron", "he_him", nil, rarity = 1},
	
	{27, "Co", "Cobalt", "he_him", rarity = 1},
	
	{28, "Ni", "Nickel", "he_him", rarity = 1},
	
	{29, "Cu", "Copper", "she_her", rarity = 1},
	
	{30, "Zn", "Zinc", "he_him", rarity = 1},
	
	{31, "Ga", "Gallium", "he_him", rarity = 3},
	
	{32, "Ge", "Germanium", "he_him", rarity = 3},
	
	{33, "As", "Arsenic", "he_him", rarity = 3},
	
	{34, "Se", "Selenium", "he_him", rarity = 3},
	
	{35, "Br", "Bromine", "he_she"},
	
	{36, "Kr", "Krypton", "she_her"},
	
	{37, "Rb", "Rubidium", "they_them"},
	
	{38, "Sr", "Strontium", "she_her", rarity = 2},
	
	{39, "Y", "Yttrium", "he_him", rarity = 3},
	
	{40, "Zr", "Zirconium", "they_it_xe", rarity = 3},
	
	{41, "Nb", "Niobium", "they_them"},
	
	{42, "Mo", "Molybdenum", "he_him", rarity = 3},
	
	{43, "Tc", "Technetium", "she_her"},
	
	{44, "Ru", "Ruthenium", "she_her"},
	
	{45, "Rh", "Rhodium", "they_them"},
	
	{46, "Pd", "Palladium", "she_her", rarity = 3},
	
	{47, "Ag", "Silver", "she_her"},
	
	{48, "Cd", "Cadmium", "she_her"},
	
	{49, "In", "Indium", "he_him"},
	
	{50, "Sn", "Tin", "he_him"},
	
	{51, "Sb", "Antimony", "she_her"},
	
	{52, "Te", "Tellurium", "he_him"},
	
	{53, "I", "Iodine", "they_them"},
	
	{54, "Xe", "Xenon", "xe_xem"},
	
	{55, "Cs", "Caesium", "he_him"},
	
	{56, "Ba", "Barium", "he_him", rarity = 3},
	
	{57, "La", "Lanthanum", "he_him"},
	
	{58, "Ce", "Cerium", "she_her", rarity = 3},
	
	{59, "Pr", "Praseodymium", "she_her"},
	
	{60, "Nd", "Neodymium", "they_them", rarity = 3},
	
	{61, "Pm", "Promethium", "she_her"},
	
	{62, "Sm", "Samarium", "he_him"},
	
	{63, "Eu", "Europium", "any_all"},
	
	{64, "Gd", "Gadolinium", "they_them"},
	
	{65, "Tb", "Terbium", "she_her"},
	
	{66, "Dy", "Dysprosium", "she_her"},
	
	{67, "Ho", "Holmium", "she_her"},
	
	{68, "Er", "Erbium", "they_them"},
	
	{69, "Tm", "Thulium", "he_him"},
	
	{70, "Yb", "Ytterbium", "they_them"},
	
	{71, "Lu", "Lutetium", "she_her"},
	
	{72, "Hf", "Hafnium", "they_them"},
	
	{73, "Ta", "Tantalum", "she_her"},
	
	{74, "W", "Tungsten", "he_him"},
	
	{75, "Re", "Rhenium", "he_him"},
	
	{76, "Os", "Osmium", "he_him"},
	
	{77, "Ir", "Iridium", "she_her"},
	
	{78, "Pt", "Platinum", "she_her", rarity = 3},
	
	{79, "Au", "Gold", "she_her"},
	
	{80, "Hg", "Mercury", "she_he"},
	
	{81, "Tl", "Thallium", "he_him"},
	
	{82, "Pb", "Lead", "she_her"},
	
	{83, "Bi", "Bismuth", "she_he"},
	
	{84, "Po", "Polonium", "she_her"},
	
	{85, "At", "Astatine", "unknown"},
	
	{86, "Rn", "Radon", "she_her"},
	
	{87, "Fr", "Francium", "she_her"},
	
	{88, "Ra", "Radium", "they_them"},
	
	{89, "Ac", "Actinium", "he_him"},
	
	{90, "Th", "Thorium", "he_him"},
	
	{91, "Pa", "Protactinium", "any_all"},
	
	{92, "U", "Uranium", "he_any"},
	
	{93, "Np", "Neptunium", "he_any"},
	
	{94, "Pu", "Plutonium", "he_any"},
	
	{95, "Am", "Americium", "ecatto_eaglenoise_any", nil, config = { extra = {xmult = 3} }, loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end},
	
	{96, "Cm", "Curium", "she_her"},
	
	{97, "Bk", "Berkelium", "he_him"},
	
	{98, "Cf", "Californium", "she_her"},
	
	{99, "Es", "Einsteinium", "he_him"},
	
	{100, "Fm", "Fermium", "they_them"},
	
	{101, "Md", "Mendelevium", "he_him"},
	
	{102, "No", "Nobelium", "they_them"},
	
	{103, "Lr", "Lawrencium", "he_they"},
	
	{104, "Rf", "Rutherfordium", "they_any"},
	
	{105, "Db", "Dubnium", "tree_trim"},
	
	{106, "Sg", "Seaborgium", "she_her"},
	
	{107, "Bh", "Bohrium", "they_any"},
	
	{108, "Hs", "Hassium", "they_them"},
	
	{109, "Mt", "Meitnerium", "she_they"},
	
	{110, "Ds", "Darmstadtium", "he_him"},
	
	{111, "Rg", "Roentgenium", "they_them"},
	
	{112, "Cn", "Copernicium", "he_she"},
	
	{113, "Nh", "Nihonium", "she_her"},
	
	{114, "Fl", "Flerovium", "he_she"},
	
	{115, "Mc", "Moscovium", "he_they"},
	
	{116, "Lv", "Livermorium", "she_he"},
	
	{117, "Ts", "Tennessine", "she_her"},
	
	{118, "Og", "Oganesson", "he_him"},
	
	{119, "Uue", "Ununennium", "unknown", rarity = 4},
	
	{120, "Ubn", "Unbinilium", "unknown", rarity = 4}
}

SMODS.Atlas({
	key = "elements",
	path = "elements.png",
	px = 71,
	py = 95
})

local inpool = function(self)
	return self.atomic_number ~= 0, {allow_duplicates = true}
end

local pools = {"ElementCattosCommon", "ElementCattosUncommon", "ElementCattosRare", "ElementCattosLegendary"}

for k,v in pairs(elements) do
	local n = v[1] + 1
	local desc = v[5] or {}
	table.insert(desc, topuplib.formatText({{"Symbol: "..v[2]..", Atomic number: "..tostring(v[1]), "inactive"}}))
	if v[4] and CardPronouns and not CardPronouns.badge_types[v[4]] then
		v[4] = "ecatto_" .. v[4]
		if not CardPronouns.badge_types[v[4]] then
			print("ElementCatlatro | Not found pronouns for key "..v[4])
		end
	end
	--[[if not v.rarity then
		print("ElementCatlatro | Not defined rarity for "..v[1].." "..v[3])
	end]]
	local j = SMODS.Joker({
		key = "element" .. tostring(v[1]),
		loc_txt = {
			name = v[3],
			text = desc
		},
		atlas = "elements",
		pos = {
			x = n % 8,
			y = math.floor(n / 8)
		},
		pronouns = v[4] or "she_her",
		cost = 1,
		atomic_number = v[1],
		element_symbol = v[2],
		in_pool = inpool,
		pools = {
			ElementCattosCommon = true,
			ElementCattosUncommon = true,
			ElementCattosRare = true
		},
		rarity = v.rarity or 3,
		config = v.config,
		loc_vars = v.loc_vars
	})
	
	if v[6] then
		topuplib.ezcalc(j, v[6])
	end
	if not elementcattos.atomicnumber[v[1]] and v[1] > 0 then
		elementcattos.atomicnumber[v[1]] = j.key
	end
end