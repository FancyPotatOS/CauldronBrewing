#
#   Apply Effect
#   
#   Purpose: To apply the effect in storage 'cauldronbrewing:data effect'
#
#   Input: None
#


# say # # brewing/base/apply/inner_effect

# Load the next item in the list
data modify storage cauldronbrewing:data apply_rec_current set from storage cauldronbrewing:data apply_rec[0]
data remove storage cauldronbrewing:data apply_rec[0]

# Update the potion data
data modify storage cauldronbrewing:data current_effect set from storage cauldronbrewing:data apply_rec_current
function cauldronbrewing:brewing/base/update_latest_effect

# Recursively call if there is another effect
execute if data storage cauldronbrewing:data apply_rec[0] run function cauldronbrewing:brewing/base/apply/inner_effect

