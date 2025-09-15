advancement revoke @s only gbg:use_music_disc_gun
execute unless score @s gbg.has_respawned matches 1.. run return fail
execute as @p if score @s gbg.cooldown matches ..0 at @s anchored eyes run function gbg:gun/shoot
