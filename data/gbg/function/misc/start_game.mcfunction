scoreboard players set Global Wave 0
scoreboard players set Global GamePlaying 1
scoreboard players set @e[type=armor_stand,nbt={CustomName:"Wall"}] WallHealth 100
scoreboard players set @a Money 0
scoreboard players set @a Kills 0
scoreboard players set Global ZombiesLeft 0
scoreboard players set @a regenTimer 0

tag @a remove Juggernog
function gbg:zombies/doors/doors_off
function gbg:misc/stand_hide
execute as @a run function gbg:misc/reset_player

kill @e[type=zombie]
kill @e[type=shulker,tag=crawl_shulker]
time set midnight

stopsound @a
#execute as @a at @s run playsound minecraft:music_disc.pigstep master @s ~ ~ ~ 0.7 1 1


function gbg:zombies/shop/shop_price_set
function gbg:misc/wait_round


