### Runs only when the player sneaks
# Stopping the function if the player is already zooming, or if they're not holding a gun
execute if score @s gbg.is_zooming matches 1 run return fail
execute unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{gbg_is_gun:1b}}}}] run return fail
# Detecting Shoot Type Swap
scoreboard players add @s gbg.projectile_swap_detection 12
execute if score @s gbg.projectile_swap_detection matches 13.. run function gbg:sneak/cycle_shoot_type

# Reseting Zoom
attribute @s minecraft:movement_speed modifier remove gbg:ads_zoom

# Changing item model to zoomed counterpart
data modify storage gbg:gun_models new_model set from entity @s SelectedItem.components.minecraft:custom_data.gbg.zoom_model
function gbg:misc/update_model with storage gbg:gun_models

# Changing Zoom
#Zoom Levels: -0.01 -0.02 -0.03 -0.04 -0.05 -0.06 -0.07 -0.08 -0.09 -0.1
execute store result score @s gbg.temp2 run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.zoom_strength
execute if score @s gbg.temp2 matches 1 run attribute @s movement_speed modifier add gbg:ads_zoom -0.01 add_value
execute if score @s gbg.temp2 matches 2 run attribute @s movement_speed modifier add gbg:ads_zoom -0.02 add_value
execute if score @s gbg.temp2 matches 3 run attribute @s movement_speed modifier add gbg:ads_zoom -0.03 add_value
execute if score @s gbg.temp2 matches 4 run attribute @s movement_speed modifier add gbg:ads_zoom -0.04 add_value
execute if score @s gbg.temp2 matches 5 run attribute @s movement_speed modifier add gbg:ads_zoom -0.05 add_value
execute if score @s gbg.temp2 matches 6 run attribute @s movement_speed modifier add gbg:ads_zoom -0.06 add_value
execute if score @s gbg.temp2 matches 7 run attribute @s movement_speed modifier add gbg:ads_zoom -0.07 add_value
execute if score @s gbg.temp2 matches 8 run attribute @s movement_speed modifier add gbg:ads_zoom -0.08 add_value
execute if score @s gbg.temp2 matches 9 run attribute @s movement_speed modifier add gbg:ads_zoom -0.09 add_value
execute if score @s gbg.temp2 matches 10 run attribute @s movement_speed modifier add gbg:ads_zoom -0.1 add_value
# Turning off item bobbing if needed
execute store result score @s gbg.temp2 run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.disable_zoom_bobbing
execute if score @s gbg.temp2 matches 1 run attribute @s attack_speed modifier add gbg:ads_remove_bobbing -1000000 add_value

scoreboard players set @s gbg.is_zooming 1

