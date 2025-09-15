# Removing Item or Canceling Explosion
execute if entity @s[type=player] unless items entity @s hotbar.* music_disc_stal[custom_data~{gbg:{impact_type:5b}}] run return fail
clear @s music_disc_stal[custom_data~{gbg:{impact_type:5b}}] 1

# Exploding
#as smoke
execute if entity @s[tag=gbg.throwable.smoke_grenade_smoke] run return run kill @s

#as grenade
summon marker ~ ~ ~ {Tags:[gbg.throwable.smoke_grenade_smoke]}
scoreboard players add @e[type=marker,tag=gbg.throwable.smoke_grenade_smoke,limit=1,sort=nearest,distance=..1] gbg.throwable.life 300
playsound minecraft:entity.iron_golem.damage player @a ~ ~ ~ 1 2
playsound minecraft:entity.iron_golem.death player @a ~ ~ ~ 1 2
playsound minecraft:block.wooden_door.close player @a ~ ~ ~ 1 2
playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 2

