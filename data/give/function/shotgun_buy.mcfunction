execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"Shotgun"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"Shotgun"}}}]} run tag @s add owned

execute unless entity @s[tag=owned] if score @s Money >= ShotgunCost Prices run function give:shotgun

execute if entity @s[tag=owned] if score @s Money >= ShotgunAmmoCost Prices run function give:shotgun_shell
execute if entity @s[tag=owned] if score @s Money >= ShotgunAmmoCost Prices run function give:shotgun_shell
execute if entity @s[tag=owned] if score @s Money >= ShotgunAmmoCost Prices run function give:shotgun_shell
execute if entity @s[tag=owned] if score @s Money >= ShotgunAmmoCost Prices run function give:shotgun_shell
execute if entity @s[tag=owned] if score @s Money >= ShotgunAmmoCost Prices run function give:shotgun_shell
execute if entity @s[tag=owned] if score @s Money >= ShotgunAmmoCost Prices run function give:shotgun_shell

execute if entity @s[tag=owned] if score @s Money >= ShotgunAmmoCost Prices run scoreboard players operation @s Money -= ShotgunAmmoCost Prices
execute if entity @s[tag=owned] if score @s Money >= ShotgunAmmoCost Prices run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1

tag @s remove owned

