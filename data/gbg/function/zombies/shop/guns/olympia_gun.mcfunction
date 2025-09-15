clear @s minecraft:command_block[minecraft:custom_data={olympia_shell:1b}]

function give:clear_gun

scoreboard players operation @s Money -= OlympiaCost Prices
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
loot give @s loot gbg:items/gun/modern/olympia
loot give @s loot gbg:items/ammo/standard/olympia_shell

