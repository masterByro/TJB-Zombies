# Doing math to reduce damage
execute if entity @s[distance=1.6..] run scoreboard players operation gbg.damage gbg.temp = gbg.headshot_damage gbg.temp
execute if entity @s[distance=1.6..] run tag @p[tag=gbg.gun_shooter] add headshot

execute if entity @p[tag=instakill] run scoreboard players operation gbg.damage gbg.temp = const1000 Const
function gbg:misc/calculate_armored_damage
execute unless entity @s[team=RedTeam] run scoreboard players add @p[tag=gbg.gun_shooter] Money 10
execute unless entity @s[team=RedTeam] if entity @p[tag=gbg.gun_shooter,tag=DoublePoints] run scoreboard players add @p Money 10

# Running correct damage function depending on gun damage type
execute if score gbg.damage_type gbg.temp matches 1 at @s run function gbg:gun/shot/bullet_standard with storage gbg:macro input
execute if score gbg.damage_type gbg.temp matches 2 at @s run function gbg:gun/shot/bullet_light with storage gbg:macro input
execute if score gbg.damage_type gbg.temp matches 3 at @s run function gbg:gun/shot/bullet_heavy with storage gbg:macro input
execute if score gbg.damage_type gbg.temp matches 4 at @s run function gbg:gun/shot/laser_standard with storage gbg:macro input
execute if score gbg.damage_type gbg.temp matches 5 at @s run function gbg:gun/shot/laser_strong with storage gbg:macro input
execute if score gbg.damage_type gbg.temp matches 6 at @s run function gbg:gun/shot/fire with storage gbg:macro input
execute if score gbg.damage_type gbg.temp matches 7 at @s run function gbg:gun/shot/ray with storage gbg:macro input
execute if score gbg.damage_type gbg.temp matches 8 at @s run function gbg:gun/shot/explosion with storage gbg:macro input
execute if score gbg.damage_type gbg.temp matches 9 at @s run function gbg:gun/shot/safe_explosion with storage gbg:macro input

# Reseting Raycast
execute if score gbg.projectile_type gbg.temp matches 3 run return 1
execute if score gbg.projectile_type gbg.temp matches 20 run return 1
scoreboard players set @p[tag=gbg.gun_shooter] gbg.raycast_distance 1000000

