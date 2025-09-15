
scoreboard players set @s DownTimer 0
tag @s remove Downed
tag @s remove Juggernog
effect clear @s
clear @s
gamemode adventure @s
effect give @s minecraft:saturation infinite 1 true
execute as @s run attribute @s minecraft:jump_strength base set 0.01
tp @s 27 21 13
team join Survivors @s

tag @s add clearing
item replace entity @s armor.feet with leather_boots[custom_name=[{"text":"Best boots","italic":false}],attribute_modifiers=[{type:max_health,amount:-14,operation:add_value,id:"1757489523855"}],equippable={slot:feet,swappable:0b,damage_on_hurt:0b},unbreakable={}]
item replace entity @s hotbar.0 with minecraft:black_concrete[custom_name=[{"text":"Pipe Bomb slot"}]]
item replace entity @s hotbar.1 with stick[custom_name=[{"text":"Repair","italic":false}],lore=[[{"text":"Hold to repair barricades","italic":false}]]]
execute as @s run loot give @s loot gbg:items/throwables/grenade
execute as @s run loot give @s loot gbg:items/throwables/grenade
item replace entity @s hotbar.3 with bone[custom_name=[{"text":"Combat Knife","italic":false,"color":"#ce9178"}],lore=[[{"text":"Standard kit","italic":false}]],attribute_modifiers=[{type:attack_damage,amount:6,operation:add_value,id:"1757305786040"},{type:entity_interaction_range,amount:-1.1,operation:add_value,id:"1757305786041"},{type:attack_knockback,amount:0.0000000000000000001,operation:add_value,id:"1757305786042"},{type:attack_speed,amount:-3,operation:add_value,id:"1757305786043"}],equippable={slot:offhand,swappable:0b}]
loot give @s loot gbg:items/gun/standard/colt_m1911
item replace entity @s hotbar.5 with minecraft:black_concrete[custom_name=[{"text":"Gun slot"}]]
execute as @s run function give:c4_remote
item replace entity @s hotbar.7 with minecraft:black_concrete[custom_name=[{"text":"C4 slot"}]]
item replace entity @s hotbar.8 with minecraft:black_concrete[custom_name=[{"text":"Land mine slot"}]]
loot give @s loot gbg:items/ammo/standard/colt_m1911_magazine
loot give @s loot gbg:items/ammo/standard/colt_m1911_magazine
loot give @s loot gbg:items/ammo/standard/colt_m1911_magazine
loot give @s loot gbg:items/ammo/standard/colt_m1911_magazine

tag @s remove clearing


