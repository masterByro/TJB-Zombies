execute at @s run kill @e[type=shulker,tag=crawl_shulker,distance=..2]
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 20 force
execute at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1
effect clear @s
effect give @s saturation infinite 1 true
scoreboard players set @s DownTimer 0
tag @s remove Downed
gamemode adventure @s
team join Survivors @s

tag @s add clearing
item replace entity @s hotbar.0 from entity @s inventory.18
item replace entity @s hotbar.1 from entity @s inventory.19
item replace entity @s hotbar.2 from entity @s inventory.20
item replace entity @s hotbar.3 from entity @s inventory.21
item replace entity @s hotbar.4 from entity @s inventory.22
item replace entity @s hotbar.5 from entity @s inventory.23
item replace entity @s hotbar.6 from entity @s inventory.24
item replace entity @s hotbar.7 from entity @s inventory.25
item replace entity @s hotbar.8 from entity @s inventory.26


item replace entity @s inventory.18 with minecraft:air
item replace entity @s inventory.19 with minecraft:air
item replace entity @s inventory.20 with minecraft:air
item replace entity @s inventory.21 with minecraft:air
item replace entity @s inventory.22 with minecraft:air
item replace entity @s inventory.23 with minecraft:air
item replace entity @s inventory.24 with minecraft:air
item replace entity @s inventory.25 with minecraft:air
item replace entity @s inventory.26 with minecraft:air
tag @s remove clearing

