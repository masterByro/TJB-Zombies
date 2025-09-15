#healing self
effect give @s[tag=zombie] regeneration 10 2 false

#removing zombie traces
team leave @s
tag @s remove gbz.zombie
tag @s remove zombie_animal

#changing loot table
execute if entity @s[type=sheep] run tag @s remove sheep_zombie
execute if entity @s[type=cow] run tag @s remove cow_zombie
execute if entity @s[type=chicken] run tag @s remove chicken_zombie
execute if entity @s[type=pig] run tag @s remove pig_zombie


#changing loot table
execute if entity @s[type=sheep] run data merge entity @s {DeathLootTable:"minecraft:entities/sheep"}
execute if entity @s[type=cow] run data merge entity @s {DeathLootTable:"minecraft:entities/cow"}
execute if entity @s[type=chicken] run data merge entity @s {DeathLootTable:"minecraft:entities/chicken"}
execute if entity @s[type=pig] run data merge entity @s {DeathLootTable:"minecraft:entities/pig"}

#killing driver
execute if entity @s[type=sheep] run kill @e[type=husk,tag=sheep_brain,limit=1,sort=nearest]
execute if entity @s[type=cow] run kill @e[type=husk,tag=cow_brain,limit=1,sort=nearest]
execute if entity @s[type=chicken] run kill @e[type=husk,tag=chicken_brain,limit=1,sort=nearest]
execute if entity @s[type=pig] run kill @e[type=husk,tag=pig_brain,limit=1,sort=nearest]

