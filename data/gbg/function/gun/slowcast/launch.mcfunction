# Spawning the marker that will be used as the projectile
summon marker ~ ~ ~ {Tags:["gbg.slowcast","gbg.spawning_in"],CustomName:'"SlowcastNameUnset"'}

data modify entity @e[type=marker,tag=gbg.spawning_in,limit=1,sort=nearest] CustomName set from entity @s SelectedItem.components.minecraft:item_name
data modify entity @e[type=marker,tag=gbg.spawning_in,limit=1,sort=nearest] CustomName set from entity @s SelectedItem.components.minecraft:custom_name

# Running another function to give marker all appropriate attributes and scores
execute as @e[type=marker,tag=gbg.spawning_in,limit=1] at @s run function gbg:gun/slowcast/launch2
