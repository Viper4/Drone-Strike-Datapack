scoreboard players add @s ds_timer 1

#Adding a spawn tag at each interval (every 0.1s) when we want to summon arrows
execute if score @s ds_timer matches 1 run tag @s add spawn
execute if score @s ds_timer matches 3 run tag @s add spawn
execute if score @s ds_timer matches 5 run tag @s add spawn
execute if score @s ds_timer matches 7 run tag @s add spawn
execute if score @s ds_timer matches 9 run tag @s add spawn
execute if score @s ds_timer matches 11 run tag @s add spawn

#When the anchor has a spawn tag it will spawn 5 arrows distributed to the left, right, and center
execute if entity @s[tag=spawn] run summon arrow ^1.5 ^ ^ {Owner:[I;0,0,0,0],damage:1.5d,Motion:[0d,-10d,0d],Tags:["droneStrike","8"],CustomNameVisible:1b,CustomName:'[{"text":"[","color":"white"},{"text":"Drone Strike","color":"yellow"},{"text":"] ","color":"white"},{"text":"Carpet","color":"gold"}]'}
execute if entity @s[tag=spawn] run summon arrow ^0.75 ^ ^ {Owner:[I;0,0,0,0],damage:1.5d,Motion:[0d,-10d,0d],Tags:["droneStrike","8"],CustomNameVisible:1b,CustomName:'[{"text":"[","color":"white"},{"text":"Drone Strike","color":"yellow"},{"text":"] ","color":"white"},{"text":"Carpet","color":"gold"}]'}
execute if entity @s[tag=spawn] run summon arrow ^ ^ ^ {Owner:[I;0,0,0,0],damage:1.5d,Motion:[0d,-10d,0d],Tags:["droneStrike","8"],CustomNameVisible:1b,CustomName:'[{"text":"[","color":"white"},{"text":"Drone Strike","color":"yellow"},{"text":"] ","color":"white"},{"text":"Carpet","color":"gold"}]'}
execute if entity @s[tag=spawn] run summon arrow ^-0.75 ^ ^ {Owner:[I;0,0,0,0],damage:1.5d,Motion:[0d,-10d,0d],Tags:["droneStrike","8"],CustomNameVisible:1b,CustomName:'[{"text":"[","color":"white"},{"text":"Drone Strike","color":"yellow"},{"text":"] ","color":"white"},{"text":"Carpet","color":"gold"}]'}
execute if entity @s[tag=spawn] run summon arrow ^-1.5 ^ ^ {Owner:[I;0,0,0,0],damage:1.5d,Motion:[0d,-10d,0d],Tags:["droneStrike","8"],CustomNameVisible:1b,CustomName:'[{"text":"[","color":"white"},{"text":"Drone Strike","color":"yellow"},{"text":"] ","color":"white"},{"text":"Carpet","color":"gold"}]'}

#Saving Owner UUID to arrows
execute if entity @s[tag=spawn] as @e[type=arrow,distance=..1.6] store result entity @s Owner[0] int 1 run scoreboard players get @e[type=armor_stand,tag=spawn,limit=1,sort=nearest] ds_UUID0
execute if entity @s[tag=spawn] as @e[type=arrow,distance=..1.6] store result entity @s Owner[1] int 1 run scoreboard players get @e[type=armor_stand,tag=spawn,limit=1,sort=nearest] ds_UUID1
execute if entity @s[tag=spawn] as @e[type=arrow,distance=..1.6] store result entity @s Owner[2] int 1 run scoreboard players get @e[type=armor_stand,tag=spawn,limit=1,sort=nearest] ds_UUID2
execute if entity @s[tag=spawn] as @e[type=arrow,distance=..1.6] store result entity @s Owner[3] int 1 run scoreboard players get @e[type=armor_stand,tag=spawn,limit=1,sort=nearest] ds_UUID3

#Teleporting forward 2 blocks (12/6) each interval
tp @s[tag=spawn] ^ ^ ^2

#Removing spawn tag 
tag @s[tag=spawn] remove spawn
#Killing the anchor once timer hits 11 (0.65s)
execute if score @s ds_timer matches 11.. run kill @s
