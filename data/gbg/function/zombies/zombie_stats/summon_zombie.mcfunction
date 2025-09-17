scoreboard players remove Global ZombiesLeft 1
scoreboard players set Global SpawnClock 0
# Summon zombie directly at a random armor stand named "on"
execute at @e[type=armor_stand,name=on,sort=random,limit=1] run summon zombie ~ ~ ~ {PersistenceRequired:1b,CanBreakDoors:1b,Tags:["new"],Team:"RedTeam"}
execute as @e[type=zombie,tag=new,limit=1,sort=nearest] run scoreboard players set @s ZombieSwingCooldown 0
execute as @e[type=zombie,tag=new,limit=1,sort=nearest] run scoreboard players set @s ZombieSwingTimer 0
# Apply attributes to the *newly spawned* zombie (nearest to the armor stand where it spawned)
execute as @e[type=zombie,tag=new] run attribute @s minecraft:follow_range base set 1024
execute as @e[type=zombie,tag=new] run attribute @s minecraft:jump_strength base set 0.01
execute as @e[type=zombie,tag=new] run attribute @s minecraft:knockback_resistance base set 0.9
execute as @e[type=zombie,tag=new] run attribute @s minecraft:safe_fall_distance base set 1024
execute as @e[type=zombie,tag=new] run attribute @s minecraft:water_movement_efficiency base set 1024
execute as @e[type=zombie,tag=new] run function gbg:zombies/zombie_stats/wave_zombie_health
execute if entity @p[tag=canDrop] run tag @e[type=zombie,tag=new] add canDrop
tag @e[type=zombie,tag=new] remove new