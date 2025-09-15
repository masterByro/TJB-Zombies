scoreboard players reset whichisit gbg.temp
## Running Specific Actions depending on the value of the trigger
# Changing Target Type
execute if score @s turret_settings matches 2..5 unless score @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=1..2}] gbg.id = @s gbg.id run title @s actionbar {"text":"You do not own this turret.","color":"red"}
execute if score @s turret_settings matches 2 if score @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=1..2}] gbg.id = @s gbg.id run scoreboard players set @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=1..2}] gbg.target_type 1
execute if score @s turret_settings matches 3 if score @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=1..2}] gbg.id = @s gbg.id run scoreboard players set @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=1..2}] gbg.target_type 2
execute if score @s turret_settings matches 4 if score @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=1..2}] gbg.id = @s gbg.id run scoreboard players set @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=1..2}] gbg.target_type 3
execute if score @s turret_settings matches 5 if score @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=1..2}] gbg.id = @s gbg.id run scoreboard players set @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=1..2}] gbg.target_type 4
# Repair
execute if score @s turret_settings matches 6 run function gbg:turret/settings/repair
# Pickup
execute if score @s turret_settings matches 7 run function gbg:turret/settings/pickup
# Salvage
execute if score @s turret_settings matches 8 run function gbg:turret/settings/salvage

## Sending the menu in chat
tellraw @s {"text":" ","color":"gray"}
tellraw @s {"text":" ","color":"gray"}
tellraw @s {"text":" ","color":"gray"}
tellraw @s {"text":" ","color":"gray"}
tellraw @s {"text":" ","color":"gray"}
tellraw @s {"text":" ","color":"gray"}
tellraw @s {"text":" ","color":"gray"}
tellraw @s {"text":" ","color":"gray"}
tellraw @s {"text":" ","color":"gray"}
tellraw @s {"text":" ","color":"gray"}
tellraw @s {"text":" ","color":"gray"}
tellraw @s {"text":" ","color":"gray"}
tellraw @s {"text":"----------------------------------------","color":"gray"}
# Turret Type
execute if entity @e[type=armor_stand,tag=auto,limit=1,sort=nearest,distance=..4] run scoreboard players set whichisit gbg.temp 1
execute unless score whichisit gbg.temp matches 1.. if entity @e[type=armor_stand,tag=sentry,limit=1,sort=nearest,distance=..4] run scoreboard players set whichisit gbg.temp 2
execute unless score whichisit gbg.temp matches 1.. if entity @e[type=armor_stand,tag=perdition,limit=1,sort=nearest,distance=..4] run scoreboard players set whichisit gbg.temp 3
execute if score whichisit gbg.temp matches 1 run tellraw @s ["",{"text":"Turret Type: "},{"text":"Auto Turret","color":"yellow"}]
execute if score whichisit gbg.temp matches 2 run tellraw @s ["",{"text":"Turret Type: "},{"text":"Sentry Turret","color":"yellow"}]
execute if score whichisit gbg.temp matches 3 run tellraw @s ["",{"text":"Turret Type: "},{"text":"Perdition Turret","color":"yellow"}]
# Target Type
execute if score @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=1..2}] gbg.target_type matches 1 run tellraw @s ["",{"text":"Target Type: "},{"text":"[<]","bold":true,"color":"gray"},{"text":" Monsters","color":"red"},{"text":" "},{"text":"[>]","bold":true,"color":"gold","click_event":{"action":"run_command","command":"/trigger turret_settings set 3"},"hover_event":{"action":"show_text","value":"Change Target Type"}}]
execute if score @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=1..2}] gbg.target_type matches 2 run tellraw @s ["",{"text":"Target Type: "},{"text":"[<]","bold":true,"color":"gold","click_event":{"action":"run_command","command":"/trigger turret_settings set 2"},"hover_event":{"action":"show_text","value":"Change Target Type"}},{"text":" Players","color":"red"},{"text":" "},{"text":"[>]","bold":true,"color":"gold","click_event":{"action":"run_command","command":"/trigger turret_settings set 4"},"hover_event":{"action":"show_text","value":"Change Target Type"}}]
execute if score @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=1..2}] gbg.target_type matches 3 run tellraw @s ["",{"text":"Target Type: "},{"text":"[<]","bold":true,"color":"gold","click_event":{"action":"run_command","command":"/trigger turret_settings set 3"},"hover_event":{"action":"show_text","value":"Change Target Type"}},{"text":" Monsters & Players","color":"red"},{"text":" "},{"text":"[>]","bold":true,"color":"gold","click_event":{"action":"run_command","command":"/trigger turret_settings set 5"},"hover_event":{"action":"show_text","value":"Change Target Type"}}]
execute if score @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=1..2}] gbg.target_type matches 4 run tellraw @s ["",{"text":"Target Type: "},{"text":"[<]","bold":true,"color":"gold","click_event":{"action":"run_command","command":"/trigger turret_settings set 4"},"hover_event":{"action":"show_text","value":"Change Target Type"}},{"text":" No Target","color":"red"},{"text":" "},{"text":"[>]","bold":true,"color":"gray"}]
# Repairing
execute if score @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=1..2}] gbg.turret_hp = @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=1..2}] gbg.max_hp run tellraw @s ["",{"text":"Repair Turret: "},{"text":"[","bold":true,"color":"gray"},{"text":"❤","bold":false,"color":"gray"},{"text":"]","bold":true,"color":"gray"}]
execute unless score @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=1..2}] gbg.turret_hp = @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=1..2}] gbg.max_hp run tellraw @s ["",{"text":"Repair Turret: "},{"text":"[","bold":true,"color":"aqua","click_event":{"action":"run_command","command":"/trigger turret_settings set 6"},"hover_event":{"action":"show_text","value":"Spend 1 Iron Ingot to repair 10 HP"}},{"text":"❤","bold":false,"color":"aqua","click_event":{"action":"run_command","command":"/trigger turret_settings set 6"},"hover_event":{"action":"show_text","value":"Spend 1 Iron Ingot to repair 10 HP"}},{"text":"]","bold":true,"color":"aqua","click_event":{"action":"run_command","command":"/trigger turret_settings set 6"},"hover_event":{"action":"show_text","value":"Spend 1 Iron Ingot to repair 10 HP"}}]
# Pickup
execute unless score @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=1..2}] gbg.turret_hp = @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=1..2}] gbg.max_hp run tellraw @s ["",{"text":"Pickup Turret: "},{"text":"[↑]","bold":true,"color":"gray"}]
execute if score @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=1..2}] gbg.turret_hp = @e[type=pig,tag=turret,limit=1,sort=nearest,distance=..4,scores={gbg.turret_stage=1..2}] gbg.max_hp run tellraw @s ["",{"text":"Pickup Turret: "},{"text":"[↑]","bold":true,"color":"green","click_event":{"action":"run_command","command":"/trigger turret_settings set 7"},"hover_event":{"action":"show_text","value":"Pick up the turret into an item"}}]
# Salvage
execute if entity @e[type=armor_stand,tag=turret,limit=1,sort=nearest,distance=..4,tag=destroyed] run tellraw @s ["",{"text":"Salvage Turret: "},{"text":"[⛏]","bold":true,"color":"dark_aqua","click_event":{"action":"run_command","command":"/trigger turret_settings set 8"},"hover_event":{"action":"show_text","value":"Salvage the Current Turret"}}]
# If No Turret
execute unless entity @e[type=armor_stand,tag=turret,limit=1,sort=nearest,distance=..4] run tellraw @s ["",{"text":"No Nearby Turrets!","color":"dark_red"}]
tellraw @s {"text":"----------------------------------------","color":"gray"}


