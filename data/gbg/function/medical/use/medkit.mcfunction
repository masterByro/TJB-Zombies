# Effects
effect give @s instant_health 1 0 true
effect give @s regeneration 8 1 false
effect clear @s poison
effect clear @s slowness
effect clear @s levitation
effect clear @s weakness
effect clear @s blindness
effect clear @s wither
effect clear @s nausea
effect clear @s glowing
effect clear @s hunger
effect clear @s mining_fatigue
effect clear @s weaving
effect clear @s oozing
effect clear @s wind_charged
# Cleanup
item modify entity @s weapon.mainhand gbg:remove_one_item
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 2
playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1 2
scoreboard players set @s gbg.is_using 0
scoreboard players set @s gbg.cooldown 30

