execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"Pistol"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"Pistol"}}}]} run tag @s add owned

execute unless entity @s[tag=owned] if score @s Money >= PistolCost Prices run function give:pistol

execute store result score @s AmmoCount run clear @s minecraft:command_block[minecraft:custom_data={gbg_pistol_magazine:1b}] 0
execute if score @s AmmoCount matches ..3 run function give:pistol_magazine

tag @s remove owned

