execute at @s as @e[type=armor_stand,distance=..2,tag=price,tag=door,sort=nearest,limit=1] run tag @s add currentDoor

# 1
execute if score @s Money >= door1 DoorCost if entity @e[tag=currentDoor,tag=door1,tag=closed] run tag @s add openDoor1
execute if entity @s[tag=openDoor1] run tag @e[tag=currentDoor] remove closed
execute as @s[tag=openDoor1] as @e[type=armor_stand,tag=door1,tag=door] run function gbg:zombies/doors/door_open
execute as @e[type=armor_stand,tag=door1,nbt={CustomName:"off"}] if entity @p[tag=openDoor1] run data merge entity @s {CustomName:"on"}
execute as @e[tag=currentDoor] if entity @p[tag=openDoor1] run data merge entity @s {CustomNameVisible:0b}
execute as @s[tag=openDoor1] run scoreboard players operation @s Money -= door1 DoorCost
execute as @s[tag=openDoor1] run tag @s remove openDoor1

execute if score @s Money >= door2 DoorCost if entity @e[tag=currentDoor,tag=door2,tag=closed] run tag @s add opendoor2
execute if entity @s[tag=opendoor2] run tag @e[tag=currentDoor] remove closed
execute as @s[tag=opendoor2] as @e[type=armor_stand,tag=door2,tag=door] run function gbg:zombies/doors/door_open
execute as @e[type=armor_stand,tag=door2,nbt={CustomName:"off"}] if entity @p[tag=opendoor2] run data merge entity @s {CustomName:"on"}
execute as @e[tag=currentDoor] if entity @p[tag=opendoor2] run data merge entity @s {CustomNameVisible:0b}
execute as @s[tag=opendoor2] run scoreboard players operation @s Money -= door2 DoorCost
execute as @s[tag=opendoor2] run tag @s remove opendoor2

execute if score @s Money >= door3 DoorCost if entity @e[tag=currentDoor,tag=door3,tag=closed] run tag @s add opendoor3
execute if entity @s[tag=opendoor3] run tag @e[tag=currentDoor] remove closed
execute as @s[tag=opendoor3] as @e[type=armor_stand,tag=door3,tag=door] run function gbg:zombies/doors/door_open
execute as @e[type=armor_stand,tag=door3,nbt={CustomName:"off"}] if entity @p[tag=opendoor3] run data merge entity @s {CustomName:"on"}
execute as @e[tag=currentDoor] if entity @p[tag=opendoor3] run data merge entity @s {CustomNameVisible:0b}
execute as @s[tag=opendoor3] run scoreboard players operation @s Money -= door3 DoorCost
execute as @s[tag=opendoor3] run tag @s remove opendoor3


execute as @e[tag=currentDoor] run tag @s remove currentDoor

