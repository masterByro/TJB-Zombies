# Lethal headshot
execute if entity @s[tag=headshot,tag=!DoublePoints] run scoreboard players add @s Money 90
execute if entity @s[tag=headshot,tag=DoublePoints] run scoreboard players add @s Money 180

# Lethal melee
execute if entity @s[scores={Damage=1..},tag=!DoublePoints] run scoreboard players add @s Money 130
execute if entity @s[scores={Damage=1..},tag=DoublePoints] run scoreboard players add @s Money 260


# Lethal body shot
execute if entity @s[tag=!headshot,scores={Damage=0},tag=!DoublePoints] run scoreboard players add @s Money 50
execute if entity @s[tag=!headshot,scores={Damage=0},tag=DoublePoints] run scoreboard players add @s Money 100

# Cleanup
scoreboard players remove @s NewKill 1
scoreboard players set @s Damage 0
execute if entity @s[tag=headshot] run tag @s remove headshot
