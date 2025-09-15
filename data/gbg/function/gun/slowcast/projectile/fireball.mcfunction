## Rocket Raycast
particle minecraft:lava ^ ^ ^ 0.02 0.02 0.02 0 1 force
particle minecraft:small_flame ^ ^ ^ 0.1 0.1 0.1 0.01 1 normal
scoreboard players add @s gbg.slowcast.range 1
scoreboard players remove @s gbg.temp 1

# When Hit
#block
execute unless block ^ ^ ^0.2 #gbg:slowcast_generic run tag @s add slowcast_hit_block
execute if entity @s[tag=slowcast_hit_block] run function gbg:gun/slowcast/hit_block
#entity
execute if score @s gbg.slowcast.range matches 10.. positioned ~-0.15 ~-0.15 ~-0.15 as @e[limit=1,type=!#gbg:not_mob,tag=!gbg.gun_shooter,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run function gbg:gun/slowcast/hit_entity

# Calling function again and moving forward
tp ~ ~ ~
rotate @s ~ ~
execute if score @s gbg.temp matches 1.. unless score @s gbg.slowcast.range >= @s gbg.slowcast.max_range positioned ^ ^ ^0.2 rotated ~ ~0.35 run function gbg:gun/slowcast/projectile/fireball

