execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"Assault Rifle"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"Assault Rifle"}}}]} run tag @s add owned

execute unless entity @s[tag=owned] if score @s Money >= ARCost Prices run function give:assault_rifle
execute if entity @s[tag=owned] if score @s Money >= ARAmmoCost Prices run function give:assault_rifle_magazine

tag @s remove owned

