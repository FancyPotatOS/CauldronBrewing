#
#   Update Next Effect
#   
#   Purpose: To apply the next effect in the storage 'cauldronbrewing:data current_effects
#
#   Input: None
#


# say # # brewing/base/update_next_effect

data modify storage cauldronbrewing:data current_effect set from storage cauldronbrewing:data current_effects[0]
data remove storage cauldronbrewing:data current_effects[0]

function cauldronbrewing:brewing/base/update_latest_effect

execute if data storage cauldronbrewing:data current_effects[0] run function cauldronbrewing:brewing/base/update_next_effect

