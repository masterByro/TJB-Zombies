execute if data entity @s {Inventory:[{Slot:0b,components:{"minecraft:item_name":{text:"Pipe Bomb"}}}]} run tag @s add owned

execute unless entity @s[tag=owned] if score @s Money >= PipeBombCost Prices run item replace entity @s hotbar.0 with minecraft:air
execute if score @s Money >= PipeBombCost Prices run loot give @s loot gbg:items/throwables/pipe_bomb
execute if score @s Money >= PipeBombCost Prices run loot give @s loot gbg:items/throwables/pipe_bomb
execute if score @s Money >= PipeBombCost Prices run scoreboard players operation @s Money -= PipeBombCost Prices
execute if score @s Money >= PipeBombCost Prices run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1

tag @s remove owned

