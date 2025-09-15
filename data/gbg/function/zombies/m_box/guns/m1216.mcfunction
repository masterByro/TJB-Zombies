execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"M1216"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"M1216"}}}]} run tag @s add owned

execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"M1216"}}}]} run item replace entity @s hotbar.4 with minecraft:air
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"M1216"}}}]} run item replace entity @s hotbar.5 with minecraft:air

execute if entity @s[tag=!owned] run function give:clear_gun
clear @s minecraft:command_block[minecraft:custom_data={m1216_shell:1b}]

loot give @s loot gbg:items/gun/standard/m1216
loot give @s loot gbg:items/ammo/standard/m1216_shell

tag @s remove owned