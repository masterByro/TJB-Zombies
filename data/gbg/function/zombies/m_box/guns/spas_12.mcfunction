execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"Spas 12"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"Spas 12"}}}]} run tag @s add owned

execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"Spas 12"}}}]} run item replace entity @s hotbar.4 with minecraft:air
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"Spas 12"}}}]} run item replace entity @s hotbar.5 with minecraft:air

execute if entity @s[tag=!owned] run function give:clear_gun
clear @s minecraft:command_block[minecraft:custom_data={spas_12_shell:1b}]

loot give @s loot gbg:items/gun/modern/spas_12
loot give @s loot gbg:items/ammo/standard/spas_12_shell

tag @s remove owned