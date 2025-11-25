#
#   Add Value
#   
#   Purpose: To add 1 to the duration value within the custom_data component
#
#   Input: None
#


# say # # brewing/ingredient/modifier/duration/add_value

execute store result score @s cauldronbrewing.master run data get entity @s Item.components."minecraft:custom_data".cauldronbrewing.duration
scoreboard players add @s cauldronbrewing.master 1
execute store result entity @s Item.components."minecraft:custom_data".cauldronbrewing.duration int 1 run scoreboard players get @s cauldronbrewing.master
scoreboard players reset @s cauldronbrewing.master

