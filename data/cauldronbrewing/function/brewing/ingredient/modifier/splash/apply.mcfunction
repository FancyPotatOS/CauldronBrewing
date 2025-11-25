#
#   Apply Splash
#   
#   Purpose: To apply this effect to the bases if possible
#
#   Input: None
#


# say # # brewing/ingredient/modifier/splash/apply

scoreboard players set bases.modified cauldronbrewing.master 0
scoreboard players operation bases.max_modified cauldronbrewing.master = config.max_brewable cauldronbrewing.master

# Tag this entity if can apply splash still
execute as @e[type=item,tag=cauldronbrewing.brewing.base.target] run function cauldronbrewing:brewing/ingredient/modifier/splash/can_apply

# If no bases can accept splash, then just quit here
execute unless entity @e[type=item,tag=cauldronbrewing.brewing.base.accept.splash] run return 0

# Mark as action performed
tag @e[tag=cauldronbrewing.brewing.activator] add cauldronbrewing.brewing.changed

# Add the splash
execute as @e[type=item,tag=cauldronbrewing.brewing.base.accept.splash] run function cauldronbrewing:brewing/ingredient/modifier/splash/set_value

# Apply the changes if this is a potion
execute if data entity @s Item.components."minecraft:custom_data".cauldronbrewing as @e[type=item,tag=cauldronbrewing.brewing.base.accept.splash] run function cauldronbrewing:brewing/base/update_all_effects

scoreboard players set brewing.reduce_item.amount cauldronbrewing.master 1
function cauldronbrewing:brewing/reduce_item
tag @e[type=item,tag=cauldronbrewing.brewing.base.accept.splash] remove cauldronbrewing.brewing.base.accept.splash

