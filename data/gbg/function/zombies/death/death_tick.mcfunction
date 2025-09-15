# Keep crawl shulker above them
execute at @s run tp @e[type=shulker,tag=crawl_shulker,limit=1,sort=nearest] ~ ~1 ~

# Countdown
execute if score @s DownTimer matches 1.. run scoreboard players remove @s DownTimer 1

# Time out → spectator
execute if score @s DownTimer matches 0 run gamemode spectator @s
execute if score @s DownTimer matches 0 run tag @s remove Downed