execute store result score @e[type=armor_stand,tag=mBoxDisplay,limit=1, tag=cycling] rng run random value 1..16
execute if score @e[type=armor_stand,tag=mBoxDisplay,limit=1, tag=cycling] rng matches 1 run loot replace entity @e[type=armor_stand,tag=mBoxDisplay,limit=1] weapon.mainhand loot gbg:items/gun/modern/executioner
execute if score @e[type=armor_stand,tag=mBoxDisplay,limit=1, tag=cycling] rng matches 2 run item replace entity @e[type=armor_stand,tag=mBoxDisplay,limit=1] weapon.mainhand with blaze_rod
execute if score @e[type=armor_stand,tag=mBoxDisplay,limit=1, tag=cycling] rng matches 3 run loot replace entity @e[type=armor_stand,tag=mBoxDisplay,limit=1] weapon.mainhand loot gbg:items/gun/modern/rpg
execute if score @e[type=armor_stand,tag=mBoxDisplay,limit=1, tag=cycling] rng matches 4 run loot replace entity @e[type=armor_stand,tag=mBoxDisplay,limit=1] weapon.mainhand loot gbg:items/gun/modern/war_machine
execute if score @e[type=armor_stand,tag=mBoxDisplay,limit=1, tag=cycling] rng matches 5 run loot replace entity @e[type=armor_stand,tag=mBoxDisplay,limit=1] weapon.mainhand loot gbg:items/gun/modern/python
execute if score @e[type=armor_stand,tag=mBoxDisplay,limit=1, tag=cycling] rng matches 6 run loot replace entity @e[type=armor_stand,tag=mBoxDisplay,limit=1] weapon.mainhand loot gbg:items/gun/modern/barrett_m82
execute if score @e[type=armor_stand,tag=mBoxDisplay,limit=1, tag=cycling] rng matches 7 run loot replace entity @e[type=armor_stand,tag=mBoxDisplay,limit=1] weapon.mainhand loot gbg:items/gun/modern/spas_12
execute if score @e[type=armor_stand,tag=mBoxDisplay,limit=1, tag=cycling] rng matches 8 run loot replace entity @e[type=armor_stand,tag=mBoxDisplay,limit=1] weapon.mainhand loot gbg:items/gun/standard/m1216
execute if score @e[type=armor_stand,tag=mBoxDisplay,limit=1, tag=cycling] rng matches 9 run loot replace entity @e[type=armor_stand,tag=mBoxDisplay,limit=1] weapon.mainhand loot gbg:items/gun/standard/dsr_50
execute if score @e[type=armor_stand,tag=mBoxDisplay,limit=1, tag=cycling] rng matches 10 run loot replace entity @e[type=armor_stand,tag=mBoxDisplay,limit=1] weapon.mainhand loot gbg:items/gun/standard/hamr
execute if score @e[type=armor_stand,tag=mBoxDisplay,limit=1, tag=cycling] rng matches 11 run loot replace entity @e[type=armor_stand,tag=mBoxDisplay,limit=1] weapon.mainhand loot gbg:items/gun/modern/fal
execute if score @e[type=armor_stand,tag=mBoxDisplay,limit=1, tag=cycling] rng matches 12 run loot replace entity @e[type=armor_stand,tag=mBoxDisplay,limit=1] weapon.mainhand loot gbg:items/gun/modern/chicom_cqb
execute if score @e[type=armor_stand,tag=mBoxDisplay,limit=1, tag=cycling] rng matches 13 run loot replace entity @e[type=armor_stand,tag=mBoxDisplay,limit=1] weapon.mainhand loot gbg:items/gun/modern/type_25
execute if score @e[type=armor_stand,tag=mBoxDisplay,limit=1, tag=cycling] rng matches 14 run loot replace entity @e[type=armor_stand,tag=mBoxDisplay,limit=1] weapon.mainhand loot gbg:items/gun/modern/galil
execute if score @e[type=armor_stand,tag=mBoxDisplay,limit=1, tag=cycling] rng matches 15 run loot replace entity @e[type=armor_stand,tag=mBoxDisplay,limit=1] weapon.mainhand loot gbg:items/gun/modern/m8a1
execute if score @e[type=armor_stand,tag=mBoxDisplay,limit=1, tag=cycling] rng matches 16 run loot replace entity @e[type=armor_stand,tag=mBoxDisplay,limit=1] weapon.mainhand loot gbg:items/gun/ray/ray_gun


execute as @e[type=armor_stand,tag=mBoxDisplay,limit=1,tag=cycling] run schedule function gbg:zombies/m_box/next_gun 5t
