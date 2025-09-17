tag @a remove WolfRound
tag @a remove ZombieRound

scoreboard players add Global Wave 1
scoreboard players add @a Wave 1

scoreboard players operation TempWave Wave = Global Wave
execute if score TempWave Wave matches 5.. run scoreboard players remove TempWave Wave 5
execute if score TempWave Wave matches 5.. run scoreboard players remove TempWave Wave 5
execute if score TempWave Wave matches 5.. run scoreboard players remove TempWave Wave 5
execute if score TempWave Wave matches 5.. run scoreboard players remove TempWave Wave 5
execute if score TempWave Wave matches 5.. run scoreboard players remove TempWave Wave 5
execute if score TempWave Wave matches 5.. run scoreboard players remove TempWave Wave 5
execute if score TempWave Wave matches 5.. run scoreboard players remove TempWave Wave 5
execute if score TempWave Wave matches 5.. run scoreboard players remove TempWave Wave 5
execute if score TempWave Wave matches 5.. run scoreboard players remove TempWave Wave 5
execute if score TempWave Wave matches 5.. run scoreboard players remove TempWave Wave 5
execute if score TempWave Wave matches 5.. run scoreboard players remove TempWave Wave 5
execute if score TempWave Wave matches 5.. run scoreboard players remove TempWave Wave 5
execute if score TempWave Wave matches 5.. run scoreboard players remove TempWave Wave 5
execute if score TempWave Wave matches 5.. run scoreboard players remove TempWave Wave 5
execute if score TempWave Wave matches 5.. run scoreboard players remove TempWave Wave 5
execute if score TempWave Wave matches 5.. run scoreboard players remove TempWave Wave 5


execute if score TempWave Wave matches 0 run tag @a add WolfRound
execute if score TempWave Wave matches 1.. run tag @a add ZombieRound



scoreboard players set Global SpawnClock 0
#execute as @a at @s run playsound music_disc.blocks master @s ~ ~ ~ 1 1
tag @a add canDrop
title @a title {"text":"Wave ","color":"red","extra":[{"score":{"name":"Global","objective":"Wave"}}]}
xp add @a 1 levels

execute as @a unless data entity @s {Inventory:[{Slot:2b,id:"minecraft:tnt",components:{"minecraft:item_name":{text:"Grenade"}, "count":2}}]} run function gbg:misc/fix_grenade
execute as @a[gamemode=spectator] run function gbg:zombies/misc/reset_player

execute as @p[tag=ZombieRound] run function gbg:zombies/zombie_stats/wave_zombie_amount
execute as @p[tag=ZombieRound] run function gbg:zombies/zombie_stats/wave_zombie_spawn_rate

execute as @p[tag=WolfRound] run function gbg:zombies/zombie_stats/wave_wolf_amount
execute as @p[tag=WolfRound] run function gbg:zombies/zombie_stats/wave_wolf_spawn_rate

scoreboard players set Global GamePlaying 1

