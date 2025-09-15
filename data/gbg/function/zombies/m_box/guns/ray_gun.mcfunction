execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"Ray Gun"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"Ray Gun"}}}]} run tag @s add owned

execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"Ray Gun"}}}]} run item replace entity @s hotbar.4 with minecraft:air
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"Ray Gun"}}}]} run item replace entity @s hotbar.5 with minecraft:air

execute if entity @s[tag=!owned] run function give:clear_gun
clear @s minecraft:command_block[minecraft:custom_data={ray_gun_battery:1b}]

loot give @s loot gbg:items/gun/ray/ray_gun
loot give @s loot gbg:items/ammo/laser/ray_gun_battery

tag @s remove owned