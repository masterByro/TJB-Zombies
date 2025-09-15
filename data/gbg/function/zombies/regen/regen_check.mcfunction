execute if score @s regenTimer matches 1.. run scoreboard players remove @s regenTimer 1
# (100 ticks = 5 seconds)

execute unless entity @s[tag=Juggernog] if score @s health matches ..5 if score @s regenTimer matches 0 run scoreboard players set @s regenTimer 100
execute if entity @s[tag=Juggernog] if score @s health matches ..11 if score @s regenTimer matches 0 run scoreboard players set @s regenTimer 100
execute if score @s regenTimer matches 1 run effect give @s minecraft:instant_health 1 0 true
