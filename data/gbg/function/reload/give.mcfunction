# When in Overworld
execute if entity @s[predicate=gbg:overworld] run setblock ~ -64 ~ chest
execute if entity @s[predicate=gbg:overworld] run item replace block ~ -64 ~ container.0 from entity @s weapon.mainhand
execute if entity @s[predicate=gbg:overworld] run item replace entity @s weapon.mainhand from entity @s weapon.offhand
execute if entity @s[predicate=gbg:overworld] run item replace entity @s weapon.offhand from block ~ -64 ~ container.0
execute if entity @s[predicate=gbg:overworld] run setblock ~ -64 ~ bedrock

# When in Nether
execute if entity @s[predicate=gbg:nether] run setblock ~ 0 ~ chest
execute if entity @s[predicate=gbg:nether] run item replace block ~ 0 ~ container.0 from entity @s weapon.mainhand
execute if entity @s[predicate=gbg:nether] run item replace entity @s weapon.mainhand from entity @s weapon.offhand
execute if entity @s[predicate=gbg:nether] run item replace entity @s weapon.offhand from block ~ 0 ~ container.0
execute if entity @s[predicate=gbg:nether] run setblock ~ 0 ~ bedrock

# When in End
execute if entity @s[predicate=gbg:end] run setblock ~ 0 ~ chest
execute if entity @s[predicate=gbg:end] run item replace block ~ 0 ~ container.0 from entity @s weapon.mainhand
execute if entity @s[predicate=gbg:end] run item replace entity @s weapon.mainhand from entity @s weapon.offhand
execute if entity @s[predicate=gbg:end] run item replace entity @s weapon.offhand from block ~ 0 ~ container.0
execute if entity @s[predicate=gbg:end] run setblock ~ 0 ~ air


