#executes as and at the exploding c4
summon creeper ~ ~ ~ {ExplosionRadius:3b,Fuse:1,ignited:1b,CustomName:{"text":"C4","italic":false},Tags:["zombie","gbz.zombie"],Invulnerable:1b,attributes:[{id:"minecraft:scale",base:0.01}]}
playsound gbg:distant_explosion player @a[distance=64..256] ~ ~ ~ 4096
particle explosion_emitter ~ ~ ~ 0 0 0 0.1 1 force
kill @s
