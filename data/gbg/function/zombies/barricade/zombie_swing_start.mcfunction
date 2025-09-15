# Mark zombie as swinging & on cooldown
scoreboard players set @s ZombieSwingTimer 15
scoreboard players set @s ZombieSwingCooldown 40
tag @s add Swinging

# Warning effects
playsound minecraft:entity.zombie.ambient master @a[distance=..6] ~ ~ ~ 1 1
particle angry_villager ~ ~1 ~ 0.3 0.5 0.3 0 10 force


