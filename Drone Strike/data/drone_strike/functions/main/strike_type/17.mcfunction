execute if entity @s[tag=!gas] run summon arrow ~ ~30 ~ {Owner:[I;0,0,0,0],PierceLevel:99,damage:0.8d,Motion:[0d,-10d,0d],Tags:["droneStrike","16","17","gas"],CustomNameVisible:1b,CustomName:'[{"text":"[","color":"white"},{"text":"Drone Strike","color":"yellow"},{"text":"] ","color":"white"},{"text":"Nuke","color":"black"}]'}

#Nuke explosion 1st layer
execute if entity @s[tag=gas] run summon fireball ~ ~ ~ {Motion:[0d,-6d,0d],Tags:["nuke"],ExplosionPower:80}
execute if entity @s[tag=gas] run summon creeper ~6 ~20 ~6 {Tags:["nuke"],ExplosionRadius:20,Fuse:0,Invulnerable:1b}
execute if entity @s[tag=gas] run summon creeper ~6 ~20 ~-6 {Tags:["nuke"],ExplosionRadius:20,Fuse:0,Invulnerable:1b}
execute if entity @s[tag=gas] run summon creeper ~-6 ~20 ~6 {Tags:["nuke"],ExplosionRadius:20,Fuse:0,Invulnerable:1b}
execute if entity @s[tag=gas] run summon creeper ~-6 ~20 ~-6 {Tags:["nuke"],ExplosionRadius:20,Fuse:0,Invulnerable:1b}

#Nuke explosion 2nd layer
execute if entity @s[tag=gas] run summon creeper ~20 ~ ~ {Tags:["nuke"],ExplosionRadius:20,Fuse:0,Invulnerable:1b}
execute if entity @s[tag=gas] run summon creeper ~-20 ~ ~ {Tags:["nuke"],ExplosionRadius:20,Fuse:0,Invulnerable:1b}
execute if entity @s[tag=gas] run summon creeper ~ ~ ~20 {Tags:["nuke"],ExplosionRadius:20,Fuse:0,Invulnerable:1b}
execute if entity @s[tag=gas] run summon creeper ~ ~ ~-20 {Tags:["nuke"],ExplosionRadius:20,Fuse:0,Invulnerable:1b}
execute if entity @s[tag=gas] run summon creeper ~13 ~ ~13 {Tags:["nuke"],ExplosionRadius:20,Fuse:0,Invulnerable:1b}
execute if entity @s[tag=gas] run summon creeper ~13 ~ ~-13 {Tags:["nuke"],ExplosionRadius:20,Fuse:0,Invulnerable:1b}
execute if entity @s[tag=gas] run summon creeper ~-13 ~ ~13 {Tags:["nuke"],ExplosionRadius:20,Fuse:0,Invulnerable:1b}
execute if entity @s[tag=gas] run summon creeper ~-13 ~ ~-13 {Tags:["nuke"],ExplosionRadius:20,Fuse:0,Invulnerable:1b}

#Nuke explosion 3rd layer
execute if entity @s[tag=gas] run summon creeper ~ ~-20 ~ {Tags:["nuke"],ExplosionRadius:20,Fuse:0,Invulnerable:1b}
execute if entity @s[tag=gas] run summon creeper ~6 ~-20 ~6 {Tags:["nuke"],ExplosionRadius:20,Fuse:0,Invulnerable:1b}
execute if entity @s[tag=gas] run summon creeper ~6 ~-20 ~-6 {Tags:["nuke"],ExplosionRadius:20,Fuse:0,Invulnerable:1b}
execute if entity @s[tag=gas] run summon creeper ~-6 ~-20 ~6 {Tags:["nuke"],ExplosionRadius:20,Fuse:0,Invulnerable:1b}
execute if entity @s[tag=gas] run summon creeper ~-6 ~-20 ~-6 {Tags:["nuke"],ExplosionRadius:20,Fuse:0,Invulnerable:1b}

#Middle
execute if entity @s[tag=gas] run summon creeper ~ ~45 ~ {Tags:["nuke"],ExplosionRadius:15,Fuse:0,Invulnerable:1b}

#Mushroom cloud
execute if entity @s[tag=gas] run summon creeper ~ ~62.5 ~ {Tags:["nuke"],ExplosionRadius:10,Fuse:0,Invulnerable:1b}
execute if entity @s[tag=gas] run summon creeper ~3 ~60 ~3 {Tags:["nuke"],ExplosionRadius:10,Fuse:0,Invulnerable:1b}
execute if entity @s[tag=gas] run summon creeper ~3 ~60 ~-3 {Tags:["nuke"],ExplosionRadius:10,Fuse:0,Invulnerable:1b}
execute if entity @s[tag=gas] run summon creeper ~-3 ~60 ~3 {Tags:["nuke"],ExplosionRadius:10,Fuse:0,Invulnerable:1b}
execute if entity @s[tag=gas] run summon creeper ~-3 ~60 ~-3 {Tags:["nuke"],ExplosionRadius:10,Fuse:0,Invulnerable:1b}

execute if entity @s[tag=gas] at @e[tag=nuke] run particle minecraft:campfire_signal_smoke ~ ~ ~ 8 8 8 0.02 80
execute if entity @s[tag=gas] run particle minecraft:campfire_signal_smoke ~ ~ ~ 25 4 25 0.02 120
execute if entity @s[tag=gas] at @e[tag=nuke] run fill ~-6 ~-6 ~-6 ~6 ~6 ~6 air replace water
execute if entity @s[tag=gas] at @e[tag=nuke] run fill ~-6 ~-6 ~-6 ~6 ~6 ~6 fire replace air
execute if entity @s[tag=gas] run particle minecraft:campfire_signal_smoke ~ ~60 ~ 3 30 3 0.02 200
