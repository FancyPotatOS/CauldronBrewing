#
#   Has Transmutation Entry
#   
#   Purpose: To add the tag 'transmutation.has_entry' on the executing entity if the effect in storage 'cauldronbrewing:data effect.transmutations' contains an entry with the given item
#
#   Input: { item: string }
#


#$say execute if data storage cauldronbrewing:data effect.transmutations[{item:"$(item)"}]
$execute if data storage cauldronbrewing:data effect.transmutations[{item:"$(item)"}] run tag @s add transmutation.has_entry

