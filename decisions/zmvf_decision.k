decisions = {
	create_israel = {
		only_playable = yes
		is_high_prio = yes
		ai_check_interval = 24
		
		potential = {
			#has_dlc = "Sons of Abraham"
			is_playable = yes
			OR ={
				religion = judaism_reformed
				religion_group = jewish_group
			}
			k_israel = {
				has_holder = no
			}
			NOT = {
				has_alternate_start_parameter = { key = religion_names value = random }
			}
		}
		allow = {
			completely_controls = d_jerusalem
			completely_controls = d_ascalon
			completely_controls = d_galilee
			completely_controls = d_oultrejourdain
			774 = {
				religion = ROOT
			}
			piety = 500
			prestige = 500
		}
		effect = {
			#narrative_event = { id = SoA.102 tooltip = EVTTOOLTIP_SoA_102 }
			if = {
				limit = {
					is_female = yes
					has_dlc = "Holy Fury"
				}
				create_bloodline = {
					type = israel_female
				}
				new_bloodline = {
					set_description = "bloodline_desc_israel"
				}
			}
			#if = {
			#	limit = {
			#		is_female = no
			#		has_dlc = "Holy Fury"
			#	}
			#	create_bloodline = {
			#		type = israel_male
			#	}
			#	new_bloodline = {
			#		set_description = "bloodline_desc_israel"
			#	}
			#}
			prestige = 1000
		}
		ai_will_do = {
			factor = 1
		}
	}
	create_castille = {
		only_independent = yes
		is_high_prio = yes
		ai_check_interval = 60
		
		potential = {
			NOT = { 
				higher_tier_than = DUKE 
			}
			has_landed_title = d_castilla
			k_castille = {
				has_holder = no
			}
			k_castille = {
				is_titular = yes
			}
			NOR = {
				has_alternate_start_setting = {
					setting = dejure
					value = random
				}
				has_alternate_start_setting = {
					setting = title_names
					value = random
				}
				has_alternate_start_setting = {
					setting = title_names
					value = random_including_duchies
				}
			}
		}
		allow = {
			is_adult = yes
			independent = yes
			war = no
			NOT = { trait = incapable }
			completely_controls = d_castilla
			conditional_tooltip =  {
				trigger = {
					ai = no
				}

				prestige = 1000
			}
			wealth = 100
		}
		effect = {
			wealth = -100
			prestige = 500
			primary_title = {
				save_event_target_as = current_primary_title
			}
			activate_title = { title = k_castille status = yes }
			k_castille = {
				show_scope_change = no
				grant_title = ROOT
				copy_title_laws = event_target:current_primary_title
			}
			d_castilla = {
				show_scope_change = no
				de_jure_liege = k_castille
			}
			if = {
				limit = { completely_controls = d_toledo }
				d_toledo = {
					show_scope_change = no
					de_jure_liege = k_castille
				}
			}
			if = {
				limit = { has_nickname = no }
				give_nickname = nick_the_great
			}
			hidden_tooltip = {
				any_playable_ruler = {
					limit = {
						ai = no
						capital_scope = {
							region = world_europe_west_iberia
						}
					}
					character_event = { id = 62923 }
				}
			}
			if = {
				limit = {
					has_landed_title = c_burgos
					NOT = { capital_scope = { province_id = 199 } }

				}
				c_burgos = { 
					show_scope_change = no
					ROOT = { 
						show_scope_change = no
						capital = PREV 
					} 
				}
			}
			hidden_tooltip = { character_event = { id = 62922 } }
		}
		ai_will_do = {
			factor = 1
		}
	}

	create_portugal = {
		only_independent = yes
		is_high_prio = yes
		ai_check_interval = 60
		
		potential = {
			NOT = { 
				higher_tier_than = DUKE 
			}
			has_landed_title = d_porto
			k_portugal = {
				has_holder = no
			}
			k_portugal = {
				is_titular = yes
			}
			NOR = {
				has_alternate_start_setting = {
					setting = dejure
					value = random
				}
				has_alternate_start_setting = {
					setting = title_names
					value = random
				}
				has_alternate_start_setting = {
					setting = title_names
					value = random_including_duchies
				}
			}
		}
		allow = {
			is_adult = yes
			independent = yes
			war = no
			NOT = { trait = incapable }
			completely_controls = d_porto
			conditional_tooltip = {
				trigger = {
					ai = no
				}

				prestige = 1000
			}
			wealth = 100
		}
		effect = {
			wealth = -100
			prestige = 500
			primary_title = {
				save_event_target_as = current_primary_title
			}
			k_portugal = {
				show_scope_change = no
				grant_title = ROOT
				copy_title_laws = event_target:current_primary_title
			}
			d_porto = {
				show_scope_change = no
				de_jure_liege = k_portugal
			}
			if = {
				limit = { completely_controls = d_beja }
				d_beja = {
					show_scope_change = no
					de_jure_liege = k_portugal
				}
			}
			if = {
				limit = {
					has_landed_title = c_porto
					NOT = { capital_scope = { province_id = 158 } }

				}
				c_porto = { 
					show_scope_change = no
					ROOT = { 
						show_scope_change = no
						capital = PREV 
					} 
				}
			}
			if = {
				limit = { has_nickname = no }
				give_nickname = nick_the_great
			}
			hidden_tooltip = {
				any_playable_ruler = {
					limit = {
						ai = no
						capital_scope = {
							region = world_europe_west_iberia
						}
					}
					character_event = { id = 62925 }
				}
			}
			hidden_tooltip = { character_event = { id = 62924 } }
		}
		ai_will_do = {
			factor = 1
		}
	}

	create_aragon = {
		only_independent = yes
		is_high_prio = yes
		ai_check_interval = 60
		
		potential = {
			NOT = { 
				higher_tier_than = DUKE 
			}
			has_landed_title = d_aragon
			k_aragon = {
				has_holder = no
			}
			k_aragon = {
				is_titular = yes
			}
			NOR = {
				has_alternate_start_setting = {
					setting = dejure
					value = random
				}
				has_alternate_start_setting = {
					setting = title_names
					value = random
				}
				has_alternate_start_setting = {
					setting = title_names
					value = random_including_duchies
				}
			}
		}
		allow = {
			is_adult = yes
			independent = yes
			war = no
			NOT = { trait = incapable }
			completely_controls = d_aragon
			conditional_tooltip = {
				trigger = {
					ai = no
				}

				prestige = 1000
			}
			wealth = 100
		}
		effect = {
			wealth = -100
			prestige = 500
			primary_title = {
				save_event_target_as = current_primary_title
			}
			k_aragon = {
				show_scope_change = no
				grant_title = ROOT
				copy_title_laws = event_target:current_primary_title
			}
			d_aragon = {
				show_scope_change = no
				de_jure_liege = k_aragon
			}
			if = {
				limit = { completely_controls = d_barcelona }
				d_barcelona = {
					show_scope_change = no
					de_jure_liege = k_aragon
				}
			}
			hidden_tooltip = {
				any_playable_ruler = {
					limit = {
						ai = no
						capital_scope = {
							region = world_europe_west_iberia
						}
					}
					character_event = { id = 62927 }
				}
			}
			hidden_tooltip = { character_event = { id = 62926 } }
		}
		ai_will_do = {
			factor = 1
		}
	}
	create_kingdom_amalfi = {
		only_independent = yes
		is_high_prio = yes
		ai_check_interval = 120

		potential = {
			is_republic = yes
			has_landed_title = d_amalfi
			k_amalfi = {
				has_holder = no
			}
			NOT = {
				higher_tier_than = DUKE
			}
			k_amalfi = {
				is_titular = yes
			}
			NOR = {
				has_alternate_start_setting = {
					setting = dejure
					value = random
				}
				has_alternate_start_setting = {
					setting = title_names
					value = random
				}
				has_alternate_start_setting = {
					setting = title_names
					value = random_including_duchies
				}
			}
		}

		allow = {
			is_adult = yes
			independent = yes
			war = no
			num_of_duke_titles >= 2
			NOT = {
				trait = incapable
			}
			conditional_tooltip = {
				trigger = {
					ai = no
				}

				prestige = 500
			}
			conditional_tooltip = {
				trigger = {
					ai = no
				}

				wealth = 500
			}
			has_landed_title = c_amalfi
		}

		effect = {
			wealth = -500
			primary_title = {
				save_event_target_as = current_primary_title
			}
			c_amalfi = {
				show_scope_change = no
				de_jure_liege = d_amalfi 
			}
			d_amalfi = {
				show_scope_change = no
				de_jure_liege = k_amalfi
			}
			k_amalfi = {
				show_scope_change = no
				grant_title = ROOT
				copy_title_laws = event_target:current_primary_title
			}

			narrative_event = { id = HFP.40015 }
		}
	}

	create_kingdom_pisa = {
		only_independent = yes
		is_high_prio = yes
		ai_check_interval = 120

		potential = {
			is_republic = yes
			has_landed_title = d_pisa
			NOT = {
				higher_tier_than = DUKE
			}
			NOR = {
				has_alternate_start_setting = {
					setting = dejure
					value = random
				}
				has_alternate_start_setting = {
					setting = title_names
					value = random
				}
				has_alternate_start_setting = {
					setting = title_names
					value = random_including_duchies
				}
			}
			k_pisa = {
				has_holder = no
			}
			k_pisa = {
				is_titular = yes
			}
		}

		allow = {
			is_adult = yes
			independent = yes
			war = no
			num_of_duke_titles >= 2
			NOT = {
				trait = incapable
			}
			conditional_tooltip = {
				trigger = {
					ai = no
				}

				prestige = 500
			}
			conditional_tooltip = {
				trigger = {
					ai = no
				}

				wealth = 500
			}
			has_landed_title = c_pisa
			has_landed_title = c_piombino
		}

		effect = {
			wealth = -500
			primary_title = {
				save_event_target_as = current_primary_title
			}
			d_pisa = {
				show_scope_change = no
				de_jure_liege = k_pisa
			}
			k_pisa = {
				show_scope_change = no
				grant_title = ROOT
				copy_title_laws = event_target:current_primary_title
			}

			narrative_event = { id = HFP.40015 }
		}
	}
	create_the_hansa = {
		is_high_prio = yes
		only_playable = yes
		ai_check_interval = 120

		potential = {
			ai = no
			religion_group = christian
			has_dlc = "The Republic"
			#top_liege = {
			#	has_landed_title = e_hre
			#}
			NOT = {
				higher_tier_than = KING
			}
			is_government_potential = merchant_republic_government
			OR = {
				culture = german
				culture = old_saxon
				culture = pommeranian
			}
			has_landed_title = d_mecklemburg
			k_hansa = {
				has_holder = no
			}
			k_hansa = {
				is_titular = yes
			}
			NOR = {
				has_alternate_start_setting = {
					setting = dejure
					value = random
				}
				has_alternate_start_setting = {
					setting = title_names
					value = random
				}
				has_alternate_start_setting = {
					setting = title_names
					value = random_including_duchies
				}
			}
		}

		allow = {
			is_adult = yes
			war = no
			prestige = 1000
			wealth = 1000
			capital_scope = {
				province_id = 262
			}
			has_landed_title = d_mecklemburg
			has_landed_title = c_lubeck
			custom_tooltip = {
				text = emperor_has_hre

				liege = {
					has_landed_title = e_hre
				}
			}
		}

		effect = {
			custom_tooltip = { text = create_the_hansa_tooltip }
			wealth = -1000
			hidden_tooltip = {	
				if = {
					limit = {
						NOT = {
							c_lubeck = {
								capital_holding = {
									holding_type = city
								}
							}
						}
						b_lubeck = {
							holding_type = city
						}
						is_title_active = b_lubeck
					}
					ROOT = {
						b_lubeck = {
							grant_title = PREV						
							make_capital_holding = yes
						}
					}
				}
				else_if = {
					limit = {
						NOT = {
							c_lubeck = {
								capital_holding = {
									holding_type = city
								}
							}
						}
						b_ratzeburg = {
							holding_type = city
						}
						is_title_active = b_ratzeburg
					}
					ROOT = {
						b_ratzeburg = {
							grant_title = PREV
							make_capital_holding = yes
						}
					}
				}
				else_if = {
					limit = {
						NOT = {
							c_lubeck = {
								capital_holding = {
									holding_type = city
								}
							}
						}
						b_travemunde = {
							holding_type = city
						}
						is_title_active = b_travemunde
					}
					ROOT = {
						b_travemunde = {
							grant_title = PREV
							make_capital_holding = yes
						}
					}
				}
				else_if = {
					limit = {
						NOT = {
							c_lubeck = {
								capital_holding = {
									holding_type = city
								}
							}
						}
						b_schlutup = {
							holding_type = city
						}
						is_title_active = b_schlutup
					}
					ROOT = {
						b_schlutup = {
							grant_title = PREV
							make_capital_holding = yes
						}
					}
				}
				else_if = {
					limit = {
						NOT = {
							c_lubeck = {
								capital_holding = {
									holding_type = city
								}
							}
						}
						b_starigard = {
							holding_type = city
						}
						is_title_active = b_starigard
					}
					ROOT = {
						b_starigard = {
							grant_title = PREV
							make_capital_holding = yes
						}
					}
				}
				else_if = {
					limit = {
						NOT = {
							c_lubeck = {
								capital_holding = {
									holding_type = city
								}
							}
						}
						b_weslo = {
							holding_type = city
						}
						is_title_active = b_weslo
					}
					ROOT = {
						b_weslo = {
							grant_title = PREV
							make_capital_holding = yes
						}
					}
				}
				else_if = {
					limit = {
						NOT = {
							c_lubeck = {
								capital_holding = {
									holding_type = city
								}
							}
						}
						b_bucu = {
							holding_type = city
						}
						is_title_active = b_bucu
					}
					ROOT = {
						b_bucu = {
							grant_title = PREV
							make_capital_holding = yes
						}
					}
				}
				else_if = {
					limit = {
						NOT = {
							c_lubeck = {
								capital_holding = {
									holding_type = city
								}
							}
						}
						b_wulfsdorf = {
							holding_type = city
						}
					}
					ROOT = {
						b_wulfsdorf = {
							grant_title = PREV
							make_capital_holding = yes
						}
					}
				}
			
				create_family_palace = yes
				
				set_government_type = merchant_republic_government
				
				if = {
					limit = {
						NOT = {
							num_of_government_vassals = {
								government = merchant_republic_government
								value = 1
							}
						}
					}
					
					any_unique_dynasty_vassal = { # gives random vassals a family palace
						count = 4
						limit = {
							is_female = no
							OR = {
								is_republic = yes
								is_tribal = yes
							}
							is_patrician = no
							prisoner = no
							NOT = { trait = incapable }
							is_adult = yes
							NOT = { 
								dynasty = none 
							}
						}
						
						
						create_family_palace = yes
					}
				}

				if = {
					limit = { ai = no }
					set_character_flag = achievement_res_publica
				}
				
				if = {
					limit = {
						ai = no
					}
					chronicle = {
						entry = CHRONICLE_FOUNDED_MERCHANT_REPUBLIC
						picture = GFX_evt_busy_trading_dock_republic
					}
				}
				
				set_government_type = merchant_republic_government

				e_hre = {
					owner = {
						k_hansa = {
							grant_title = PREV
						}
					}
				}
				primary_title = {
					k_hansa = {
						copy_title_laws = PREV
					}
				}
				k_hansa = {
					grant_title_no_opinion = ROOT
				}
				k_hansa = {
					make_primary_title = yes
				}
				d_mecklemburg = {
					de_jure_liege = k_hansa
				}
				k_hansa = {
					de_jure_liege = e_hre
				}
				narrative_event = { id = HFP.40000 }

				set_global_flag = hansa_formed

				e_hre = {
					owner = {
						any_vassal = {
							limit = {
								NOT = {
									has_landed_title = k_hansa
								}
							}
							narrative_event = { id = HFP.40001 days = 1 }
						}
					}
				}
			}
		}
	}
	create_archduchy_of_austria = {
		is_high_prio = yes
		only_playable = yes
		ai_check_interval = 120

		potential = {
			religion_group = christian
			top_liege = {
				has_landed_title = e_hre
			}
			tier = DUKE
			is_adult = yes
			OR = {
				has_landed_title = d_osterreich
				has_landed_title = d_styria
			}
			k_austria = {
				has_holder = no
			}
			k_austria = {
				is_titular = yes
			}
			k_eastern_marches = {
				is_titular = yes
			}
			NOR = {
				has_alternate_start_setting = {
					setting = dejure
					value = random
				}
				has_alternate_start_setting = {
					setting = title_names
					value = random
				}
				has_alternate_start_setting = {
					setting = title_names
					value = random_including_duchies
				}
			}
		}

		allow = {
			is_adult = yes
			war = no
			OR = {
				prestige = 3000
				AND = {
					intrigue = 20
					prestige = 1000
				}
				AND = {
					custom_tooltip = {
						text = same_dynasty_as_emperor_TT

						e_hre = {
							owner = {
								dynasty = ROOT
							}
						}
					}
					prestige = 1000
				}
			}
			wealth = 1000
			completely_controls = d_osterreich
			completely_controls = d_styria
			custom_tooltip = {
				text = emperor_has_hre

				liege = {
					has_landed_title = e_hre
				}
			}
			custom_tooltip = {
				text = emperor_likes_you_quite_a_lot_TT 

				e_hre = {
					owner = {
						opinion = {
							who = ROOT
							value = 50
						}
					}
				}
			}
		}
		effect = {
			wealth = -1000
			custom_tooltip = {
				text = create_archduchy_of_austria_TT
			}

			hidden_tooltip = {
				primary_title = {
					k_austria = {
						copy_title_laws = PREV
						copy_title_history = PREV
					}
				}

				grant_title_no_opinion = k_austria

				e_hre = {
					owner = {
						ROOT = {
							set_defacto_liege = PREV
						}
					}
				}
				d_osterreich = {
					de_jure_liege = k_austria
				}
				d_styria = {
					de_jure_liege = k_austria
				}
				k_austria = {
					de_jure_liege = e_hre
				}

				ROOT = {
					narrative_event = { id = HFP.40022 }
				}
				any_playable_ruler = {
					limit = {
						de_facto_liege_title = e_hre
					}
					narrative_event = { id = HFP.40022 }
				}
			}

			if = {
				limit = {
					has_landed_title = d_salzburg
				}
				d_salzburg = {
					show_scope_change = no
					de_jure_liege = k_austria
				}
			}
			if = {
				limit = {
					has_landed_title = d_salzburg
					has_landed_title = d_tyrol
				}
				d_tyrol = {
					show_scope_change = no
					de_jure_liege = k_austria
				}
			}
		}
	}

	form_the_outremer = {
		is_high_prio = yes
		only_playable = yes
		ai = no

		potential = {
			OR = {
				religion = catholic
				religion = fraticelli
			}
			any_demesne_title = {
				OR = {
					tier = KING
					tier = EMPEROR
				}
				region = world_middle_east
			}
			NOR = {
				has_landed_title = e_byzantium
				has_landed_title = e_roman_empire
				has_landed_title = e_hre
			}
			e_outremer = {
				is_titular = yes
			}
			e_outremer = {
				has_holder = no
			}
			is_alternate_start = no
		}

		allow = {
			is_adult = yes
			independent = yes
			war = no
			prestige = 5000
			custom_tooltip = {
				text = owns_jerusalem_tt
				has_landed_title = c_jerusalem
			}
			custom_tooltip = {
				text = completely_control_near_east_TT

				completely_controls_region = world_middle_east
			}
		}

		effect = {
			hidden_tooltip = {
				primary_title = {
					e_outremer = {
						copy_title_laws = PREV
						copy_title_history = PREV
					}
				}
			}

			custom_tooltip = {
				text = create_outremer_tt
				grant_title_no_opinion = e_outremer 
			}
			if = {
				limit = {
					OR = {
						d_shiite = {
							has_holder = yes
						}
						d_sunni = {
							has_holder = yes
						}
						d_ibadi = {
							has_holder = yes
						}
						d_kharijite = {
							has_holder = yes
						}
						d_yazidi = {
							has_holder = yes
						}
						d_hurufi = {
							has_holder = yes
						}
					}
				}

				custom_tooltip = {
					text = destroy_muslim_leadership

					destroy_landed_title = d_shiite
					destroy_landed_title = d_sunni
					destroy_landed_title = d_ibadi
					destroy_landed_title = d_kharijite
					destroy_landed_title = d_hurufi
				}
			}

			hidden_tooltip = {

				any_demesne_title = {
					limit = {
						tier = EMPEROR
						NOT = { title = e_outremer }
					}
					destroy_landed_title = THIS
				}

				capital = c_jerusalem

				any_landed_title = {
					limit = {
						tier = KING
						region = world_middle_east
					}
					de_jure_liege = e_outremer
				}
				if = {
					limit = {
						completely_controls = k_egypt 
					}
					k_egypt = {
						de_jure_liege = e_outremer
					}
				}

				ROOT = {
					narrative_event = { id = HFP.40027 }
				}
				any_playable_ruler = {
					narrative_event = { id = HFP.40027 }
				}

				set_global_flag = destroyed_caliphates
				
				if = {
					limit = {
						ai = no
					}
					set_character_flag = achievement_deus_vult
				}
			}
		}
	}
	ai_claim_county_if_baron = {
		is_high_prio = yes
		only_playable = yes
		ai_check_interval = 36

		potential = {
			ai = yes
			war = no
			is_landed = yes
			higher_tier_than = COUNT
			is_merchant_republic = no
			NOT = { is_patrician = yes }
			NOT = {
				any_demesne_title = {
					tier = COUNT
				}
			}
			any_vassal = {
				ai = yes
				any_demesne_title = {
					tier = COUNT
				}
			}
		}

		allow = {
			
		}

		effect = {
			random_vassal = {
				limit = {
					ai = yes
					any_demesne_title = {
						tier = COUNT
					}
				}
				random_demesne_title = {
					limit = {
						tier = COUNT
					}
					preferred_limit = {
						location = {
							is_capital = no
						}
					}
					usurp_title = FROM
				}
			}
		}
		
		revoke_allowed = {
			always = no
		}
		
		ai_will_do = {
			factor = 1
		}
	}
	
	form_lcr = {
		is_high_prio = yes
		only_playable = yes
		ai_check_interval = 60

		potential = {
			OR = {		###Must be Slavic of Lech, Czech or Rus lineage
				culture = russian
				culture = polish
				culture = bohemian
				culture = volhynian
				culture = ilmenian
				culture = severian
				culture = pommeranian
			}
			any_demesne_title = {
				OR = {
					tier = KING
					tier = EMPEROR
				}
			}
			e_lechczechrus = {
				is_titular = yes
			}
			e_lechczechrus = {
				has_holder = no
			}
			is_alternate_start = no
		}

		allow = {
			is_adult = yes
			prestige = 5000
			war = no
			NOT = { trait = incapable }
			AND = {		#Control Czech, Poland & Rus
				completely_controls = k_bohemia
				completely_controls = k_poland
				completely_controls = k_galicia-volhynia
				completely_controls = k_ruthenia
				completely_controls = k_chernigov
				completely_controls = k_vladimir
				completely_controls = k_rus
			}
			is_vice_royalty = no
		}

		effect = {
			custom_tooltip = {
				text = form_lcr_tt
				grant_title_no_opinion = e_lechczechrus 
			}
			
			if = {
				limit = {
					is_female = yes
					has_dlc = "Holy Fury"
				}
				create_bloodline = {
					type = lcr_female
				}
				new_bloodline = {
					set_description = "lcr_female_desc"
				}
			}
			if = {
				limit = {
					is_female = no
					has_dlc = "Holy Fury"
				}
				create_bloodline = {
					type = lcr_male
				}
				new_bloodline = {
					set_description = "lcr_male_desc"
				}
			}

			hidden_tooltip = {
			
				if = {
					limit = {
						ai = no
					}
					set_character_flag = achievement_lcr
				}

				primary_title = {
					e_lechczechrus = {
						copy_title_laws = PREV
						copy_title_history = PREV
					}
				}

				any_demesne_title = {
					limit = {
						tier = EMPEROR
						NOT = { title = e_lechczechrus }
					}
					destroy_landed_title = THIS
				}

				capital = PREV

				###Slavic kingdoms go to LCR
				k_bohemia = { de_jure_liege = e_lechczechrus }
				k_poland = { de_jure_liege = e_lechczechrus }
				k_galicia-volhynia = { de_jure_liege = e_lechczechrus }
				k_ruthenia = { de_jure_liege = e_lechczechrus }
				k_chernigov = { de_jure_liege = e_lechczechrus }
				k_vladimir = { de_jure_liege = e_lechczechrus }
				k_rus = { de_jure_liege = e_lechczechrus }
				
				###If you also completely control Pomerania, it's added to LCR as well
				if = {
					limit = {
						completely_controls = k_pomerania 
					}
					k_pomerania = { de_jure_liege = e_lechczechrus }
				}

				ROOT = {
					narrative_event = { id = HFP.99999 }
				}
				any_playable_ruler = {
					narrative_event = { id = HFP.99999 }
				}
			}
		}
	}

	stem_duchy_of_saxony = {
		is_high_prio = yes
		only_playable = yes
		ai_check_interval = 120

		potential = {
			capital_scope = {
				OR = {
					province = 86
					province = 87
					province = 88
					province = 120
					province = 257
					province = 258
					province = 259
					province = 309
					province = 848
					province = 1979
					province = 1980
					province = 1982 
				}
			}
			top_liege = {
				has_landed_title = e_hre
			}
			lower_tier_than = KING
			k_saxon = {
				is_titular = yes
			}
			is_alternate_start = no
		}
		allow = {
			prestige = 3000
			custom_tooltip = {
				text = emperor_has_hre

				liege = {
					has_landed_title = e_hre
				}
			}
			tier = DUKE
			completely_controls = c_bremen
			completely_controls = c_celle 
			completely_controls = c_verden
			completely_controls = c_luneburg
			completely_controls = c_braunschweig
			completely_controls = c_altmark
			completely_controls = c_magdeburg
			completely_controls = c_oldenburg
			completely_controls = c_minden
			completely_controls = c_osnabruck
			completely_controls = c_gottingen
			completely_controls = c_munster
		}
		effect = {
			hidden_tooltip = {
				primary_title = {
					k_saxon = {
						copy_title_laws = PREV
					}
				}
			}
			grant_title_no_opinion = k_saxon
			hidden_tooltip = {
				d_saxony = {
					de_jure_liege = k_saxon
				}
				d_brunswick = {
					de_jure_liege = k_saxon
				}
				d_munster_germany = {
					de_jure_liege = k_saxon
				}
				d_angria = {
					de_jure_liege = k_saxon
				}
				d_bremen = {
					de_jure_liege = k_saxon
				}
				e_hre = {
					owner = {
						ROOT = {
							set_defacto_liege = PREV
						}
					}
				}
				ROOT = {
					narrative_event = { id = HFP.40038 }
				}
				any_playable_ruler = {
					limit = {
						OR = {
							has_landed_title = e_hre
							top_liege = {
								has_landed_title = e_hre
							}
						}
					}
					narrative_event = { id = HFP.40038 }
				}
			}
		}
	}

	stem_duchy_of_franconia = {
		is_high_prio = yes
		only_playable = yes
		ai_check_interval = 120

		potential = {
			capital_scope = {
				OR = {
					province = 121
					province = 122
					province = 123
					province = 124
					province = 254
					province = 313
					province = 1981
					province = 1984
					province = 1987
				}
			}
			top_liege = {
				has_landed_title = e_hre
			}
			lower_tier_than = KING
			k_franconia = {
				is_titular = yes
			}
			is_alternate_start = no
		}
		allow = {
			prestige = 3000
			custom_tooltip = {
				text = emperor_has_hre

				liege = {
					has_landed_title = e_hre
				}
			}
			tier = DUKE
			completely_controls = c_bamberg
			completely_controls = c_wurzburg
			completely_controls = c_leiningen
			completely_controls = c_rottenburg
			completely_controls = c_pfalz
			completely_controls = c_mainz
			completely_controls = c_frankfurt
			completely_controls = c_hesse
			completely_controls = c_nassau
		}
		effect = {
			hidden_tooltip = {
				primary_title = {
					k_franconia = {
						copy_title_laws = PREV
					}
				}
			}
			grant_title_no_opinion = k_franconia
			hidden_tooltip = {
				d_franconia = {
					de_jure_liege = k_franconia
				}
				d_rhine = {
					de_jure_liege = k_franconia
				}
				d_hesse = {
					de_jure_liege = k_franconia
				}
				e_hre = {
					owner = {
						ROOT = {
							set_defacto_liege = PREV
						}
					}
				}
				ROOT = {
					narrative_event = { id = HFP.40038 }
				}
				any_playable_ruler = {
					limit = {
						OR = {
							has_landed_title = e_hre
							top_liege = {
								has_landed_title = e_hre
							}
						}
					}
					narrative_event = { id = HFP.40038 }
				}
			}
		}
	}

	stem_duchy_of_swabia = {
		is_high_prio = yes
		only_playable = yes
		ai_check_interval = 120

		potential = {
			capital_scope = {
				OR = {
					province = 125
					province = 126
					province = 134
					province = 249
					province = 250
					province = 251
					province = 252
					province = 253
					province = 315
					AND = {
						province = 245
						d_thurgau = {
							is_titular = no
						}
					}
					AND = {
						province = 248
						d_thurgau = {
							is_titular = no
						}
					}
					AND = {
						province = 246
						d_raetia = {
							is_titular = no
						}
					}
					AND = {
						province = 247
						d_raetia = {
							is_titular = no
						}
					}
				}
			}
			top_liege = {
				has_landed_title = e_hre
			}
			lower_tier_than = KING
			k_swabia = {
				is_titular = yes
			}
			is_alternate_start = no
		}
		allow = {
			prestige = 3000
			custom_tooltip = {
				text = emperor_has_hre

				liege = {
					has_landed_title = e_hre
				}
			}
			tier = DUKE
			completely_controls = c_ulm
			completely_controls = c_kempten
			completely_controls = c_schwaben
			completely_controls = c_wurttemberg
			completely_controls = c_furstenberg
			completely_controls = c_baden
			completely_controls = c_breisgau
			completely_controls = c_nordgau
			completely_controls = c_sundgau
			conditional_tooltip = {
				trigger = {
					d_thurgau = {
						is_titular = no
					}
				}
				completely_controls = c_st_gallen
			}
			conditional_tooltip = {
				trigger = {
					d_thurgau = {
						is_titular = no
					}
				}
				completely_controls = c_zurichgau
			}
			conditional_tooltip = {
				trigger = {
					d_raetia = {
						is_titular = no
					}
				}
				completely_controls = c_chur
			}
			conditional_tooltip = {
				trigger = {
					d_raetia = {
						is_titular = no
					}
				}
				completely_controls = c_schwyz
			}
		}
		effect = {
			hidden_tooltip = {
				primary_title = {
					k_swabia = {
						copy_title_laws = PREV
					}
				}
			}
			grant_title_no_opinion = k_swabia
			hidden_tooltip = {
				d_swabia = {
					de_jure_liege = k_swabia
				}
				d_baden = {
					de_jure_liege = k_swabia
				}
				d_alsace = {
					de_jure_liege = k_swabia
				}
				if = {
					limit = {
						d_thurgau = {
							is_titular = no
						}
					}
					d_thurgau = {
						de_jure_liege = k_swabia
					}
				}
				if = {
					limit = {
						d_raetia = {
							is_titular = no
						}
					}
					d_raetia = {
						de_jure_liege = k_swabia
					}
				}
				e_hre = {
					owner = {
						ROOT = {
							set_defacto_liege = PREV
						}
					}
				}
				ROOT = {
					narrative_event = { id = HFP.40038 }
				}
				any_playable_ruler = {
					limit = {
						OR = {
							has_landed_title = e_hre
							top_liege = {
								has_landed_title = e_hre
							}
						}
					}
					narrative_event = { id = HFP.40038 }
				}
			}
		}
	}
	
	create_bosnia = {
		is_high_prio = yes
		ai_check_interval = 24
		potential = {
			is_playable = yes
			culture = bosnian
			holy_order = no
			k_bosnia = {
				has_holder = no
			}
			NOR = {
				has_alternate_start_setting = {
					setting = dejure
					value = random
				}
				has_alternate_start_setting = {
					setting = title_names
					value = random
				}
				has_alternate_start_setting = {
					setting = title_names
					value = random_including_duchies
				}
			}
		}
		allow = {
			independent = yes
			culture = bosnian
			completely_controls = d_bosnia
			completely_controls = d_dalmatia
			NOT = { 
				higher_tier_than = DUKE
			}
			prestige = 1500
			wealth = 300
		}
		effect = {
			k_bosnia = {
                grant_title = ROOT
                copy_title_laws = d_bosnia
            }
            hidden_tooltip = {
            	d_bosnia = {
            		empire = {
            			k_bosnia = {
            				de_jure_liege = PREV
            			}
            		}
            	}
            }
			d_bosnia = {
                de_jure_liege = k_bosnia
            }
			d_dalmatia = {
                de_jure_liege = k_bosnia
            }
			prestige = 1000
			wealth = -300
		}
		ai_will_do = {
			factor = 1
		}
	}
	create_russian_empire = {
		is_high_prio = yes
		only_playable = yes
		ai_check_interval = 120
		
		potential = {
			culture = russian
			has_landed_title = e_russia
			NOT = { has_landed_title = e_russian_empire }
		}
		
		allow = {
			completely_controls = k_galicia-volhynia
			completely_controls = k_ruthenia
			completely_controls = k_chernigov
			completely_controls = k_rus
			completely_controls = k_vladimir
			completely_controls = k_nenets
			completely_controls = k_perm
			completely_controls = k_volga_bulgaria
			completely_controls = k_khazaria
			completely_controls = k_alania
			completely_controls = k_crimea
		}
		
		effect = {
			activate_title = { title = e_russian_empire status = yes }
			e_russia = {
				show_scope_change = no
				e_russian_empire = {
					show_scope_change = no
					grant_title = ROOT
					hidden_tooltip = { make_primary_title = yes }
					copy_title_laws = PREV
				}
				hidden_tooltip = {
					any_direct_de_jure_vassal_title = {
						de_jure_liege = e_russian_empire
					}
					destroy_landed_title = THIS
				}
			}
			if = {
				limit = { has_nickname = no }
				give_nickname = nick_the_great
			}
			activate_title = { title = e_russia status = no }
			custom_tooltip = { text = russian_empire_cheaper_tribal_upgrades }
			
			k_galicia-volhynia = { de_jure_liege = e_russian_empire }
			k_ruthenia = { de_jure_liege = e_russian_empire }
			k_chernigov = { de_jure_liege = e_russian_empire }
			k_rus = { de_jure_liege = e_russian_empire }
			k_vladimir = { de_jure_liege = e_russian_empire }
			k_nenets = { de_jure_liege = e_russian_empire }
			k_perm = { de_jure_liege = e_russian_empire }
			k_volga_bulgaria = { de_jure_liege = e_russian_empire }
			k_khazaria = { de_jure_liege = e_russian_empire }
			k_alania = { de_jure_liege = e_russian_empire }
			k_crimea = { de_jure_liege = e_russian_empire }
			hidden_tooltip = {
				character_event = { id = HFP.16001 }
				any_playable_ruler = {
					limit = {
						ai = no
					}
					character_event = { id = HFP.16002 }
				}
			}
		}
		ai_will_do = {
			factor = 1
		}
	}
}