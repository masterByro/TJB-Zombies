#These commands run every tick
## Sneak Detection
#when sneaking
execute as @s[scores={gbg.sneak=1..}] run function gbg:sneak/gbg_sneak
#when not sneaking
execute as @s[scores={gbg.sneak=0}] run function gbg:sneak/gbg_no_sneak

## ACTIONBAR INDICATORS
execute if score actionbar_reloading_appears config.gbg matches 0 as @s[scores={gbg.cooldown=0..,gbg.reloading_time=1..}] run function gbg:gun/display_cooldown_timer
execute if score actionbar_item_use_appears config.gbg matches 0 as @s[scores={gbg.is_using=1..}] run function gbg:medical/display_cooldown_timer

## WEAPON AND ITEM COOLDOWNS
# Shooting Cooldown
scoreboard players remove @s[scores={gbg.cooldown=1..}] gbg.cooldown 1

##TRIGGER COMMANDS
#turret menu
scoreboard players enable @s turret_settings
execute as @s[scores={turret_settings=1..}] at @s[scores={turret_settings=1..}] run function gbg:turret/settings/main
scoreboard players reset @s[scores={turret_settings=1..}] turret_settings

## BURST
execute as @s[scores={gbg.burst_duration=2},nbt={SelectedItem:{id:"minecraft:crossbow"}}] at @s anchored eyes run function gbg:gun/shoot

# Land Mine Exploding
execute as @e[type=item_frame,tag=land_mine,distance=..128] at @s if entity @e[type=!#gbg:land_mine_not_mob,distance=..0.5] run function gbg:equipment/land_mine/explode

# Throwables
execute as @e[type=#gbg:throwable_life,scores={gbg.throwable.life=0..},distance=..256] at @s run function gbg:throwable/life_tick

#MUST BE AT END
#Decreasing and Resetting Scoreboards
scoreboard players set @s[scores={gbg.sneak=1..}] gbg.sneak 0
scoreboard players remove @s[scores={gbg.burst_duration=1..}] gbg.burst_duration 1
scoreboard players remove @s[scores={gbg.is_using=1..}] gbg.is_using 1
scoreboard players remove @s[scores={gbg.throwable.click=1..}] gbg.throwable.click 1
scoreboard players remove @s[scores={gbg.projectile_swap_detection=1..}] gbg.projectile_swap_detection 1

