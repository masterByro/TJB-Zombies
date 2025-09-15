clear @s minecraft:command_block[minecraft:custom_data={thompson_magazine:1b}]

function give:clear_gun

scoreboard players operation @s Money -= ThompsonCost Prices
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
loot give @s loot gbg:items/gun/modern/thompson_submachine_gun
loot give @s loot gbg:items/ammo/standard/thompson_magazine

