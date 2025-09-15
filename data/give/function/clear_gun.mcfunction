execute store result score @s SelectedSlot run data get entity @s SelectedItemSlot
execute if score @s SelectedSlot matches 5 run item replace entity @s hotbar.5 with minecraft:air
execute if score @s SelectedSlot matches 0..4 run item replace entity @s hotbar.4 with minecraft:air
execute if score @s SelectedSlot matches 6..8 run item replace entity @s hotbar.4 with minecraft:air