# Spawning the marker that will be used as the projectile
summon item_display ~ ~ ~ {Tags:["gbg.slowcast","gbg.spawning_in"],CustomName:'"SlowcastNameUnset"',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.250f,0.250f],scale:[1f,1f,1f]}}
data modify entity @e[type=item_display,tag=gbg.spawning_in,limit=1,sort=nearest] CustomName set from entity @s SelectedItem.components.minecraft:item_name
data modify entity @e[type=item_display,tag=gbg.spawning_in,limit=1,sort=nearest] CustomName set from entity @s SelectedItem.components.minecraft:custom_name
data modify entity @e[type=item_display,tag=gbg.spawning_in,limit=1,sort=nearest] item set from entity @s SelectedItem

# Running another function to give marker all appropriate attributes and scores
execute as @e[type=item_display,tag=gbg.spawning_in,limit=1] at @s run function gbg:throwable/slowcast/launch2
