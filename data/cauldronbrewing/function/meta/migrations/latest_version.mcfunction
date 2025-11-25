#
#   Migration File V1
#   
#   Purpose: To update the datapack up to this level, then apply new/updated configs or setup
#
#   Input: None
#


tellraw @a ["",{"text":"[Cauldron Brewing Datapack]","bold":true,"color":"dark_blue"}," - Setup"]

# Apply last migration
#execute unless score version cauldronbrewing.master matches 1.. run function cauldronbrewing:meta/migrate/migration_v0

# Set the version
scoreboard players set version cauldronbrewing.master 1

scoreboard players set config.max_brewable cauldronbrewing.master 3

function cauldronbrewing:brewing/init/reset_modifiers
function cauldronbrewing:brewing/init/populate_potions
#function cauldronbrewing:brewing/init/add_custom


return 0
scoreboard objectives add fpconflict.conflict_map dummy
