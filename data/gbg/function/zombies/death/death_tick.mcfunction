# Keep crawl shulker above them
execute at @s run tp @e[type=shulker,tag=crawl_shulker,limit=1,sort=nearest] ~ ~1 ~

# Countdown
execute if score @s DownTimer matches 1.. run scoreboard players remove @s DownTimer 1

# Time out → spectator
execute if score @s DownTimer matches 0 run gamemode spectator @s
execute if score @s DownTimer matches 0 run tag @s remove Downed

# If at least one helper is nearby with stick → increment ReviveTimer
execute if entity @a[tag=!Downed,nbt={SelectedItem:{id:"minecraft:stick"}},distance=..2] run scoreboard players add @s ReviveTimer 1

# Otherwise reset ReviveTimer
execute unless entity @a[tag=!Downed,nbt={SelectedItem:{id:"minecraft:stick"}},distance=..2] run scoreboard players set @s ReviveTimer 0

# Show revive particle to self if no helper is nearby
execute unless entity @a[tag=!Downed,nbt={SelectedItem:{id:"minecraft:stick"}},distance=..2] run particle dust{color:[1.0,0.0,0.0],scale:1} ~ ~-0.05 ~ 0.4 0 0.4 0 8 force

# Complete revive when progress reaches threshold
execute if score @s ReviveTimer matches 100.. run function gbg:zombies/death/death_revive
execute if score @s ReviveTimer matches 100.. run scoreboard players set @s ReviveTimer 0