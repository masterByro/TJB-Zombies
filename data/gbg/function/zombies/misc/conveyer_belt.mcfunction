# Conveyor Belt N-E-S-W

# Block-based movement
execute if block ~ ~-2 ~ minecraft:yellow_glazed_terracotta run tp @s ~ ~ ~-0.1 180 0
execute if block ~ ~-2 ~ minecraft:light_blue_glazed_terracotta run tp @s ~0.1 ~ ~ 270 0
execute if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta run tp @s ~ ~ ~0.1 0 0
execute if block ~ ~-2 ~ minecraft:lime_glazed_terracotta run tp @s ~-0.1 ~ ~ 90 0

# Armor stand–based movement
execute if entity @e[type=armor_stand,tag=North,distance=..1,limit=1] run tp @s ~ ~ ~-0.1 180 0
execute if entity @e[type=armor_stand,tag=East,distance=..1,limit=1] run tp @s ~0.1 ~ ~ 270 0
execute if entity @e[type=armor_stand,tag=South,distance=..1,limit=1] run tp @s ~ ~ ~0.1 0 0
execute if entity @e[type=armor_stand,tag=West,distance=..1,limit=1] run tp @s ~-0.1 ~ ~ 90 0
