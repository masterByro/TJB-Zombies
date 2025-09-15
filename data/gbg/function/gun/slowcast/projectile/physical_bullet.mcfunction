## Rocket Raycast
particle minecraft:ash ^ ^ ^ 0 0 0 0 2 force
scoreboard players add @s gbg.slowcast.range 1
scoreboard players remove @s gbg.temp 1

# Breaking Glass
# execute if block ~ ~ ~ #gbg:glass run playsound block.glass.break block @a ~ ~ ~ 1 0.2
# execute if block ~ ~ ~ #gbg:glass run particle block{block_state:"minecraft:glass"} ~ ~ ~ 0 0 0 0 20 normal
# execute if block ~ ~ ~ #gbg:glass run fill ~ ~ ~ ~ ~ ~ air replace #gbg:glass

# When Hit
#block
execute unless block ^ ^ ^0.2 #gbg:raycast_bullet run tag @s add slowcast_hit_block
execute if entity @s[tag=slowcast_hit_block] run function gbg:gun/slowcast/hit_block
#entity
execute if score @s gbg.slowcast.range matches 10.. positioned ~-0.15 ~-0.15 ~-0.15 as @e[limit=1,type=!#gbg:not_mob,tag=!gbg.gun_shooter,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run function gbg:gun/slowcast/hit_entity

# Calling function again and moving forward
tp ~ ~ ~
execute if score @s gbg.temp matches 1.. unless score @s gbg.slowcast.range >= @s gbg.slowcast.max_range positioned ^ ^ ^0.2 run function gbg:gun/slowcast/projectile/physical_bullet

