# Figuring out the damage type of the gun
execute store result storage gbg:macro input.source int 1 run scoreboard players get @e[type=marker,tag=gbg.slowcast,sort=nearest,limit=1] gbg.id
data modify storage gbg:macro input.gun_name set from entity @e[type=marker,tag=gbg.slowcast,sort=nearest,limit=1] CustomName

# Doing math to reduce damage
execute if entity @s[distance=..1.6] run scoreboard players operation gbg.damage gbg.temp = @e[type=marker,tag=gbg.slowcast,sort=nearest,limit=1] gbg.slowcast.damage
execute if entity @s[distance=1.6..] run scoreboard players operation gbg.damage gbg.temp = @e[type=marker,tag=gbg.slowcast,sort=nearest,limit=1] gbg.slowcast.headshot_damage
execute if entity @p[tag=instakill] run scoreboard players operation gbg.damage gbg.temp = const1000 Const

function gbg:misc/calculate_armored_damage

# Running correct damage function depending on gun damage type
scoreboard players operation marker_damage_type gbg.temp = @e[type=marker,tag=gbg.slowcast,sort=nearest,limit=1] gbg.slowcast.damage_type
execute if score marker_damage_type gbg.temp matches 1 at @s run function gbg:gun/shot/bullet_standard with storage gbg:macro input
execute if score marker_damage_type gbg.temp matches 2 at @s run function gbg:gun/shot/bullet_light with storage gbg:macro input
execute if score marker_damage_type gbg.temp matches 3 at @s run function gbg:gun/shot/bullet_heavy with storage gbg:macro input
execute if score marker_damage_type gbg.temp matches 4 at @s run function gbg:gun/shot/laser_standard with storage gbg:macro input
execute if score marker_damage_type gbg.temp matches 5 at @s run function gbg:gun/shot/laser_strong with storage gbg:macro input
execute if score marker_damage_type gbg.temp matches 6 at @s run function gbg:gun/shot/fire with storage gbg:macro input
execute if score marker_damage_type gbg.temp matches 7 at @s run function gbg:gun/shot/ray with storage gbg:macro input
execute if score marker_damage_type gbg.temp matches 8 at @s run function gbg:gun/shot/explosion with storage gbg:macro input
execute if score marker_damage_type gbg.temp matches 9 at @s run function gbg:gun/shot/safe_explosion with storage gbg:macro input

# Stopping Slowcast
kill @e[type=marker,tag=gbg.slowcast,sort=nearest,limit=1]
