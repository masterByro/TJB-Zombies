execute if data entity @s {Inventory:[{Slot:8b,components:{"minecraft:item_name":{text:"Land Mine"}}}]} run tag @s add owned

execute unless entity @s[tag=owned] if score @s Money >= LandMineCost Prices run item replace entity @s hotbar.8 with minecraft:air
execute if score @s Money >= LandMineCost Prices run loot give @s loot gbg:items/equipment/land_mine
execute if score @s Money >= LandMineCost Prices run loot give @s loot gbg:items/equipment/land_mine
execute if score @s Money >= LandMineCost Prices run scoreboard players operation @s Money -= LandMineCost Prices
execute if score @s Money >= LandMineCost Prices run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1

tag @s remove owned