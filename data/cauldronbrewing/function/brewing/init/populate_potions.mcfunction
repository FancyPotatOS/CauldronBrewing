
# Speed
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:speed",\
    "item": "minecraft:sugar",\
    "potency_duration_exclusive": true,\
    "color": 3402751,\
    "name": {"text":"Potion of Speed","italic": false},\
    "transmutations":[\
        {\
            "item": "minecraft:fermented_spider_eye",\
            "target": "cauldronbrewing:slowness"\
        }\
    ],\
    "maximums": {\
        "duration": 1,\
        "potency": 1\
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
    "potency_duration_exclusive": true,\
    "color": 9154528,\
    "name": {"text":"Potion of Slowness","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 1,\
        "potency": 1\
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
                "bonus": 3.0f,\
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
    "potency_duration_exclusive": true,\
    "color": 16646020,\
    "name": {"text":"Potion of Leaping","italic": false},\
    "transmutations":[\
        {\
            "item": "minecraft:fermented_spider_eye",\
            "target": "cauldronbrewing:slowness"\
        }\
    ],\
    "maximums": {\
        "duration": 1,\
        "potency": 1\
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
    "potency_duration_exclusive": true,\
    "color": 16762624,\
    "name": {"text":"Potion of Strength","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 1,\
        "potency": 1\
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
    "potency_duration_exclusive": true,\
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
        "potency": 1\
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
    "potency_duration_exclusive": true,\
    "color": 11101546,\
    "name": {"text":"Potion of Harming","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 0,\
        "potency": 1\
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
    "potency_duration_exclusive": true,\
    "color": 8889187,\
    "name": {"text":"Potion of Poison","italic": false},\
    "transmutations":[\
        {\
            "item": "minecraft:fermented_spider_eye",\
            "target": "cauldronbrewing:harming"\
        }\
    ],\
    "maximums": {\
        "duration": 1,\
        "potency": 1\
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
    "potency_duration_exclusive": true,\
    "color": 13458603,\
    "name": {"text":"Potion of Regeneration","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 1,\
        "potency": 1\
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
    "potency_duration_exclusive": true,\
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
    "potency_duration_exclusive": true,\
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
    "potency_duration_exclusive": true,\
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
    "potency_duration_exclusive": true,\
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
    "potency_duration_exclusive": true,\
    "color": 9337832,\
    "name": {"text":"Potion of Turtle Master","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 1,\
        "potency": 1\
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
    "potency_duration_exclusive": true,\
    "color": 15978425,\
    "name": {"text":"Potion of Slow Falling","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 1,\
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
    "potency_duration_exclusive": true,\
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
    "potency_duration_exclusive": true,\
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
    "potency_duration_exclusive": true,\
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
    "potency_duration_exclusive": true,\
    "color": 9280397,\
    "name": {"text":"Potion of Infestation","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 0,\
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

# Weakness
data modify storage cauldronbrewing:data potion_modifiers append value {\
    "base": "cauldronbrewing:weakness",\
    "item": "minecraft:fermented_spider_eye",\
    "potency_duration_exclusive": true,\
    "color": 4738376,\
    "name": {"text":"Potion of Weakness","italic": false},\
    "transmutations":[\
    ],\
    "maximums": {\
        "duration": 1,\
        "potency": 0\
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
