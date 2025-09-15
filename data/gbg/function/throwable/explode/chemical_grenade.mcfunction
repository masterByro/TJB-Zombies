# Removing Item or Canceling Explosion
execute if entity @s[type=player] unless items entity @s hotbar.* music_disc_stal[custom_data~{gbg:{impact_type:4b}}] run return fail
clear @s music_disc_stal[custom_data~{gbg:{impact_type:4b}}] 1

# Exploding
effect give @e[type=!#gbg:not_mob,distance=..4] wither 12 1 false
effect give @e[type=!#gbg:not_mob,distance=..4] slowness 12 1 false
effect give @e[type=!#gbg:not_mob,distance=..4] weakness 12 1 false
effect give @e[type=!#gbg:not_mob,distance=..4] mining_fatigue 8 1 false
execute if entity @s[type=player] as @e[type=!#gbg:throwable_not_mob,distance=..3,tag=!exploder] run damage @s 2 gbg:explosion by @e[type=player,limit=1,sort=nearest,distance=..3]
execute unless entity @s[type=player] as @e[type=!#gbg:throwable_not_mob,distance=..3,tag=!exploder] run damage @s 2 gbg:explosion by @e[type=item_display,limit=1,sort=nearest,distance=..3]
playsound minecraft:entity.iron_golem.damage player @a ~ ~ ~ 1 2
playsound minecraft:entity.iron_golem.death player @a ~ ~ ~ 1 2
playsound minecraft:block.wooden_door.close player @a ~ ~ ~ 1 2
playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 2
particle minecraft:sneeze ~ ~ ~ 1 1 1 0.05 25
particle minecraft:smoke ~ ~ ~ 1 1 1 0.05 25

