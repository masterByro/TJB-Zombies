clear @s minecraft:gray_candle
tag @e remove canDrop

# 2. Play a sound to the player
execute at @a run playsound minecraft:entity.tnt.primed master @s ~ ~ ~ 1 1
scoreboard players add @a[tag=!Downed,gamemode=adventure] Money 400
scoreboard players add @a[tag=!Downed,gamemode=adventure,tag=DoublePoints] Money 400
# 3. Kill all zombies with an explosion effect
execute at @e[type=zombie] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1
execute at @e[type=zombie] run particle minecraft:explosion ~ ~ ~ 0 0 0 0.1 1
kill @e[type=zombie]
