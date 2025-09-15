scoreboard players set @s gbg.projectile_swap_detection 0
# Stopping function if gun doesn't have shoot types
scoreboard players set shoot_type_length gbg.temp 0
execute store result score shoot_type_length gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.shoot_types
execute if score shoot_type_length gbg.temp matches 0 run return fail
# Getting current shoot type
execute store result score current_shoot_type gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.current_shoot_type
# Increasing current shoot type by 1
scoreboard players operation next_shoot_type gbg.temp = current_shoot_type gbg.temp
scoreboard players add next_shoot_type gbg.temp 1
# If current shoot type is equal to length, set current shoot type to 0
execute if score next_shoot_type gbg.temp >= shoot_type_length gbg.temp run scoreboard players set next_shoot_type gbg.temp 0
# Putting current shoot type into storage & Running Function
execute store result storage gbg:shoot_types next_shoot_type int 1 run scoreboard players get next_shoot_type gbg.temp
execute store result storage gbg:shoot_types current_shoot_type int 1 run scoreboard players get current_shoot_type gbg.temp
function gbg:sneak/set_new_data with storage gbg:shoot_types

# Updating Lore
#getting gun stats
execute store result score gbg.current_ammo gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.current_ammo
execute store result score gbg.max_ammo gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.max_ammo
execute store result score gbg.damage gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.damage
execute store result score gbg.range gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.range
execute store result score gbg.fire_rate gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.fire_rate
execute store result score gbg.recoil_strength gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.recoil_strength

#calculating percent of durability gun should have
scoreboard players reset gbg.new_durability gbg.temp
# Putting numbers on temp scoreboards
scoreboard players operation new_durability1 gbg.temp = gbg.current_ammo gbg.temp
scoreboard players operation new_durability2 gbg.temp = gbg.max_ammo gbg.temp
# Multiplying the numerator by 100 so the resulting proportion isn't a fraction
scoreboard players operation new_durability1 gbg.temp *= 100 number
# Dividing the current ammo by the max ammo
scoreboard players operation new_durability1 gbg.temp /= new_durability2 gbg.temp
# Setting the value to another scoreboard
scoreboard players operation gbg.new_durability gbg.temp = new_durability1 gbg.temp
# Resetting the temp scoreboards
scoreboard players reset new_durability1 gbg.temp
scoreboard players reset new_durability2 gbg.temp
execute store result storage gbg:stats tag.current_ammo int 1 run scoreboard players get gbg.current_ammo gbg.temp
execute store result storage gbg:stats tag.new_durability float 0.01 run scoreboard players get gbg.new_durability gbg.temp

#calculating gun damage amount for explosive weapons
execute store result score gbg.damage_type gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.damage_type
execute if score gbg.damage_type gbg.temp matches 8..9 run scoreboard players operation gbg.damage gbg.temp *= 14 number
execute if score gbg.damage_type gbg.temp matches 8..9 run scoreboard players add gbg.damage gbg.temp 1
#building lore
item modify entity @s weapon.mainhand gbg:gun_description

