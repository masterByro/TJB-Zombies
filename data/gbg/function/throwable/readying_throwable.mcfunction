execute store result score @s gbg.throwable.impact_type run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.impact_type
execute store result score @s gbg.is_using run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.throwable_life
scoreboard players operation @s gbg.using_time = @s gbg.is_using
scoreboard players operation @s gbg.throwable.life = @s gbg.is_using
playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1 1.2

