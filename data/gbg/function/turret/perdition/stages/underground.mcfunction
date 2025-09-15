# Changing Visuals
data merge entity @e[type=armor_stand,tag=perdition,limit=1,distance=..0.1] {equipment:{head:{id:"minecraft:air",count:1}}}
data merge entity @e[type=item_display,tag=perdition,limit=1,distance=..0.1] {item:{id:"minecraft:air",count:1}}

# Changing Armor
data merge entity @s {attributes:[{id:"minecraft:armor",base:40}]}

# Changing Tags
tag @s remove aboveground
tag @s add underground

# Playing Sound :D
playsound gbg:turret_lower neutral @a ~ ~ ~ 4 1

