execute unless entity @e[type=armor_stand,tag=mBoxDisplay,scores={rng=2}] run function give:clear_gun
tag @a[tag=mBoxUser] remove mBoxUser

execute if entity @e[type=armor_stand,tag=mBoxDisplay,scores={rng=1}] run function gbg:zombies/m_box/guns/executioner
execute if entity @e[type=armor_stand,tag=mBoxDisplay,scores={rng=2}] run item replace entity @s hotbar.3 with blaze_rod[custom_name=[{"text":"Bowie Knife","italic":false,"color":"#ce9178"}],lore=[[{"text":"Like a knife, but more so.","italic":false}]],attribute_modifiers=[{type:attack_damage,amount:12,operation:add_value,id:"1757305786040"},{type:entity_interaction_range,amount:-1.1,operation:add_value,id:"1757305786041"},{type:attack_knockback,amount:0.0000000000000000001,operation:add_value,id:"1757305786042"},{type:attack_speed,amount:-3,operation:add_value,id:"1757305786043"}],equippable={slot:offhand,swappable:0b}]
execute if entity @e[type=armor_stand,tag=mBoxDisplay,scores={rng=3}] run function gbg:zombies/m_box/guns/rpg
execute if entity @e[type=armor_stand,tag=mBoxDisplay,scores={rng=4}] run function gbg:zombies/m_box/guns/war_machine
execute if entity @e[type=armor_stand,tag=mBoxDisplay,scores={rng=5}] run function gbg:zombies/m_box/guns/python
execute if entity @e[type=armor_stand,tag=mBoxDisplay,scores={rng=6}] run function gbg:zombies/m_box/guns/barrett
execute if entity @e[type=armor_stand,tag=mBoxDisplay,scores={rng=7}] run function gbg:zombies/m_box/guns/spas_12
execute if entity @e[type=armor_stand,tag=mBoxDisplay,scores={rng=8}] run function gbg:zombies/m_box/guns/m1216
execute if entity @e[type=armor_stand,tag=mBoxDisplay,scores={rng=9}] run function gbg:zombies/m_box/guns/dsr_50
execute if entity @e[type=armor_stand,tag=mBoxDisplay,scores={rng=10}] run function gbg:zombies/m_box/guns/hamr
execute if entity @e[type=armor_stand,tag=mBoxDisplay,scores={rng=11}] run function gbg:zombies/m_box/guns/fal
execute if entity @e[type=armor_stand,tag=mBoxDisplay,scores={rng=12}] run function gbg:zombies/m_box/guns/chicom_cqb
execute if entity @e[type=armor_stand,tag=mBoxDisplay,scores={rng=13}] run function gbg:zombies/m_box/guns/type_25
execute if entity @e[type=armor_stand,tag=mBoxDisplay,scores={rng=14}] run function gbg:zombies/m_box/guns/galil
execute if entity @e[type=armor_stand,tag=mBoxDisplay,scores={rng=15}] run function gbg:zombies/m_box/guns/m8a1
execute if entity @e[type=armor_stand,tag=mBoxDisplay,scores={rng=16}] run function gbg:zombies/m_box/guns/ray_gun

playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
function gbg:zombies/m_box/finish_gun
