# If a turret already exists on that block
execute if entity @e[type=armor_stand,distance=..0.5,tag=turret] as @p at @s run function give:perdition_turret
execute if entity @e[type=armor_stand,distance=..0.5,tag=turret] run return run kill @s

# Executing as the placer item frame
playsound gbg:perdition_setup player @a ~ ~ ~ 10 0.7

summon pig ~ ~ ~ {CustomName:{"text":"Perdition Turret"},Health:100f,attributes:[{id:"minecraft:max_health",base:100},{id:"minecraft:armor",base:16}],Silent:1b,NoAI:1b,PersistenceRequired:1b,Tags:["aboveground","turret","perdition","gbz.zombie"],active_effects:[{id:"minecraft:water_breathing",amplifier:0b,duration:1000000,show_particles:0b},{id:"minecraft:invisibility",amplifier:0b,duration:1000000,show_particles:0b}],DeathLootTable:"minecraft:empty"}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["turret","perdition"],equipment:{head:{id:"minecraft:item_frame",count:1,components:{"item_model": "gbg:turret/perdition/functional/head","minecraft:entity_data":{id:"minecraft:item_frame"}}}}}
summon item_display ~ ~ ~ {Tags:["turret","perdition"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.6f,0f],scale:[1.25f,1.25f,1.25f]},item:{id:"minecraft:item_frame",count:1,components:{"item_model": "gbg:turret/perdition/functional/body"}}}

scoreboard players operation @e[type=pig,tag=perdition,sort=nearest,limit=1] gbg.id = @p gbg.id
scoreboard players operation @e[type=armor_stand,tag=perdition,sort=nearest,limit=1] gbg.id = @p gbg.id
scoreboard players set @e[type=pig,tag=perdition,sort=nearest,limit=1] gbg.cooldown 20
scoreboard players set @e[type=pig,tag=perdition,sort=nearest,limit=1] gbg.turret_stage 1
scoreboard players set @e[type=pig,tag=perdition,sort=nearest,limit=1] gbg.max_hp 100
scoreboard players set @e[type=pig,tag=perdition,sort=nearest,limit=1] gbg.ground_time 40
#setting configured default target type
execute if score default_turret_target_type config.gbg matches 0..1 run scoreboard players set @e[type=pig,tag=perdition,sort=nearest,limit=1] gbg.target_type 1
execute if score default_turret_target_type config.gbg matches 2 run scoreboard players set @e[type=pig,tag=perdition,sort=nearest,limit=1] gbg.target_type 2
execute if score default_turret_target_type config.gbg matches 3 run scoreboard players set @e[type=pig,tag=perdition,sort=nearest,limit=1] gbg.target_type 3
execute if score default_turret_target_type config.gbg matches 4 run scoreboard players set @e[type=pig,tag=perdition,sort=nearest,limit=1] gbg.target_type 4

# killing the placer item frame
kill @s


