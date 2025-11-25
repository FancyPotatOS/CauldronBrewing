#
#   Find Application
#   
#   Purpose: To find what type of ingredient this is and apply it
#
#   Input: None
#


# say # # brewing/ingredient/find_application

execute if items entity @s container.* #cauldronbrewing:modifiers/activation run function cauldronbrewing:brewing/ingredient/modifier/activation/apply

execute unless entity @e[type=item,tag=cauldronbrewing.brewing.activator,tag=cauldronbrewing.brewing.changed] if items entity @s container.* #cauldronbrewing:effect run function cauldronbrewing:brewing/ingredient/apply_effect

execute unless entity @e[type=item,tag=cauldronbrewing.brewing.activator,tag=cauldronbrewing.brewing.changed] if items entity @s container.* #cauldronbrewing:modifiers/duration run function cauldronbrewing:brewing/ingredient/modifier/duration/apply

execute unless entity @e[type=item,tag=cauldronbrewing.brewing.activator,tag=cauldronbrewing.brewing.changed] if items entity @s container.* #cauldronbrewing:modifiers/potency run function cauldronbrewing:brewing/ingredient/modifier/potency/apply

execute unless entity @e[type=item,tag=cauldronbrewing.brewing.activator,tag=cauldronbrewing.brewing.changed] if items entity @s container.* #cauldronbrewing:modifiers/splash run function cauldronbrewing:brewing/ingredient/modifier/splash/apply

execute unless entity @e[type=item,tag=cauldronbrewing.brewing.activator,tag=cauldronbrewing.brewing.changed] if items entity @s container.* #cauldronbrewing:modifiers/lingering run function cauldronbrewing:brewing/ingredient/modifier/lingering/apply

execute unless entity @e[type=item,tag=cauldronbrewing.brewing.activator,tag=cauldronbrewing.brewing.changed] if items entity @s container.* #cauldronbrewing:modifiers/transmutor run function cauldronbrewing:brewing/ingredient/modifier/transmutation/apply

