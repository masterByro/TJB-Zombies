scoreboard players reset gbg.current_ammo gbg.temp
scoreboard players reset reloadmath.int gbg.temp
scoreboard players reset has_ammo gbg.temp
## Canceling if gun at max Ammo
execute store result score gbg.max_ammo gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.max_ammo
execute store result score gbg.current_ammo gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.current_ammo
execute if score gbg.current_ammo gbg.temp = gbg.max_ammo gbg.temp run return fail


## Canceling if player doesn't have ammo
execute store result score gun_reload_type gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.reload_type
data modify storage gbg:ammo ammo_base set from entity @s SelectedItem.components.minecraft:custom_data.gbg.ammo_base
data modify storage gbg:ammo ammo_tag set from entity @s SelectedItem.components.minecraft:custom_data.gbg.ammo_item_tag
execute unless score gun_reload_type gbg.temp matches 7 store result score has_ammo gbg.temp run function gbg:reload/has_ammo with storage gbg:ammo
execute unless score gun_reload_type gbg.temp matches 7 if score has_ammo gbg.temp matches 1 run function gbg:reload/out_of_ammo
execute unless score gun_reload_type gbg.temp matches 7 if score has_ammo gbg.temp matches 1 run scoreboard players set @s gbg.cooldown 10
execute unless score gun_reload_type gbg.temp matches 7 if score has_ammo gbg.temp matches 1 run return fail

## Removing Ammo from Inventory and Replenishing Gun
execute if score gun_reload_type gbg.temp matches 1..5 unless entity @s[gamemode=creative] run function gbg:reload/take_ammo with storage gbg:ammo
#magazine
execute if score gun_reload_type gbg.temp matches 1 run scoreboard players operation gbg.current_ammo gbg.temp = gbg.max_ammo gbg.temp
#shell
execute if score gun_reload_type gbg.temp matches 2 run scoreboard players add gbg.current_ammo gbg.temp 1
#partial
execute if score gun_reload_type gbg.temp matches 3..5 run scoreboard players operation reloadmath.int gbg.temp = gbg.max_ammo gbg.temp
execute if score gun_reload_type gbg.temp matches 3 run scoreboard players operation reloadmath.int gbg.temp *= 25 number
execute if score gun_reload_type gbg.temp matches 4 run scoreboard players operation reloadmath.int gbg.temp *= 50 number
execute if score gun_reload_type gbg.temp matches 5 run scoreboard players operation reloadmath.int gbg.temp *= 75 number
execute if score gun_reload_type gbg.temp matches 3..5 run scoreboard players operation reloadmath.int gbg.temp /= 100 number
execute if score gun_reload_type gbg.temp matches 3..5 run scoreboard players operation gbg.current_ammo gbg.temp += reloadmath.int gbg.temp
execute if score gun_reload_type gbg.temp matches 3..5 if score gbg.current_ammo gbg.temp > gbg.max_ammo gbg.temp run scoreboard players operation gbg.current_ammo gbg.temp = gbg.max_ammo gbg.temp
#bullet
execute if score gun_reload_type gbg.temp matches 6 run function gbg:reload/bullet
#air
execute if score gun_reload_type gbg.temp matches 7 run scoreboard players operation gbg.current_ammo gbg.temp = gbg.max_ammo gbg.temp

## Setting Cooldown and Reload Timer
execute if entity @s[tag=QuickReload] run execute store result score gbg.reload_speed gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.quick_reload_speed
execute unless entity @s[tag=QuickReload] run execute store result score gbg.reload_speed gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.reload_speed

#execute store result score gbg.reload_speed gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.reload_speed
scoreboard players operation @s gbg.cooldown = gbg.reload_speed gbg.temp
scoreboard players operation @s gbg.reloading_time = gbg.reload_speed gbg.temp

## Playing Sound
data modify storage gbg:sounds sound set value 1
data modify storage gbg:sounds pitch set value 1
data modify storage gbg:sounds sound set from entity @s SelectedItem.components.minecraft:custom_data.gbg.reload_sound
data modify storage gbg:sounds pitch set from entity @s SelectedItem.components.minecraft:custom_data.gbg.reload_sound_pitch
function gbg:reload/reload_sound with storage gbg:sounds

## Updating Lore and Components
#getting gun stats
execute store result score gbg.damage gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.damage
execute store result score gbg.range gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.range
execute store result score gbg.fire_rate gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.fire_rate
execute store result score gbg.recoil_strength gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.recoil_strength
#calculating percent of durability gun should have
execute if score gun_reload_type gbg.temp matches 1 run scoreboard players set gbg.new_durability gbg.temp 100
execute if score gun_reload_type gbg.temp matches 2.. run function gbg:misc/calculate_durability
execute store result storage gbg:stats tag.current_ammo int 1 run scoreboard players get gbg.current_ammo gbg.temp
execute store result storage gbg:stats tag.new_durability float 0.01 run scoreboard players get gbg.new_durability gbg.temp
#calculating gun damage amount for explosive weapons
execute store result score gbg.damage_type gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.damage_type
execute if score gbg.damage_type gbg.temp matches 8..9 run scoreboard players operation gbg.damage gbg.temp *= 14 number
execute if score gbg.damage_type gbg.temp matches 8..9 run scoreboard players add gbg.damage gbg.temp 1
#building lore
item modify entity @s weapon.mainhand gbg:gun_description

