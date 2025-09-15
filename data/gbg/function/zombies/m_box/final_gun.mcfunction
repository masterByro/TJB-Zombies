tag @e[type=armor_stand,tag=mBoxDisplay] remove cycling
tag @e[type=armor_stand,tag=mBoxDisplay] add falling
execute as @e[type=armor_stand,tag=mBoxDisplay] at @s run tag @e[type=armor_stand,tag=mBox,limit=1,sort=nearest] add falling

schedule function gbg:zombies/m_box/falling_gun 1t