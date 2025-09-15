execute at @e[type=armor_stand, tag=falling, tag=mBoxDisplay] run tp @e[type=armor_stand, tag=falling, tag=mBoxDisplay] ~ ~-0.01 ~
execute as @e[type=armor_stand, tag=falling,tag=mBoxDisplay] run schedule function gbg:zombies/m_box/falling_gun 1t

