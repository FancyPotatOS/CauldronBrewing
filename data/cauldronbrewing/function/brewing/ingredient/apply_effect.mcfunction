#
#   Apply Effect
#   
#   Purpose: To apply this effect to the bases if possible
#
#   Input: None
#


# say # # brewing/ingredient/apply_effect

# Load the effect from this item
data remove storage cauldronbrewing:data effect
function cauldronbrewing:reset_macro
data modify storage cauldronbrewing:data macro.item set from entity @s Item.id
function cauldronbrewing:brewing/ingredient/macro/load_effect_by_item with storage cauldronbrewing:data macro

execute unless data storage cauldronbrewing:data effect run return 0

scoreboard players set bases.modified cauldronbrewing.master 0
scoreboard players operation bases.max_modified cauldronbrewing.master = config.max_brewable cauldronbrewing.master

# Apply unless has a custom effect already
execute as @e[type=item,tag=cauldronbrewing.brewing.base.target] if data entity @s Item.components."minecraft:potion_contents"{potion:"minecraft:awkward"} unless data entity @s Item.components."minecraft:potion_contents".custom_effects[0] run function cauldronbrewing:brewing/base/apply/effect

