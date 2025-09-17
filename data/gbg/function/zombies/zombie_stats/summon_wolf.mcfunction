scoreboard players remove Global WolvesLeft 1
scoreboard players set Global SpawnClock 0
# Summon zombie directly at a random armor stand named "on"

execute as @a[gamemode=adventure,sort=random,limit=1] at @s run execute at @e[type=armor_stand,tag=WolfSpawn,sort=nearest,limit=1] run summon minecraft:wolf ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,Tags:["new"],Health:20.0f,Team:"RedTeam",Attributes:[{Name:"minecraft:movement_speed",Base:0.9},{Name:"minecraft:attack_damage",Base:6.0},{Name:"minecraft:follow_range",Base:1024.0}]}
execute as @e[type=wolf,tag=new] run effect give @s absorption 1 10 true
execute as @e[type=wolf,tag=new] run attribute @s minecraft:knockback_resistance base set 0.9
execute as @e[type=wolf,tag=new] run attribute @s minecraft:safe_fall_distance base set 1024
execute as @e[type=wolf,tag=new] run function gbg:zombies/zombie_stats/wave_wolf_health
execute at @e[type=wolf,tag=new] run summon minecraft:lightning_bolt ~ ~ ~ {Cause:1,Effects:[],UUID:[I;0,0,0,0], Life:1}
tag @e[type=wolf,tag=new] remove new
effect give @a blindness 2 1 true
schedule function gbg:zombies/misc/remove_invulnerable 1s

#summon armor_stand ~ ~ ~ {CustomName:"WolfSpawn",CustomNameVisible:1b,NoGravity:1b,Marker:1b,Tags:[WolfSpawn]}
