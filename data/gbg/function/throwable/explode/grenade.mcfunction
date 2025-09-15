# Removing Item or Canceling Explosion
execute if entity @s[type=player] unless items entity @s hotbar.* music_disc_stal[custom_data~{gbg:{impact_type:3b}}] run return fail
clear @s music_disc_stal[custom_data~{gbg:{impact_type:3b}}] 1

# Exploding
playsound gbg:distant_explosion player @a[distance=64..256] ~ ~ ~ 4096
particle explosion_emitter ~ ~ ~ 0 0 0 0.1 1 force
summon minecraft:creeper ~ ~ ~ {Fuse:-1,ExplosionRadius:3,ignited:1b,CustomName:[{"text":"Grenade"}],Tags:["exploder","zombie","gbz.zombie"]}
execute if entity @s[type=player] as @e[type=!#gbg:throwable_not_mob,distance=..3,tag=!exploder] run damage @s 20 gbg:explosion by @e[type=player,limit=1,sort=nearest,distance=..3]
execute unless entity @s[type=player] as @e[type=!#gbg:throwable_not_mob,distance=..3,tag=!exploder] run damage @s 20 gbg:explosion by @e[type=item_display,limit=1,sort=nearest,distance=..3]
