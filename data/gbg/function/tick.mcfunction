# Player Looping Function
execute as @a at @s run function gbg:player_loop

# Turrets
# execute as @e[type=item_frame,tag=placer] at @s align xyz positioned ~0.5 ~ ~0.5 run function gbg:turret/placer
# execute as @e[type=pig,tag=turret] at @s run function gbg:turret/loop
# execute as @e[type=armor_stand,tag=destroyed,scores={gbg.turret_despawn_time=0}] at @s run function gbg:turret/despawn

# execute as @e[type=armor_stand,tag=auto,tag=!destroyed] at @s unless entity @e[type=pig,tag=turret,distance=..0.1,limit=1,sort=nearest] run function gbg:turret/auto/stages/destroyed
# execute as @e[type=armor_stand,tag=sentry,tag=!destroyed] at @s unless entity @e[type=pig,tag=turret,distance=..0.1,limit=1,sort=nearest] run function gbg:turret/sentry/stages/destroyed
# execute as @e[type=armor_stand,tag=perdition,tag=!destroyed] at @s unless entity @e[type=pig,tag=turret,distance=..0.1,limit=1,sort=nearest] run function gbg:turret/perdition/stages/destroyed
# scoreboard players remove @e[scores={gbg.behind_cover=1..}] gbg.behind_cover 1
# scoreboard players remove @e[type=armor_stand,tag=destroyed,scores={gbg.turret_despawn_time=1..}] gbg.turret_despawn_time 1

function gbg:zombies/death/death_check
#function gbg:misc/barricade
execute as @e[type=armor_stand,nbt={CustomName:"Wall"}] at @s run function gbg:zombies/barricade/barricade
execute as @a[scores={Jumps=1..}] at @s run function gbg:zombies/shop/shop_tick
execute as @e[type=zombie] at @s run function gbg:zombies/misc/conveyer_belt
#can turn off when not map making
function gbg:zombies/doors/doors_make
execute as @a[gamemode=adventure,tag=!clearing] run function gbg:zombies/misc/invent_maintain

execute as @a[scores={NewKill=1..}] run function gbg:zombies/misc/reward_points
execute as @a[scores={WolfKills=1..}] run function gbg:zombies/misc/reward_points
execute as @a[scores={Damage=1..}] run function gbg:zombies/misc/reward_on_damage

execute if score Global GamePlaying matches 1 at @a run particle minecraft:ash ~ ~5 ~ 40 1 40 0.05 300 force
execute unless entity @e[type=zombie] if score Global ZombiesLeft matches 0 if score Global GamePlaying matches 1 if entity @p[tag=ZombieRound] run function gbg:zombies/rounds/wait_round
execute unless entity @e[type=wolf] if score Global WolvesLeft matches 0 if score Global GamePlaying matches 1 if entity @p[tag=WolfRound] run function gbg:zombies/rounds/wait_round

#last zombie
scoreboard players set Zombies ZombiesLeft 0
execute if score Global ZombiesLeft matches 0 as @e[type=zombie] run scoreboard players add Zombies ZombiesLeft 1
execute if score Global ZombiesLeft matches 0 if score Zombies ZombiesLeft matches 1 if score Global GamePlaying matches 1 as @e[type=zombie,limit=1,sort=random] run function gbg:zombies/misc/last_zombie
# Zombie Spawn
scoreboard players add Global SpawnClock 1
execute if score Global SpawnClock >= Global SpawnRate if score Global ZombiesLeft matches 1.. run function gbg:zombies/zombie_stats/summon_zombie
execute if score Global SpawnClock >= Global SpawnRate if score Global WolvesLeft matches 1.. run function gbg:zombies/zombie_stats/summon_wolf

# #Spawn Location
# execute as @e[type=squid] at @s run summon armor_stand ~ ~ ~ {CustomName:"on",CustomNameVisible:1b,NoGravity:1b,Marker:1b}
# execute as @e[type=squid] run kill @s

#Barricade
execute as @e[type=glow_squid] at @s run summon armor_stand ~ ~ ~ {CustomName:"Wall",CustomNameVisible:1b, NoGravity:1b, Invulnerable:1b, Marker:1,equipment:{head:{id:leather_helmet},chest:{id:leather_chestplate},legs:{id:leather_leggings},feet:{id:leather_boots}}}
execute as @e[type=glow_squid] at @s run scoreboard players set @e[type=armor_stand,nbt={CustomName:"Wall"}] WallHealth 100
kill @e[type=glow_squid]

kill @e[type=minecraft:experience_orb]

#Zombie drops
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:gray_candle"}]}] run function gbg:zombies/drops/trigger_nuke
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:orange_candle"}]}] run function gbg:zombies/drops/trigger_carpenter
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:green_candle"}]}] run function gbg:zombies/drops/trigger_double_points
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:light_gray_candle"}]}] run function gbg:zombies/drops/trigger_instakill
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:pink_candle"}]}] run function gbg:zombies/drops/trigger_max_ammo

#Healing
execute as @a at @s run function gbg:zombies/regen/regen_check

execute as @e[type=zombie,scores={ZombieSwingTimer=1..}] run scoreboard players remove @s ZombieSwingTimer 1
execute as @e[type=zombie,scores={ZombieSwingCooldown=1..}] run scoreboard players remove @s ZombieSwingCooldown 1
execute as @e[type=zombie,scores={ZombieSwingTimer=0,ZombieSwingCooldown=0}] at @s if entity @e[type=armor_stand,scores={WallHealth=1..},nbt={CustomName:"Wall"},distance=..1] if entity @a[distance=..2.5] run function gbg:zombies/barricade/zombie_swing_start

# Zombies whose swing just finished (timer reached 0 and they’re still in cooldown)
execute as @e[type=zombie,scores={ZombieSwingTimer=0,ZombieSwingCooldown=1..},tag=Swinging] at @s if entity @e[type=armor_stand,nbt={CustomName:"Wall"},distance=..1] if entity @a[distance=..2.5] run execute at @s as @a[distance=..2.5] run damage @s 3
execute as @e[type=zombie,scores={ZombieSwingTimer=0,ZombieSwingCooldown=1..},tag=Swinging] at @s run function gbg:zombies/barricade/zombie_swing_damage

# every tick, assign wolves a target
execute as @e[type=wolf] at @s run data modify entity @s AngryAt set from entity @p UUID
execute if entity @p[tag=WolfRound] as @e[type=armor_stand,tag=WolfSpawn] at @s run particle electric_spark ~ ~1 ~ 0.2 1 0.2 0.4 3 force
