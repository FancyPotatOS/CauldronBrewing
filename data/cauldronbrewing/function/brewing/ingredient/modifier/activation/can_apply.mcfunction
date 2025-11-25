#
#   Can Apply Activation
#   
#   Purpose: To add the tag 'cauldronbrewing.brewing.base.accept.activation' on this entity if it can accept a activation modifier
#
#   Input: None
#


# say # # brewing/ingredient/modifier/activation/can_apply

# Stop if modified enough bases
execute if score bases.max_modified cauldronbrewing.master <= bases.modified cauldronbrewing.master run return 0

# If has initialized data, can't
execute if data entity @s Item.components."minecraft:custom_data".cauldronbrewing run return 0

tag @s add cauldronbrewing.brewing.base.accept.activation
scoreboard players add bases.modified cauldronbrewing.master 1

