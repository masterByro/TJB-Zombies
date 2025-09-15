# Effects
effect give @s health_boost 1200 4 true
effect give @s regeneration 5 4 false
# Cleanup
item modify entity @s weapon.mainhand gbg:remove_one_item
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 2
playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1 2
scoreboard players set @s gbg.is_using 0
scoreboard players set @s gbg.cooldown 30

