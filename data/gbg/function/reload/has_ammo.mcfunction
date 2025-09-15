# Letting the player reload the gun regardless, if they are in creative mode
execute if entity @s[gamemode=creative] run return 0
# Letting player reload gun if reload type is Air
execute if score gun_reload_type gbg.temp matches 7 run return 0
# If the player has the right ammo item
$execute if items entity @s container.* minecraft:$(ammo_base)[minecraft:custom_data={$(ammo_tag):1b}] run return 0
$execute if items entity @s weapon.* minecraft:$(ammo_base)[minecraft:custom_data={$(ammo_tag):1b}] run return 0
# If the player does NOT have the right ammo item
return 1
