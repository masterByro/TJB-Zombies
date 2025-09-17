tag @s add clearing

execute if score @s Money >= PistolAmmoCost Prices if entity @e[type=armor_stand,tag=Shop,distance=..2,nbt={CustomName:"Pistol"}] run function give:pistol_buy
execute if score @s Money >= OlympiaAmmoCost Prices if entity @e[type=armor_stand,tag=Shop,distance=..2,nbt={CustomName:"Olympia"}] run function gbg:zombies/shop/guns/olympia_buy
execute if score @s Money >= ThompsonAmmoCost Prices if entity @e[type=armor_stand,tag=Shop,distance=..2,nbt={CustomName:"Thompson"}] run function gbg:zombies/shop/guns/thompson_buy
execute as @s at @s if entity @e[type=armor_stand,tag=Shop,distance=..2,nbt={CustomName:"Assault Rifle"}] run function give:assault_rifle_buy
execute as @s at @s if entity @e[type=armor_stand,tag=Shop,distance=..2,nbt={CustomName:"Sniper Rifle"}] run function give:sniper_rifle_buy
execute as @s at @s if entity @e[type=armor_stand,tag=Shop,distance=..2,nbt={CustomName:"Shotgun"}] run function give:shotgun_buy

execute as @s at @s if entity @e[type=armor_stand,tag=Shop,distance=..2,nbt={CustomName:"Land Mine"}] run function give:land_mine
execute as @s at @s if entity @e[type=armor_stand,tag=Shop,distance=..2,nbt={CustomName:"Pipe Bomb"}] run function give:pipe_bomb
execute as @s at @s if entity @e[type=armor_stand,tag=Shop,distance=..2,nbt={CustomName:"Grenade"}] run function give:grenade
execute as @s at @s if entity @e[type=armor_stand,tag=Shop,distance=..2,nbt={CustomName:"C4"}] run function give:c4

execute if score @s Money >= BowieKnifeCost Prices if entity @e[type=armor_stand,tag=Shop,distance=..2,nbt={CustomName:"Bowie Knife"}] run function give:bowie_knife
execute if score @s Money >= GalvaknucklesCost Prices if entity @e[type=armor_stand,tag=Shop,distance=..2,nbt={CustomName:"Galvaknuckles"}] run function give:galvaknuckles


#Perkacola
execute as @s at @s if entity @e[type=armor_stand,tag=Shop,tag=Juggernog,distance=..2] if score @s Money >= JuggernogPrice Prices unless entity @s[tag=Juggernog] run function gbg:zombies/perks/juggernog
execute as @s at @s if entity @e[type=armor_stand,tag=Shop,tag=QuickReload,distance=..2] if score @s Money >= SpeedColaPrice Prices unless entity @s[tag=QuickReload] run function gbg:zombies/perks/quick_reload
execute as @s at @s if entity @e[type=armor_stand,tag=Shop,tag=QuickReload,distance=..2] if score @s Money >= PackaPunchPrice Prices run function gbg:zombies/pack_a_punch/pack_a_punch


tag @s remove clearing

## summon armor_stand ~ ~ ~ {CustomName:"Thompson",CustomNameVisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["Shop"],Marker:1b}

## summon armor_stand ~ ~ ~ {CustomName:"2500",CustomNameVisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["Shop", "Juggernog", "price"],Marker:1b}
## summon armor_stand ~ ~ ~ {CustomName:"3000",CustomNameVisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["Shop", "QuickReload", "price"],Marker:1b}