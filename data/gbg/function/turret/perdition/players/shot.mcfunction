# if block
execute if score @s gbg.hit_block matches 1 as @e[limit=1,type=player,dx=0] run scoreboard players add @s gbg.behind_cover 40
execute if score @s gbg.hit_block matches 1 as @e[limit=1,type=player,dx=0,scores={gbg.behind_cover=100..}] run scoreboard players add @s gbg.behind_cover 120
# if no block
#if still underground
execute if score @s gbg.ground_time matches 0 run scoreboard players set @s gbg.ground_time 140
execute if entity @s[tag=underground] run return fail

#if aboveground
execute if score @s gbg.hit_block matches 0 as @e[limit=1,type=player,dx=0] run scoreboard players remove @s[scores={gbg.behind_cover=20..}] gbg.behind_cover 20

execute if score @s gbg.hit_block matches 0 run playsound gbg:perdition_shot player @a ~ ~ ~ 4 1
execute if score @s gbg.hit_block matches 0 run execute positioned as @s facing entity @e[scores={gbg.behind_cover=..100},distance=..20,limit=1,sort=nearest,type=player] eyes run tp @e[type=armor_stand,distance=..0.1,tag=perdition,limit=1] ~ ~ ~ ~ ~
execute if score @s gbg.hit_block matches 0 run damage @e[limit=1,type=player,dx=0] 2 gbg:flame_turret by @s
execute if score @s gbg.hit_block matches 0 run execute if entity @e[limit=1,type=player,dx=0] run summon small_fireball ~ ~2.2 ~ {Motion:[0.0,-3.0,0.0],Item:{id:"minecraft:air",count:1},CustomName:{"text":"Perdition Turret","italic":false}}
execute if score @s gbg.hit_block matches 0 run scoreboard players set @s gbg.ground_time 140

scoreboard players set @s gbg.raycast_distance 0
execute if score @s gbg.hit_block matches 0 positioned as @s anchored eyes run function gbg:turret/perdition/players/bullet_raycast
scoreboard players set @s gbg.raycast_distance 1


