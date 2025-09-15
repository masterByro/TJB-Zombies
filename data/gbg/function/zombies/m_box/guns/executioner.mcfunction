execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"Executioner"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"Executioner"}}}]} run tag @s add owned

execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"Executioner"}}}]} run item replace entity @s hotbar.4 with minecraft:air
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"Executioner"}}}]} run item replace entity @s hotbar.5 with minecraft:air

execute if entity @s[tag=!owned] run function give:clear_gun
clear @s minecraft:command_block[minecraft:custom_data={executioner_bullets:1b}]

loot give @s loot gbg:items/gun/modern/executioner
loot give @s loot gbg:items/ammo/standard/executioner_bullets

tag @s remove owned