# Giving the marker scores and attributes
scoreboard players operation @s gbg.id = @p[tag=gbg.gun_shooter] gbg.id
scoreboard players set @s gbg.slowcast.range 0
scoreboard players operation @s gbg.slowcast.max_range = gbg.range gbg.temp
scoreboard players operation @s gbg.slowcast.projectile_type = gbg.projectile_type gbg.temp
scoreboard players operation @s gbg.slowcast.damage = gbg.damage gbg.temp
scoreboard players operation @s gbg.slowcast.headshot_damage = gbg.headshot_damage gbg.temp
scoreboard players operation @s gbg.slowcast.damage_type = gbg.damage_type gbg.temp
scoreboard players operation @s gbg.slowcast.projectile_speed = gbg.projectile_speed gbg.temp

# Putting at player's head and facing the right way
execute at @p[tag=gbg.gun_shooter] run tp @s ~ ~1.55 ~ ~ ~

# Removing tags
tag @p[tag=gbg.gun_shooter] remove gbg.gun_shooter
tag @s remove gbg.spawning_in

# Running the looping function as the projectile
function gbg:gun/slowcast/temp_tick
