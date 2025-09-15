# Caling the step function and executing as the projectile
execute as @e[type=marker,tag=gbg.slowcast,scores={gbg.slowcast.range=0..}] at @s run function gbg:gun/slowcast/sort
# Running this function again
execute if entity @n[type=marker,tag=gbg.slowcast] run schedule function gbg:gun/slowcast/temp_tick 1t


