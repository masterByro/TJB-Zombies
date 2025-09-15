# if block
execute if score @s gbg.hit_block matches 1 as @e[limit=1,type=player,dx=0,tag=!not_a_target] run scoreboard players add @s gbg.behind_cover 40
execute if score @s gbg.hit_block matches 1 as @e[limit=1,type=player,dx=0,tag=!not_a_target,scores={gbg.behind_cover=100..}] run scoreboard players add @s gbg.behind_cover 120
# if no block
execute if score @s gbg.hit_block matches 0 as @e[limit=1,type=player,dx=0,tag=!not_a_target] run scoreboard players remove @s[scores={gbg.behind_cover=20..}] gbg.behind_cover 20

execute if score @s gbg.hit_block matches 0 run playsound gbg:auto_shot player @a ~ ~ ~ 4 1
execute if score @s gbg.hit_block matches 0 run execute positioned as @s facing entity @e[scores={gbg.behind_cover=..100},distance=..20,limit=1,sort=nearest,type=player,tag=!not_a_target] eyes run tp @e[type=armor_stand,distance=..0.1,tag=auto,limit=1] ~ ~ ~ ~ ~
execute if score @s gbg.hit_block matches 0 run damage @e[limit=1,type=player,dx=0,tag=!not_a_target] 3 gbg:bullet_turret by @s

scoreboard players set @s gbg.raycast_distance 0
execute if score @s gbg.hit_block matches 0 positioned as @s anchored eyes run function gbg:turret/auto/players/bullet_raycast
scoreboard players set @s gbg.raycast_distance 1


