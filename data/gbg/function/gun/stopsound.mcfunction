# Stopping the default crossbow fire sound for crossbow guns
execute as @a if items entity @s weapon.mainhand *[minecraft:custom_data~{gbg_is_gun:1b}] at @s run stopsound @a[distance=..16] * item.crossbow.shoot
