execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"War Machine"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"War Machine"}}}]} run tag @s add owned

execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"War Machine"}}}]} run item replace entity @s hotbar.4 with minecraft:air
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"War Machine"}}}]} run item replace entity @s hotbar.5 with minecraft:air

execute if entity @s[tag=!owned] run function give:clear_gun
clear @s minecraft:command_block[minecraft:custom_data={war_machine_rounds:1b}]

loot give @s loot gbg:items/gun/modern/war_machine
loot give @s loot gbg:items/ammo/standard/war_machine_rounds

tag @s remove owned