scoreboard players set @s NewDeath 0
scoreboard players set @s DownTimer 600


tellraw @a {"text":"[Zombies] ","color":"dark_red","extra":[{"selector":"@s","color":"yellow"},{"text":" has been downed!","color":"red"}]}
effect give @s minecraft:resistance 30 255 true
team join RedTeam @s

execute at @s run summon shulker ~ ~1 ~ {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["crawl_shulker"]}
execute at @s run effect give @e[type=shulker,tag=crawl_shulker,distance=..2] invisibility infinite 1 true

tag @s add clearing
item replace entity @s inventory.18 from entity @s hotbar.0
item replace entity @s inventory.19 from entity @s hotbar.1
item replace entity @s inventory.20 from entity @s hotbar.2
item replace entity @s inventory.21 from entity @s hotbar.3
item replace entity @s inventory.22 from entity @s hotbar.4
item replace entity @s inventory.23 from entity @s hotbar.5
item replace entity @s inventory.24 from entity @s hotbar.6
item replace entity @s inventory.25 from entity @s hotbar.7
item replace entity @s inventory.26 from entity @s hotbar.8

item replace entity @s hotbar.4 with minecraft:air
loot give @s loot gbg:items/gun/standard/colt_m1911
item replace entity @s hotbar.0 with minecraft:air
item replace entity @s hotbar.1 with minecraft:air
item replace entity @s hotbar.2 with minecraft:air
item replace entity @s hotbar.3 with minecraft:air
item replace entity @s hotbar.5 with minecraft:air
item replace entity @s hotbar.6 with minecraft:air
item replace entity @s hotbar.7 with minecraft:air
item replace entity @s hotbar.8 with minecraft:air

tag @s remove clearing