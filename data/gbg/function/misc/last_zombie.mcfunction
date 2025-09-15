# Select the last zombie (any zombie since count=1)
effect give @s minecraft:speed 999999 1 true

scoreboard players add lastZombieActive LastZombieTimer 1
execute if score lastZombieActive LastZombieTimer matches 60.. at @s run playsound minecraft:entity.phantom.bite hostile @a ~ ~ ~ 1 1
execute if score lastZombieActive LastZombieTimer matches 60.. at @s run playsound minecraft:entity.zombie.ambient hostile @a ~ ~ ~ 1 1
execute if score lastZombieActive LastZombieTimer matches 60.. run scoreboard players set lastZombieActive LastZombieTimer 0
