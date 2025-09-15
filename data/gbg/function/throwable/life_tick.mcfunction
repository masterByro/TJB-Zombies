# Decreasing life timer
scoreboard players remove @s gbg.throwable.life 1

# If entity is a smoke grenade's smoke, hurting nearby entities and spawning smoke
execute if entity @s[tag=gbg.throwable.smoke_grenade_smoke] unless score @s gbg.throwable.life matches -1 at @s run function gbg:throwable/explode/smoke_grenade_smoke

# Stopping function if timer isn't over yet
execute unless score @s gbg.throwable.life matches -1 run return fail

# Exploding if life timer is over
function gbg:throwable/sort_explode

