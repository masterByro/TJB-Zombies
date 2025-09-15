function give:clear_gun
loot give @s loot gbg:items/gun/standard/dsr_50
scoreboard players operation @s Money -= SniperRifleCost Prices
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
