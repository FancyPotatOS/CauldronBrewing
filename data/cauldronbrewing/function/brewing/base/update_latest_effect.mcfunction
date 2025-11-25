#
#   Update Latest Effect
#   
#   Purpose: To calcuate the value of the last potion effect of the executing item with the effect listed in storage 'cauldronbrewing:data current_effect'
#
#   Input: None
#


# say # # brewing/base/update_latest_effect

# Calculated sum of the amplifier and duration
execute store result score bbule.calculated.amplifier cauldronbrewing.master run data get storage cauldronbrewing:data current_effect.base.potency 100
execute store result score bbule.calculated.duration cauldronbrewing.master run data get storage cauldronbrewing:data current_effect.base.duration

execute if data storage cauldronbrewing:data current_effect{potency_duration_exclusive:true} unless data storage cauldronbrewing:data current_effect.base{potency:0} run tag @s add cauldronbrewing.ignore_duration_modifiers

# Current potency and duration within the potion
execute store result score bbule.potency cauldronbrewing.master run data get entity @s Item.components."minecraft:custom_data".cauldronbrewing.potency
scoreboard players set bbule.duration cauldronbrewing.master 0
execute unless entity @s[tag=cauldronbrewing.ignore_duration_modifiers] store result score bbule.duration cauldronbrewing.master run data get entity @s Item.components."minecraft:custom_data".cauldronbrewing.duration



# # # Simple Modifiers
# # Potency Modifier
# Potency
execute store result score bbule.temp cauldronbrewing.master run data get storage cauldronbrewing:data current_effect.potency_modifier.bonus 100
scoreboard players operation bbule.temp cauldronbrewing.master *= bbule.potency cauldronbrewing.master
scoreboard players operation bbule.calculated.amplifier cauldronbrewing.master += bbule.temp cauldronbrewing.master
# Duration
execute store result score bbule.temp cauldronbrewing.master run data get storage cauldronbrewing:data current_effect.potency_modifier.penalty
scoreboard players operation bbule.temp cauldronbrewing.master *= bbule.potency cauldronbrewing.master
scoreboard players operation bbule.calculated.duration cauldronbrewing.master += bbule.temp cauldronbrewing.master

# # Duration Modifier
# Duration
scoreboard players set bbule.temp cauldronbrewing.master 0
execute store result score bbule.temp cauldronbrewing.master run data get storage cauldronbrewing:data current_effect.duration_modifier.bonus 1
scoreboard players operation bbule.temp cauldronbrewing.master *= bbule.duration cauldronbrewing.master
scoreboard players operation bbule.calculated.duration cauldronbrewing.master += bbule.temp cauldronbrewing.master
# Potency
scoreboard players set bbule.temp cauldronbrewing.master 0
execute store result score bbule.temp cauldronbrewing.master run data get storage cauldronbrewing:data current_effect.duration_modifier.penalty 100
scoreboard players operation bbule.temp cauldronbrewing.master *= bbule.duration cauldronbrewing.master
scoreboard players operation bbule.calculated.amplifier cauldronbrewing.master += bbule.temp cauldronbrewing.master


# # # Splash Modifier
execute if data entity @s Item{id:"minecraft:splash_potion"} run tag @s add cauldronbrewing.is_splash
# # Potency Penalty
# Static
scoreboard players set bbule.temp cauldronbrewing.master 0
execute if entity @s[tag=cauldronbrewing.is_splash] run execute store result score bbule.temp cauldronbrewing.master run data get storage cauldronbrewing:data current_effect.splash_modifier.potency_penalty.static 100
scoreboard players operation bbule.calculated.amplifier cauldronbrewing.master += bbule.temp cauldronbrewing.master
# Potency
scoreboard players set bbule.temp cauldronbrewing.master 0
execute if entity @s[tag=cauldronbrewing.is_splash] run execute store result score bbule.temp cauldronbrewing.master run data get storage cauldronbrewing:data current_effect.splash_modifier.potency_penalty.potency 100
scoreboard players operation bbule.temp cauldronbrewing.master *= bbule.potency cauldronbrewing.master
scoreboard players operation bbule.calculated.amplifier cauldronbrewing.master += bbule.temp cauldronbrewing.master
# Duration
scoreboard players set bbule.temp cauldronbrewing.master 0
execute if entity @s[tag=cauldronbrewing.is_splash] run execute store result score bbule.temp cauldronbrewing.master run data get storage cauldronbrewing:data current_effect.splash_modifier.potency_penalty.duration 100
scoreboard players operation bbule.temp cauldronbrewing.master *= bbule.duration cauldronbrewing.master
scoreboard players operation bbule.calculated.amplifier cauldronbrewing.master += bbule.temp cauldronbrewing.master
# # Duration Penalty
# Static
scoreboard players set bbule.temp cauldronbrewing.master 0
execute if entity @s[tag=cauldronbrewing.is_splash] run execute store result score bbule.temp cauldronbrewing.master run data get storage cauldronbrewing:data current_effect.splash_modifier.duration_penalty.static 1
scoreboard players operation bbule.calculated.duration cauldronbrewing.master += bbule.temp cauldronbrewing.master
# Potency
scoreboard players set bbule.temp cauldronbrewing.master 0
execute if entity @s[tag=cauldronbrewing.is_splash] run execute store result score bbule.temp cauldronbrewing.master run data get storage cauldronbrewing:data current_effect.splash_modifier.duration_penalty.potency 1
scoreboard players operation bbule.temp cauldronbrewing.master *= bbule.potency cauldronbrewing.master
scoreboard players operation bbule.calculated.duration cauldronbrewing.master += bbule.temp cauldronbrewing.master
# Duration
scoreboard players set bbule.temp cauldronbrewing.master 0
execute if entity @s[tag=cauldronbrewing.is_splash] run execute store result score bbule.temp cauldronbrewing.master run data get storage cauldronbrewing:data current_effect.splash_modifier.duration_penalty.duration 1
scoreboard players operation bbule.temp cauldronbrewing.master *= bbule.duration cauldronbrewing.master
scoreboard players operation bbule.calculated.duration cauldronbrewing.master += bbule.temp cauldronbrewing.master


# # # Lingering Modifier
execute if data entity @s Item{id:"minecraft:lingering_potion"} run tag @s add cauldronbrewing.is_lingering
# # Potency Penalty
# Static
scoreboard players set bbule.temp cauldronbrewing.master 0
execute if entity @s[tag=cauldronbrewing.is_lingering] run execute store result score bbule.temp cauldronbrewing.master run data get storage cauldronbrewing:data current_effect.lingering_modifier.potency_penalty.static 100
scoreboard players operation bbule.calculated.amplifier cauldronbrewing.master += bbule.temp cauldronbrewing.master
# Potency
scoreboard players set bbule.temp cauldronbrewing.master 0
execute if entity @s[tag=cauldronbrewing.is_lingering] run execute store result score bbule.temp cauldronbrewing.master run data get storage cauldronbrewing:data current_effect.lingering_modifier.potency_penalty.potency 100
scoreboard players operation bbule.temp cauldronbrewing.master *= bbule.potency cauldronbrewing.master
scoreboard players operation bbule.calculated.amplifier cauldronbrewing.master += bbule.temp cauldronbrewing.master
# Duration
scoreboard players set bbule.temp cauldronbrewing.master 0
execute if entity @s[tag=cauldronbrewing.is_lingering] run execute store result score bbule.temp cauldronbrewing.master run data get storage cauldronbrewing:data current_effect.lingering_modifier.potency_penalty.duration 100
scoreboard players operation bbule.temp cauldronbrewing.master *= bbule.duration cauldronbrewing.master
scoreboard players operation bbule.calculated.amplifier cauldronbrewing.master += bbule.temp cauldronbrewing.master
# # Duration Penalty
# Static
scoreboard players set bbule.temp cauldronbrewing.master 0
execute if entity @s[tag=cauldronbrewing.is_lingering] run execute store result score bbule.temp cauldronbrewing.master run data get storage cauldronbrewing:data current_effect.lingering_modifier.duration_penalty.static 1
scoreboard players operation bbule.calculated.duration cauldronbrewing.master += bbule.temp cauldronbrewing.master
# Potency
scoreboard players set bbule.temp cauldronbrewing.master 0
execute if entity @s[tag=cauldronbrewing.is_lingering] run execute store result score bbule.temp cauldronbrewing.master run data get storage cauldronbrewing:data current_effect.lingering_modifier.duration_penalty.potency 1
scoreboard players operation bbule.temp cauldronbrewing.master *= bbule.potency cauldronbrewing.master
scoreboard players operation bbule.calculated.duration cauldronbrewing.master += bbule.temp cauldronbrewing.master
# Duration
scoreboard players set bbule.temp cauldronbrewing.master 0
execute if entity @s[tag=cauldronbrewing.is_lingering] run execute store result score bbule.temp cauldronbrewing.master run data get storage cauldronbrewing:data current_effect.lingering_modifier.duration_penalty.duration 1
scoreboard players operation bbule.temp cauldronbrewing.master *= bbule.duration cauldronbrewing.master
scoreboard players operation bbule.calculated.duration cauldronbrewing.master += bbule.temp cauldronbrewing.master



# Ensure not negative
execute if score bbule.calculated.amplifier cauldronbrewing.master matches ..0 run scoreboard players set bbule.calculated.amplifier cauldronbrewing.master 0
execute if score bbule.calculated.duration cauldronbrewing.master matches ..0 run scoreboard players set bbule.calculated.duration cauldronbrewing.master 0

# Append a new effect
data modify entity @s Item.components."minecraft:potion_contents".custom_effects append value {id:"minecraft:luck",amplifier:0,duration:0,show_particles:true}

# Hide particles flag
execute if data storage cauldronbrewing:data effect{hide_particles:true} run data modify entity @s Item.components."minecraft:potion_contents".custom_effects[-1].show_particles set value false
data modify entity @s Item.components."minecraft:potion_contents".custom_effects[-1].id set from storage cauldronbrewing:data current_effect.effect

# Set the final values into the potion
execute store result entity @s Item.components."minecraft:potion_contents".custom_effects[-1].amplifier byte 0.01 run scoreboard players get bbule.calculated.amplifier cauldronbrewing.master
execute store result entity @s Item.components."minecraft:potion_contents".custom_effects[-1].duration int 1 run scoreboard players get bbule.calculated.duration cauldronbrewing.master

# Clean up values
scoreboard players reset bbule.potency cauldronbrewing.master
scoreboard players reset bbule.duration cauldronbrewing.master
scoreboard players reset bbule.temp cauldronbrewing.master
scoreboard players reset bbule.calculated.amplifier cauldronbrewing.master
scoreboard players reset bbule.calculated.duration cauldronbrewing.master
tag @s remove cauldronbrewing.ignore_duration_modifiers
tag @s remove cauldronbrewing.is_splash
tag @s remove cauldronbrewing.is_lingering

