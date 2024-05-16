execute if entity @s[type=!arrow] run summon arrow ~ ~20 ~ {Owner:[I;0,0,0,0],PierceLevel:99,damage:1.25d,Motion:[0d,-10d,0d],Tags:["droneStrike","10"],CustomNameVisible:1b,CustomName:'[{"text":"[","color":"white"},{"text":"Drone Strike","color":"yellow"},{"text":"] ","color":"white"},{"text":"Fragmentation","color":"red"}]'}

#1st layer
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0.3d,0.04d,0d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[-0.3d,0.04d,0d],Tags:["droneStrike","frag"]}

execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0d,0.04d,0.3d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0d,0.04d,-0.3d],Tags:["droneStrike","frag"]}

execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0.3d,0.025d,0.3d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0.3d,0.025d,-0.3d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[-0.3d,0.025d,0.3d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[-0.3d,0.025d,-0.3d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0.15d,0.025d,0.3d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0.15d,0.025d,-0.3d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[-0.125d,0.025d,0.3d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[-0.15d,0.025d,-0.35d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0.35d,0.025d,0.15d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0.35d,0.025d,-0.15d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[-0.35d,0.025d,0.15d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[-0.35d,0.025d,-0.15d],Tags:["droneStrike","frag"]}

#2nd layer
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0.65d,0.25d,0d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[-0.65d,0.25d,0d],Tags:["droneStrike","frag"]}

execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0d,0.25d,0.65d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0d,0.25d,-0.65d],Tags:["droneStrike","frag"]}

execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0.56d,0.25d,0.56d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0.56d,0.25d,-0.56d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[-0.56d,0.25d,0.56d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[-0.56d,0.25d,-0.56d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0.3d,0.25d,0.62d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0.3d,0.25d,-0.62d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[-0.3d,0.25d,0.62d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[-0.3d,0.25d,-0.62d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0.62d,0.25d,0.3d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0.62d,0.25d,-0.3d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[-0.62d,0.25d,0.3d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[-0.62d,0.25d,-0.3d],Tags:["droneStrike","frag"]}

#3rd layer
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0.6d,0.62d,0d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[-0.6d,0.62d,0d],Tags:["droneStrike","frag"]}

execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0d,0.62d,0.6d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0d,0.62d,-0.6d],Tags:["droneStrike","frag"]}

execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0.4d,0.62d,0.4d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0.4d,0.62d,-0.4d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[-0.4d,0.62d,0.4d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[-0.4d,0.62d,-0.4d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0.2d,0.62d,0.45d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0.2d,0.62d,-0.45d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[-0.2d,0.62d,0.45d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[-0.2d,0.62d,-0.45d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0.45d,0.62d,0.2d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0.45d,0.62d,-0.2d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[-0.45d,0.62d,0.2d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[-0.45d,0.62d,-0.2d],Tags:["droneStrike","frag"]}

#4th layer
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0.3d,0.65d,0d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[-0.3d,0.65d,0d],Tags:["droneStrike","frag"]}

execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0d,0.65d,0.3d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0d,0.65d,-0.3d],Tags:["droneStrike","frag"]}

execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0.2d,0.65d,0.2d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[0.2d,0.65d,-0.2d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[-0.2d,0.65d,0.2d],Tags:["droneStrike","frag"]}
execute if entity @s[type=arrow] run summon arrow ~ ~0.5 ~ {Owner:[I;0,0,0,0],damage:1.2d,Motion:[-0.2d,0.65d,-0.2d],Tags:["droneStrike","frag"]}


execute if entity @s[type=arrow] as @e[type=arrow,tag=frag,distance=..2] store result entity @s Owner[0] int 1 run data get entity @e[type=minecraft:arrow,limit=1,sort=nearest] Owner[0]
execute if entity @s[type=arrow] as @e[type=arrow,tag=frag,distance=..2] store result entity @s Owner[1] int 1 run data get entity @e[type=minecraft:arrow,limit=1,sort=nearest] Owner[1]
execute if entity @s[type=arrow] as @e[type=arrow,tag=frag,distance=..2] store result entity @s Owner[2] int 1 run data get entity @e[type=minecraft:arrow,limit=1,sort=nearest] Owner[2]
execute if entity @s[type=arrow] as @e[type=arrow,tag=frag,distance=..2] store result entity @s Owner[3] int 1 run data get entity @e[type=minecraft:arrow,limit=1,sort=nearest] Owner[3]
