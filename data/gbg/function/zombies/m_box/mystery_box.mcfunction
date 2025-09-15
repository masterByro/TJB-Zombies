
scoreboard players remove @s Money 950
tag @s add mBoxUser
execute at @s run tag @e[type=armor_stand,tag=mBox,limit=1,sort=nearest] add busy
execute at @s run execute at @e[type=armor_stand,tag=mBox,limit=1,sort=nearest] run setblock ~ ~2 ~ light
execute at @s run execute at @e[type=armor_stand,tag=mBox,limit=1,sort=nearest] run fill ~1 ~1 ~1 ~-1 ~ ~-1 iron_trapdoor[facing=north,open=true,waterlogged=false] replace iron_trapdoor
execute at @s run execute at @e[type=armor_stand,tag=mBox,limit=1,sort=nearest] run summon armor_stand ~1 ~0.5 ~ {Pose:{RightArm:[270f,90f,0f]},Tags:["mBoxDisplay","cycling"],NoGravity:1b,Invisible:1b,ShowArms:1b}
execute at @s run playsound music_disc.cat master @a ~ ~ ~ 1 1
execute as @e[type=armor_stand,tag=mBoxDisplay, tag=cycling] run function gbg:zombies/m_box/next_gun
schedule function gbg:zombies/m_box/final_gun 5s
schedule function gbg:zombies/m_box/finish_gun 10s
schedule function gbg:zombies/m_box/m_box_ready 12s

#summon armor_stand ~ ~ ~ {Tags:["mBox"],Marker:1b,NoGravity:1b}