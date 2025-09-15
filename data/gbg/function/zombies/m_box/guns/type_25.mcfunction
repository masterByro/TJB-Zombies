execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"Type 25"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"Type 25"}}}]} run tag @s add owned

execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"Type 25"}}}]} run item replace entity @s hotbar.4 with minecraft:air
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"Type 25"}}}]} run item replace entity @s hotbar.5 with minecraft:air

execute if entity @s[tag=!owned] run function give:clear_gun
clear @s minecraft:command_block[minecraft:custom_data={type_25_magazine:1b}]

loot give @s loot gbg:items/gun/modern/type_25
loot give @s loot gbg:items/ammo/standard/type_25_magazine

tag @s remove owned