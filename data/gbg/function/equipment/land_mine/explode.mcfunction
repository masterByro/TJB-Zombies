summon creeper ~ ~ ~ {ExplosionRadius:3b,Fuse:1,ignited:1b,CustomName:{"text":"Land Mine","italic":false},Tags:["zombie","gbz.zombie"],Health:1000f,attributes:[{id:max_health,base:1000,id:"minecraft:scale",base:0.01}]}
playsound gbg:distant_explosion player @a[distance=64..256] ~ ~ ~ 4096
particle explosion_emitter ~ ~ ~ 0 0 0 0.1 1 force
kill @s
