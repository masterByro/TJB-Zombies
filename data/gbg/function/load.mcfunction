tellraw @a ["",{"text":"["},{"text":"GBG V1.25.1","color":"#0059ff"},{"text":"] Datapack reloaded!"}]

## SCOREBOARDS
# General
scoreboard objectives add gbg.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add gbg.cooldown dummy
scoreboard objectives add gbg.reloading_time dummy
scoreboard objectives add gbg.raycast_distance dummy
scoreboard objectives add gbg.recoil_type dummy
scoreboard objectives add gbg.burst_duration dummy
scoreboard objectives add gbg.id dummy
scoreboard players add total gbg.id 0
scoreboard objectives add gbg.temp dummy
scoreboard objectives add gbg.temp2 dummy
scoreboard objectives add gbg.is_zooming dummy
scoreboard objectives add gbg.is_using dummy
scoreboard objectives add gbg.using_time dummy
scoreboard objectives add gbg.has_respawned minecraft.custom:minecraft.time_since_death
scoreboard objectives add gbg.shot_cycle dummy
scoreboard objectives add gbg.projectile_swap_detection dummy

# Throwable
scoreboard objectives add gbg.throwable.click dummy
scoreboard objectives add gbg.throwable.life dummy
scoreboard objectives add gbg.throwable.impact_type dummy
scoreboard objectives add gbg.throwable.explode_on_impact dummy

# Medical Item
scoreboard objectives add gbg.medical.effect_type dummy
scoreboard objectives add gbg.medical.use_time dummy
scoreboard objectives add gbg.medical.sound_time dummy

# Slowcast
scoreboard objectives add gbg.slowcast.damage dummy
scoreboard objectives add gbg.slowcast.headshot_damage dummy
scoreboard objectives add gbg.slowcast.max_range dummy
scoreboard objectives add gbg.slowcast.range dummy
scoreboard objectives add gbg.slowcast.projectile_type dummy
scoreboard objectives add gbg.slowcast.damage_type dummy
scoreboard objectives add gbg.slowcast.projectile_speed dummy

# Turret
scoreboard objectives add gbg.behind_cover dummy
scoreboard objectives add gbg.target_type dummy
scoreboard objectives add gbg.turret_stage dummy
scoreboard objectives add gbg.turret_hp dummy
scoreboard objectives add gbg.max_hp dummy
scoreboard objectives add gbg.ground_time dummy
scoreboard objectives add gbg.hit_block dummy
scoreboard objectives add gbg.turret_despawn_time dummy

# Trigger Commands
scoreboard objectives add turret_settings trigger

# Config
scoreboard objectives add config.gbg dummy
scoreboard players add actionbar_reloading_appears config.gbg 0
scoreboard players add actionbar_item_use_appears config.gbg 0
scoreboard players add default_turret_target_type config.gbg 0
scoreboard players add turret_despawn_time config.gbg 0
scoreboard players add c4_detonate_limit config.gbg 0

# Misc
scoreboard objectives add gb.datapack_detect dummy
scoreboard players add gbz gb.datapack_detect 0
scoreboard players set gbg gb.datapack_detect 1
scoreboard players add modern_guns gb.datapack_detect 0
scoreboard players add pipe_guns gb.datapack_detect 0
scoreboard players add power_armor gb.datapack_detect 0
schedule function gbg:misc/scoreboard_add 30t replace
schedule function gbg:misc/fix_jammed_guns 20t replace
function gbg:misc/import_numbers

