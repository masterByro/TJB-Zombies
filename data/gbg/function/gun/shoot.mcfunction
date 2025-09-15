#this function is used for crossbow guns as well as music disc guns
### Stopping function if player is out of ammo
execute store result score gbg.current_ammo gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.current_ammo
execute if score gbg.current_ammo gbg.temp matches ..0 unless score gbg.max_ammo gbg.temp matches 0 run return fail


### Getting Some Gun Stats
execute store result score gbg.max_ammo gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.max_ammo
execute store result score gbg.damage gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.damage
execute store result score gbg.headshot_damage gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.headshot_damage
execute store result score gbg.range gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.range
execute store result score gbg.fire_rate gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.fire_rate
execute store result score gbg.recoil_strength gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.recoil_strength
#use regular damage if headshot stat missing
execute if score gbg.headshot_damage gbg.temp matches 0 run scoreboard players operation gbg.headshot_damage gbg.temp = gbg.damage gbg.temp


### Playing Sound
data modify storage gbg:sounds sound set value 1
data modify storage gbg:sounds pitch set value 1
data modify storage gbg:sounds sound set from entity @s SelectedItem.components.minecraft:custom_data.gbg.shoot_sound
data modify storage gbg:sounds pitch set from entity @s SelectedItem.components.minecraft:custom_data.gbg.shoot_sound_pitch
##Calculating volume sound should be
scoreboard players reset gbg.shoot_sound_volume gbg.temp
#putting number on temp scoreboard
scoreboard players operation gbg.shoot_sound_volume gbg.temp = gbg.range gbg.temp
#increasing by 4 so sound is heard slightly farther away than the guns range
scoreboard players add gbg.shoot_sound_volume gbg.temp 4
#multiplying the numerator by 100 so the resulting proportion isn't a fraction
scoreboard players operation gbg.shoot_sound_volume gbg.temp *= 100 number
#dividing the volume by 16, so it's converted from blocks to sound volume
scoreboard players operation gbg.shoot_sound_volume gbg.temp /= 16 number
execute store result storage gbg:sounds volume float 0.01 run scoreboard players get gbg.shoot_sound_volume gbg.temp
##Running macro function to play sound
function gbg:gun/shoot_sound with storage gbg:sounds


### Updating Lore and Components
# Lowering Current Ammo by 1
scoreboard players remove gbg.current_ammo gbg.temp 1

# Calculating percent of durability gun should have
scoreboard players reset gbg.new_durability gbg.temp
#putting numbers on temp scoreboards
scoreboard players operation new_durability1 gbg.temp = gbg.current_ammo gbg.temp
scoreboard players operation new_durability2 gbg.temp = gbg.max_ammo gbg.temp
#multiplying the numerator by 100 so the resulting proportion isn't a fraction
scoreboard players operation new_durability1 gbg.temp *= 100 number
#dividing the current ammo by the max ammo
scoreboard players operation new_durability1 gbg.temp /= new_durability2 gbg.temp
#setting the value to another scoreboard
scoreboard players operation gbg.new_durability gbg.temp = new_durability1 gbg.temp
#setting the value to 1 if it's 0
execute if score gbg.new_durability gbg.temp matches 0 run scoreboard players set gbg.new_durability gbg.temp 1
#resetting the temp scoreboards
scoreboard players reset new_durability1 gbg.temp
scoreboard players reset new_durability2 gbg.temp

# Putting data into storage
execute store result storage gbg:stats tag.current_ammo int 1 run scoreboard players get gbg.current_ammo gbg.temp
execute store result storage gbg:stats tag.new_durability float 0.01 run scoreboard players get gbg.new_durability gbg.temp
#calculating gun damage amount for explosive weapons
execute store result score gbg.damage_type gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.damage_type
execute if score gbg.damage_type gbg.temp matches 8..9 run scoreboard players operation gbg.damage gbg.temp *= 14 number
execute if score gbg.damage_type gbg.temp matches 8..9 run scoreboard players add gbg.damage gbg.temp 1
#re-building lore and updating components
execute if entity @s[tag=QuickReload] run execute store result score gbg.reload_speed gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.quick_reload_speed
execute unless entity @s[tag=QuickReload] run execute store result score gbg.reload_speed gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.reload_speed

#execute store result score gbg.reload_speed gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.reload_speed
item modify entity @s weapon.mainhand gbg:gun_description

### Shooting Projectile
#preliminary commands
execute store result score gbg.damage gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.damage
tag @s add gbg.gun_shooter
scoreboard players operation @s gbg.cooldown = gbg.fire_rate gbg.temp
execute store result storage gbg:macro input.source int 1 run scoreboard players get @s gbg.id
data modify storage gbg:macro input.gun_name set from entity @s SelectedItem.components.minecraft:item_name
data modify storage gbg:macro input.gun_name set from entity @s SelectedItem.components.minecraft:custom_name
scoreboard players operation gbg.range gbg.temp *= 5 number
#RAYCASTS/HITSCANS
execute store result score gbg.projectile_type gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.projectile_type
execute if score gbg.projectile_type gbg.temp matches 1 run function gbg:gun/raycast/projectile/bullet
execute if score gbg.projectile_type gbg.temp matches 2 run function gbg:gun/raycast/projectile/light_bullet
execute if score gbg.projectile_type gbg.temp matches 3 run function gbg:gun/raycast/projectile/pellets
execute if score gbg.projectile_type gbg.temp matches 4 run function gbg:gun/raycast/projectile/laser
execute if score gbg.projectile_type gbg.temp matches 5 run function gbg:gun/raycast/projectile/large_laser
execute if score gbg.projectile_type gbg.temp matches 6 run function gbg:gun/raycast/projectile/fire
execute if score gbg.projectile_type gbg.temp matches 7 run function gbg:gun/raycast/projectile/blaze_fire
execute if score gbg.projectile_type gbg.temp matches 10 run function gbg:gun/raycast/projectile/green_ray
execute if score gbg.projectile_type gbg.temp matches 11 run function gbg:gun/raycast/projectile/blue_ray
execute if score gbg.projectile_type gbg.temp matches 12 run function gbg:gun/raycast/projectile/pink_ray
execute if score gbg.projectile_type gbg.temp matches 13 run function gbg:gun/raycast/projectile/red_ray
execute if score gbg.projectile_type gbg.temp matches 14 run function gbg:gun/raycast/projectile/white_ray
execute if score gbg.projectile_type gbg.temp matches 15 run function gbg:gun/raycast/projectile/green_laser
execute if score gbg.projectile_type gbg.temp matches 16 run function gbg:gun/raycast/projectile/blue_laser
execute if score gbg.projectile_type gbg.temp matches 17 run function gbg:gun/raycast/projectile/yellow_laser
execute if score gbg.projectile_type gbg.temp matches 18 run function gbg:gun/raycast/projectile/orange_laser
execute if score gbg.projectile_type gbg.temp matches 19 run function gbg:gun/raycast/projectile/cyan_laser
execute if score gbg.projectile_type gbg.temp matches 20 run function gbg:gun/raycast/projectile/yellow_ray
#SLOWCASTS/PROJECTILES
execute store result score gbg.projectile_speed gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.projectile_speed
execute if score gbg.projectile_speed gbg.temp matches 2.. run function gbg:gun/slowcast/launch
#CUSTOM RAYCASTS
execute if score gbg.projectile_type gbg.temp matches 200.. unless score gbg.projectile_speed gbg.temp matches 2.. run function #gbg:custom_raycast

## Shooting Additional Projectiles
#only does this if the fire rate = 1,2 AND if the held item is a crossbow
execute if score gbg.fire_rate gbg.temp matches 1..2 if items entity @s weapon.mainhand crossbow unless score @s gbg.burst_duration matches 1.. run scoreboard players set @s gbg.burst_duration 4
execute if score gbg.fire_rate gbg.temp matches 1..2 if items entity @s weapon.mainhand crossbow run scoreboard players set @s gbg.cooldown 1

## Setting Recoil
#canceling the recoil if the gun has shot recently
execute if function gbg:misc/cancel_shot run return 0
#getting different value if player is aiming with gun
execute if score @s gbg.is_zooming matches 1 store result score gbg.recoil_strength gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.zoom_recoil_strength
#applying camera movment
execute if score gbg.recoil_strength gbg.temp matches 1 run tp @s ~ ~ ~ ~ ~-0.4
execute if score gbg.recoil_strength gbg.temp matches 2 run tp @s ~ ~ ~ ~ ~-0.7
execute if score gbg.recoil_strength gbg.temp matches 3 run tp @s ~ ~ ~ ~ ~-1
execute if score gbg.recoil_strength gbg.temp matches 4 run tp @s ~ ~ ~ ~ ~-2
execute if score gbg.recoil_strength gbg.temp matches 5 run tp @s ~ ~ ~ ~ ~-3
execute if score gbg.recoil_strength gbg.temp matches 6 run tp @s ~ ~ ~ ~ ~-4
execute if score gbg.recoil_strength gbg.temp matches 7 run tp @s ~ ~ ~ ~ ~-5
execute if score gbg.recoil_strength gbg.temp matches 8 run tp @s ~ ~ ~ ~ ~-6
execute if score gbg.recoil_strength gbg.temp matches 9 run tp @s ~ ~ ~ ~ ~-7
execute if score gbg.recoil_strength gbg.temp matches 10 run tp @s ~ ~ ~ ~ ~-8
execute if score gbg.recoil_strength gbg.temp matches 11 run tp @s ~ ~ ~ ~ ~-9
execute if score gbg.recoil_strength gbg.temp matches 12 run tp @s ~ ~ ~ ~ ~-10
execute if score gbg.recoil_strength gbg.temp matches 13 run tp @s ~ ~ ~ ~ ~-11
execute if score gbg.recoil_strength gbg.temp matches 14 run tp @s ~ ~ ~ ~ ~-12

