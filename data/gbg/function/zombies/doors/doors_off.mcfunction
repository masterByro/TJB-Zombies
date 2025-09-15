execute as @e[type=armor_stand,tag=turnoff] run data merge entity @s {CustomName:"off"}
execute as @e[type=armor_stand,tag=door] at @s run setblock ~ ~ ~ iron_bars
execute as @e[type=armor_stand,tag=price] run tag @s add closed
execute as @e[type=armor_stand,tag=price] run data modify entity @s CustomNameVisible set value 1b

