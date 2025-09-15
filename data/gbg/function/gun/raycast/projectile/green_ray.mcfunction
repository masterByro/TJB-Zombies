## Green Raycast
particle minecraft:totem_of_undying ^ ^ ^ 0 0 0 0 1
scoreboard players add @s gbg.raycast_distance 1

# When Hit
#block
execute unless block ^ ^ ^ #gbg:raycast_ray run function gbg:gun/raycast/hit_block
execute unless block ^ ^ ^ #gbg:raycast_ray run return fail
#entity
execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[limit=1,type=!#gbg:not_mob,tag=!gbg.gun_shooter,tag=!gbg.gun_hit,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run function gbg:gun/raycast/hit_entity
execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[limit=1,type=!#gbg:not_mob,tag=!gbg.gun_shooter,tag=!gbg.gun_hit,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run return fail

# Calling Raycast Again
execute unless score @s gbg.raycast_distance >= gbg.range gbg.temp positioned ^ ^ ^0.2 rotated ~ ~ run function gbg:gun/raycast/projectile/green_ray

# Reseting Raycast
execute if score @s gbg.raycast_distance >= gbg.range gbg.temp run function gbg:gun/raycast/reset
