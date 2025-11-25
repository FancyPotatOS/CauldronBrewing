#
#   Add Value
#   
#   Purpose: To activate the potion (make it awkward)
#
#   Input: None
#


# say # # brewing/ingredient/modifier/activation/add_value

data modify entity @s Item.components."minecraft:custom_data" set value {cauldronbrewing:{duration: 0, potency: 0}}
data modify entity @s Item.components."minecraft:potion_contents" set value {potion: "awkward"}

