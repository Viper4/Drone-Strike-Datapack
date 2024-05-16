scoreboard players add @s ds_timer 1

#Adding a spawn tag at each interval (every 0.2s) when we want to summon arrows
execute if score @s ds_timer matches 1 run tag @s add spawn
execute if score @s ds_timer matches 5 run tag @s add spawn
execute if score @s ds_timer matches 9 run tag @s add spawn
execute if score @s ds_timer matches 13 run tag @s add spawn
execute if score @s ds_timer matches 17 run tag @s add spawn
execute if score @s ds_timer matches 21 run tag @s add spawn

#When the anchor has a spawn tag it will spawn 3 arrows distributed to the left, right, and center
execute if entity @s[tag=spawn] run summon arrow ^3 ^ ^ {Owner:[I;0,0,0,0],PierceLevel:99,damage:0.0d,Motion:[0d,-10d,0d],Tags:["droneStrike","9"],CustomNameVisible:1b,CustomName:'[{"text":"[","color":"white"},{"text":"Drone Strike","color":"yellow"},{"text":"] ","color":"white"},{"text":"Carpet Bomb","color":"red"}]'}
execute if entity @s[tag=spawn] run summon arrow ^ ^ ^ {Owner:[I;0,0,0,0],PierceLevel:99,damage:0.0d,Motion:[0d,-10d,0d],Tags:["droneStrike","9"],CustomNameVisible:1b,CustomName:'[{"text":"[","color":"white"},{"text":"Drone Strike","color":"yellow"},{"text":"] ","color":"white"},{"text":"Carpet Bomb","color":"red"}]'}
execute if entity @s[tag=spawn] run summon arrow ^-3 ^ ^ {Owner:[I;0,0,0,0],PierceLevel:99,damage:0.0d,Motion:[0d,-10d,0d],Tags:["droneStrike","9"],CustomNameVisible:1b,CustomName:'[{"text":"[","color":"white"},{"text":"Drone Strike","color":"yellow"},{"text":"] ","color":"white"},{"text":"Carpet Bomb","color":"red"}]'}

#Saving Owner UUID to arrows
execute if entity @s[tag=spawn] as @e[type=arrow,distance=..3.1] store result entity @s Owner[0] int 1 run scoreboard players get @e[type=armor_stand,tag=spawn,limit=1,sort=nearest] ds_UUID0
execute if entity @s[tag=spawn] as @e[type=arrow,distance=..3.1] store result entity @s Owner[1] int 1 run scoreboard players get @e[type=armor_stand,tag=spawn,limit=1,sort=nearest] ds_UUID1
execute if entity @s[tag=spawn] as @e[type=arrow,distance=..3.1] store result entity @s Owner[2] int 1 run scoreboard players get @e[type=armor_stand,tag=spawn,limit=1,sort=nearest] ds_UUID2
execute if entity @s[tag=spawn] as @e[type=arrow,distance=..3.1] store result entity @s Owner[3] int 1 run scoreboard players get @e[type=armor_stand,tag=spawn,limit=1,sort=nearest] ds_UUID3

#Teleporting forward 3.3333333 blocks (20/6) each interval
tp @s[tag=spawn] ^ ^ ^3.3333333

#Removing spawn tag 
tag @s[tag=spawn] remove spawn
#Killing the anchor once timer hits 21 (1.05s)
execute if score @s ds_timer matches 21.. run kill @s
