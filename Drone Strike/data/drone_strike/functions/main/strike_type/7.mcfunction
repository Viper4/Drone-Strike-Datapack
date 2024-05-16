execute if entity @s[type=!arrow] run summon arrow ~ ~20 ~ {Owner:[I;0,0,0,0],PierceLevel:99,damage:1.25d,Motion:[0d,-10d,0d],Tags:["droneStrike","7"],CustomNameVisible:1b,CustomName:'[{"text":"[","color":"white"},{"text":"Drone Strike","color":"yellow"},{"text":"] ","color":"white"},{"text":"Shrapnel","color":"gold"}]'}

#1st layer
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0.25d,0.02d,0d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[-0.25d,0.02d,0d],Tags:["droneStrike","shrapnel"]}

execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0d,0.02d,0.25d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0d,0.02d,-0.25d],Tags:["droneStrike","shrapnel"]}

execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0.25d,0.02d,0.25d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0.25d,0.02d,-0.25d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[-0.25d,0.02d,0.25d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[-0.25d,0.02d,-0.25d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0.125d,0.02d,0.3d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0.125d,0.02d,-0.3d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[-0.125d,0.02d,0.3d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[-0.125d,0.02d,-0.3d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0.3d,0.02d,0.125d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0.3d,0.02d,-0.125d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[-0.3d,0.02d,0.125d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[-0.3d,0.02d,-0.125d],Tags:["droneStrike","shrapnel"]}

#2nd layer
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0.65d,0.2d,0d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[-0.65d,0.2d,0d],Tags:["droneStrike","shrapnel"]}

execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0d,0.2d,0.65d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0d,0.2d,-0.65d],Tags:["droneStrike","shrapnel"]}

execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0.5d,0.2d,0.5d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0.5d,0.2d,-0.5d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[-0.5d,0.2d,0.5d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[-0.5d,0.2d,-0.5d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0.25d,0.2d,0.55d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0.25d,0.2d,-0.55d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[-0.25d,0.2d,0.55d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[-0.25d,0.2d,-0.55d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0.55d,0.2d,0.25d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0.55d,0.2d,-0.25d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[-0.55d,0.2d,0.25d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[-0.55d,0.2d,-0.25d],Tags:["droneStrike","shrapnel"]}

#3rd layer
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0.5d,0.6d,0d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[-0.5d,0.6d,0d],Tags:["droneStrike","shrapnel"]}

execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0d,0.6d,0.5d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0d,0.6d,-0.5d],Tags:["droneStrike","shrapnel"]}

execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0.35d,0.6d,0.35d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0.35d,0.6d,-0.35d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[-0.35d,0.6d,0.35d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[-0.35d,0.6d,-0.35d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0.175d,0.6d,0.4d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0.175d,0.6d,-0.4d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[-0.175d,0.6d,0.4d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[-0.175d,0.6d,-0.4d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0.4d,0.6d,0.175d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0.4d,0.6d,-0.175d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[-0.4d,0.6d,0.175d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[-0.4d,0.6d,-0.175d],Tags:["droneStrike","shrapnel"]}

#4th layer
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0.25d,0.64d,0d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[-0.25d,0.64d,0d],Tags:["droneStrike","shrapnel"]}

execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0d,0.64d,0.25d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0d,0.64d,-0.25d],Tags:["droneStrike","shrapnel"]}

execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0.175d,0.64d,0.175d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[0.175d,0.64d,-0.175d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[-0.175d,0.64d,0.175d],Tags:["droneStrike","shrapnel"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:5.0d,Motion:[-0.175d,0.64d,-0.175d],Tags:["droneStrike","shrapnel"]}

execute if entity @s[type=arrow] as @e[type=arrow,tag=shrapnel,distance=..2] store result entity @s Owner[0] int 1 run data get entity @e[type=minecraft:arrow,limit=1,sort=nearest] Owner[0]
execute if entity @s[type=arrow] as @e[type=arrow,tag=shrapnel,distance=..2] store result entity @s Owner[1] int 1 run data get entity @e[type=minecraft:arrow,limit=1,sort=nearest] Owner[1]
execute if entity @s[type=arrow] as @e[type=arrow,tag=shrapnel,distance=..2] store result entity @s Owner[2] int 1 run data get entity @e[type=minecraft:arrow,limit=1,sort=nearest] Owner[2]
execute if entity @s[type=arrow] as @e[type=arrow,tag=shrapnel,distance=..2] store result entity @s Owner[3] int 1 run data get entity @e[type=minecraft:arrow,limit=1,sort=nearest] Owner[3]