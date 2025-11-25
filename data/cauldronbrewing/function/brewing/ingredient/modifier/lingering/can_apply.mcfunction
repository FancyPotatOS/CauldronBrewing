#
#   Can Apply Lingering
#   
#   Purpose: To add the tag 'cauldronbrewing.brewing.base.accept.lingering' on this entity if it can accept a lingering modifier
#
#   Input: None
#


# say # # brewing/ingredient/modifier/lingering/can_apply

# Stop if modified enough bases
execute if score bases.max_modified cauldronbrewing.master <= bases.modified cauldronbrewing.master run return 0

# Load the custom data effect
function cauldronbrewing:reset_macro
data modify storage cauldronbrewing:data macro.base set from entity @s Item.components."minecraft:custom_data".cauldronbrewing.base
function cauldronbrewing:brewing/ingredient/macro/load_effect_by_base with storage cauldronbrewing:data macro

# If no lingering modifier, then it's not allowed with this one
execute unless data storage cauldronbrewing:data effect.effects[0].lingering_modifier run return 0

# If it's not splash potion then we can't
execute unless data entity @s Item{id:"minecraft:splash_potion"} run return 0

tag @s add cauldronbrewing.brewing.base.accept.lingering
scoreboard players add bases.modified cauldronbrewing.master 1

