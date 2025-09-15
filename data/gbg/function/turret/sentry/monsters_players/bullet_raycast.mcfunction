# AS AT turret
particle minecraft:ash ^ ^ ^ 0 0 0 0 2

# Stopping Raycast if the mob is hit, or the projectile gets too far away 
execute positioned ~-0.5 ~ ~-0.5 if entity @e[limit=1,type=#gbg:monster_player,dx=0] run return 0
execute if entity @s[distance=18..] run return 0

# Calling raycast again
execute positioned ^ ^ ^0.1 run function gbg:turret/sentry/monsters_players/bullet_raycast

