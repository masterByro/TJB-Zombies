execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"RPG"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"RPG"}}}]} run tag @s add owned

execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"RPG"}}}]} run item replace entity @s hotbar.4 with minecraft:air
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"RPG"}}}]} run item replace entity @s hotbar.5 with minecraft:air

execute if entity @s[tag=!owned] run function give:clear_gun
clear @s minecraft:command_block[minecraft:custom_data={rpg_rocket:1b}]

loot give @s loot gbg:items/gun/modern/rpg
loot give @s loot gbg:items/ammo/standard/rpg_rocket

tag @s remove owned