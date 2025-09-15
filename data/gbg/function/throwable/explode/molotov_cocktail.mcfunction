# Removing Item or Canceling Explosion
execute if entity @s[type=player] unless items entity @s hotbar.* music_disc_stal[custom_data~{gbg:{impact_type:2b}}] run return fail
clear @s music_disc_stal[custom_data~{gbg:{impact_type:2b}}] 1

# Exploding
playsound minecraft:block.glass.break player @a ~ ~ ~ 2 0.5
playsound minecraft:block.glass.break player @a ~ ~ ~ 2 1.5
playsound minecraft:entity.zombie.attack_wooden_door player @a ~ ~ ~ 2 1.25
particle minecraft:large_smoke ~ ~ ~ 0.7 0.7 0.7 0.1 25
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 fire replace #gbg:raycast_generic
execute if entity @s[type=player] as @e[type=!#gbg:throwable_not_mob,distance=..3,tag=!exploder] run damage @s 2 gbg:flame by @e[type=player,limit=1,sort=nearest,distance=..3]
execute unless entity @s[type=player] as @e[type=!#gbg:throwable_not_mob,distance=..3,tag=!exploder] run damage @s 2 gbg:flame by @e[type=item_display,limit=1,sort=nearest,distance=..3]

