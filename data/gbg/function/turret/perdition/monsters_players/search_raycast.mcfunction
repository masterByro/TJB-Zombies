## ASSAULT RIFLE RAYCAST
# AS AT turret

# Hurt entity 
execute if entity @e[limit=1,type=#gbg:monster_player,dx=0,tag=!not_a_target] run function gbg:turret/perdition/monsters_players/shot

# Is in block?
execute unless block ^ ^ ^ #gbg:raycast_generic run scoreboard players set @s gbg.hit_block 1

# Calling raycast again
execute unless score @s gbg.raycast_distance matches 1 unless entity @e[type=!#gbg:auto_turret_thing,dx=0,tag=!turret] positioned ^ ^ ^0.1 run function gbg:turret/perdition/monsters_players/search_raycast

