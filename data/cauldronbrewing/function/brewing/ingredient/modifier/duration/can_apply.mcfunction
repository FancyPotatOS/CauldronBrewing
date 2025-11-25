#
#   Can Apply Duration
#   
#   Purpose: To add the tag 'cauldronbrewing.brewing.base.accept.duration' on this entity if it can accept a duration modifier
#
#   Input: None
#


# say # # brewing/ingredient/modifier/duration/can_apply

# Stop if modified enough bases
execute if score bases.max_modified cauldronbrewing.master <= bases.modified cauldronbrewing.master run return 0

# No initialized data, can't
execute unless data entity @s Item.components."minecraft:custom_data".cauldronbrewing.base run return 0

# Get the current duration modifier
execute store result score duration.value cauldronbrewing.master run data get entity @s Item.components."minecraft:custom_data".cauldronbrewing.duration

# Load the custom data effect
function cauldronbrewing:reset_macro
data modify storage cauldronbrewing:data macro.base set from entity @s Item.components."minecraft:custom_data".cauldronbrewing.base
function cauldronbrewing:brewing/ingredient/macro/load_effect_by_base with storage cauldronbrewing:data macro

# Get the maximum
execute store result score duration.max cauldronbrewing.master run data get storage cauldronbrewing:data effect.maximums.duration

# Is at the maxmimum applications
execute if score duration.max cauldronbrewing.master <= duration.value cauldronbrewing.master run return 0

# If has potency and can't have both
execute if data storage cauldronbrewing:data effect{potency_duration_exclusive:true} unless data entity @s Item.components."minecraft:custom_data".cauldronbrewing{potency:0} run return 0

tag @s add cauldronbrewing.brewing.base.accept.duration
scoreboard players add bases.modified cauldronbrewing.master 1

