clear @s minecraft:wooden_axe
scoreboard players add @a[tag=!Downed,gamemode=adventure] Money 200
scoreboard players add @a[tag=!Downed,gamemode=adventure, tag=DoublePoints] Money 200
scoreboard players set @e[type=armor_stand,nbt={CustomName:"Wall"}] WallHealth 100
execute at @e[type=armor_stand,nbt={CustomName:"Wall"}] run playsound minecraft:block.barrel.close master @a ~ ~ ~ 1 1
execute at @e[type=armor_stand,nbt={CustomName:"Wall"}] run particle wax_on ~ ~1 ~ 0.5 0.5 0.5 0 15 force