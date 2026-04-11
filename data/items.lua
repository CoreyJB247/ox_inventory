return {
    ['bandage'] = {
        label = 'Bandage',
        weight = 115,
    },

    ['burger'] = {
        label = 'Burger',
        weight = 220,
        client = {
            status = { hunger = 368000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 2500,
            notification = 'You ate a delicious burger'
        },
    },

    ['sprunk'] = {
        label = 'Sprunk',
        weight = 350,
        client = {
            status = { thirst = 368000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
            usetime = 2500,
            notification = 'You quenched your thirst with a sprunk'
        }
    },

    ['parachute'] = {
        label = 'Parachute',
        weight = 8000,
        stack = false,
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 1500
        }
    },

    ['garbage'] = {
        label = 'Garbage',
    },

    ['paperbag'] = {
        label = 'Paper Bag',
        weight = 1,
        stack = false,
        close = false,
        consume = 0
    },

    ['panties'] = {
        label = 'Knickers',
        weight = 10,
        consume = 0,
        client = {
            status = { thirst = -100000, stress = -25000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
            usetime = 2500,
        }
    },

    ['lockpick'] = {
        label = 'Lockpick',
        weight = 160,
    },

    ['phone'] = {
        label = 'Phone',
        weight = 190,
        stack = false,
        consume = 0,
        client = {
            add = function(total)
                if total > 0 then
                    pcall(function() return exports.npwd:setPhoneDisabled(false) end)
                end
            end,

            remove = function(total)
                if total < 1 then
                    pcall(function() return exports.npwd:setPhoneDisabled(true) end)
                end
            end
        }
    },

    ['mustard'] = {
        label = 'Mustard',
        weight = 500,
        client = {
            status = { hunger = 25000, thirst = 25000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
            usetime = 2500,
            notification = 'You... drank mustard'
        }
    },

    ['water'] = {
        label = 'Water',
        weight = 500,
        client = {
            status = { thirst = 368000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
            usetime = 2500,
            cancel = true,
            notification = 'You drank some refreshing water'
        }
    },

    ['armour'] = {
        label = 'Bulletproof Vest',
        weight = 3000,
        stack = false,
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 3500
        }
    },

    ['clothing'] = {
        label = 'Clothing',
        consume = 0,
    },

    ['money'] = {
        label = 'Money',
    },

    ['black_money'] = {
        label = 'Dirty Money',
    },

    ['id_card'] = {
        label = 'Identification Card',
    },

    ['driver_license'] = {
        label = 'Drivers License',
    },

    ['weaponlicense'] = {
        label = 'Weapon License',
    },

    ['lawyerpass'] = {
        label = 'Lawyer Pass',
    },

    ['radio'] = {
        label = 'Radio',
        weight = 1000,
        allowArmed = true,
        consume = 0,
        client = {
            event = 'mm_radio:client:use'
        }
    },

    ['jammer'] = {
        label = 'Radio Jammer',
        weight = 10000,
        allowArmed = true,
        client = {
            event = 'mm_radio:client:usejammer'
        }
    },

    ['radiocell'] = {
        label = 'AAA Cells',
        weight = 1000,
        stack = true,
        allowArmed = true,
        client = {
            event = 'mm_radio:client:recharge'
        }
    },

    ['advancedlockpick'] = {
        label = 'Advanced Lockpick',
        weight = 500,
    },

    ['screwdriverset'] = {
        label = 'Screwdriver Set',
        weight = 500,
    },

    ['electronickit'] = {
        label = 'Electronic Kit',
        weight = 500,
    },
    
    ['diamond_ring'] = {
        label = 'Diamond',
        weight = 1500,
    },

    ['rolex'] = {
        label = 'Golden Watch',
        weight = 1500,
    },

    ['goldbar'] = {
        label = 'Gold Bar',
        weight = 1500,
    },

    ['goldchain'] = {
        label = 'Golden Chain',
        weight = 1500,
    },

    ['crack_baggy'] = {
        label = 'Crack Baggy',
        weight = 100,
    },

    ['cokebaggy'] = {
        label = 'Bag of Coke',
        weight = 100,
    },

    ['coke_brick'] = {
        label = 'Coke Brick',
        weight = 2000,
    },

    ['coke_small_brick'] = {
        label = 'Coke Package',
        weight = 1000,
    },

    ['xtcbaggy'] = {
        label = 'Bag of Ecstasy',
        weight = 100,
    },

    ['meth'] = {
        label = 'Methamphetamine',
        weight = 100,
    },

    ['oxy'] = {
        label = 'Oxycodone',
        weight = 100,
    },

    ['weed_ak47'] = {
        label = 'AK47 2g',
        weight = 200,
    },

    ['weed_ak47_seed'] = {
        label = 'AK47 Seed',
        weight = 1,
    },

    ['weed_skunk'] = {
        label = 'Skunk 2g',
        weight = 200,
    },

    ['weed_skunk_seed'] = {
        label = 'Skunk Seed',
        weight = 1,
    },

    ['weed_amnesia'] = {
        label = 'Amnesia 2g',
        weight = 200,
    },

    ['weed_amnesia_seed'] = {
        label = 'Amnesia Seed',
        weight = 1,
    },

    ['weed_og-kush'] = {
        label = 'OGKush 2g',
        weight = 200,
    },

    ['weed_og-kush_seed'] = {
        label = 'OGKush Seed',
        weight = 1,
    },

    ['weed_white-widow'] = {
        label = 'OGKush 2g',
        weight = 200,
    },

    ['weed_white-widow_seed'] = {
        label = 'White Widow Seed',
        weight = 1,
    },

    ['weed_purple-haze'] = {
        label = 'Purple Haze 2g',
        weight = 200,
    },

    ['weed_purple-haze_seed'] = {
        label = 'Purple Haze Seed',
        weight = 1,
    },

    ['weed_brick'] = {
        label = 'Weed Brick',
        weight = 2000,
    },

    ['weed_nutrition'] = {
        label = 'Plant Fertilizer',
        weight = 2000,
    },

    ['joint'] = {
        label = 'Joint',
        weight = 200,
    },

    ['rolling_paper'] = {
        label = 'Rolling Paper',
        weight = 0,
    },

    ['empty_weed_bag'] = {
        label = 'Empty Weed Bag',
        weight = 0,
    },

    ['firstaid'] = {
        label = 'First Aid',
        weight = 2500,
    },

    ['ifaks'] = {
        label = 'Individual First Aid Kit',
        weight = 2500,
    },

    ['painkillers'] = {
        label = 'Painkillers',
        weight = 400,
    },

    ['firework1'] = {
        label = '2Brothers',
        weight = 1000,
    },

    ['firework2'] = {
        label = 'Poppelers',
        weight = 1000,
    },

    ['firework3'] = {
        label = 'WipeOut',
        weight = 1000,
    },

    ['firework4'] = {
        label = 'Weeping Willow',
        weight = 1000,
    },

    ['steel'] = {
        label = 'Steel',
        weight = 100,
    },

    ['rubber'] = {
        label = 'Rubber',
        weight = 100,
    },

    ['metalscrap'] = {
        label = 'Metal Scrap',
        weight = 100,
    },

    ['iron'] = {
        label = 'Iron',
        weight = 100,
    },

    ['copper'] = {
        label = 'Copper',
        weight = 100,
    },

    ['aluminum'] = {
        label = 'Aluminium',
        weight = 100,
    },

    ['plastic'] = {
        label = 'Plastic',
        weight = 100,
    },

    ['glass'] = {
        label = 'Glass',
        weight = 100,
    },

    ['gatecrack'] = {
        label = 'Gatecrack',
        weight = 1000,
    },

    ['cryptostick'] = {
        label = 'Crypto Stick',
        weight = 100,
    },

    ['trojan_usb'] = {
        label = 'Trojan USB',
        weight = 100,
    },

    ['toaster'] = {
        label = 'Toaster',
        weight = 5000,
    },

    ['small_tv'] = {
        label = 'Small TV',
        weight = 100,
    },

    ['security_card_01'] = {
        label = 'Security Card A',
        weight = 100,
    },

    ['security_card_02'] = {
        label = 'Security Card B',
        weight = 100,
    },

    ['drill'] = {
        label = 'Drill',
        weight = 5000,
    },

    ['thermite'] = {
        label = 'Thermite',
        weight = 1000,
    },

    ['diving_gear'] = {
        label = 'Diving Gear',
        weight = 30000,
    },

    ['diving_fill'] = {
        label = 'Diving Tube',
        weight = 3000,
    },

    ['antipatharia_coral'] = {
        label = 'Antipatharia',
        weight = 1000,
    },

    ['dendrogyra_coral'] = {
        label = 'Dendrogyra',
        weight = 1000,
    },

    ['jerry_can'] = {
        label = 'Jerrycan',
        weight = 3000,
    },

    ['wine'] = {
        label = 'Wine',
        weight = 500,
    },

    ['grape'] = {
        label = 'Grape',
        weight = 10,
    },

    ['grapejuice'] = {
        label = 'Grape Juice',
        weight = 200,
    },

    ['coffee'] = {
        label = 'Coffee',
        weight = 200,
    },

    ['vodka'] = {
        label = 'Vodka',
        weight = 500,
    },

    ['whiskey'] = {
        label = 'Whiskey',
        weight = 200,
    },

    ['beer'] = {
        label = 'Beer',
        weight = 200,
    },

    ['sandwich'] = {
        label = 'Sandwich',
        weight = 200,
    },

    ['walking_stick'] = {
        label = 'Walking Stick',
        weight = 1000,
    },

    ['lighter'] = {
        label = 'Lighter',
        weight = 200,
    },

    ['binoculars'] = {
        label = 'Binoculars',
        weight = 800,
    },

    ['stickynote'] = {
        label = 'Sticky Note',
        weight = 0,
    },

    ['harness'] = {
        label = 'Harness',
        weight = 200,
    },

    ["shield"] = {
        label = "Police shield",
        weight = 8000,
        stack = false,
        consume = 0,
        client = {
            export = "ND_Police.useShield",
            add = function(total)
                if total > 0 then
                        pcall(function() return exports["ND_Police"]:hasShield(true) end)
                    end
                end,
            remove = function(total)
                if total < 1 then
                    pcall(function() return exports["ND_Police"]:hasShield(false) end)
                end
            end
        }
    },
    ["spikestrip"] = {
        label = "Spikestrip",
        weight = 500,
        client = {
            export = "ND_Police.deploySpikestrip"
        }
    },
    ["cuffs"] = {
        label = "Handcuffs",
        weight = 150,
        client = {
            export = "ND_Police.cuff"
        }
    },
    ["zipties"] = {
        label = "Zipties",
        weight = 10,
        client = {
            export = "ND_Police.ziptie"
        }
    },
    ["handcuffkey"] = {
        label = "Handcuff key",
        weight = 10,
        client = {
            export = "ND_Police.uncuff"
        }
    },
    ["casing"] = {
        label = "Bullet Casing"
    },
    ["projectile"] = {
        label = "Projectile"
    },
	["stretcher"] = {
    label = "Stretcher",
    weight = 15000,
    stack = false,
    consume = 1,
    server = {
        export = "ND_Ambulance.createStretcher"
    }
},
["defib"] = {
    label = "Monitor/defibrillator",
    weight = 8000,
    stack = false,
    consume = 1,
    client = {
        export = "ND_Ambulance.useDefib",
        add = function(total)
            if total > 0 then
                pcall(function()
                    return exports["ND_Ambulance"]:hasDefib(true)
                end)
            end
        end,
        remove = function(total)
            if total < 1 then
                pcall(function()
                    return exports["ND_Ambulance"]:hasDefib(false)
                end)
            end
        end
    }
},
["medbag"] = {
    label = "Trauma bag",
    weight = 1000,
    stack = false,
    consume = 1,
    server = {
        export = "ND_Ambulance.useBag"
    },
    client = {
        export = "ND_Ambulance.useBag",
        add = function(total)
            if total > 0 then
                pcall(function()
                    return exports["ND_Ambulance"]:bag(true)
                end)
            end
        end,
        remove = function(total)
            if total < 1 then
                pcall(function()
                    return exports["ND_Ambulance"]:bag(false)
                end)
            end
        end
    }
},
["burndressing"] = {
    label = "Burn Dressing",
    weight = 50,
    server = {
        export = "ND_Ambulance.treatment"
    },
    client = {
        anim = { dict = "missheistdockssetup1clipboard@idle_a", clip = "idle_a", flag = 49 },
        prop = { model = `prop_toilet_roll_01`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
        disable = { move = true, car = true, combat = true },
        usetime = 2500
    }
},
["splint"] = {
    label = "Splint",
    weight = 500,
    server = {
        export = "ND_Ambulance.treatment"
    },
    client = {
        anim = { dict = "missheistdockssetup1clipboard@idle_a", clip = "idle_a", flag = 49 },
        prop = { model = `prop_toilet_roll_01`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
        disable = { move = true, car = true, combat = true },
        usetime = 2500
    }
},
["gauze"] = {
    label = "Gauze",
    weight = 80,
    server = {
        export = "ND_Ambulance.treatment"
    },
    client = {
        anim = { dict = "missheistdockssetup1clipboard@idle_a", clip = "idle_a", flag = 49 },
        prop = { model = `prop_toilet_roll_01`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
        disable = { move = true, car = true, combat = true },
        usetime = 2500
    }
},
["tourniquet"] = {
    label = "Tourniquet",
    weight = 85,
    server = {
        export = "ND_Ambulance.treatment"
    },
    client = {
        anim = { dict = "missheistdockssetup1clipboard@idle_a", clip = "idle_a", flag = 49 },
        prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
        disable = { move = true, car = true, combat = true },
        usetime = 2500
    }
},

["casino_chips"] = {
    label = "Chips"
},

['advanced_pickaxe'] = {
		label = 'Advanced Pickaxe',
		weight = 100,
		client = {
			image = 'advanced_pickaxe.png',
			usetime = 2500,
		},
	},

	['blackpowder'] = {
		label = 'Black Powder',
		weight = 100,
		client = {
			image = 'blackpowder.png',
			usetime = 2500,
		},
	},

	['coal'] = {
		label = 'Coal',
		weight = 100,
		client = {
			image = 'coal.png',
			usetime = 2500,
		},
	},

	['concrete'] = {
		label = 'Concrete',
		weight = 100,
		client = {
			image = 'concrete.png',
			usetime = 2500,
		},
	},

	['copper_ingot'] = {
		label = 'Copper Ingot',
		weight = 100,
		client = {
			image = 'copper_ingot.png',
			usetime = 2500,
		},
	},

	['copper_ore'] = {
		label = 'Copper Ore',
		weight = 100,
		client = {
			image = 'copper_ore.png',
			usetime = 2500,
		},
	},

	['diamond_ingot'] = {
		label = 'Diamond Ingot',
		weight = 100,
		client = {
			image = 'diamond_ingot.png',
			usetime = 2500,
		},
	},

	['diamond_ore'] = {
		label = 'Diamond Ore',
		weight = 100,
		client = {
			image = 'diamond_ore.png',
			usetime = 2500,
		},
	},

	['glass'] = {
		label = 'Glass',
		weight = 100,
		client = {
			image = 'glass.png',
			usetime = 2500,
		},
	},

	['glass_mold'] = {
		label = 'Glass Mold',
		weight = 100,
		client = {
			image = 'glass_mold.png',
			usetime = 2500,
		},
	},

	['goldingot'] = {
		label = 'Gold Ingot',
		weight = 100,
		client = {
			image = 'goldingot.png',
			usetime = 2500,
		},
	},

	['gold_ore'] = {
		label = 'Gold Ore',
		weight = 100,
		client = {
			image = 'gold_ore.png',
			usetime = 2500,
		},
	},

	['ingot_mold'] = {
		label = 'Ingot Mold',
		weight = 100,
		client = {
			image = 'ingot_mold.png',
			usetime = 2500,
		},
	},

	['iron_ingot'] = {
		label = 'Iron Ingot',
		weight = 100,
		client = {
			image = 'iron_ingot.png',
			usetime = 2500,
		},
	},

	['iron_ore'] = {
		label = 'Iron Ore',
		weight = 100,
		client = {
			image = 'iron_ore.png',
			usetime = 2500,
		},
	},

	['limestone'] = {
		label = 'Limestone',
		weight = 100,
		client = {
			image = 'limestone.png',
			usetime = 2500,
		},
	},

	['normal_pickaxe'] = {
		label = 'Normal Pickaxe',
		weight = 100,
		client = {
			image = 'normal_pickaxe.png',
			usetime = 2500,
		},
	},

	['professional_pickaxe'] = {
		label = 'Professional Pickaxe',
		weight = 100,
		client = {
			image = 'professional_pickaxe.png',
			usetime = 2500,
		},
	},

	['rock'] = {
		label = 'Rock',
		weight = 100,
		client = {
			image = 'rock.png',
			usetime = 2500,
		},
	},

	['sandstone'] = {
		label = 'Sandstone',
		weight = 100,
		client = {
			image = 'sandstone.png',
			usetime = 2500,
		},
	},

	['special_water'] = {
		label = 'Special Water',
		weight = 100,
		client = {
			image = 'special_water.png',
			usetime = 2500,
		},
	},

	['sticky_gel'] = {
		label = 'Sticky Gel',
		weight = 100,
		client = {
			image = 'sticky_gel.png',
			usetime = 2500,
		},
	},

	['sulfur'] = {
		label = 'Sulfur',
		weight = 100,
		client = {
			image = 'sulfur.png',
			usetime = 2500,
		},
	},

    ['rentalpapers'] = {
    label = "Rental Papers",
    weight = 10,
    stack = false,
    close = false,
    description = "Rental Papers",
    client = {
        image = "rentalpapers.png",
    },
    },


        ['toaster'] = {
		label = 'Toaster',
		weight = 1000,
	},
    ['boombox'] = {
		label = 'Boom box',
		weight = 1000,
	},
    ['television1'] = {
		label = 'Old Tv',
		weight = 4000,
	},
    ['vcr'] = {
		label = 'Videocassette Recorder',
		weight = 2000,
	},
    ['television2'] = {
		label = 'Flat Tv',
		weight = 2500,
	},
    ['console'] = {
		label = 'Console',
		weight = 1000,
	},
    ['microwave'] = {
		label = 'Micro Wave',
		weight = 5000,
	},
    ['breachingdevice'] = {
		label = 'Breaching Device',
		weight = 5000,
	},
    ["engine_oil"] = {
    label = "Engine Oil",
    weight = 1000,
  },
  ["tyre_replacement"] = {
    label = "Tyre Replacement",
    weight = 1000,
  },
  ["clutch_replacement"] = {
    label = "Clutch Replacement",
    weight = 1000,
  },
  ["air_filter"] = {
    label = "Air Filter",
    weight = 100,
  },
  ["spark_plug"] = {
    label = "Spark Plug",
    weight = 1000,
  },
  ["brakepad_replacement"] = {
    label = "Brakepad Replacement",
    weight = 1000,
  },
  ["suspension_parts"] = {
    label = "Suspension Parts",
    weight = 1000,
  },
  -- Engine Items
  ["i4_engine"] = {
    label = "I4 Engine",
    weight = 1000,
  },
  ["v6_engine"] = {
    label = "V6 Engine",
    weight = 1000,
  },
  ["v8_engine"] = {
    label = "V8 Engine",
    weight = 1000,
  },
  ["v12_engine"] = {
    label = "V12 Engine",
    weight = 1000,
  },
  ["turbocharger"] = {
    label = "Turbocharger",
    weight = 1000,
  },
  -- Electric Engines
  ["ev_motor"] = {
    label = "EV Motor",
    weight = 1000,
  },
  ["ev_battery"] = {
    label = "EV Battery",
    weight = 1000,
  },
  ["ev_coolant"] = {
    label = "EV Coolant",
    weight = 1000,
  },
  -- Drivetrain Items
  ["awd_drivetrain"] = {
    label = "AWD Drivetrain",
    weight = 1000,
  },
  ["rwd_drivetrain"] = {
    label = "RWD Drivetrain",
    weight = 1000,
  },
  ["fwd_drivetrain"] = {
    label = "FWD Drivetrain",
    weight = 1000,
  },
  -- Tuning Items
  ["slick_tyres"] = {
    label = "Slick Tyres",
    weight = 1000,
  },
  ["semi_slick_tyres"] = {
    label = "Semi Slick Tyres",
    weight = 1000,
  },
  ["offroad_tyres"] = {
    label = "Offroad Tyres",
    weight = 1000,
  },
  ["drift_tuning_kit"] = {
    label = "Drift Tuning Kit",
    weight = 1000,
  },
  ["ceramic_brakes"] = {
    label = "Ceramic Brakes",
    weight = 1000,
  },
  -- Cosmetic Items
  ["lighting_controller"] = {
    label = "Lighting Controller",
    weight = 100,
    client = {
      event = "jg-mechanic:client:show-lighting-controller",
    }
  },
  ["stancing_kit"] = {
    label = "Stancer Kit",
    weight = 100,
    client = {
      event = "jg-mechanic:client:show-stancer-kit",
    }
  },
  ["cosmetic_part"] = {
    label = "Cosmetic Parts",
    weight = 100,
  },
  ["respray_kit"] = {
    label = "Respray Kit",
    weight = 1000,
  },
  ["vehicle_wheels"] = {
    label = "Vehicle Wheels Set",
    weight = 1000,
  },
  ["tyre_smoke_kit"] = {
    label = "Tyre Smoke Kit",
    weight = 1000,
  },
  ["bulletproof_tyres"] = {
    label = "Bulletproof Tyres",
    weight = 1000,
  },
  ["extras_kit"] = {
    label = "Extras Kit",
    weight = 1000,
  },
  -- Nitrous & Cleaning Items
  ["nitrous_bottle"] = {
    label = "Nitrous Bottle",
    weight = 1000,
    client = {
      event = "jg-mechanic:client:use-nitrous-bottle",
    }
  },
  ["empty_nitrous_bottle"] = {
    label = "Empty Nitrous Bottle",
    weight = 1000,
  },
  ["nitrous_install_kit"] = {
    label = "Nitrous Install Kit",
    weight = 1000,
  },
  ["cleaning_kit"] = {
    label = "Cleaning Kit",
    weight = 1000,
    client = {
      event = "jg-mechanic:client:clean-vehicle",
    }
  },
  ["repair_kit"] = {
    label = "Repair Kit",
    weight = 1000,
    client = {
      event = "jg-mechanic:client:repair-vehicle",
    }
  },
  ["duct_tape"] = {
    label = "Duct Tape",
    weight = 1000,
    client = {
      event = "jg-mechanic:client:use-duct-tape",
    }
  },
  -- Performance Item
  ["performance_part"] = {
    label = "Performance Parts",
    weight = 1000,
  },
  -- Mechanic Tablet Item
  ["mechanic_tablet"] = {
    label = "Mechanic Tablet",
    weight = 1000,
    client = {
      event = "jg-mechanic:client:use-tablet",
    }
  },
  -- Gearbox
  ["manual_gearbox"] = {
    label = "Manual Gearbox",
    weight = 1000,
  },
  ['house_key'] = {
    label = 'Housing Key',
    weight = 10,
    stack = false,
    close = true,
},
['lockpick'] = {
    label = 'Lockpick',
    weight = 800,
    stack = true,
    close = true,
},
['police_barrier'] = {
    label = 'Police Barrier',
    weight = 300,
    stack = true,
    close = true,
},
['police_stormram'] = {
    label = 'Police Storm Ram',
    weight = 5000,
    stack = true,
    close = true,
},
['pliers'] = {
    label = 'Pliers',
    weight = 500,
    stack = true,
    close = true,
},
['insulating_tape'] = {
    label = 'Insulating Tape',
    weight = 200,
    stack = true,
    close = true,
},

    ['skining_knife'] = {
        label = 'Skining Knife',
        weight = 200,
        stack = true,
    },
    ['boar_meat'] = {
        label = 'Boar Meat',
        weight = 500,
        stack = true,
    },
    ['boar_skin'] = {
        label = 'Boar Skin',
        weight = 700,
        stack = true,
    },
    ['deer_meat'] = {
        label = 'Deer Meat',
        weight = 600,
        stack = true,
    },
    ['deer_skin'] = {
        label = 'Deer Skin',
        weight = 800,
        stack = true,
    },
    ['coyote_meat'] = {
        label = 'Coyote Meat',
        weight = 400,
        stack = true,
    },
    ['coyote_skin'] = {
        label = 'Coyote Skin',
        weight = 600,
        stack = true,
    },
    ['rabbit_meat'] = {
        label = 'Rabbit Meat',
        weight = 300,
        stack = true,
    },
    ['rabbit_skin'] = {
        label = 'Rabbit Skin',
        weight = 400,
        stack = true,
    },
    ['cow_meat'] = {
        label = 'Cow Meat',
        weight = 1000,
        stack = true,
    },
    ['cow_skin'] = {
        label = 'Cow Skin',
        weight = 1200,
        stack = true,
    },
    ['chicken_meat'] = {
        label = 'Chicken Meat',
        weight = 1000,
        stack = true,
    },
    ['chicken_skin'] = {
	   label = 'Chicken Skin',
	   weight = 100,
	   stack = true,
    },
	['pig_meat'] = {
        label = 'Pig Meat',
        weight = 500,
        stack = true,
    },
	['pig_skin'] = {
        label = 'Pig Skin',
        weight = 300,
        stack = true,
    },

}
