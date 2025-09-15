### Runs all the time, when the player is NOT sneaking
# Removing Zoom regardless
attribute @s movement_speed modifier remove gbg:ads_zoom
attribute @s attack_speed modifier remove gbg:ads_remove_bobbing

# Stopping function if player either isn't zooming or isn't holding a gun
execute if score @s gbg.is_zooming matches 0 run return fail
execute unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{gbg_is_gun:1b}}}}] run return fail

scoreboard players set @s gbg.is_zooming 0

# Changing item model to un-zoomed counterpart
data modify storage gbg:gun_models new_model set from entity @s SelectedItem.components.minecraft:custom_data.gbg.idle_model
function gbg:misc/update_model with storage gbg:gun_models

