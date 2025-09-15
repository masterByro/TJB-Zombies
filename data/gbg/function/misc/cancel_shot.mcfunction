# Running math to stop every other recoil
scoreboard players add @s gbg.shot_cycle 1
execute if score @s gbg.shot_cycle matches 3.. run scoreboard players set @s gbg.shot_cycle 0

## Allowing recoil
#if rate of fire is above 2 ticks
execute if score gbg.fire_rate gbg.temp matches 3.. run return fail
#if gun is a crossbow
execute if items entity @s weapon.mainhand crossbow run return fail
#if it's the 1st shot
execute if score @s gbg.shot_cycle matches 0 run return fail

## Stopping Recoil
return 1

