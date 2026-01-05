return {
	misc = {
		dictionary = {
			ecattos_compoundcreator_tocreate = "Compound to create",
			ecattos_compoundcreator_confirm = "Confirm",
			k_booster_group_p_ecattos_element_common = "Elements Pack",
			k_booster_group_p_ecattos_element_uncommon = "Elements Pack",
			k_booster_group_p_ecattos_element_rare = "Elements Pack",
			k_booster_group_p_ecattos_element_tools = "Tools Pack",
			ecattos_fusion_negative = "Negative Edition",
			ecattos_fusion_none = "None",
			ecattos_fission_none = "None",
			ecattos_recipe_name_stone_cards = "6 Stone Cards"
		}
	},
	descriptions = {
		Joker = {
			--Elements
			j_ecattos_element0 = elementcattos.loc_txt {
				name = "Muonium",
				text = {
					"{_A:dark_edition:+?} ???"
				},
				anum = 0,
				sym = "Mu"
			},
			j_ecattos_element1 = elementcattos.loc_txt {
				name = "Hydrogen",
				text = {
					"{_A:chips:+#1#}"
				},
				anum = 1,
				sym = "H"
			},
			j_ecattos_element2 = elementcattos.loc_txt {
				name = "Helium",
				text = {
					"{_A:mult:+#1#}"
				},
				anum = 2,
				sym = "He"
			},
			j_ecattos_element3 = elementcattos.loc_txt {
				name = "Lithium",
				--i wanna change this as i dont rly want elements to have "This Joker gains" effects
				text = {
					"Gains {C:chips}Chips{} equal to",
					"{_A:attention:1/12th} of scored {C:mult}Mult{}",
					"{_A:currentchips:+#1#}"
				},
				anum = 2,
				sym = "He"
			},
			j_ecattos_element5 = elementcattos.loc_txt {
				name = "Boron",
				text = {
					"Levels up last played poker hand",
					"when Compound Creator is used",
					"{_A:currentattention:#1#}"
				},
				anum = 5,
				sym = "B"
			},
			j_ecattos_element6 = elementcattos.loc_txt {
				name = "Carbon",
				text = {
					"{_A:xchips:#1#} per scored",
					"{_A:spades:Spade} or {_A:clubs:Club}"
				},
				anum = 6,
				sym = "C"
			},
			j_ecattos_element8 = elementcattos.loc_txt {
				name = "Oxygen",
				text = {
					"{_A:chips:+#1#} or {_A:mult:+#2#}",
					"per scored card"
				},
				anum = 8,
				sym = "O"
			},
			j_ecattos_element10 = elementcattos.loc_txt {
				name = "Neon",
				text = {
					"{_A:basexmult:#1#}"
				},
				anum = 10,
				sym = "Ne"
			},
			j_ecattos_element14 = elementcattos.loc_txt {
				name = "Silicon",
				text = {
					"Booster Packs have",
					"{_A:attention:#1#} more card"
				},
				anum = 14,
				sym = "Si"
			},
			j_ecattos_element28 = elementcattos.loc_txt {
				name = "Nickel",
				text = {
					"Earn {_A:money:2} at end of round",
					"Payout increases by {_A:money:1}",
					"when Boss Blind is defeated"
				},
				anum = 28,
				sym = "Ni"
			},
			j_ecattos_element33 = elementcattos.loc_txt {
				name = "Arsenic",
				--maybe i dont actually want arsenic to be meta
				--[[text = {
					"Retrigger all scored cards, but",
					"X3 Blind score requirement",
				},]]
				anum = 33,
				sym = "As"
			},
			j_ecattos_element79 = elementcattos.loc_txt {
				name = "Gold",
				text = {
					"Raise the cap on interest",
					"earned in each round by {_A:money:10}"
				},
				anum = 79,
				sym = "Au"
			},
			j_ecattos_element94 = elementcattos.loc_txt {
				name = "Plutonium",
				text = {
					"If {C:attention}played hand{} has only {C:attention}1{} card,",
					"cards {C:attention}held in hand{} give {_A:xmult:1.21}"
				},
				anum = 94,
				sym = "Pu"
			},
			j_ecattos_element95 = elementcattos.loc_txt {
				name = "Americium",
				text = {
					"{_A:xmult:#1#} if scored hand contains",
					"{_A:clubs}, {_A:hearts}, and no other suits"
				},
				anum = 95,
				sym = "Am"
			},
			j_ecattos_element118 = elementcattos.loc_txt {
				name = "Oganesson",
				text = {
					"Balances {C:chips}Chips{} and {C:mult}Mult{}",
					"before scoring"
				},
				anum = 118,
				sym = "Og"
			},
			j_ecattos_element119 = elementcattos.loc_txt {
				name = "Ununennium",
				text = {
					"{_A:echips:1.025} per scored",
					"unique rank in hand"
				},
				anum = 119,
				sym = "Uue"
			},
			j_ecattos_element120 = elementcattos.loc_txt {
				name = "Unbinilium",
				text = {
					"When Boss Blind is defeated, upgrades",
					"played poker hand with {_A:basexmult:1.25}"
				},
				anum = 120,
				sym = "Ubn"
			},
			--Specials
			j_ecattos_purrcent = elementcattos.loc_txt {
				name = "Purrcent",
				text = {
					"{_A:legendary} Jokers can",
					"be found in the shop"
				},
				anum = ":3",
				sym = "cta"
			},
			j_ecattos_codecatto = elementcattos.loc_txt {
				name = "Sysop",
				text = {
					"{_A:chance:#1# in #2#} chance to create a",
					"{_A:code} Card when a Tool is used"
				},
				sym = "C:\\"
			},
			j_ecattos_bungy = elementcattos.loc_txt {
				name = "Bungy",
				text = {
					"Can be used as a substitute for any",
					"element when creating compounds",
				},
				sym = "Bu"
			},
			j_ecattos_naium = elementcattos.loc_txt {
				name = "N/Aium",
				text = {
					"Fuse with up to {_A:attention:3} other Cattos",
					"to add {_A:dark_edition:Negative} edition to them"
				},
				anum = "Omega",
				sym = "N/A"
			},
			--Compounds
			j_ecattos_compound_water = elementcattos.loc_txt {
				name = "Water",
				text = {
					"All played cards","count in scoring"
				},
				compound = "water"
			},
			j_ecattos_compound_starch = elementcattos.loc_txt {
				name = "Starch",
				compound = "starch"
			},
			j_ecattos_compound_oobleck = elementcattos.loc_txt {
				name = "Oobleck",
				text = {
					"{_A:xmult:#1#} if played hand",
					"has at most {_A:basemult:#3#},",
					"otherwise {_A:xmult:#2#}"
				},
				compound = "oobleck"
			},
			j_ecattos_compound_silica = elementcattos.loc_txt {
				name = "Silica",
				text = {
					"{_A:mult:+#1#} per",
					"scored Stone Card"
				},
				compound = "silica"
			}
		},
		Tarot = {
			c_ecattos_fusion = {
				name = "Fusion Reactor",
				text = topuplib.asub {
					"Combine {_A:attention:2} selected Element Cattos",
					"into one with an atomic number",
					"equal to the sum of the inputs",
					"{C:inactive}(First Edition is kept)",
					"{C:inactive}(Will create: #1#)"
				}
			},
			c_ecattos_fission = {
				name = "Fission Hammer",
				text = topuplib.asub {
					"Split {_A:attention:1} selected Element Catto",
					"into two based on it's atomic number",
					"{_A:musthaveroom}",
					"{C:inactive}(Edition is given to the first output)",
					"{C:inactive}(Will create: #1# and #2#)"
				}
			},
			c_ecattos_weakray = {
				name = "Weak Ray",
				text = topuplib.asub {
					topuplib.txnyi,
					"Accelerates {_A:attention:1} selected",
					"radioactive Element Catto's decay"
				}
			},
			c_ecattos_duplicator = {
				name = "Matter Duplicator",
				text = topuplib.asub {
					"Creates a copy of {_A:attention:1}",
					"selected Element Catto",
					"Common Elements are",
					"copied twice",
					"{_A:musthaveroom}"
				}
			},
			c_ecattos_eraser = {
				name = "Matter Eraser",
				text = topuplib.asub {
					"Destroys {_A:attention:1} selected",
					"Element Catto",
					"{C:inactive}(Bypasses Eternal)"
				}
			},
			c_ecattos_compoundcreator = {
				name = "Compound Creator",
				text = topuplib.asub {
					"Select {_A:attention:1} Compound to form",
					"using Elements you have",
					"{C:inactive}(First Edition is kept)"
				}
			},
			c_ecattos_tweezers = {
				name = "Neutron Tweezers",
				text = topuplib.asub {
					topuplib.txnyi,
					"Removes a Neutron from",
					"{_A:attention:1} selected Element Catto",
					"{_A:musthaveroom}"
				}
			},
			c_ecattos_electromagnet = {
				name = "Electromagnet",
				text = topuplib.asub {
					topuplib.txnyi,
					"Removes an Electron from",
					"{_A:attention:1} selected Element Catto",
					"{_A:musthaveroom}"
				}
			}
		},
		Other = {
			p_ecattos_element_common = {
				name = "Common Elements Pack",
				text = topuplib.asub {
					"Select {C:attention}2{} of {C:attention}5{} {_A:common}",
					"Element Cattos"
				}
			},
			p_ecattos_element_uncommon = {
				name = "Uncommon Elements Pack",
				text = topuplib.asub {
					"Select {C:attention}2{} of {C:attention}5{} {_A:uncommon}",
					"Element Cattos"
				}
			},
			p_ecattos_element_rare = {
				name = "Common Elements Pack",
				text = topuplib.asub {
					"Select {C:attention}1{} of {C:attention}3{} {_A:rare}",
					"Element Cattos"
				}
			},
			p_ecattos_element_tools = {
				name = "Tools Pack",
				text = {
					"Select {C:attention}1{} of {C:attention}4{} {C:tarot}Tools{}",
					"to use immediately"
				}
			}
		},
		Back = {
			b_ecattos_elements = {
				name = "Element Cattos Deck",
				text = topuplib.asub {
					"Only Jokers from {C:attention}Element",
					"{C:attention}Catlatro{} may appear",
					"{C:attention}+24{} Joker slots",
					"Start with additional {_A:money:8}",
					"and {C:attention}Overstock Plus{}"
				}
			}
		}
	}
}