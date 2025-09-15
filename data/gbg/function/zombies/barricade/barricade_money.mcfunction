# Formula: HealCap = min(40 + 50*(Wave-1), 490)
execute store result score Global HealCap run scoreboard players get Global Wave
scoreboard players remove Global HealCap 1
scoreboard players operation Global HealCap *= Const50 Const
scoreboard players add Global HealCap 40
execute if score Global HealCap matches 491.. run scoreboard players set Global HealCap 490


execute if score @s WallHeals < Global HealCap unless entity @s[tag=DoublePoints] run scoreboard players add @s Money 10
execute if score @s WallHeals < Global HealCap if entity @s[tag=DoublePoints] run scoreboard players add @s Money 10
execute if score @s WallHeals < Global HealCap unless entity @s[tag=DoublePoints] run scoreboard players add @s WallHeals 1
