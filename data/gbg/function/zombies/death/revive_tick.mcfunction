# Increase ReviveTimer if holding stick near a downed player
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stick"}}] if entity @a[tag=Downed,distance=..2] run scoreboard players add @s ReviveTimer 1

# Otherwise reset
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:stick"}}] run scoreboard players set @s ReviveTimer 0
execute unless entity @a[tag=Downed,distance=..2] run scoreboard players set @s ReviveTimer 0

# Show revive particle to the downed player if no helper is nearby
execute as @a[tag=Downed] unless entity @a[tag=!Downed,nbt={SelectedItem:{id:"minecraft:stick"}},distance=..2] run particle dust{color:[1.0,0.0,0.0],scale:1} ~ ~-0.05 ~ 0.4 0 0.4 0 8 force

# Complete revive
execute if score @s ReviveTimer matches 100.. run execute as @a[tag=Downed,distance=..2,limit=1,sort=nearest] run function gbg:zombies/death/death_revive
execute if score @s ReviveTimer matches 100.. run scoreboard players set @s ReviveTimer 0
