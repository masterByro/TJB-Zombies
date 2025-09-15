clear @s minecraft:command_block[minecraft:custom_data={thompson_magazine:1b}]
scoreboard players operation @s Money -= ThompsonAmmoCost Prices
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1

loot give @s loot gbg:items/ammo/standard/thompson_magazine
