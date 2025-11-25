#
#   Reduce Item
#   
#   Purpose: To reduce the executing item entity's count by score 'brewing.reduce_item.amount cauldronbrewing.master', and removing it entirely if none left.
#
#   Input: None
#


# Don't execute if not reducing
execute if score brewing.reduce_item.amount cauldronbrewing.master matches 0 run return 0

# Get the leftover count
execute store result score brewing.reduce_item.current cauldronbrewing.master run data get entity @s Item.count
scoreboard players operation brewing.reduce_item.current cauldronbrewing.master -= brewing.reduce_item.amount cauldronbrewing.master

scoreboard players reset brewing.reduce_item.amount cauldronbrewing.master

# Kill item if none left
execute if score brewing.reduce_item.current cauldronbrewing.master matches ..0 run tag @s add cauldronbrewing.brewing.reduced_to_nothing

execute if entity @s[tag=cauldronbrewing.brewing.reduced_to_nothing] run scoreboard players reset brewing.reduce_item.current cauldronbrewing.master
execute if entity @s[tag=cauldronbrewing.brewing.reduced_to_nothing] run return run kill @s

execute store result entity @s Item.count int 1 run scoreboard players get brewing.reduce_item.current cauldronbrewing.master

scoreboard players reset brewing.reduce_item.current cauldronbrewing.master

