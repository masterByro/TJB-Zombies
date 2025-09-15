scoreboard players add Global Wave 1
scoreboard players set @a WallHeals 0
execute at @a run playsound music_disc.blocks master @a ~ ~ ~ 1 1
title @a title {"text":"Wave ","color":"red","extra":[{"score":{"name":"Global","objective":"Wave"}}]}

execute as @a unless data entity @s {Inventory:[{Slot:2b,id:"minecraft:tnt",components:{"minecraft:item_name":{text:"Grenade"}, "count":2}}]} run function gbg:misc/fix_grenade
execute as @a[gamemode=spectator] run function gbg:misc/reset_player

function gbg:zombies/zombie_stats/wave_zombie_amount
function gbg:zombies/zombie_stats/wave_zombie_spawn_rate
scoreboard players set Global GamePlaying 1
