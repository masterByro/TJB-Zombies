scoreboard players set @s gbg.turret_stage 1
scoreboard players set @s gbg.ground_time 40
tag @s add aboveground
data merge entity @s {attributes:[{id:"minecraft:armor",base:3}]}
data merge entity @e[type=armor_stand,tag=sentry,limit=1,distance=..0.1] {equipment:{head:{id:"minecraft:item_frame",count:1,components:{"item_model": "gbg:turret/sentry/functional/head","minecraft:entity_data":{id:"minecraft:item_frame"}}}}}
data merge entity @e[type=item_display,tag=sentry,limit=1,distance=..0.1] {item:{id:"minecraft:item_frame",count:1,components:{"item_model": "gbg:turret/sentry/functional/body"}}}
