#
#   Load Effect By Base
#   
#   Purpose: To set the storage 'cauldronbrewing:data effect' to the potion storage database by the provided identifier
#
#   Input: { base: string }
#


#$say data modify storage cauldronbrewing:data effect set from storage cauldronbrewing:data potion_modifiers[{base:"$(base)"}]
$data modify storage cauldronbrewing:data effect set from storage cauldronbrewing:data potion_modifiers[{base:"$(base)"}]

