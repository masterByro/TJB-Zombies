clear @s minecraft:wooden_axe
tag @e remove canDrop

scoreboard players add @a[tag=!Downed,gamemode=adventure] Money 200
scoreboard players add @a[tag=!Downed,gamemode=adventure, tag=DoublePoints] Money 200
scoreboard players set @e[type=armor_stand,nbt={CustomName:"Wall"}] WallHealth 100
execute as @e[type=armor_stand,nbt={CustomName:"Wall"}] run function gbg:zombies/barricade/barricade_heal