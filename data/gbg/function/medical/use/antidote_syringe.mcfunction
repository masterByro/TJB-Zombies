# Effects
effect clear @s wither
effect clear @s poison
loot give @s loot gbg:items/medical/syringe
# Cleanup
item modify entity @s weapon.mainhand gbg:remove_one_item
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 2
playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1 2
scoreboard players set @s gbg.is_using 0
scoreboard players set @s gbg.cooldown 30

