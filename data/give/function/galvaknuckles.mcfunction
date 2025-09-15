execute if data entity @s {Inventory:[{Slot:3b,components:{"minecraft:custom_name":{text:"Galvaknuckles"}}}]} run tag @s add owned

execute unless entity @s[tag=owned] run item replace entity @s hotbar.3 with breeze_rod[custom_name=[{"text":"Galvaknuckles","italic":false,"color":"#ce9178"}],lore=[[{"text":"The one hit wonder","italic":false}]],attribute_modifiers=[{type:attack_damage,amount:24,operation:add_value,id:"1757305786040"},{type:entity_interaction_range,amount:-1.1,operation:add_value,id:"1757305786041"},{type:attack_knockback,amount:0.0000000000000000001,operation:add_value,id:"1757305786042"},{type:attack_speed,amount:-3,operation:add_value,id:"1757305786043"}],equippable={slot:offhand,swappable:0b}]
execute unless entity @s[tag=owned] run scoreboard players operation @s Money -= GalvaknucklesCost Prices
execute unless entity @s[tag=owned] run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1

tag @s remove owned
