#
#   Get Transmutation Entry
#   
#   Purpose: To set the storage 'cauldronbrewing:data transmutation' for the matching entry in storage 'cauldronbrewing:data effect.transmutations'
#
#   Input: { item: string }
#


#$say data modify storage cauldronbrewing:data transmutation set from storage cauldronbrewing:data effect.transmutations[{item:"$(item)"}]
$data modify storage cauldronbrewing:data transmutation set from storage cauldronbrewing:data effect.transmutations[{item:"$(item)"}]

