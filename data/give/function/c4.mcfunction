execute if data entity @s {Inventory:[{Slot:7b,components:{"minecraft:item_name":{text:"C4"}}}]} run tag @s add owned

execute unless entity @s[tag=owned] if score @s Money >= C4Cost Prices run item replace entity @s hotbar.7 with minecraft:air
execute if score @s Money >= C4Cost Prices run loot give @s loot gbg:items/equipment/c4
execute if score @s Money >= C4Cost Prices run loot give @s loot gbg:items/equipment/c4
execute if score @s Money >= C4Cost Prices run loot give @s loot gbg:items/equipment/c4
execute if score @s Money >= C4Cost Prices run loot give @s loot gbg:items/equipment/c4
execute if score @s Money >= C4Cost Prices run scoreboard players operation @s Money -= C4Cost Prices
execute if score @s Money >= C4Cost Prices run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1

tag @s remove owned
