# --- Wall Damage from Zombies ---
execute if score @s WallHealth matches 1.. if entity @e[type=zombie,distance=..2] run scoreboard players add @s WallTimer 1
execute if score @s WallTimer matches 1.. unless entity @e[type=zombie,distance=..2] run scoreboard players set @s WallTimer 0
execute if score @s WallTimer matches 60.. run function gbg:zombies/barricade/barricade_damage

# --- Slow Zombies next to wall ---
execute if score @s WallHealth matches 1.. run effect give @e[type=zombie,distance=..1] slowness 1 99 true

# --- Wall takes damage every 60 ticks ---

# --- Healing system ---
execute if score @s WallHealth matches ..99 if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:stick"}}] unless entity @e[type=zombie,distance=..1] run scoreboard players add @s HealTimer 1
execute if score @s HealTimer matches 1.. unless entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:stick"}}] run scoreboard players set @s HealTimer 0
execute if score @s HealTimer matches 1.. if entity @e[type=zombie,distance=..1.5] run scoreboard players set @s HealTimer 0

execute if score @s HealTimer matches 40.. run function gbg:zombies/barricade/barricade_heal


# --- Push players away from walls ---
tp @a[distance=..0.8,gamemode=adventure] ^ ^ ^1.2

