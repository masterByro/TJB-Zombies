execute if data entity @s {Inventory:[{Slot:2b,components:{"minecraft:item_name":{text:"Grenade"}}}]} run tag @s add owned

execute unless entity @s[tag=owned] if score @s Money >= GrenadeCost Prices run item replace entity @s hotbar.2 with minecraft:air
execute if score @s Money >= GrenadeCost Prices run loot give @s loot gbg:items/throwables/grenade
execute if score @s Money >= GrenadeCost Prices run loot give @s loot gbg:items/throwables/grenade
execute if score @s Money >= GrenadeCost Prices run scoreboard players operation @s Money -= GrenadeCost Prices
execute if score @s Money >= GrenadeCost Prices run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1

loot give @s loot gbg:items/throwables/grenade
loot give @s loot gbg:items/throwables/grenade
loot give @s loot gbg:items/throwables/grenade
loot give @s loot gbg:items/throwables/grenade
loot give @s loot gbg:items/throwables/grenade
tag @s remove owned
