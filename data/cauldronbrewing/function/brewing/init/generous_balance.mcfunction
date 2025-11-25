
# # Totally unbalanced recipes just for fun :)


function cauldronbrewing:brewing/init/reset_modifiers



# # # Vanilla

# Speed
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:speed",\
    "item": "minecraft:sugar",\
    "potency_duration_exclusive": false,\
    "color": 3402751,\
    "name": {"text":"Potion of Speed","italic": false},\
    "transmutations":[\
        {\
            "item": "minecraft:fermented_spider_eye",\
            "target": "cauldronbrewing:slowness"\
        }\
    ],\
    "maximums": {\
        "duration": 3,\
        "potency": 2\
    },\
    "effects": [\
        {\
            "effect": "minecraft:speed",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 3600\
            },\
            "potency_modifier": {\
                "bonus": 1.0f,\
                "penalty": -1800\
            },\
            "duration_modifier": {\
                "bonus": 6000,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Slowness
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:slowness",\
    "item": "minecraft:none",\
    "potency_duration_exclusive": false,\
    "color": 9154528,\
    "name": {"text":"Potion of Slowness","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 3,\
        "potency": 2\
    },\
    "effects": [\
        {\
            "effect": "minecraft:slowness",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 1800\
            },\
            "potency_modifier": {\
                "bonus": 1.0f,\
                "penalty": -1400\
            },\
            "duration_modifier": {\
                "bonus": 3000,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Leaping
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:leaping",\
    "item": "minecraft:rabbit_foot",\
    "potency_duration_exclusive": false,\
    "color": 16646020,\
    "name": {"text":"Potion of Leaping","italic": false},\
    "transmutations":[\
        {\
            "item": "minecraft:fermented_spider_eye",\
            "target": "cauldronbrewing:slowness"\
        }\
    ],\
    "maximums": {\
        "duration": 3,\
        "potency": 2\
    },\
    "effects": [\
        {\
            "effect": "minecraft:jump_boost",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 3600\
            },\
            "potency_modifier": {\
                "bonus": 1.0f,\
                "penalty": -1800\
            },\
            "duration_modifier": {\
                "bonus": 6000,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Strength
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:strength",\
    "item": "minecraft:blaze_powder",\
    "potency_duration_exclusive": false,\
    "color": 16762624,\
    "name": {"text":"Potion of Strength","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 3,\
        "potency": 2\
    },\
    "effects": [\
        {\
            "effect": "minecraft:strength",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 3600\
            },\
            "potency_modifier": {\
                "bonus": 1.0f,\
                "penalty": -1800\
            },\
            "duration_modifier": {\
                "bonus": 6000,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Healing
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:healing",\
    "item": "minecraft:glistering_melon_slice",\
    "potency_duration_exclusive": false,\
    "color": 16262179,\
    "name": {"text":"Potion of Healing","italic": false},\
    "transmutations":[\
        {\
            "item": "minecraft:fermented_spider_eye",\
            "target": "cauldronbrewing:harming"\
        }\
    ],\
    "maximums": {\
        "duration": 0,\
        "potency": 2\
    },\
    "effects": [\
        {\
            "effect": "minecraft:instant_health",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 1\
            },\
            "potency_modifier": {\
                "bonus": 1.0f,\
                "penalty": 0\
            },\
            "duration_modifier": {\
                "bonus": 0,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Harming
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:harming",\
    "item": "minecraft:none",\
    "potency_duration_exclusive": false,\
    "color": 11101546,\
    "name": {"text":"Potion of Harming","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 0,\
        "potency": 2\
    },\
    "effects": [\
        {\
            "effect": "minecraft:instant_damage",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 1\
            },\
            "potency_modifier": {\
                "bonus": 1.0f,\
                "penalty": 0\
            },\
            "duration_modifier": {\
                "bonus": 0,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Poison
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:poison",\
    "item": "minecraft:spider_eye",\
    "potency_duration_exclusive": false,\
    "color": 8889187,\
    "name": {"text":"Potion of Poison","italic": false},\
    "transmutations":[\
        {\
            "item": "minecraft:fermented_spider_eye",\
            "target": "cauldronbrewing:harming"\
        }\
    ],\
    "maximums": {\
        "duration": 3,\
        "potency": 2\
    },\
    "effects": [\
        {\
            "effect": "minecraft:poison",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 900\
            },\
            "potency_modifier": {\
                "bonus": 1.0f,\
                "penalty": -480\
            },\
            "duration_modifier": {\
                "bonus": 900,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Regeneration
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:regeneration",\
    "item": "minecraft:ghast_tear",\
    "potency_duration_exclusive": false,\
    "color": 13458603,\
    "name": {"text":"Potion of Regeneration","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 3,\
        "potency": 2\
    },\
    "effects": [\
        {\
            "effect": "minecraft:regeneration",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 900\
            },\
            "potency_modifier": {\
                "bonus": 1.0f,\
                "penalty": -460\
            },\
            "duration_modifier": {\
                "bonus": 900,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Fire Resistance
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:fire_resistance",\
    "item": "minecraft:magma_cream",\
    "potency_duration_exclusive": false,\
    "color": 16750848,\
    "name": {"text":"Potion of Fire Resistance","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 1,\
        "potency": 0\
    },\
    "effects": [\
        {\
            "effect": "minecraft:fire_resistance",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 3600\
            },\
            "potency_modifier": {\
                "bonus": 0.0f,\
                "penalty": 0\
            },\
            "duration_modifier": {\
                "bonus": 6000,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Water Breathing
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:water_breathing",\
    "item": "minecraft:pufferfish",\
    "potency_duration_exclusive": false,\
    "color": 10017472,\
    "name": {"text":"Potion of Water Breathing","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 1,\
        "potency": 0\
    },\
    "effects": [\
        {\
            "effect": "minecraft:water_breathing",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 3600\
            },\
            "potency_modifier": {\
                "bonus": 0.0f,\
                "penalty": 0\
            },\
            "duration_modifier": {\
                "bonus": 6000,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Night Vision
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:night_vision",\
    "item": "minecraft:golden_carrot",\
    "potency_duration_exclusive": false,\
    "color": 12779366,\
    "name": {"text":"Potion of Night Vision","italic": false},\
    "transmutations":[\
        {\
            "item": "minecraft:fermented_spider_eye",\
            "target": "cauldronbrewing:invisibility"\
        }\
    ],\
    "maximums": {\
        "duration": 1,\
        "potency": 0\
    },\
    "effects": [\
        {\
            "effect": "minecraft:night_vision",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 3600\
            },\
            "potency_modifier": {\
                "bonus": 0.0f,\
                "penalty": 0\
            },\
            "duration_modifier": {\
                "bonus": 6000,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Invisibility
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:invisibility",\
    "item": "minecraft:none",\
    "potency_duration_exclusive": false,\
    "color": 16185078,\
    "name": {"text":"Potion of Invisibility","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 1,\
        "potency": 0\
    },\
    "effects": [\
        {\
            "effect": "minecraft:invisibility",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 3600\
            },\
            "potency_modifier": {\
                "bonus": 0.0f,\
                "penalty": 0\
            },\
            "duration_modifier": {\
                "bonus": 6000,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Turtle Master
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:turtle_master",\
    "item": "minecraft:turtle_helmet",\
    "potency_duration_exclusive": false,\
    "color": 9337832,\
    "name": {"text":"Potion of Turtle Master","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 3,\
        "potency": 2\
    },\
    "effects": [\
        {\
            "effect": "minecraft:slowness",\
            "hide_particles": false,\
            "base": {\
                "potency": 3.0f,\
                "duration": 400\
            },\
            "potency_modifier": {\
                "bonus": 2.0f,\
                "penalty": 0\
            },\
            "duration_modifier": {\
                "bonus": 400,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        },\
        {\
            "effect": "minecraft:resistance",\
            "hide_particles": false,\
            "base": {\
                "potency": 2.0f,\
                "duration": 400\
            },\
            "potency_modifier": {\
                "bonus": 1.0f,\
                "penalty": 0\
            },\
            "duration_modifier": {\
                "bonus": 400,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Slow Falling
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:slow_falling",\
    "item": "minecraft:phantom_membrane",\
    "potency_duration_exclusive": false,\
    "color": 15978425,\
    "name": {"text":"Potion of Slow Falling","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 2,\
        "potency": 0\
    },\
    "effects": [\
        {\
            "effect": "minecraft:slow_falling",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 1800\
            },\
            "potency_modifier": {\
                "bonus": 0.0f,\
                "penalty": 0\
            },\
            "duration_modifier": {\
                "bonus": 3000,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Wind Charging
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:wind_charging",\
    "item": "minecraft:breeze_rod",\
    "potency_duration_exclusive": false,\
    "color": 12438015,\
    "name": {"text":"Potion of Wind Charging","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 0,\
        "potency": 0\
    },\
    "effects": [\
        {\
            "effect": "minecraft:wind_charged",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 3600\
            },\
            "potency_modifier": {\
                "bonus": 0.0f,\
                "penalty": 0\
            },\
            "duration_modifier": {\
                "bonus": 0,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Weaving
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:weaving",\
    "item": "minecraft:cobweb",\
    "potency_duration_exclusive": false,\
    "color": 9280397,\
    "name": {"text":"Potion of Weaving","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 0,\
        "potency": 0\
    },\
    "effects": [\
        {\
            "effect": "minecraft:weaving",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 3600\
            },\
            "potency_modifier": {\
                "bonus": 0.0f,\
                "penalty": 0\
            },\
            "duration_modifier": {\
                "bonus": 0,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Oozing
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:oozing",\
    "item": "minecraft:slime_block",\
    "potency_duration_exclusive": false,\
    "color": 10092451,\
    "name": {"text":"Potion of Oozing","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 0,\
        "potency": 0\
    },\
    "effects": [\
        {\
            "effect": "minecraft:oozing",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 3600\
            },\
            "potency_modifier": {\
                "bonus": 0.0f,\
                "penalty": 0\
            },\
            "duration_modifier": {\
                "bonus": 0,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Infestation
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:infestation",\
    "item": "minecraft:stone",\
    "potency_duration_exclusive": false,\
    "color": 9280397,\
    "name": {"text":"Potion of Infestation","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 1,\
        "potency": 0\
    },\
    "effects": [\
        {\
            "effect": "minecraft:infested",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 3600\
            },\
            "potency_modifier": {\
                "bonus": 0.0f,\
                "penalty": 0\
            },\
            "duration_modifier": {\
                "bonus": 1800,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Weakness
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:weakness",\
    "item": "minecraft:fermented_spider_eye",\
    "potency_duration_exclusive": false,\
    "color": 4738376,\
    "name": {"text":"Potion of Weakness","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 2,\
        "potency": 2\
    },\
    "effects": [\
        {\
            "effect": "minecraft:weakness",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 1800\
            },\
            "potency_modifier": {\
                "bonus": 1.0f,\
                "penalty": -1500\
            },\
            "duration_modifier": {\
                "bonus": 3000,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}







# # # Extended


# Hero Of The Village
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:hero_of_the_village",\
    "item": "minecraft:totem_of_undying",\
    "potency_duration_exclusive": false,\
    "color": 4521796,\
    "name": {"text":"Potion of Hero Of The Village","italic": false},\
    "transmutations":[\
        {\
            "item": "minecraft:fermented_spider_eye",\
            "target": "cauldronbrewing:bad_omen"\
        }\
    ],\
    "maximums": {\
        "duration": 0,\
        "potency": 4\
    },\
    "effects": [\
        {\
            "effect": "minecraft:hero_of_the_village",\
            "hide_particles": true,\
            "base": {\
                "potency": 0.0f,\
                "duration": 48000\
            },\
            "potency_modifier": {\
                "bonus": 1.0f,\
                "penalty": 0\
            },\
            "duration_modifier": {\
                "bonus": 0,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Bad Omen
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:bad_omen",\
    "item": "minecraft:none",\
    "potency_duration_exclusive": false,\
    "color": 2431044,\
    "name": {"text":"Ominous Bottle","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 0,\
        "potency": 4\
    },\
    "effects": [\
        {\
            "effect": "minecraft:bad_omen",\
            "hide_particles": true,\
            "base": {\
                "potency": 0.0f,\
                "duration": 120000\
            },\
            "potency_modifier": {\
                "bonus": 1.0f,\
                "penalty": 0\
            },\
            "duration_modifier": {\
                "bonus": 0,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# # Levitation
# Add the inverse
data modify storage cauldronbrewing:data potion_modifiers[{base:"cauldronbrewing:slow_falling"}].transmutations append value \
{\
    "item": "minecraft:fermented_spider_eye",\
    "target": "cauldronbrewing:levitation"\
}
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:levitation",\
    "item": "minecraft:none",\
    "potency_duration_exclusive": false,\
    "color": 13565951,\
    "name": {"text":"Potion of Levitation","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 2,\
        "potency": 3\
    },\
    "effects": [\
        {\
            "effect": "minecraft:levitation",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 1800\
            },\
            "potency_modifier": {\
                "bonus": 1.0f,\
                "penalty": -1700\
            },\
            "duration_modifier": {\
                "bonus": 1740,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Haste
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:haste",\
    "item": "minecraft:golden_pickaxe",\
    "potency_duration_exclusive": false,\
    "color": 14270531,\
    "name": {"text":"Potion of Haste","italic": false},\
    "transmutations":[\
        {\
            "item": "minecraft:fermented_spider_eye",\
            "target": "cauldronbrewing:mining_fatigue"\
        }\
    ],\
    "maximums": {\
        "duration": 3,\
        "potency": 2\
    },\
    "effects": [\
        {\
            "effect": "minecraft:haste",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 3600\
            },\
            "potency_modifier": {\
                "bonus": 1.0f,\
                "penalty": -1800\
            },\
            "duration_modifier": {\
                "bonus": 6000,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Mining Fatigue
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:mining_fatigue",\
    "item": "minecraft:none",\
    "potency_duration_exclusive": false,\
    "color": 4866583,\
    "name": {"text":"Potion of Mining Fatigue","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 3,\
        "potency": 4\
    },\
    "effects": [\
        {\
            "effect": "minecraft:mining_fatigue",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 1800\
            },\
            "potency_modifier": {\
                "bonus": 1.0f,\
                "penalty": -1400\
            },\
            "duration_modifier": {\
                "bonus": 3000,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Saturation
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:saturation",\
    "item": "minecraft:golden_apple",\
    "potency_duration_exclusive": false,\
    "color": 16262179,\
    "name": {"text":"Potion of Saturation","italic": false},\
    "transmutations":[\
        {\
            "item": "minecraft:fermented_spider_eye",\
            "target": "cauldronbrewing:hunger"\
        },\
        {\
            "item": "minecraft:glistering_melon_slice",\
            "target": "cauldronbrewing:absorption"\
        }\
    ],\
    "maximums": {\
        "duration": 0,\
        "potency": 2\
    },\
    "effects": [\
        {\
            "effect": "minecraft:saturation",\
            "hide_particles": true,\
            "base": {\
                "potency": 0.0f,\
                "duration": 1\
            },\
            "potency_modifier": {\
                "bonus": 2.0f,\
                "penalty": 0\
            },\
            "duration_modifier": {\
                "bonus": 0,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Hunger
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:hunger",\
    "item": "minecraft:none",\
    "potency_duration_exclusive": false,\
    "color": 5797459,\
    "name": {"text":"Potion of Hunger","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 2,\
        "potency": 2\
    },\
    "effects": [\
        {\
            "effect": "minecraft:hunger",\
            "hide_particles": true,\
            "base": {\
                "potency": 0.0,\
                "duration": 300\
            },\
            "potency_modifier": {\
                "bonus": 1.0f,\
                "penalty": -200\
            },\
            "duration_modifier": {\
                "bonus": 300,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}


# # Luck
# Add modifier to leaping potion
data modify storage cauldronbrewing:data potion_modifiers[{base:"cauldronbrewing:leaping"}].transmutations append value \
{\
    "item": "minecraft:enchanted_book",\
    "target": "cauldronbrewing:luck"\
}
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:luck",\
    "item": "minecraft:none",\
    "potency_duration_exclusive": false,\
    "color": 5882118,\
    "name": {"text":"Potion of Luck","italic": false},\
    "transmutations":[\
        {\
            "item": "minecraft:fermented_spider_eye",\
            "target": "cauldronbrewing:bad_luck"\
        }\
    ],\
    "maximums": {\
        "duration": 2,\
        "potency": 0\
    },\
    "effects": [\
        {\
            "effect": "minecraft:luck",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 48000\
            },\
            "potency_modifier": {\
                "bonus": 0.0f,\
                "penalty": 0\
            },\
            "duration_modifier": {\
                "bonus": 12000,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Bad Luck
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:bad_luck",\
    "item": "minecraft:none",\
    "potency_duration_exclusive": false,\
    "color": 12624973,\
    "name": {"text":"Potion of Bad Luck","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 0,\
        "potency": 0\
    },\
    "effects": [\
        {\
            "effect": "minecraft:unluck",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 48000\
            },\
            "potency_modifier": {\
                "bonus": 0.0f,\
                "penalty": 0\
            },\
            "duration_modifier": {\
                "bonus": 12000,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Wither
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:wither",\
    "item": "minecraft:wither_skeleton_skull",\
    "potency_duration_exclusive": false,\
    "color": 7561558,\
    "name": {"text":"Potion of Wither","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 3,\
        "potency": 2\
    },\
    "effects": [\
        {\
            "effect": "minecraft:wither",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 300\
            },\
            "potency_modifier": {\
                "bonus": 1.0f,\
                "penalty": -160\
            },\
            "duration_modifier": {\
                "bonus": 80,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Nausea
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:nausea",\
    "item": "minecraft:rotten_flesh",\
    "potency_duration_exclusive": false,\
    "color": 5578058,\
    "name": {"text":"Potion of Nausea","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 1,\
        "potency": 0\
    },\
    "effects": [\
        {\
            "effect": "minecraft:nausea",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 600\
            },\
            "potency_modifier": {\
                "bonus": 0.0f,\
                "penalty": 0\
            },\
            "duration_modifier": {\
                "bonus": 600,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Blindness
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:blindness",\
    "item": "minecraft:open_eyeblossom",\
    "potency_duration_exclusive": false,\
    "color": 2039587,\
    "name": {"text":"Potion of Blindness","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 2,\
        "potency": 0\
    },\
    "effects": [\
        {\
            "effect": "minecraft:blindness",\
            "hide_particles": true,\
            "base": {\
                "potency": 0.0f,\
                "duration": 300\
            },\
            "potency_modifier": {\
                "bonus": 0.0f,\
                "penalty": 0\
            },\
            "duration_modifier": {\
                "bonus": 200,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Darkness
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:darkness",\
    "item": "minecraft:sculk_shrieker",\
    "potency_duration_exclusive": false,\
    "color": 2696993,\
    "name": {"text":"Potion of Darkness","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 2,\
        "potency": 0\
    },\
    "effects": [\
        {\
            "effect": "minecraft:darkness",\
            "hide_particles": true,\
            "base": {\
                "potency": 0.0f,\
                "duration": 600\
            },\
            "potency_modifier": {\
                "bonus": 0.0f,\
                "penalty": 0\
            },\
            "duration_modifier": {\
                "bonus": 400,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Absorption
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:absorption",\
    "item": "minecraft:none",\
    "potency_duration_exclusive": false,\
    "color": 2445989,\
    "name": {"text":"Potion of Absorption","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 3,\
        "potency": 2\
    },\
    "effects": [\
        {\
            "effect": "minecraft:absorption",\
            "hide_particles": true,\
            "base": {\
                "potency": 0.0f,\
                "duration": 3600\
            },\
            "potency_modifier": {\
                "bonus": 1.0f,\
                "penalty": -1200\
            },\
            "duration_modifier": {\
                "bonus": 6000,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Health Boost
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:health_boost",\
    "item": "minecraft:enchanted_golden_apple",\
    "potency_duration_exclusive": false,\
    "color": 16284963,\
    "name": {"text":"Potion of Health Boost","italic": false},\
    "transmutations":[\
        {\
            "item": "minecraft:iron_block",\
            "target": "cauldronbrewing:resistance"\
        }\
    ],\
    "maximums": {\
        "duration": 3,\
        "potency": 2\
    },\
    "effects": [\
        {\
            "effect": "minecraft:health_boost",\
            "hide_particles": true,\
            "base": {\
                "potency": 0.0f,\
                "duration": 36000\
            },\
            "potency_modifier": {\
                "bonus": 1.0f,\
                "penalty": -18000\
            },\
            "duration_modifier": {\
                "bonus": 36000,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Dolphins Grace
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:dolphins_grace",\
    "item": "minecraft:tropical_fish_bucket",\
    "potency_duration_exclusive": false,\
    "color": 8954814,\
    "name": {"text":"Potion Of Dolphin's Grace","italic": false},\
    "transmutations":[\
        {\
            "item": "minecraft:heart_of_the_sea",\
            "target": "cauldronbrewing:conduit_power"\
        }\
    ],\
    "maximums": {\
        "duration": 1,\
        "potency": 0\
    },\
    "effects": [\
        {\
            "effect": "minecraft:dolphins_grace",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 3600\
            },\
            "potency_modifier": {\
                "bonus": 0.0f,\
                "penalty": 0\
            },\
            "duration_modifier": {\
                "bonus": 6000,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Conduit Power
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:conduit_power",\
    "item": "minecraft:none",\
    "potency_duration_exclusive": false,\
    "color": 1950417,\
    "name": {"text":"Potion of Conduit Power","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 3,\
        "potency": 3\
    },\
    "effects": [\
        {\
            "effect": "minecraft:conduit_power",\
            "hide_particles": true,\
            "base": {\
                "potency": 0.0f,\
                "duration": 3600\
            },\
            "potency_modifier": {\
                "bonus": 1.0f,\
                "penalty": -1800\
            },\
            "duration_modifier": {\
                "bonus": 900,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Glowing
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:glowing",\
    "item": "minecraft:glowstone",\
    "potency_duration_exclusive": false,\
    "color": 9740385,\
    "name": {"text":"Potion of Glowing","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 2,\
        "potency": 0\
    },\
    "effects": [\
        {\
            "effect": "minecraft:glowing",\
            "hide_particles": false,\
            "base": {\
                "potency": 0.0f,\
                "duration": 3600\
            },\
            "potency_modifier": {\
                "bonus": 0.0f,\
                "penalty": 0\
            },\
            "duration_modifier": {\
                "bonus": 1800,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Resistance
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:resistance",\
    "item": "minecraft:none",\
    "potency_duration_exclusive": false,\
    "color": 1950417,\
    "name": {"text":"Potion of Resistance","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 3,\
        "potency": 3\
    },\
    "effects": [\
        {\
            "effect": "minecraft:resistance",\
            "hide_particles": true,\
            "base": {\
                "potency": 0.0f,\
                "duration": 1200\
            },\
            "potency_modifier": {\
                "bonus": 1.0f,\
                "penalty": -600\
            },\
            "duration_modifier": {\
                "bonus": 300,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Trial Omen
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:trial_omen",\
    "item": "minecraft:ominous_trial_key",\
    "potency_duration_exclusive": false,\
    "color": 1484454,\
    "name": {"text":"Potion of Trial Omen","italic": false},\
    "transmutations":[\
        {\
            "item": "minecraft:emerald",\
            "target": "cauldronbrewing:raid_omen"\
        }\
    ],\
    "maximums": {\
        "duration": 4,\
        "potency": 4\
    },\
    "effects": [\
        {\
            "effect": "minecraft:trial_omen",\
            "hide_particles": true,\
            "base": {\
                "potency": 0.0f,\
                "duration": 6000\
            },\
            "potency_modifier": {\
                "bonus": 1.0f,\
                "penalty": -1200\
            },\
            "duration_modifier": {\
                "bonus": 800,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}

# Raid Omen
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:raid_omen",\
    "item": "minecraft:none",\
    "potency_duration_exclusive": false,\
    "color": 14565464,\
    "name": {"text":"Potion of Raid Omen","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 0,\
        "potency": 4\
    },\
    "effects": [\
        {\
            "effect": "minecraft:raid_omen",\
            "hide_particles": true,\
            "base": {\
                "potency": 0.0f,\
                "duration": 200\
            },\
            "potency_modifier": {\
                "bonus": 1.0f,\
                "penalty": 0\
            },\
            "duration_modifier": {\
                "bonus": 0,\
                "penalty": 0.0f\
            },\
            "splash_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            },\
            "lingering_modifier": {\
                "duration_penalty": {\
                    "static": 0,\
                    "potency": 0,\
                    "duration": 0\
                },\
                "potency_penalty": {\
                    "static": 0.0f,\
                    "potency": 0.0f,\
                    "duration": 0.0f\
                }\
            }\
        }\
    ]\
}
