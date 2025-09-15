# Default base health
attribute @s minecraft:max_health base set 15

# Scale health per wave
execute if score Global Wave matches 4.. run attribute @s minecraft:max_health base set 18
execute if score Global Wave matches 6.. run attribute @s minecraft:max_health base set 20
execute if score Global Wave matches 10.. run attribute @s minecraft:max_health base set 25
execute if score Global Wave matches 20.. run attribute @s minecraft:max_health base set 30
execute if score Global Wave matches 30.. run attribute @s minecraft:max_health base set 35
execute if score Global Wave matches 40.. run attribute @s minecraft:max_health base set 40
execute if score Global Wave matches 50.. run attribute @s minecraft:max_health base set 45
execute if score Global Wave matches 60.. run attribute @s minecraft:max_health base set 50
execute if score Global Wave matches 70.. run attribute @s minecraft:max_health base set 55
execute if score Global Wave matches 80.. run attribute @s minecraft:max_health base set 60
execute if score Global Wave matches 90.. run attribute @s minecraft:max_health base set 65
execute if score Global Wave matches 100.. run attribute @s minecraft:max_health base set 70
