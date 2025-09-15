# Caling the step function and executing as the projectile
execute as @e[type=item_display,tag=gbg.slowcast,scores={gbg.slowcast.range=0..}] run scoreboard players set @s gbg.temp 10
execute as @e[type=item_display,tag=gbg.slowcast,scores={gbg.slowcast.range=0..}] at @s positioned ^ ^ ^0.2 run function gbg:throwable/slowcast/projectile
# Running this function again
execute if entity @n[type=item_display,tag=gbg.slowcast] run schedule function gbg:throwable/slowcast/temp_tick 1t
