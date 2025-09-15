## Doing math
#getting values
scoreboard players operation @s gbg.temp = @s gbg.cooldown
scoreboard players operation @s gbg.temp2 = @s gbg.reloading_time
#manipulating values
scoreboard players operation @s gbg.temp *= 50 number
scoreboard players operation @s gbg.temp /= @s gbg.temp2

## Displaying the Actionbar
execute if score @s gbg.temp matches 51 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"||||||||||||||||||||||||||||||||||||||||||||||||||","color":"red"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 50 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"|||||||||||||||||||||||||||||||||||||||||||||||||","color":"red"},{"text":"|","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 49 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"||||||||||||||||||||||||||||||||||||||||||||||||","color":"red"},{"text":"||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 48 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"|||||||||||||||||||||||||||||||||||||||||||||||","color":"red"},{"text":"|||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 47 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"||||||||||||||||||||||||||||||||||||||||||||||","color":"red"},{"text":"||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 46 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"|||||||||||||||||||||||||||||||||||||||||||||","color":"red"},{"text":"|||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 45 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"||||||||||||||||||||||||||||||||||||||||||||","color":"red"},{"text":"||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 44 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"|||||||||||||||||||||||||||||||||||||||||||","color":"red"},{"text":"|||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 43 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"||||||||||||||||||||||||||||||||||||||||||","color":"red"},{"text":"||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 42 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"|||||||||||||||||||||||||||||||||||||||||","color":"red"},{"text":"|||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 41 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"||||||||||||||||||||||||||||||||||||||||","color":"red"},{"text":"||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 40 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"|||||||||||||||||||||||||||||||||||||||","color":"red"},{"text":"|||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 39 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"||||||||||||||||||||||||||||||||||||||","color":"red"},{"text":"||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 38 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"|||||||||||||||||||||||||||||||||||||","color":"red"},{"text":"|||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 37 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"||||||||||||||||||||||||||||||||||||","color":"red"},{"text":"||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 36 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"|||||||||||||||||||||||||||||||||||","color":"red"},{"text":"|||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 35 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"||||||||||||||||||||||||||||||||||","color":"red"},{"text":"||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 34 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"|||||||||||||||||||||||||||||||||","color":"red"},{"text":"|||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 33 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"||||||||||||||||||||||||||||||||","color":"red"},{"text":"||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 32 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"|||||||||||||||||||||||||||||||","color":"red"},{"text":"|||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 31 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"||||||||||||||||||||||||||||||","color":"red"},{"text":"||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 30 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"|||||||||||||||||||||||||||||","color":"red"},{"text":"|||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 29 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"||||||||||||||||||||||||||||","color":"red"},{"text":"||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 28 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"|||||||||||||||||||||||||||","color":"red"},{"text":"|||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 27 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"||||||||||||||||||||||||||","color":"red"},{"text":"||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 26 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"|||||||||||||||||||||||||","color":"red"},{"text":"|||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 25 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"||||||||||||||||||||||||","color":"red"},{"text":"||||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 24 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"|||||||||||||||||||||||","color":"red"},{"text":"|||||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 23 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"||||||||||||||||||||||","color":"red"},{"text":"||||||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 22 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"|||||||||||||||||||||","color":"red"},{"text":"|||||||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 21 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"||||||||||||||||||||","color":"red"},{"text":"||||||||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 20 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"|||||||||||||||||||","color":"red"},{"text":"|||||||||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 19 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"||||||||||||||||||","color":"red"},{"text":"||||||||||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 18 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"|||||||||||||||||","color":"red"},{"text":"|||||||||||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 17 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"||||||||||||||||","color":"red"},{"text":"||||||||||||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 16 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"|||||||||||||||","color":"red"},{"text":"|||||||||||||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 15 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"||||||||||||||","color":"red"},{"text":"||||||||||||||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 14 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"|||||||||||||","color":"red"},{"text":"|||||||||||||||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 13 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"||||||||||||","color":"red"},{"text":"||||||||||||||||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 12 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"|||||||||||","color":"red"},{"text":"|||||||||||||||||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 11 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"||||||||||","color":"red"},{"text":"||||||||||||||||||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 10 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"|||||||||","color":"red"},{"text":"|||||||||||||||||||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 9 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"||||||||","color":"red"},{"text":"||||||||||||||||||||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 8 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"|||||||","color":"red"},{"text":"|||||||||||||||||||||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 7 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"||||||","color":"red"},{"text":"||||||||||||||||||||||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 6 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"|||||","color":"red"},{"text":"|||||||||||||||||||||||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 5 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"||||","color":"red"},{"text":"||||||||||||||||||||||||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 4 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"|||","color":"red"},{"text":"|||||||||||||||||||||||||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 3 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"||","color":"red"},{"text":"||||||||||||||||||||||||||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 2 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"|","color":"red"},{"text":"|||||||||||||||||||||||||||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]
execute if score @s gbg.temp matches 1 run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"||||||||||||||||||||||||||||||||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"gray"}]

#must be at end
scoreboard players reset @s[scores={gbg.cooldown=..1,gbg.reloading_time=1..}] gbg.reloading_time

