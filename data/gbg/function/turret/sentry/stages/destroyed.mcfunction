# Updating Existing Entities
data merge entity @e[type=armor_stand,tag=sentry,limit=1,distance=..0.1] {equipment:{head:{id:"minecraft:item_frame",count:1,components:{"item_model": "gbg:turret/sentry/destroyed/head","minecraft:entity_data":{id:"minecraft:item_frame"}}}}}
data merge entity @e[type=item_display,tag=sentry,limit=1,distance=..0.1] {item:{id:"minecraft:item_frame",count:1,components:{"item_model": "gbg:turret/sentry/destroyed/body"}}}
tag @s add destroyed
tag @e[type=item_display,tag=sentry,limit=1,distance=..0.1] add destroyed

# Adding Despawn Timer
execute if score turret_despawn_time config.gbg matches 0 run scoreboard players set @s gbg.turret_despawn_time 72000
execute if score turret_despawn_time config.gbg matches 1 run scoreboard players set @s gbg.turret_despawn_time 24000
execute if score turret_despawn_time config.gbg matches 2 run scoreboard players set @s gbg.turret_despawn_time 144000
execute if score turret_despawn_time config.gbg matches 3 run scoreboard players set @s gbg.turret_despawn_time 432000

# Asthetics
particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.05 20 normal
playsound gbg:turret_destroy neutral @a ~ ~ ~ 5 1
