#
#   Apply Duration
#   
#   Purpose: To apply this effect to the bases if possible
#
#   Input: None
#


# say # # brewing/ingredient/modifier/duration/apply

scoreboard players set bases.modified cauldronbrewing.master 0
scoreboard players operation bases.max_modified cauldronbrewing.master = config.max_brewable cauldronbrewing.master

# Tag this entity if can apply duration still
execute as @e[type=item,tag=cauldronbrewing.brewing.base.target] run function cauldronbrewing:brewing/ingredient/modifier/duration/can_apply

# If no bases can accept duration, then just quit here
execute unless entity @e[type=item,tag=cauldronbrewing.brewing.base.accept.duration] run return 0

# Mark as action performed
tag @e[tag=cauldronbrewing.brewing.activator] add cauldronbrewing.brewing.changed

# Add the duration
execute as @e[type=item,tag=cauldronbrewing.brewing.base.accept.duration] run function cauldronbrewing:brewing/ingredient/modifier/duration/add_value

# Apply the changes
execute as @e[type=item,tag=cauldronbrewing.brewing.base.accept.duration] run function cauldronbrewing:brewing/base/update_all_effects

scoreboard players set brewing.reduce_item.amount cauldronbrewing.master 1
function cauldronbrewing:brewing/reduce_item
tag @e[type=item,tag=cauldronbrewing.brewing.base.accept.duration] remove cauldronbrewing.brewing.base.accept.duration

