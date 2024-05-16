execute if entity @s[tag=gas,tag=!17] unless entity @s[scores={ds_killTimer=450..}] run scoreboard players add @s ds_killTimer 1
execute if entity @s[tag=17] unless entity @s[scores={ds_killTimer=550..}] run scoreboard players add @s ds_killTimer 1
execute if entity @s[tag=!gas] run summon arrow ~ ~20 ~ {Owner:[I;0,0,0,0],PierceLevel:99,damage:0.8d,Motion:[0d,-10d,0d],Tags:["droneStrike","9","16","gas"],CustomNameVisible:1b,CustomName:'[{"text":"[","color":"white"},{"text":"Drone Strike","color":"yellow"},{"text":"] ","color":"white"},{"text":"Neutron Bomb","color":"dark_green"}]'}
execute if entity @s[tag=gas] run tp @s ~ ~ ~ ~3.1 ~
execute if entity @s[tag=gas] run particle minecraft:dust 0.5 2 0 1 ~ ~ ~ 40 40 40 0 140
execute if entity @s[tag=gas] run particle minecraft:smoke ~ ~ ~ 40 40 40 0.15 100
execute if entity @s[tag=gas] run tag @e[type=!#drone_strike:inanimate,tag=!immune,distance=..150] add radiation
execute if entity @s[tag=17] run tag @e[type=!#drone_strike:inanimate,tag=!immune,distance=..180] add radiation
execute if entity @s[tag=gas] run scoreboard players add @e[type=!#drone_strike:inanimate,tag=!immune,distance=..125] ds_timer 1
execute if entity @s[tag=17] run scoreboard players add @e[type=!#drone_strike:inanimate,tag=!immune,distance=..150] ds_timer 1
execute if entity @s[tag=gas,scores={ds_killTimer=..40}] run fill ^3 ^3 ^3 ^-3 ^-3 ^-3 mycelium replace grass_block
execute if entity @s[tag=gas,scores={ds_killTimer=40..120}] run fill ^5 ^5 ^5 ^-5 ^-5 ^-5 mycelium replace grass_block
execute if entity @s[tag=gas,scores={ds_killTimer=120..200}] run fill ^7 ^7 ^7 ^-7 ^-7 ^-7 mycelium replace grass_block
execute if entity @s[tag=gas,scores={ds_killTimer=200..250}] run fill ^9 ^12 ^12 ^-9 ^-12 ^-12 mycelium replace grass_block
execute if entity @s[tag=gas,scores={ds_killTimer=250..300}] run fill ^9 ^16 ^16 ^-9 ^-16 ^-16 mycelium replace grass_block
execute if entity @s[tag=gas,scores={ds_killTimer=300..450}] run fill ^9 ^20 ^20 ^-9 ^-20 ^-20 mycelium replace grass_block
execute if entity @s[tag=gas,scores={ds_killTimer=450..500}] run fill ^9 ^20 ^30 ^-9 ^-20 ^-30 mycelium replace grass_block
execute if entity @s[tag=16,scores={ds_killTimer=500..550}] run fill ^9 ^20 ^40 ^-9 ^-20 ^-40 mycelium replace grass_block

#Nuke
execute if entity @s[tag=17,scores={ds_killTimer=1}] run function drone_strike:main/strike_type/17
