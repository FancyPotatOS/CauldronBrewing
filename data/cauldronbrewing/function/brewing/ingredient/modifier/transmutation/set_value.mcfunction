#
#   Add Value
#   
#   Purpose: To set the potion to a transmutation
#
#   Input: None
#


# say # # brewing/ingredient/modifier/transmutation/set_value

function cauldronbrewing:reset_macro
data modify storage cauldronbrewing:data macro.item set from entity @n[tag=cauldronbrewing.brewing.ingredient.target] Item.id
function cauldronbrewing:brewing/ingredient/modifier/transmutation/macro/get_transmutation_entry with storage cauldronbrewing:data macro

data modify entity @s Item.components."minecraft:custom_data".cauldronbrewing.base set from storage cauldronbrewing:data transmutation.target

