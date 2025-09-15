#Spawn Location
execute as @e[type=squid] at @s run summon armor_stand ~ ~ ~ {CustomName:"off",CustomNameVisible:1b,NoGravity:1b,Marker:1b,Tags:["door2", "turnoff"]}
execute as @e[type=squid] run kill @s

#Door
execute as @e[type=silverfish] at @s run summon armor_stand ~ ~ ~ {CustomName:"door",CustomNameVisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["door2","door"],Marker:1b}
execute as @e[type=silverfish] run kill @s


#Door Price
execute as @e[type=cat] at @s run summon armor_stand ~ ~ ~ {CustomName:"Cost: 1000",CustomNameVisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["door2","door","price"],Marker:1b}
execute as @e[type=cat] run kill @s

