#
#   Activate
#   
#   Purpose: To begin the potion brewing
#
#   Input: None
#


# say brewing/activate

# Save this entity as the activator
tag @s add cauldronbrewing.brewing.activator

# Find some bases for this potion session
execute align xyz as @e[tag=!cauldronbrewing.brewing.activator,type=item,dx=0,dy=0,dz=0] if items entity @s container.* #cauldronbrewing:base run function cauldronbrewing:brewing/base/mark_target

# Select all the ingredients and one by one execute
execute if entity @s[tag=cauldronbrewing.brewing.has_base] align xyz as @e[tag=!cauldronbrewing.brewing.activator,type=item,dx=0,dy=0,dz=0] if items entity @s container.* #cauldronbrewing:ingredient run function cauldronbrewing:brewing/ingredient/apply

# Reduce the activator item by one
scoreboard players set brewing.reduce_item.amount cauldronbrewing.master 0
execute if entity @s[tag=cauldronbrewing.brewing.changed] run function cauldronbrewing:brewing/visual
execute if entity @s[tag=cauldronbrewing.brewing.changed] run scoreboard players set brewing.reduce_item.amount cauldronbrewing.master 1
function cauldronbrewing:brewing/reduce_item

# Clean up tags
tag @s remove cauldronbrewing.brewing.changed
tag @s remove cauldronbrewing.brewing.has_base
tag @s remove cauldronbrewing.brewing.activator
tag @e[tag=cauldronbrewing.brewing.base.target] remove cauldronbrewing.brewing.base.target

