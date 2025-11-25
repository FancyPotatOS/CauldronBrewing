#
#   Load Effect By Item
#   
#   Purpose: To set the storage 'cauldronbrewing:data effect' to the potion storage database by the provided item
#
#   Input: { item: string }
#


#$say data modify storage cauldronbrewing:data effect set from storage cauldronbrewing:data potion_modifiers[{item:"$(item)"}]
$data modify storage cauldronbrewing:data effect set from storage cauldronbrewing:data potion_modifiers[{item:"$(item)"}]

