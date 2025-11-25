#
#   Update All Effects
#   
#   Purpose: To apply all effects to the executing potion
#
#   Input: None
#


# say # # brewing/base/update_all_effects

# Reset all data
data remove storage cauldronbrewing:data effect
data remove entity @s Item.components."minecraft:potion_contents"
data remove entity @s Item.components.minecraft:custom_name

# Get the effects
function cauldronbrewing:reset_macro
data modify storage cauldronbrewing:data macro.base set from entity @s Item.components."minecraft:custom_data".cauldronbrewing.base
function cauldronbrewing:brewing/ingredient/macro/load_effect_by_base with storage cauldronbrewing:data macro

# Move the data
data modify storage cauldronbrewing:data current_effects set from storage cauldronbrewing:data effect.effects

data modify entity @s Item.components."minecraft:potion_contents" set value {custom_color:0,custom_effects:[{id:"minecraft:luck"}]}
data modify entity @s Item.components."minecraft:potion_contents".custom_color set from storage cauldronbrewing:data effect.color
data modify entity @s Item.components.minecraft:custom_name set from storage cauldronbrewing:data effect.name

# Recursively add all the effects
execute if data storage cauldronbrewing:data current_effects[0] run function cauldronbrewing:brewing/base/update_next_effect

data remove entity @s Item.components."minecraft:potion_contents".custom_effects[0]

