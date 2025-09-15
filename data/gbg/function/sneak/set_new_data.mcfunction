# Setting Fallback values
data modify storage gbg:shoot_types damage set from entity @s SelectedItem.components.minecraft:custom_data.gbg.damage
data modify storage gbg:shoot_types range set from entity @s SelectedItem.components.minecraft:custom_data.gbg.range
data modify storage gbg:shoot_types fire_rate set from entity @s SelectedItem.components.minecraft:custom_data.gbg.fire_rate
data modify storage gbg:shoot_types projectile_type set from entity @s SelectedItem.components.minecraft:custom_data.gbg.projectile_type
data modify storage gbg:shoot_types projectile_speed set from entity @s SelectedItem.components.minecraft:custom_data.gbg.projectile_speed
data modify storage gbg:shoot_types damage_type set from entity @s SelectedItem.components.minecraft:custom_data.gbg.damage_type
data modify storage gbg:shoot_types zoom_strength set from entity @s SelectedItem.components.minecraft:custom_data.gbg.zoom_strength
data modify storage gbg:shoot_types disable_zoom_bobbing set from entity @s SelectedItem.components.minecraft:custom_data.gbg.disable_zoom_bobbing
data modify storage gbg:shoot_types recoil_strength set from entity @s SelectedItem.components.minecraft:custom_data.gbg.recoil_strength
data modify storage gbg:shoot_types zoom_recoil_strength set from entity @s SelectedItem.components.minecraft:custom_data.gbg.zoom_recoil_strength
data modify storage gbg:shoot_types max_ammo set from entity @s SelectedItem.components.minecraft:custom_data.gbg.max_ammo
data modify storage gbg:shoot_types current_ammo set from entity @s SelectedItem.components.minecraft:custom_data.gbg.current_ammo
data modify storage gbg:shoot_types reload_speed set from entity @s SelectedItem.components.minecraft:custom_data.gbg.reload_speed
data modify storage gbg:shoot_types reload_type set from entity @s SelectedItem.components.minecraft:custom_data.gbg.reload_type
data modify storage gbg:shoot_types ammo_base set from entity @s SelectedItem.components.minecraft:custom_data.gbg.ammo_base
data modify storage gbg:shoot_types ammo_item_tag set from entity @s SelectedItem.components.minecraft:custom_data.gbg.ammo_item_tag
data modify storage gbg:shoot_types shoot_sound set from entity @s SelectedItem.components.minecraft:custom_data.gbg.shoot_sound
data modify storage gbg:shoot_types reload_sound set from entity @s SelectedItem.components.minecraft:custom_data.gbg.reload_sound
data modify storage gbg:shoot_types idle_model set from entity @s SelectedItem.components.minecraft:custom_data.gbg.idle_model
data modify storage gbg:shoot_types zoom_model set from entity @s SelectedItem.components.minecraft:custom_data.gbg.zoom_model
data modify storage gbg:shoot_types above_text set from entity @s SelectedItem.components.minecraft:custom_data.gbg.above_text

# Getting new gun stat values
$data modify storage gbg:shoot_types damage set from entity @s SelectedItem.components.minecraft:custom_data.gbg.shoot_types[$(next_shoot_type)].damage
$data modify storage gbg:shoot_types range set from entity @s SelectedItem.components.minecraft:custom_data.gbg.shoot_types[$(next_shoot_type)].range
$data modify storage gbg:shoot_types fire_rate set from entity @s SelectedItem.components.minecraft:custom_data.gbg.shoot_types[$(next_shoot_type)].fire_rate
$data modify storage gbg:shoot_types projectile_type set from entity @s SelectedItem.components.minecraft:custom_data.gbg.shoot_types[$(next_shoot_type)].projectile_type
$data modify storage gbg:shoot_types projectile_speed set from entity @s SelectedItem.components.minecraft:custom_data.gbg.shoot_types[$(next_shoot_type)].projectile_speed
$data modify storage gbg:shoot_types damage_type set from entity @s SelectedItem.components.minecraft:custom_data.gbg.shoot_types[$(next_shoot_type)].damage_type
$data modify storage gbg:shoot_types zoom_strength set from entity @s SelectedItem.components.minecraft:custom_data.gbg.shoot_types[$(next_shoot_type)].zoom_strength
$data modify storage gbg:shoot_types disable_zoom_bobbing set from entity @s SelectedItem.components.minecraft:custom_data.gbg.shoot_types[$(next_shoot_type)].disable_zoom_bobbing
$data modify storage gbg:shoot_types recoil_strength set from entity @s SelectedItem.components.minecraft:custom_data.gbg.shoot_types[$(next_shoot_type)].recoil_strength
$data modify storage gbg:shoot_types zoom_recoil_strength set from entity @s SelectedItem.components.minecraft:custom_data.gbg.shoot_types[$(next_shoot_type)].zoom_recoil_strength
$data modify storage gbg:shoot_types max_ammo set from entity @s SelectedItem.components.minecraft:custom_data.gbg.shoot_types[$(next_shoot_type)].max_ammo
$data modify storage gbg:shoot_types current_ammo set from entity @s SelectedItem.components.minecraft:custom_data.gbg.shoot_types[$(next_shoot_type)].current_ammo
$data modify storage gbg:shoot_types reload_speed set from entity @s SelectedItem.components.minecraft:custom_data.gbg.shoot_types[$(next_shoot_type)].reload_speed
$data modify storage gbg:shoot_types reload_type set from entity @s SelectedItem.components.minecraft:custom_data.gbg.shoot_types[$(next_shoot_type)].reload_type
$data modify storage gbg:shoot_types ammo_base set from entity @s SelectedItem.components.minecraft:custom_data.gbg.shoot_types[$(next_shoot_type)].ammo_base
$data modify storage gbg:shoot_types ammo_item_tag set from entity @s SelectedItem.components.minecraft:custom_data.gbg.shoot_types[$(next_shoot_type)].ammo_item_tag
$data modify storage gbg:shoot_types shoot_sound set from entity @s SelectedItem.components.minecraft:custom_data.gbg.shoot_types[$(next_shoot_type)].shoot_sound
$data modify storage gbg:shoot_types reload_sound set from entity @s SelectedItem.components.minecraft:custom_data.gbg.shoot_types[$(next_shoot_type)].reload_sound
$data modify storage gbg:shoot_types idle_model set from entity @s SelectedItem.components.minecraft:custom_data.gbg.shoot_types[$(next_shoot_type)].idle_model
$data modify storage gbg:shoot_types zoom_model set from entity @s SelectedItem.components.minecraft:custom_data.gbg.shoot_types[$(next_shoot_type)].zoom_model
$data modify storage gbg:shoot_types above_text set from entity @s SelectedItem.components.minecraft:custom_data.gbg.shoot_types[$(next_shoot_type)].above_text

# Storing value of current mode's ammo for it to be stored
data modify storage gbg:shoot_types stored_ammo set from entity @s SelectedItem.components.minecraft:custom_data.gbg.current_ammo
$item modify entity @s weapon.mainhand {"function": "minecraft:copy_custom_data","source": {"type": "minecraft:storage","source": "gbg:shoot_types"},"ops": [{"source": "stored_ammo","target": "gbg.shoot_types[$(current_shoot_type)].current_ammo","op": "replace"}]}

# Setting new values as current stats
item modify entity @s weapon.mainhand gbg:swap_shoot_type
