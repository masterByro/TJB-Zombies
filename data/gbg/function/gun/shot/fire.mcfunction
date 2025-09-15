# Setting player on fire
attribute @s[type=player] knockback_resistance base set 1
tag @s[type=player] add fire_hit
execute if entity @s[type=player] run summon small_fireball ~ ~2.2 ~ {Motion:[0.0,-3.0,0.0],Item:{id:"minecraft:structure_void",count:1}}
# Setting mob on fire
data merge entity @s[type=!player] {Fire:80}
# Dealing damage
$damage @s $(damage) gbg:flame by @a[scores={gbg.id=$(source)},limit=1]
# Removing knockback res and tag from player
execute if entity @s[type=player] run schedule function gbg:gun/shot/fire2 2t

