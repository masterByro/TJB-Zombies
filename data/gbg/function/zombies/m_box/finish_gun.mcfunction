execute at @e[type=armor_stand, tag=falling,tag=mBoxDisplay] run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 iron_trapdoor[facing=north,open=false,waterlogged=false] replace iron_trapdoor
execute at @e[type=armor_stand,tag=mBox] run setblock ~ ~2 ~ air

kill @e[type=armor_stand, tag=falling,tag=mBoxDisplay]
tag @a[tag=mBoxUser] remove mBoxUser
tag @e[tag=falling] remove falling
