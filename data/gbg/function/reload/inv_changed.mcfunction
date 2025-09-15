# Executing whenever a gun changes location in the inventory
execute if items entity @s weapon.offhand *[minecraft:custom_data~{gbg_is_gun:1b}] run function gbg:reload/start
advancement revoke @s only gbg:inv_changed_crossbow
advancement revoke @s only gbg:inv_changed_music_disc
