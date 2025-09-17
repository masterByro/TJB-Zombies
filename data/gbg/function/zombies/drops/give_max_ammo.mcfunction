
execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"Barrett M82"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"Barrett M82"}}}]} run tag @s add owned
execute if entity @s[tag=owned] run clear @s minecraft:command_block[minecraft:custom_data={barrett_m82_magazine:1b}]
execute if entity @s[tag=owned] run loot give @s loot gbg:items/ammo/standard/barrett_m82_magazine
tag @s remove owned

execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"Chicom CQB"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"Chicom CQB"}}}]} run tag @s add owned
execute if entity @s[tag=owned] run clear @s minecraft:command_block[minecraft:custom_data={chicom_cqb_magazine:1b}]
execute if entity @s[tag=owned] run loot give @s loot gbg:items/ammo/standard/chicom_cqb_magazine
tag @s remove owned

execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"DSR 50"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"DSR 50"}}}]} run tag @s add owned
execute if entity @s[tag=owned] run clear @s minecraft:command_block[minecraft:custom_data={dsr_50_magazine:1b}]
execute if entity @s[tag=owned] run loot give @s loot gbg:items/ammo/standard/dsr_50_magazine
tag @s remove owned

execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"Executioner"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"Executioner"}}}]} run tag @s add owned
execute if entity @s[tag=owned] run clear @s minecraft:command_block[minecraft:custom_data={executioner_bullets:1b}]
execute if entity @s[tag=owned] run loot give @s loot gbg:items/ammo/standard/executioner_bullets
tag @s remove owned

execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"FAL"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"FAL"}}}]} run tag @s add owned
execute if entity @s[tag=owned] run clear @s minecraft:command_block[minecraft:custom_data={fal_magazine:1b}]
execute if entity @s[tag=owned] run loot give @s loot gbg:items/ammo/standard/fal_magazine
tag @s remove owned

execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"Galil"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"Galil"}}}]} run tag @s add owned
execute if entity @s[tag=owned] run clear @s minecraft:command_block[minecraft:custom_data={galil_magazine:1b}]
execute if entity @s[tag=owned] run loot give @s loot gbg:items/ammo/standard/galil_magazine
tag @s remove owned

execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"HAMR"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"HAMR"}}}]} run tag @s add owned
execute if entity @s[tag=owned] run clear @s minecraft:command_block[minecraft:custom_data={hamr_canister:1b}]
execute if entity @s[tag=owned] run loot give @s loot gbg:items/ammo/standard/hamr_canister
tag @s remove owned

execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"M8A1"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"M8A1"}}}]} run tag @s add owned
execute if entity @s[tag=owned] run clear @s minecraft:command_block[minecraft:custom_data={m8a1_magazine:1b}]
execute if entity @s[tag=owned] run loot give @s loot gbg:items/ammo/standard/m8a1_magazine
tag @s remove owned

execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"M1216"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"M1216"}}}]} run tag @s add owned
execute if entity @s[tag=owned] run clear @s minecraft:command_block[minecraft:custom_data={m1216_shell:1b}]
execute if entity @s[tag=owned] run loot give @s loot gbg:items/ammo/standard/m1216_shell
tag @s remove owned

execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"Python"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"Python"}}}]} run tag @s add owned
execute if entity @s[tag=owned] run clear @s minecraft:command_block[minecraft:custom_data={python_bullets:1b}]
execute if entity @s[tag=owned] run loot give @s loot gbg:items/ammo/standard/python_bullets
tag @s remove owned

execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"Ray Gun"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"Ray Gun"}}}]} run tag @s add owned
execute if entity @s[tag=owned] run clear @s minecraft:command_block[minecraft:custom_data={ray_gun_battery:1b}]
execute if entity @s[tag=owned] run loot give @s loot gbg:items/ammo/laser/ray_gun_battery
tag @s remove owned

execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"RPG"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"RPG"}}}]} run tag @s add owned
execute if entity @s[tag=owned] run clear @s minecraft:command_block[minecraft:custom_data={rpg_rocket:1b}]
execute if entity @s[tag=owned] run loot give @s loot gbg:items/ammo/standard/rpg_rocket
tag @s remove owned

execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"Spas 12"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"Spas 12"}}}]} run tag @s add owned
execute if entity @s[tag=owned] run clear @s minecraft:command_block[minecraft:custom_data={spas_12_shell:1b}]
execute if entity @s[tag=owned] run loot give @s loot gbg:items/ammo/standard/spas_12_shell
tag @s remove owned

execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"Type 25"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"Type 25"}}}]} run tag @s add owned
execute if entity @s[tag=owned] run clear @s minecraft:command_block[minecraft:custom_data={type_25_magazine:1b}]
execute if entity @s[tag=owned] run loot give @s loot gbg:items/ammo/standard/type_25_magazine
tag @s remove owned

execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"War Machine"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"War Machine"}}}]} run tag @s add owned
execute if entity @s[tag=owned] run clear @s minecraft:command_block[minecraft:custom_data={war_machine_rounds:1b}]
execute if entity @s[tag=owned] run loot give @s loot gbg:items/ammo/standard/war_machine_rounds
tag @s remove owned

execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"Olympia"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"Olympia"}}}]} run tag @s add owned
execute if entity @s[tag=owned] run clear @s minecraft:command_block[minecraft:custom_data={olympia_shell:1b}]
execute if entity @s[tag=owned] run loot give @s loot gbg:items/ammo/standard/olympia_shell
tag @s remove owned

execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"Thompson"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"Thompson"}}}]} run tag @s add owned
execute if entity @s[tag=owned] run clear @s minecraft:command_block[minecraft:custom_data={thompson_magazine:1b}]
execute if entity @s[tag=owned] run loot give @s loot gbg:items/ammo/standard/thompson_magazine
tag @s remove owned

execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_name":{text:"Colt M1911"}}}]} run tag @s add owned
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_name":{text:"Colt M1911"}}}]} run tag @s add owned
execute if entity @s[tag=owned] run clear @s minecraft:command_block[minecraft:custom_data={colt_m1911_magazine:1b}]
execute if entity @s[tag=owned] run loot give @s loot gbg:items/ammo/standard/colt_m1911_magazine
tag @s remove owned

