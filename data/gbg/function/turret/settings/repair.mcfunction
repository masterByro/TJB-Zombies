## Unsuccessful
execute unless entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot"}]}] run title @s actionbar {"text":"You need at least one iron ingot to perform this action.","color":"red"}
execute unless entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot"}]}] run return fail
execute if entity @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=3}] run title @s actionbar {"text":"This turret is too damaged to be repaired.","color":"red"}
execute if entity @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=3}] run return fail
execute if score @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4] gbg.turret_hp = @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4] gbg.max_hp run title @s actionbar {"text":"This turret is at full HP.","color":"red"}
execute if score @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4] gbg.turret_hp = @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4] gbg.max_hp run return fail

## Successful
scoreboard players operation temp gbg.turret_hp = @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=1..2}] gbg.turret_hp
scoreboard players add temp gbg.turret_hp 10
execute store result storage gbg:macro input.hp int 1 run scoreboard players get temp gbg.turret_hp
execute as @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=1..2}] at @s run function gbg:turret/settings/repair2 with storage gbg:macro input

playsound entity.iron_golem.repair player @a ~ ~ ~ 2 1.5
playsound entity.iron_golem.repair player @a ~ ~ ~ 2 1
clear @s iron_ingot 1

scoreboard players reset temp gbg.turret_hp

