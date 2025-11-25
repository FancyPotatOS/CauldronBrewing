#
#   Apply Effect
#   
#   Purpose: To apply the effect in storage 'cauldronbrewing:data effect'
#
#   Input: None
#


# say # # brewing/base/apply/effect @s

# Stop if modified enough bases
execute if score bases.max_modified cauldronbrewing.master <= bases.modified cauldronbrewing.master run return 0

# Stop unless I am water
execute if data entity @s Item.components."minecraft:custom_data".potion run return 0

# Mark as action performed
tag @e[tag=cauldronbrewing.brewing.activator] add cauldronbrewing.brewing.changed

# Initialize the values
data modify entity @s Item.components."minecraft:custom_data".cauldronbrewing set value {potency: 0, duration: 0, base: ""}
data modify entity @s Item.components."minecraft:custom_data".cauldronbrewing.base set from storage cauldronbrewing:data effect.base

# Set some potion data
data modify entity @s Item.components."minecraft:potion_contents" set value {custom_color:0,custom_effects:[{id:"minecraft:luck"}]}
data modify entity @s Item.components."minecraft:potion_contents".custom_color set from storage cauldronbrewing:data effect.color
data modify entity @s Item.components."minecraft:custom_name" set from storage cauldronbrewing:data effect.name

data modify storage cauldronbrewing:data apply_rec set from storage cauldronbrewing:data effect.effects
execute if data storage cauldronbrewing:data apply_rec[0] run function cauldronbrewing:brewing/base/apply/inner_effect

data remove entity @s Item.components."minecraft:potion_contents".custom_effects[0]

tag @e[tag=cauldronbrewing.brewing.ingredient.target] add cauldronbrewing.brewing.ingredient.modified
scoreboard players add bases.modified cauldronbrewing.master 1

