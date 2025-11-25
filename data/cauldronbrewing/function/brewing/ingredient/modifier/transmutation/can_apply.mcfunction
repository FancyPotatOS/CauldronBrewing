#
#   Can Apply Transmutation
#   
#   Purpose: To add the tag 'cauldronbrewing.brewing.base.accept.transmutation' on this entity if it can accept a transmutation modifier
#
#   Input: None
#


# say # # brewing/ingredient/modifier/transmutation/can_apply

# Stop if modified enough bases
execute if score bases.max_modified cauldronbrewing.master <= bases.modified cauldronbrewing.master run return 0

# Load the custom data effect
function cauldronbrewing:reset_macro
data modify storage cauldronbrewing:data macro.base set from entity @s Item.components."minecraft:custom_data".cauldronbrewing.base
function cauldronbrewing:brewing/ingredient/macro/load_effect_by_base with storage cauldronbrewing:data macro

# If no transmutation modifier, then it's not allowed with this one
execute unless data storage cauldronbrewing:data effect.transmutations run return 0

# Check if there is a matching entry
function cauldronbrewing:reset_macro
data modify storage cauldronbrewing:data macro.item set from entity @n[tag=cauldronbrewing.brewing.ingredient.target] Item.id
function cauldronbrewing:brewing/ingredient/modifier/transmutation/macro/has_transmutation_entry with storage cauldronbrewing:data macro

# If does not have a matching entry
execute unless entity @s[tag=transmutation.has_entry] run return 0
tag @s remove transmutation.has_entry

tag @s add cauldronbrewing.brewing.base.accept.transmutation
scoreboard players add bases.modified cauldronbrewing.master 1

