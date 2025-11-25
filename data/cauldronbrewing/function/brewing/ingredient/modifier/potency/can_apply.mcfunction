#
#   Can Apply Potency
#   
#   Purpose: To add the tag 'cauldronbrewing.brewing.base.accept.potency' on this entity if it can accept a potency modifier
#
#   Input: None
#


# say # # brewing/ingredient/modifier/potency/can_apply

# Stop if modified enough bases
execute if score bases.max_modified cauldronbrewing.master <= bases.modified cauldronbrewing.master run return 0

# No initialized data, can't
execute unless data entity @s Item.components."minecraft:custom_data".cauldronbrewing.base run return 0

# Get the current potency modifier
execute store result score potency.value cauldronbrewing.master run data get entity @s Item.components."minecraft:custom_data".cauldronbrewing.potency

# Load the custom data effect
function cauldronbrewing:reset_macro
data modify storage cauldronbrewing:data macro.base set from entity @s Item.components."minecraft:custom_data".cauldronbrewing.base
function cauldronbrewing:brewing/ingredient/macro/load_effect_by_base with storage cauldronbrewing:data macro

# Get the maximum
execute store result score potency.max cauldronbrewing.master run data get storage cauldronbrewing:data effect.maximums.potency

# Is at the maxmimum applications
execute if score potency.max cauldronbrewing.master <= potency.value cauldronbrewing.master run return 0

# If has duration and can't have both
execute if data storage cauldronbrewing:data effect{potency_duration_exclusive:true} unless data entity @s Item.components."minecraft:custom_data".cauldronbrewing{duration:0} run return 0

tag @s add cauldronbrewing.brewing.base.accept.potency
scoreboard players add bases.modified cauldronbrewing.master 1

