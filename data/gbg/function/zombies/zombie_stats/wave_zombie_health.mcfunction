# Default base health
attribute @s minecraft:max_health base set 15

# Scale health per wave
execute if score Global Wave matches 3.. run attribute @s minecraft:max_health base set 18
execute if score Global Wave matches 6.. run attribute @s minecraft:max_health base set 20
execute if score Global Wave matches 8.. run attribute @s minecraft:max_health base set 25
execute if score Global Wave matches 11.. run attribute @s minecraft:max_health base set 30
execute if score Global Wave matches 13.. run attribute @s minecraft:max_health base set 35
execute if score Global Wave matches 15.. run attribute @s minecraft:max_health base set 40
execute if score Global Wave matches 17.. run attribute @s minecraft:max_health base set 45
execute if score Global Wave matches 19.. run attribute @s minecraft:max_health base set 50
execute if score Global Wave matches 21.. run attribute @s minecraft:max_health base set 55
execute if score Global Wave matches 23.. run attribute @s minecraft:max_health base set 60
execute if score Global Wave matches 25.. run attribute @s minecraft:max_health base set 65
execute if score Global Wave matches 28.. run attribute @s minecraft:max_health base set 70
