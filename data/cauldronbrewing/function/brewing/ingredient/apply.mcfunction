#
#   Apply
#   
#   Purpose: To apply this ingredient if possible
#
#   Input: None
#


# say # # brewing/ingredient/apply

tag @s add cauldronbrewing.brewing.ingredient.target

function cauldronbrewing:brewing/ingredient/find_application

# Reduce the activator item by one
scoreboard players set brewing.reduce_item.amount cauldronbrewing.master 0
execute if entity @s[tag=cauldronbrewing.brewing.ingredient.modified] run scoreboard players set brewing.reduce_item.amount cauldronbrewing.master 1
function cauldronbrewing:brewing/reduce_item

tag @s remove cauldronbrewing.brewing.ingredient.target
tag @s remove cauldronbrewing.brewing.ingredient.modified

