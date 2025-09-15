# Updating Existing Things
data merge entity @e[type=armor_stand,tag=perdition,limit=1,distance=..0.1] {equipment:{head:{id:"minecraft:item_frame",count:1,components:{"item_model": "gbg:turret/perdition/damaged/head","minecraft:entity_data":{id:"minecraft:item_frame"}}}}}
data merge entity @e[type=item_display,tag=perdition,limit=1,distance=..0.1] {item:{id:"minecraft:item_frame",count:1,components:{"item_model": "gbg:turret/perdition/damaged/body"}}}

# Replacing Old Turret with new one
summon pig ~ ~ ~ {CustomName:{"text":"Perdition Turret"},Health:50f,attributes:[{id:"minecraft:max_health",base:100},{id:"minecraft:armor",base:28}],Silent:1b,NoAI:1b,PersistenceRequired:1b,Tags:["turret","perdition","zombie","currently_changing"],active_effects:[{id:"minecraft:water_breathing",amplifier:0b,duration:1000000,show_particles:0b},{id:"minecraft:invisibility",amplifier:0b,duration:1000000,show_particles:0b}],DeathLootTable:"minecraft:empty"}

scoreboard players operation @e[type=pig,tag=currently_changing,sort=nearest,limit=1] gbg.id = @e[type=pig,tag=perdition,tag=!currently_changing,sort=nearest,limit=1] gbg.id
scoreboard players set @e[type=pig,tag=perdition,tag=currently_changing,sort=nearest,limit=1] gbg.cooldown 20
scoreboard players operation @e[type=pig,tag=currently_changing,sort=nearest,limit=1] gbg.target_type = @e[type=pig,tag=perdition,tag=!currently_changing,sort=nearest,limit=1] gbg.target_type
scoreboard players set @e[type=pig,tag=perdition,tag=currently_changing,sort=nearest,limit=1] gbg.turret_stage 2
scoreboard players set @e[type=pig,tag=perdition,tag=currently_changing,sort=nearest,limit=1] gbg.max_hp 100

playsound minecraft:entity.iron_golem.damage neutral @a ~ ~ ~ 5 0.5
playsound minecraft:entity.iron_golem.death neutral @a ~ ~ ~ 5 2
playsound minecraft:entity.iron_golem.hurt neutral @a ~ ~ ~ 1 0.5

# must be at end of function
tag @e[tag=currently_changing,limit=1,sort=nearest,distance=..0.1] remove currently_changing
kill @s

