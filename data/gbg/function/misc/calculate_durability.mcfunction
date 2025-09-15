scoreboard players reset gbg.new_durability gbg.temp
# Putting numbers on temp scoreboards
scoreboard players operation new_durability1 gbg.temp = gbg.current_ammo gbg.temp
scoreboard players operation new_durability2 gbg.temp = gbg.max_ammo gbg.temp
# Multiplying the numerator by 100 so the resulting proportion isn't a fraction
scoreboard players operation new_durability1 gbg.temp *= 100 number
# Dividing the current ammo by the max ammo
scoreboard players operation new_durability1 gbg.temp /= new_durability2 gbg.temp
# Setting the value to another scoreboard
scoreboard players operation gbg.new_durability gbg.temp = new_durability1 gbg.temp
# Resetting the temp scoreboards
scoreboard players reset new_durability1 gbg.temp
scoreboard players reset new_durability2 gbg.temp
