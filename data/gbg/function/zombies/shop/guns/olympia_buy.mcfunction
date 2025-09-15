execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"Olympia"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"Olympia"}}}]} run tag @s add owned

execute unless entity @s[tag=owned] if score @s Money >= OlympiaCost Prices run function gbg:zombies/shop/guns/olympia_gun

execute store result score @s AmmoCount run clear @s minecraft:command_block[minecraft:custom_data={olympia_shell:1b}] 0
execute if score @s AmmoCount matches ..37 run function gbg:zombies/shop/guns/olympia_ammo

tag @s remove owned

