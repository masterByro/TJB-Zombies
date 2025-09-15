## ASSAULT RIFLE RAYCAST
# AS AT turret

# Hurt entity 
execute if entity @e[limit=1,type=#gbg:monster,dx=0] run function gbg:turret/perdition/monsters/shot

# Is in block?
execute unless block ^ ^ ^ #gbg:raycast_generic run scoreboard players set @s gbg.hit_block 1

# Calling raycast again
execute unless score @s gbg.raycast_distance matches 1 unless entity @e[type=!#gbg:auto_turret_thing,dx=0,tag=!turret] positioned ^ ^ ^0.1 run function gbg:turret/perdition/monsters/search_raycast

