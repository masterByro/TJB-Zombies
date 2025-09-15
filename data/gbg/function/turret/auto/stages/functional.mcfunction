scoreboard players set @s gbg.turret_stage 1
data merge entity @s {attributes:[{id:"minecraft:armor",base:8}]}
data merge entity @e[type=armor_stand,tag=auto,limit=1,distance=..0.1] {equipment:{head:{id:"minecraft:item_frame",count:1,components:{"item_model": "gbg:turret/auto/functional/head","minecraft:entity_data":{id:"minecraft:item_frame"}}}}}
data merge entity @e[type=item_display,tag=auto,limit=1,distance=..0.1] {item:{id:"minecraft:item_frame",count:1,components:{"item_model": "gbg:turret/auto/functional/body"}}}

