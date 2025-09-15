#scheduling itself
schedule function gbg:misc/scoreboard_add 4s replace

#scoreboards
execute as @a unless score @s gbg.id matches 1.. run function gbg:misc/id_add
scoreboard players add @a gbg.cooldown 0
scoreboard players add @e[type=#gbg:monster_player] gbg.behind_cover 0

#giving recipes
# recipe give @a gbg:ammo/laser/15v_laser_battery
# recipe give @a gbg:ammo/laser/15v_laser_battery_bundle
# recipe give @a gbg:ammo/laser/15v_laser_battery_from_15v_laser_battery
# recipe give @a gbg:ammo/laser/9v_laser_battery
# recipe give @a gbg:ammo/standard/assault_rifle_magazine
# recipe give @a gbg:ammo/standard/flamethrower_canister
# recipe give @a gbg:ammo/standard/minigun_canister
# recipe give @a gbg:ammo/standard/pistol_magazine
# recipe give @a gbg:ammo/standard/rocket
# recipe give @a gbg:ammo/standard/shotgun_shell
# recipe give @a gbg:ammo/standard/sniper_rifle_magazine
# recipe give @a gbg:equipment/c4
# recipe give @a gbg:equipment/c4_remote
# recipe give @a gbg:equipment/land_mine
# recipe give @a gbg:gun/laser/assault_laser_rifle
# recipe give @a gbg:gun/laser/laser_cannon
# recipe give @a gbg:gun/laser/laser_pistol
# recipe give @a gbg:gun/laser/laser_rifle
# recipe give @a gbg:gun/standard/assault_rifle
# recipe give @a gbg:gun/standard/bazooka
# recipe give @a gbg:gun/standard/flamethrower
# recipe give @a gbg:gun/standard/minigun
# recipe give @a gbg:gun/standard/pistol
# recipe give @a gbg:gun/standard/shotgun
# recipe give @a gbg:gun/standard/sniper_rifle
# recipe give @a gbg:gun/ray/ray_gun
# recipe give @a gbg:medical/absorption_syringe
# recipe give @a gbg:medical/adv_bandage
# recipe give @a gbg:medical/antidote_syringe
# recipe give @a gbg:medical/simple_bandage
# recipe give @a gbg:medical/health_boost_syringe
# recipe give @a gbg:medical/laser_shield
# recipe give @a gbg:medical/medkit
# recipe give @a gbg:medical/regeneration_syringe
# recipe give @a gbg:medical/resistance_syringe
# recipe give @a gbg:medical/swiftness_syringe
# recipe give @a gbg:medical/syringe
# recipe give @a gbg:throwables/pipe_bomb
# recipe give @a gbg:throwables/grenade
# recipe give @a gbg:throwables/molotov_cocktail
# recipe give @a gbg:throwables/chemical_grenade
# recipe give @a gbg:throwables/smoke_grenade
# recipe give @a gbg:turret/auto
# recipe give @a gbg:turret/perdition
# recipe give @a gbg:turret/sentry
