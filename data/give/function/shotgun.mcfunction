function give:clear_gun
loot give @s loot gbg:items/gun/standard/shotgun
scoreboard players operation @s Money -= ShotgunCost Prices
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1

