advancement revoke @s only gbg:use_throwable
# Stopping function if not done with gbg cooldown
execute if entity @s[scores={gbg.cooldown=1..}] run return fail
# Running C4 Remote Function if item is a C4 Remote
execute if items entity @s weapon.* music_disc_stal[custom_data~{gbg:{is_c4_remote:1b}}] at @s run return run function gbg:equipment/c4/remote_use
# Stopping function if item is not a gbg throwable
execute unless items entity @s weapon.mainhand *[custom_data~{gbg:{is_throwable:1b}}] run return fail
# Stopping function if player is dead
execute unless score @s gbg.has_respawned matches 1.. run return fail

# Making throwables semi-auto
execute if score @s gbg.throwable.click matches 1.. run return run scoreboard players set @s gbg.throwable.click 2
scoreboard players set @s gbg.throwable.click 2

# Ready Throwable
execute unless score @s gbg.throwable.life matches 1.. run return run function gbg:throwable/readying_throwable

# Making sure throwable from second rc is the same throwable
execute store result score @s gbg.temp run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.impact_type
execute unless score @s gbg.temp = @s gbg.throwable.impact_type run return fail

# Throwing Throwable
scoreboard players reset @s gbg.is_using
tag @s add gbg.throwing_throwable
playsound minecraft:entity.egg.throw player @a ~ ~ ~ 1 0.25
function gbg:throwable/slowcast/launch

