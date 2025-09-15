execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"Sniper Rifle"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"Sniper Rifle"}}}]} run tag @s add owned

execute unless entity @s[tag=owned] if score @s Money >= SniperRifleCost Prices run function give:sniper_rifle
execute if entity @s[tag=owned] if score @s Money >= SniperRifleAmmoCost Prices run function give:sniper_rifle_magazine
tag @s remove owned

