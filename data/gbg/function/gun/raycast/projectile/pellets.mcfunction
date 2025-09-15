## Pellets Raycast
particle minecraft:ash ^ ^ ^ 0.15 0.1 0.15 0 2
scoreboard players add @s gbg.raycast_distance 1

# Breaking Glass
execute if block ~ ~ ~ #gbg:glass run playsound block.glass.break block @a ~ ~ ~ 1 0.2
execute if block ~ ~ ~ #gbg:glass run particle block{block_state:"minecraft:glass"} ~ ~ ~ 0 0 0 0 20 normal
execute if block ~ ~ ~ #gbg:glass_pane run fill ~ ~ ~ ~ ~ ~ water replace #gbg:glass_pane[waterlogged=true]
execute if block ~ ~ ~ #gbg:glass run fill ~ ~ ~ ~ ~ ~ air replace #gbg:glass

## When Hit
#block
execute unless block ^ ^ ^ #gbg:raycast_bullet run function gbg:gun/raycast/hit_block
execute unless block ^ ^ ^ #gbg:raycast_bullet run return fail
#entity
execute positioned ~-0.495 ~-0.495 ~-0.495 as @e[limit=1,type=!#gbg:not_mob,tag=!gbg.gun_shooter,tag=!gbg.gun_hit,dx=0] positioned ~-0.01 ~-0.01 ~-0.01 if entity @s[dx=0] run function gbg:gun/raycast/hit_entity
execute positioned ~-0.495 ~-0.495 ~-0.495 as @e[limit=1,type=!#gbg:not_mob,tag=!gbg.gun_shooter,tag=!gbg.gun_hit,dx=0] positioned ~-0.01 ~-0.01 ~-0.01 if entity @s[dx=0] run function gbg:gun/raycast/projectile_pierce

# Calling Raycast Again
execute unless score @s gbg.raycast_distance >= gbg.range gbg.temp positioned ^ ^ ^0.2 rotated ~ ~ run function gbg:gun/raycast/projectile/pellets

# Reseting Raycast
execute if score @s gbg.raycast_distance >= gbg.range gbg.temp run function gbg:gun/raycast/reset

