return {
	descriptions = {
		Joker = {
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
				text = {
					"Gains {C:chips}Chips{} equal to",
					"{_A:attention:1/12th} of scored {C:mult}Mult{}",
					"{_A:currentchips:+#1#}"
				},
				anum = 2,
				sym = "He"
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
					"{_A:chips:#1#} or {_A:mult:#2#}",
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
				text = {
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
					"{C:inactive}(First Edition is kept){}"
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
		}
	}
}