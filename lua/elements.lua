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
	{0, "Mu", "Muonium", "hse_ehr", {
		topuplib.formatText({{"+?", "tarot"}, {" ???"}})
	}, rarity = 3},
	
	{1, "H", "Hydrogen", "she_her", {
		topuplib.formatText({{"+25", "chips"}, {" Chips"}})
	}, rarity = 1},
	
	{2, "He", "Helium", "he_him", {
		topuplib.formatText({{"+2.5", "mult"}, {" Mult"}})
	}, rarity = 1},
	
	{3, "Li", "Lithium", "he_him", {
		topuplib.formatText({{"Gains "},{"Chips", "chips"}, {" equal to"}}),
		topuplib.formatText({{"1/12th of scored "},{"Mult", "mult"}}),
		topuplib.formatText({{"(Currently ", "inactive"},{"+#1#", "chips"},{" Chips)", "inactive"}})
	}, rarity = 2},
	
	{4, "Be", "Beryllium"},
	
	{5, "B", "Boron", "he_him", rarity = 3},
	
	{6, "C", "Carbon", "he_him", {
	
		topuplib.formatText({{"X1.15", "xchips"}, {" Chips per scored"}}),
		topuplib.formatText({{"Spade", "spades"}, {" or "}, {"Club", "clubs"}})
	}, rarity = 1},
	
	{7, "N", "Nitrogen", rarity = 1},
	
	{8, "O", "Oxygen", "she_her", {
		topuplib.formatText({{"+10", "chips"}, {" Chips or "}, {"+0.5", "mult"}, {" Mult"}}),
		topuplib.formatText({{"per scored card"}})
	}, rarity = 1},
	
	{9, "F", "Fluorine", rarity = 2},
	
	{10, "Ne", "Neon", "she_her", {
		topuplib.formatText({{"X1.5", "xmult"}, {" base Mult"}})
	}, rarity = 1},
	
	{11, "Na", "Sodium", "he_him", rarity = 1},
	
	{12, "Mg", "Magnesium", rarity = 1},
	
	{13, "Al", "Aluminium", "he_him", rarity = 1},
	
	{14, "Si", "Silicon", "he_him", {
		"Booster Packs have",
		"1 more card"
	}, rarity = 1},
	
	{15, "P", "Phosphorus", "he_him", rarity = 1},
	
	{16, "S", "Sulfur", rarity = 1},
	
	{17, "Cl", "Chlorine", rarity = 1},
	
	{18, "Ar", "Argon", "they_them"},
	
	{19, "K", "Potassium", rarity = 1},
	
	{20, "Ca", "Calcium", "they_them", rarity = 1},
	
	{21, "Sc", "Scandium", "he_him", rarity = 2},
	
	{22, "Ti", "Titanium", rarity = 1},
	
	{23, "V", "Vanadium", "he_him", rarity = 1},
	
	{24, "Cr", "Chromium", rarity = 1},
	
	{25, "Mn", "Manganese", "he_him", rarity = 1},
	
	{26, "Fe", "Iron", "he_him", {
		
	}, rarity = 1},
	
	{27, "Co", "Cobalt", "he_him", rarity = 1},
	
	{28, "Ni", "Nickel", "he_him", rarity = 1},
	
	{29, "Cu", "Copper", rarity = 1},
	
	{30, "Zn", "Zinc", "he_him", rarity = 1},
	
	{31, "Ga", "Gallium", "he_him", rarity = 3},
	
	{32, "Ge", "Germanium", "he_him", rarity = 3},
	
	{33, "As", "Arsenic", "he_him", rarity = 3},
	
	{34, "Se", "Selenium", "he_him", rarity = 3},
	
	{35, "Br", "Bromine"},
	
	{36, "Kr", "Krypton"},
	
	{37, "Rb", "Rubidium"},
	
	{38, "Sr", "Strontium", rarity = 2},
	
	{39, "Y", "Yttrium", "he_him", rarity = 3},
	
	{40, "Zr", "Zirconium", "they_it_xe", rarity = 3},
	
	{41, "Nb", "Niobium", "they_them"},
	
	{42, "Mo", "Molybdenum", "he_him", rarity = 3},
	
	{43, "Tc", "Technetium"},
	
	{44, "Ru", "Ruthenium"},
	
	{45, "Rh", "Rhodium", "they_them"},
	
	{46, "Pd", "Palladium", rarity = 3},
	
	{47, "Ag", "Silver"},
	
	{48, "Cd", "Cadmium"},
	
	{49, "In", "Indium", "he_him"},
	
	{50, "Sn", "Tin", "he_him"},
	
	{51, "Sb", "Antimony"},
	
	{52, "Te", "Tellurium", "he_him"},
	
	{53, "I", "Iodine", "they_them"},
	
	{54, "Xe", "Xenon", "xe_xem"},
	
	{55, "Cs", "Caesium", "he_him"},
	
	{56, "Ba", "Barium", "he_him", rarity = 3},
	
	{57, "La", "Lanthanum", "he_him"},
	
	{58, "Ce", "Cerium", rarity = 3},
	
	{59, "Pr", "Praseodymium"},
	
	{60, "Nd", "Neodymium", "they_them", rarity = 3},
	
	{61, "Pm", "Promethium"},
	
	{62, "Sm", "Samarium", "he_him"},
	
	{63, "Eu", "Europium", "any_all"},
	
	{64, "Gd", "Gadolinium", "they_them"},
	
	{65, "Tb", "Terbium"},
	
	{66, "Dy", "Dysprosium"},
	
	{67, "Ho", "Holmium"},
	
	{68, "Er", "Erbium", "they_them"},
	
	{69, "Tm", "Thulium", "he_him"},
	
	{70, "Yb", "Ytterbium", "they_them"},
	
	{71, "Lu", "Lutetium"},
	
	{72, "Hf", "Hafnium", "they_them"},
	
	{73, "Ta", "Tantalum"},
	
	{74, "W", "Tungsten", "he_him"},
	
	{75, "Re", "Rhenium", "he_him"},
	
	{76, "Os", "Osmium", "he_him"},
	
	{77, "Ir", "Iridium"},
	
	{78, "Pt", "Platinum", rarity = 3},
	
	{79, "Au", "Gold"},
	
	{80, "Hg", "Mercury", "she_he"},
	
	{81, "Tl", "Thallium", "he_him"},
	
	{82, "Pb", "Lead"},
	
	{83, "Bi", "Bismuth", "she_he"},
	
	{84, "Po", "Polonium"},
	
	{85, "At", "Astatine", "unknown"},
	
	{86, "Rn", "Radon"},
	
	{87, "Fr", "Francium"},
	
	{88, "Ra", "Radium", "they_them"},
	
	{89, "Ac", "Actinium", "he_him"},
	
	{90, "Th", "Thorium", "he_him"},
	
	{91, "Pa", "Protactinium", "any_all"},
	
	{92, "U", "Uranium", "he_any"},
	
	{93, "Np", "Neptunium", "he_any"},
	
	{94, "Pu", "Plutonium", "he_any"},
	
	{95, "Am", "Americium", "ecatto_eaglenoise_any", {
		topuplib.formatText({{"X3", "xmult"}, {" Mult if scored hand contains"}}),
		topuplib.formatText({{"Clubs", "clubs"}, {", "}, {"Hearts", "hearts"}, {", and no other suits"}})
	}},
	
	{96, "Cm", "Curium"},
	
	{97, "Bk", "Berkelium", "he_him"},
	
	{98, "Cf", "Californium"},
	
	{99, "Es", "Einsteinium"},
	
	{100, "Fm", "Fermium", "they_them"},
	
	{101, "Md", "Mendelevium"},
	
	{102, "No", "Nobelium", "they_them"},
	
	{103, "Lr", "Lawrencium", "he_they"},
	
	{104, "Rf", "Rutherfordium", "they_any"},
	
	{105, "Db", "Dubnium", "tree_trim"},
	
	{106, "Sg", "Seaborgium"},
	
	{107, "Bh", "Bohrium", "they_any"},
	
	{108, "Hs", "Hassium", "they_them"},
	
	{109, "Mt", "Meitnerium", "she_they"},
	
	{110, "Ds", "Darmstadtium", "he_him"},
	
	{111, "Rg", "Roentgenium", "they_them"},
	
	{112, "Cn", "Copernicium", "he_she"},
	
	{113, "Nh", "Nihonium"},
	
	{114, "Fl", "Flerovium", "he_him"},
	
	{115, "Mc", "Moscovium", "he_they"},
	
	{116, "Lv", "Livermorium", "she_he"},
	
	{117, "Ts", "Tennessine"},
	
	{118, "Og", "Oganesson", "he_him", {
		topuplib.formatText({{"Balances "},{"Chips", "chips"},{" and "},{"Mult", "mult"}}),
		topuplib.formatText({{"before scoring"}})
	}},
	
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
		rarity = v.rarity or 3
	})
	
	if v[6] then
		topuplib.ezcalc(j, v[6])
	end
	if not elementcattos.atomicnumber[v[1]] and v[1] > 0 then
		elementcattos.atomicnumber[v[1]] = j.key
	end
end