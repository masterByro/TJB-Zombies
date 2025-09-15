scoreboard players reset killingtemp gbg.temp
## Unsuccessful
execute unless score @e[type=armor_stand,tag=turret,tag=destroyed,limit=1,sort=nearest,distance=..4] gbg.id = @s gbg.id run title @s actionbar {"text":"This turret is too damaged to be picked up.","color":"red"}
execute unless score @e[type=armor_stand,tag=turret,tag=destroyed,limit=1,sort=nearest,distance=..4] gbg.id = @s gbg.id run return fail
execute unless score @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4] gbg.turret_hp = @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4] gbg.max_hp run title @s actionbar {"text":"This turret is not at full HP.","color":"red"}
execute unless score @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4] gbg.turret_hp = @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4] gbg.max_hp run return fail
execute unless score @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=1..2}] gbg.id = @s gbg.id run title @s actionbar {"text":"You do not own this turret.","color":"red"}
execute unless score @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=1..2}] gbg.id = @s gbg.id run return fail

## Successful
#figuring out which turret is closest
execute if entity @e[type=pig,tag=auto,limit=1,sort=nearest,distance=..4] run scoreboard players set killingtemp gbg.temp 1
execute unless score killingtemp gbg.temp matches 1.. if entity @e[type=pig,tag=sentry,limit=1,sort=nearest,distance=..4] run scoreboard players set killingtemp gbg.temp 2
execute unless score killingtemp gbg.temp matches 1.. if entity @e[type=pig,tag=perdition,limit=1,sort=nearest,distance=..4] run scoreboard players set killingtemp gbg.temp 3

#dropping loot
execute if score killingtemp gbg.temp matches 1 at @e[type=pig,tag=auto,limit=1,sort=nearest,distance=..4] run loot spawn ~ ~ ~ loot gbg:items/turret/auto
execute if score killingtemp gbg.temp matches 2 at @e[type=pig,tag=sentry,limit=1,sort=nearest,distance=..4] run loot spawn ~ ~ ~ loot gbg:items/turret/sentry
execute if score killingtemp gbg.temp matches 3 at @e[type=pig,tag=perdition,limit=1,sort=nearest,distance=..4] run loot spawn ~ ~ ~ loot gbg:items/turret/perdition

#killing related turret entities
execute if score killingtemp gbg.temp matches 1 run kill @e[type=pig,tag=auto,limit=1,sort=nearest,distance=..4]
execute if score killingtemp gbg.temp matches 1 run kill @e[type=armor_stand,tag=auto,tag=!destroyed,limit=1,sort=nearest,distance=..4]
execute if score killingtemp gbg.temp matches 1 run kill @e[type=item_display,tag=auto,tag=!destroyed,limit=1,sort=nearest,distance=..4]

execute if score killingtemp gbg.temp matches 2 run kill @e[type=pig,tag=sentry,limit=1,sort=nearest,distance=..4]
execute if score killingtemp gbg.temp matches 2 run kill @e[type=armor_stand,tag=sentry,tag=!destroyed,limit=1,sort=nearest,distance=..4]
execute if score killingtemp gbg.temp matches 2 run kill @e[type=item_display,tag=sentry,tag=!destroyed,limit=1,sort=nearest,distance=..4]

execute if score killingtemp gbg.temp matches 3 run kill @e[type=pig,tag=perdition,limit=1,sort=nearest,distance=..4]
execute if score killingtemp gbg.temp matches 3 run kill @e[type=armor_stand,tag=perdition,tag=!destroyed,limit=1,sort=nearest,distance=..4]
execute if score killingtemp gbg.temp matches 3 run kill @e[type=item_display,tag=perdition,tag=!destroyed,limit=1,sort=nearest,distance=..4]

# Visuals
title @s actionbar {"text":"Picked up Turret!","color":"yellow"}
playsound minecraft:entity.chicken.egg player @a ~ ~ ~ 3 1


