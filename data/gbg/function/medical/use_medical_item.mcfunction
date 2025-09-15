advancement revoke @s only gbg:use_medical_item
## Stopping Function
# Stopping function if item is not a gbg medical item
execute unless items entity @s weapon.mainhand *[custom_data~{gbg:{is_medical_item:1b}}] run return fail
# Stopping function if not done with gbg cooldown
execute if entity @s[scores={gbg.cooldown=1..}] run return fail
# Stopping function if player is dead
execute unless score @s gbg.has_respawned matches 1.. run return fail

## Running Function
# Getting Effect Type of Medical item
execute store result score @s gbg.medical.effect_type run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.effect_type

# Playing Sound
execute store result score @s gbg.medical.sound_time run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.sound_time
execute if score @s gbg.is_using = @s gbg.medical.sound_time run data modify storage gbg:sounds medical_sound set from entity @s SelectedItem.components.minecraft:custom_data.gbg.sound
execute if score @s gbg.is_using = @s gbg.medical.sound_time run function gbg:medical/medical_sound with storage gbg:sounds

# Item Using Timer
execute if score @s gbg.is_using matches ..0 store result score @s gbg.medical.use_time run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.use_time
execute if score @s gbg.is_using matches ..0 run scoreboard players operation @s gbg.using_time = @s gbg.medical.use_time
scoreboard players add @s gbg.is_using 2
execute if score @s gbg.is_using <= @s gbg.medical.use_time run return fail

# Making sure the right click is from the same medical item
execute store result score @s gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.effect_type
execute unless score @s gbg.temp = @s gbg.medical.effect_type run return fail

# Running Function to Consume Medical Item
execute if score @s gbg.medical.effect_type matches 1 run function gbg:medical/use/simple_bandage
execute if score @s gbg.medical.effect_type matches 2 run function gbg:medical/use/adv_bandage
execute if score @s gbg.medical.effect_type matches 3 run function gbg:medical/use/medkit
execute if score @s gbg.medical.effect_type matches 4 run function gbg:medical/use/regeneration_syringe
execute if score @s gbg.medical.effect_type matches 5 run function gbg:medical/use/absorption_syringe
execute if score @s gbg.medical.effect_type matches 6 run function gbg:medical/use/health_boost_syringe
execute if score @s gbg.medical.effect_type matches 7 run function gbg:medical/use/reistance_syringe
execute if score @s gbg.medical.effect_type matches 8 run function gbg:medical/use/swiftness_syringe
execute if score @s gbg.medical.effect_type matches 9 run function gbg:medical/use/antidote_syringe
execute if score @s gbg.medical.effect_type matches 10 run function gbg:medical/use/laser_shield
execute if score gbz gb.datapack_detect matches 1 if score @s gbg.medical.effect_type matches 11 run function gbg:medical/use/minor_infection_cure/use
execute if score @s gbg.medical.effect_type matches 20.. run function #gbg:effect_type

