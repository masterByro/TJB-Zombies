# Increasing ammo and removing item
scoreboard players add gbg.current_ammo gbg.temp 1
execute unless entity @s[gamemode=creative] run function gbg:reload/take_ammo with storage gbg:ammo

# Stopping loop if gun is at max ammo or if player ran out of ammo
scoreboard players reset has_ammo gbg.temp
execute store result score has_ammo gbg.temp run function gbg:reload/has_ammo with storage gbg:ammo
execute if score has_ammo gbg.temp matches 1 run return 0
execute if score gbg.current_ammo gbg.temp = gbg.max_ammo gbg.temp run return 0

# Running again if no issues
function gbg:reload/bullet
