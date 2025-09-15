# Removing Item or Canceling Explosion
execute if entity @s[type=player] unless items entity @s hotbar.* music_disc_stal[custom_data~{gbg:{impact_type:1b}}] run return fail
clear @s music_disc_stal[custom_data~{gbg:{impact_type:1b}}] 1

# Exploding
playsound entity.generic.explode player @a ~ ~ ~ 2 1.75
particle explosion ~ ~ ~ 0 0 0 0.1 1 force
execute if entity @s[type=player] as @e[type=!#gbg:throwable_not_mob,distance=..3,tag=!exploder] run damage @s 14 gbg:explosion by @e[type=player,limit=1,sort=nearest,distance=..3]
execute unless entity @s[type=player] as @e[type=!#gbg:throwable_not_mob,distance=..3,tag=!exploder] run damage @s 14 gbg:explosion by @e[type=item_display,limit=1,sort=nearest,distance=..3]

