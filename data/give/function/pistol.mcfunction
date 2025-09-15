clear @s minecraft:command_block[minecraft:custom_data={gbg_pistol_magazine:1b}]

function give:clear_gun

scoreboard players operation @s Money -= PistolCost Prices
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
loot give @s loot gbg:items/gun/standard/pistol
loot give @s loot gbg:items/ammo/standard/pistol_magazine
loot give @s loot gbg:items/ammo/standard/pistol_magazine
loot give @s loot gbg:items/ammo/standard/pistol_magazine
loot give @s loot gbg:items/ammo/standard/pistol_magazine
