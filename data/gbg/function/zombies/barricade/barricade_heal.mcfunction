scoreboard players add @s WallHealth 20
execute if score @s WallHealth matches 101.. run scoreboard players set @s WallHealth 100

execute at @s run playsound minecraft:block.barrel.close master @a ~ ~ ~ 1 1
execute at @s run particle wax_on ~ ~1 ~ 0.5 0.5 0.5 0 15 force
execute as @a[distance=..2,nbt={SelectedItem:{id:"minecraft:stick"}}] run function gbg:zombies/barricade/barricade_money

scoreboard players set @s HealTimer 0

execute if score @s WallHealth matches 5.. run item replace entity @s armor.legs with minecraft:leather_leggings
execute if score @s WallHealth matches 50.. run item replace entity @s armor.chest with minecraft:leather_chestplate
execute if score @s WallHealth matches 100 run item replace entity @s armor.head with minecraft:leather_helmet