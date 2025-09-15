tag @s add Juggernog
item replace entity @s armor.feet with leather_boots[custom_name=[{"text":"Best boots","italic":false}],attribute_modifiers=[{type:max_health,amount:-8,operation:add_value,id:"1757489523855"}],equippable={slot:feet,swappable:0b,damage_on_hurt:0b},unbreakable={}]
scoreboard players operation @s Money -= JuggernogPrice Prices
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1

