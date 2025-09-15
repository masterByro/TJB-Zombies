# AS AT turret
particle minecraft:flame ^ ^ ^ 0 0 0 0 1
scoreboard players operation @s gbg.temp = @s gbg.raycast_distance
execute store result score @s gbg.temp2 run scoreboard players operation @s gbg.raycast_distance %= 5 number
execute if score @s gbg.temp2 matches 0 run particle minecraft:lava ^ ^ ^ 0 0 0 0 1
scoreboard players operation @s gbg.raycast_distance = @s gbg.temp
scoreboard players add @s gbg.raycast_distance 1

# Stopping Raycast if the mob is hit, or the projectile gets too far away 
execute positioned ~-0.5 ~ ~-0.5 if entity @e[limit=1,type=player,dx=0] run return 0
execute if entity @s[distance=7..] run return 0

# Calling raycast again
execute positioned ^ ^ ^0.1 run function gbg:turret/perdition/players/bullet_raycast

