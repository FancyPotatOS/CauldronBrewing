#
#   Visual
#   
#   Purpose: To give feedback that a potion has been created with a particle effect
#
#   Input: None
#


playsound minecraft:block.brewing_stand.brew block @a ~ ~ ~ 1 0.5 0.2
particle minecraft:falling_water ~ ~ ~ 1 1 1 20 10
particle minecraft:splash ~ ~ ~ 1 1 1 0 20
particle minecraft:witch ~ ~ ~ 1 1 1 0 20

