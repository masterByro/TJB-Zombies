## Minor Infection Cure Use
playsound gbg:syringe_use player @a ~ ~ ~ 3 1
playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~ 1 1
scoreboard players set @s gbg.cooldown 60
loot give @s loot gbg:items/medical/syringe
item modify entity @s weapon.mainhand gbg:remove_one_item

#running function if there is a curable mob close by
execute as @e[type=#gbg:gbz_curable,tag=gbz.zombie,limit=1,sort=nearest,distance=..5] at @s run return run function gbg:medical/use/minor_infection_cure/cure_animal
execute as @e[type=zombie_villager,limit=1,sort=nearest,distance=..5] at @s run return run function gbg:medical/use/minor_infection_cure/cure_villager

execute if entity @e[type=#gbg:gbz_curable,tag=gbz.zombie,limit=1,sort=nearest,distance=..5] run return 1
#clearing effects of the player if there are no curable mobs nearby
effect clear @s weakness
effect clear @s mining_fatigue
effect clear @s slowness
effect clear @s hunger

