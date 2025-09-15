# Toggle armor stand visibility
execute as @e[type=armor_stand] run data modify entity @s Invisible set value 0b
execute as @e[type=armor_stand] run data modify entity @s CustomNameVisible set value 1b
