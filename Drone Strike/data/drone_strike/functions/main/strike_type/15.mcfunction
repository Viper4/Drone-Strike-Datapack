execute if entity @s[tag=gas] run scoreboard players add @s ds_killTimer 1
execute if entity @s[tag=!gas] run summon arrow ~ ~20 ~ {Owner:[I;0,0,0,0],PierceLevel:99,damage:0.8d,Motion:[0d,-10d,0d],Tags:["droneStrike","15","gas"],CustomNameVisible:1b,CustomName:'[{"text":"[","color":"white"},{"text":"Drone Strike","color":"yellow"},{"text":"] ","color":"white"},{"text":"Bioweapon","color":"green"}]'}
execute if entity @s[tag=gas,scores={ds_killTimer=..190}] run particle dust 0 0.4 0 2 ~ ~ ~ 3 3 3 1 40
execute if entity @s[tag=gas,scores={ds_killTimer=..190}] run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 1 0.1
execute if entity @s[tag=gas] run effect give @e[tag=!immune,type=!#drone_strike:inanimate,distance=..6] minecraft:slowness 6 1 true
execute if entity @s[tag=gas] run effect give @e[tag=!immune,type=!#drone_strike:inanimate,distance=..6] minecraft:mining_fatigue 6 1 true
execute if entity @s[tag=gas] run effect give @e[tag=!immune,type=!#drone_strike:inanimate,distance=..4] minecraft:slowness 4 2 true
execute if entity @s[tag=gas] run effect give @e[tag=!immune,type=!#drone_strike:inanimate,distance=..4] minecraft:weakness 4 1 true
execute if entity @s[tag=gas] run effect give @e[tag=!immune,type=!#drone_strike:inanimate,distance=..4] minecraft:mining_fatigue 4 2 true
execute if entity @s[tag=gas] run tag @e[tag=!immune,type=!#drone_strike:inanimate,distance=..6] add bioweapon
execute if entity @s[tag=gas,scores={ds_killTimer=200..}] run kill @s
