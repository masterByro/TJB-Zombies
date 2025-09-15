# Removing saddles
item replace entity @s saddle with air

# Getting Turret's Health
execute store result score @s[scores={gbg.turret_stage=1..2}] gbg.turret_hp run data get entity @s Health
# Doing Stuff if Health is Low Enough
#auto
execute if score @s[scores={gbg.turret_stage=1},tag=auto] gbg.turret_hp matches ..30 run function gbg:turret/auto/stages/damaged
execute if score @s[scores={gbg.turret_stage=2},tag=auto] gbg.turret_hp matches 31.. run function gbg:turret/auto/stages/functional
#sentry
execute if score @s[scores={gbg.turret_stage=1},tag=sentry] gbg.turret_hp matches ..20 run function gbg:turret/sentry/stages/damaged
execute if score @s[scores={gbg.turret_stage=2},tag=sentry] gbg.turret_hp matches 21.. run function gbg:turret/sentry/stages/functional
#perdition
execute if score @s[scores={gbg.turret_stage=1},tag=perdition] gbg.turret_hp matches ..50 run function gbg:turret/perdition/stages/damaged
execute if score @s[scores={gbg.turret_stage=2},tag=perdition] gbg.turret_hp matches 51.. run function gbg:turret/perdition/stages/functional

# Telling Which Players are not Targets
tag @s add currentTurret
execute as @a[distance=..30] if score @s gbg.id = @e[type=pig,tag=currentTurret,limit=1,sort=random] gbg.id run tag @s add not_a_target
tag @s remove currentTurret

# Loops for Each Specific Turret Type
execute as @s[scores={gbg.cooldown=0,gbg.turret_stage=1},tag=auto] run function gbg:turret/auto/shoot
execute as @s[scores={gbg.cooldown=0,gbg.turret_stage=1},tag=sentry] run function gbg:turret/sentry/shoot
execute as @s[scores={gbg.cooldown=0,gbg.turret_stage=1},tag=perdition] run function gbg:turret/perdition/shoot

# Hiding Turrets Underground if no Targets are Nearby
#sentry
execute as @s[scores={gbg.ground_time=1..,gbg.turret_stage=1},tag=sentry,tag=underground] run function gbg:turret/sentry/stages/aboveground
execute as @s[scores={gbg.ground_time=0,gbg.turret_stage=1},tag=sentry,tag=aboveground] run function gbg:turret/sentry/stages/underground
#perdition
execute as @s[scores={gbg.ground_time=1..,gbg.turret_stage=1},tag=perdition,tag=underground] run function gbg:turret/perdition/stages/aboveground
execute as @s[scores={gbg.ground_time=0,gbg.turret_stage=1},tag=perdition,tag=aboveground] run function gbg:turret/perdition/stages/underground

# Decreasing Cooldown and Reseting Scoreboards
scoreboard players set @s[scores={gbg.cooldown=0},tag=auto] gbg.cooldown 14
scoreboard players set @s[scores={gbg.cooldown=0},tag=sentry] gbg.cooldown 24
scoreboard players set @s[scores={gbg.cooldown=0},tag=perdition] gbg.cooldown 22
scoreboard players remove @s[scores={gbg.cooldown=1..}] gbg.cooldown 1
scoreboard players remove @s[scores={gbg.ground_time=1..}] gbg.ground_time 1
scoreboard players set @s gbg.raycast_distance 0
scoreboard players set @s gbg.hit_block 0
tag @p[sort=nearest,limit=1,tag=not_a_target] remove not_a_target

