scoreboard players reset killingtemp gbg.temp
scoreboard players set salvage_temp gbg.temp 0
## Unsuccessful
execute if entity @e[type=armor_stand,tag=turret,tag=destroyed,limit=1,sort=nearest,distance=..4] run scoreboard players set salvage_temp gbg.temp 1
execute if score salvage_temp gbg.temp matches 0 run title @s actionbar {"text":"This turret is not salvagable.","color":"red"}
execute if score salvage_temp gbg.temp matches 0 run return fail
execute unless score @e[type=armor_stand,tag=turret,tag=destroyed,limit=1,sort=nearest,distance=..4] gbg.id = @s gbg.id run title @s actionbar {"text":"You do not own this turret.","color":"red"}
execute unless score @e[type=armor_stand,tag=turret,tag=destroyed,limit=1,sort=nearest,distance=..4] gbg.id = @s gbg.id run return fail

## Successful
execute if entity @e[type=armor_stand,tag=auto,tag=destroyed,limit=1,sort=nearest,distance=..4] run scoreboard players set killingtemp gbg.temp 1
execute unless score killingtemp gbg.temp matches 1 if entity @e[type=armor_stand,tag=sentry,tag=destroyed,limit=1,sort=nearest,distance=..4] run scoreboard players set killingtemp gbg.temp 2
execute unless score killingtemp gbg.temp matches 1.. if entity @e[type=armor_stand,tag=perdition,tag=destroyed,limit=1,sort=nearest,distance=..4] run scoreboard players set killingtemp gbg.temp 3

execute if score killingtemp gbg.temp matches 1 at @e[type=armor_stand,tag=auto,tag=destroyed,limit=1,sort=nearest,distance=..4] run loot spawn ~ ~ ~ loot gbg:turret_salvage/auto
execute if score killingtemp gbg.temp matches 2 at @e[type=armor_stand,tag=sentry,tag=destroyed,limit=1,sort=nearest,distance=..4] run loot spawn ~ ~ ~ loot gbg:turret_salvage/sentry
execute if score killingtemp gbg.temp matches 3 at @e[type=armor_stand,tag=perdition,tag=destroyed,limit=1,sort=nearest,distance=..4] run loot spawn ~ ~ ~ loot gbg:turret_salvage/perdition

execute if score killingtemp gbg.temp matches 1 run kill @e[type=armor_stand,tag=auto,tag=destroyed,limit=1,sort=nearest,distance=..4]
execute if score killingtemp gbg.temp matches 1 run kill @e[type=item_display,tag=auto,tag=destroyed,limit=1,sort=nearest,distance=..4]

execute if score killingtemp gbg.temp matches 2 run kill @e[type=armor_stand,tag=sentry,tag=destroyed,limit=1,sort=nearest,distance=..4]
execute if score killingtemp gbg.temp matches 2 run kill @e[type=item_display,tag=sentry,tag=destroyed,limit=1,sort=nearest,distance=..4]

execute if score killingtemp gbg.temp matches 3 run kill @e[type=armor_stand,tag=perdition,tag=destroyed,limit=1,sort=nearest,distance=..4]
execute if score killingtemp gbg.temp matches 3 run kill @e[type=item_display,tag=perdition,tag=destroyed,limit=1,sort=nearest,distance=..4]

# Visuals
title @s actionbar {"text":"Salvaged Turret!","color":"yellow"}
playsound gbg:turret_destroy player @a ~ ~ ~ 10 1
particle minecraft:explosion ^ ^ ^ 0 0 0 0 2

