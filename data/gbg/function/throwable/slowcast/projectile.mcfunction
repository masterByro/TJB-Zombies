## Rocket Raycast
particle minecraft:smoke ^ ^ ^ 0.06 0.06 0.06 0.0 1 force
scoreboard players add @s gbg.slowcast.range 1
scoreboard players remove @s gbg.temp 1

# When Hit
#block
execute unless block ^ ^ ^0.2 #gbg:slowcast_generic run tag @s add slowcast_hit_block
execute if score @s gbg.throwable.explode_on_impact matches 0 if entity @s[tag=slowcast_hit_block] run return fail
execute if score @s gbg.throwable.explode_on_impact matches 1 if entity @s[tag=slowcast_hit_block] run function gbg:throwable/sort_explode
#entity
execute if score @s gbg.slowcast.range matches 10.. if score @s gbg.throwable.explode_on_impact matches 1 positioned ~-0.15 ~-0.15 ~-0.15 as @e[limit=1,type=!#gbg:not_mob,tag=!gbg.gun_shooter,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run function gbg:throwable/sort_explode

# Calling function again and moving forward
tp ~ ~ ~
rotate @s ~ ~
execute if score @s gbg.temp matches 1.. positioned ^ ^ ^0.2 rotated ~ ~0.175 run function gbg:throwable/slowcast/projectile

