# Giving the marker scores and attributes
scoreboard players operation @s gbg.throwable.life = @p[tag=gbg.throwing_throwable] gbg.throwable.life
scoreboard players set @p[tag=gbg.throwing_throwable] gbg.throwable.life -1
scoreboard players operation @s gbg.throwable.impact_type = @p[tag=gbg.throwing_throwable] gbg.throwable.impact_type
execute store result score @s gbg.throwable.explode_on_impact run data get entity @p[tag=gbg.throwing_throwable] SelectedItem.components.minecraft:custom_data.gbg.explode_on_impact
scoreboard players set @s gbg.slowcast.range 0
scoreboard players set @s gbg.slowcast.projectile_speed 10

# Putting at player's head and facing the right way
execute at @p[tag=gbg.throwing_throwable] run tp @s ~ ~1.55 ~ ~ ~

# Removing tags
item modify entity @p[tag=gbg.throwing_throwable] weapon.mainhand gbg:remove_one_item
tag @p[tag=gbg.throwing_throwable] remove gbg.throwing_throwable
tag @s remove gbg.spawning_in

# Running the looping function as the projectile
function gbg:throwable/slowcast/temp_tick
