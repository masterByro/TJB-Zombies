execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"Python"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"Python"}}}]} run tag @s add owned

execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"Python"}}}]} run item replace entity @s hotbar.4 with minecraft:air
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"Python"}}}]} run item replace entity @s hotbar.5 with minecraft:air

execute if entity @s[tag=!owned] run function give:clear_gun
clear @s minecraft:command_block[minecraft:custom_data={python_bullets:1b}]

loot give @s loot gbg:items/gun/modern/python
loot give @s loot gbg:items/ammo/standard/python_bullets

tag @s remove owned