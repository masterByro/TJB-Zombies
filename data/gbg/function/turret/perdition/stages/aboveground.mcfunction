# Changing Visuals
data merge entity @e[type=armor_stand,tag=perdition,limit=1,distance=..0.1] {equipment:{head:{id:"minecraft:item_frame",count:1,components:{"item_model": "gbg:turret/perdition/functional/head","minecraft:entity_data":{id:"minecraft:item_frame"}}}}}
data merge entity @e[type=item_display,tag=perdition,limit=1,distance=..0.1] {item:{id:"minecraft:item_frame",count:1,components:{"item_model": "gbg:turret/perdition/functional/body"}}}

# Changing Armor
data merge entity @s {attributes:[{id:"minecraft:armor",base:3}]}

# Changing Tags
tag @s remove underground
tag @s add aboveground

# Playing Sound :D
playsound gbg:turret_raise neutral @a ~ ~ ~ 4 1

