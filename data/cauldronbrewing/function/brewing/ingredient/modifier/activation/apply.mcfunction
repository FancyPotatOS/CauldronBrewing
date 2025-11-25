#
#   Apply Activation
#   
#   Purpose: To activate the bases if possible
#
#   Input: None
#


# say # # brewing/ingredient/modifier/activation/apply

scoreboard players set bases.modified cauldronbrewing.master 0
scoreboard players operation bases.max_modified cauldronbrewing.master = config.max_brewable cauldronbrewing.master

# Tag this entity if can apply duration still
execute as @e[type=item,tag=cauldronbrewing.brewing.base.target] run function cauldronbrewing:brewing/ingredient/modifier/activation/can_apply

# If no bases can accept activation, then just quit here
execute unless entity @e[type=item,tag=cauldronbrewing.brewing.base.accept.activation] run return 0

# Mark as action performed
tag @e[tag=cauldronbrewing.brewing.activator] add cauldronbrewing.brewing.changed

# Add the activation
execute as @e[type=item,tag=cauldronbrewing.brewing.base.accept.activation] run function cauldronbrewing:brewing/ingredient/modifier/activation/add_value

scoreboard players set brewing.reduce_item.amount cauldronbrewing.master 1
function cauldronbrewing:brewing/reduce_item
tag @e[type=item,tag=cauldronbrewing.brewing.base.accept.activation] remove cauldronbrewing.brewing.base.accept.activation

