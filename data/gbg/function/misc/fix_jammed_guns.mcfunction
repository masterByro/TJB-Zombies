# This code executes once a second to add an projectile to a user's gun
execute as @a if items entity @s weapon.mainhand *[minecraft:custom_data~{gbg_is_gun:1b},charged_projectiles=[]] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:charged_projectiles":[{"id":"minecraft:dirt",components:{item_name:"GBG Projectile"}}]}}]
schedule function gbg:misc/fix_jammed_guns 20t replace
