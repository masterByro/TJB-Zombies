# Increasing the range counter
scoreboard players add @s gbg.slowcast.range 1

## Calling the projectile looping function
scoreboard players operation @s gbg.temp = @s gbg.slowcast.projectile_speed
#Rocket-def=10
execute if score @s gbg.slowcast.projectile_type matches 100 positioned ^ ^ ^0.2 run function gbg:gun/slowcast/projectile/rocket
#Grenade=def=7
execute if score @s gbg.slowcast.projectile_type matches 101 positioned ^ ^ ^0.2 run function gbg:gun/slowcast/projectile/grenade
#Fireball
execute if score @s gbg.slowcast.projectile_type matches 102 positioned ^ ^ ^0.2 run function gbg:gun/slowcast/projectile/fireball
#Physical Bullet
execute if score @s gbg.slowcast.projectile_type matches 103 positioned ^ ^ ^0.2 run function gbg:gun/slowcast/projectile/physical_bullet
#Pink Ray (slow)
execute if score @s gbg.slowcast.projectile_type matches 104 positioned ^ ^ ^0.2 run function gbg:gun/slowcast/projectile/pink_ray
#Custom Slowcast
execute if score @s gbg.slowcast.projectile_type matches 200.. positioned ^ ^ ^0.2 run function #gbg:custom_slowcast

# Reseting Raycast
execute if score @s gbg.slowcast.range >= @s gbg.slowcast.max_range run kill @s
