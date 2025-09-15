## C4 Remote Use
scoreboard players set @s gbg.cooldown 40

# Making C4s Explode
execute if score c4_detonate_limit config.gbg matches 1 as @e[type=item_frame,limit=10,tag=c4,distance=..50] at @s run function gbg:equipment/c4/explode
execute if score c4_detonate_limit config.gbg matches 2 as @e[type=item_frame,limit=20,tag=c4,distance=..50] at @s run function gbg:equipment/c4/explode
execute if score c4_detonate_limit config.gbg matches 3 as @e[type=item_frame,limit=50,tag=c4,distance=..50] at @s run function gbg:equipment/c4/explode
execute if score c4_detonate_limit config.gbg matches 4 as @e[type=item_frame,limit=100,tag=c4,distance=..50] at @s run function gbg:equipment/c4/explode
execute if score c4_detonate_limit config.gbg matches 0 as @e[type=item_frame,limit=150,tag=c4,distance=..50] at @s run function gbg:equipment/c4/explode
execute if score c4_detonate_limit config.gbg matches 5 as @e[type=item_frame,limit=200,tag=c4,distance=..50] at @s run function gbg:equipment/c4/explode
execute if score c4_detonate_limit config.gbg matches 6 as @e[type=item_frame,limit=250,tag=c4,distance=..50] at @s run function gbg:equipment/c4/explode
execute if score c4_detonate_limit config.gbg matches 7 as @e[type=item_frame,limit=300,tag=c4,distance=..50] at @s run function gbg:equipment/c4/explode

# Modifying remote item
execute store result score new_c4_remote_use gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.c4_remote_uses_left
scoreboard players remove new_c4_remote_use gbg.temp 1
execute store result storage gbg:c4_remote tag.damage float 0.1 run scoreboard players get new_c4_remote_use gbg.temp
execute store result storage gbg:c4_remote tag.c4_remote_uses_left int 1 run scoreboard players get new_c4_remote_use gbg.temp
item modify entity @s weapon.mainhand gbg:c4_remote
execute unless score new_c4_remote_use gbg.temp matches 0 run return run playsound gbg:beep player @a ~ ~ ~ 9 1

# On the last use
playsound item.armor.equip_chain player @a ~ ~ ~ 2 1
playsound entity.item.break player @a ~ ~ ~ 2 1
playsound entity.item.break player @a ~ ~ ~ 2 0.5
item replace entity @s weapon.mainhand with air

