scoreboard players set @s Jumps 0
execute if entity @e[type=armor_stand,tag=Shop,distance=..2] run function gbg:zombies/shop/shop_check
execute if entity @e[type=armor_stand,tag=door,distance=..2] run function gbg:zombies/doors/doors_check
execute if entity @e[type=armor_stand,tag=mBox,distance=..2,tag=!busy] if score @s Money matches 950.. run function gbg:zombies/m_box/mystery_box
execute if entity @e[type=armor_stand,tag=mBox,distance=..2,tag=falling] if entity @s[tag=mBoxUser] run function gbg:zombies/m_box/select_gun
