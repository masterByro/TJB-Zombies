execute store result storage gbg:macro input.damage int 1 run scoreboard players get gbg.damage gbg.temp

# Running correct damage function depending on gun damage type
execute if score gbg.damage_type gbg.temp matches 8 positioned ^ ^ ^-0.2 run function gbg:gun/shot/explosion with storage gbg:macro input
execute if score gbg.damage_type gbg.temp matches 9 positioned ^ ^ ^-0.2 run function gbg:gun/shot/safe_explosion with storage gbg:macro input

# Reseting Raycast
function gbg:gun/raycast/reset

