
# Ensure the master scoreboard exists
scoreboard objectives add cauldronbrewing.master dummy

# Apply migration if required
execute unless score version cauldronbrewing.master matches 1.. run function cauldronbrewing:meta/migrations/latest_version
