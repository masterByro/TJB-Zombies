## Blaze Fire Raycast
particle minecraft:small_flame ^ ^ ^ 0 0 0 0 1
scoreboard players add @s gbg.raycast_distance 1

# Placing Fire
execute if score @s gbg.raycast_distance matches 20.. if block ~ ~ ~ #gbg:raycast_generic run setblock ~ ~ ~ fire

# When Hit
#block
execute unless block ^ ^ ^ #gbg:raycast_generic run function gbg:gun/raycast/hit_block
execute unless block ^ ^ ^ #gbg:raycast_generic run return fail
#entity
execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[limit=1,type=!#gbg:not_mob,tag=!gbg.gun_shooter,tag=!gbg.gun_hit,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run function gbg:gun/raycast/hit_entity
execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[limit=1,type=!#gbg:not_mob,tag=!gbg.gun_shooter,tag=!gbg.gun_hit,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run return fail

# Calling Raycast Again
execute unless score @s gbg.raycast_distance >= gbg.range gbg.temp positioned ^ ^ ^0.2 rotated ~ ~0.15 run function gbg:gun/raycast/projectile/blaze_fire

# Reseting Raycast
execute if score @s gbg.raycast_distance >= gbg.range gbg.temp run function gbg:gun/raycast/reset
