playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 1 1
particle dust_plume ~ ~1 ~ 0.5 0.5 0.5 0.05 20 force
scoreboard players set @s ZombieCount 0
execute as @e[type=zombie,distance=..2] at @s run scoreboard players add @e[type=armor_stand,nbt={CustomName:"Wall"},distance=..2] ZombieCount 1

# Each zombie removes 10 health per hit (tweak this number!)
execute store result score tempDamage Temp run scoreboard players get @s ZombieCount
scoreboard players operation tempDamage Temp *= zombieHitBarricade Const
scoreboard players remove @s WallHealth 0 
scoreboard players operation @s WallHealth -= tempDamage Temp
scoreboard players set @s WallTimer 0
execute if score @s WallHealth matches ..-1 run scoreboard players set @s WallHealth 0


execute if score @s WallHealth matches ..99 run item replace entity @s armor.head with air
execute if score @s WallHealth matches ..49 run item replace entity @s armor.chest with air
execute if score @s WallHealth matches ..1 run item replace entity @s armor.legs with air