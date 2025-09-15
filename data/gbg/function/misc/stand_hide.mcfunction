execute as @e[type=armor_stand] run data modify entity @s Invisible set value 1b
execute as @e[type=armor_stand] unless entity @s[tag=price] run data modify entity @s CustomNameVisible set value 0b
