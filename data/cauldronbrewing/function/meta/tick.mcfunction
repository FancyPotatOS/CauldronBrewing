#
#   Meta Tick
#   
#   Purpose: To update all information that needs to be updated every tick
#
#   Input: None
#


execute as @e[type=item,limit=1,sort=random,predicate=cauldronbrewing:in_water_cauldron] if items entity @s container.* #cauldronbrewing:activation at @s run function cauldronbrewing:brewing/activate

