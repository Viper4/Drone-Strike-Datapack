execute if entity @s[tag=gas] run scoreboard players add @s ds_killTimer 1
execute if entity @s[tag=!gas] run summon arrow ~ ~20 ~ {Owner:[I;0,0,0,0],PierceLevel:99,damage:0.8d,Motion:[0d,-10d,0d],Tags:["droneStrike","14","gas"],CustomNameVisible:1b,CustomName:'[{"text":"[","color":"white"},{"text":"Drone Strike","color":"yellow"},{"text":"] ","color":"white"},{"text":"Chemical","color":"green"}]'}
execute if entity @s[tag=gas,scores={ds_killTimer=..210}] run particle minecraft:dust 1 1 0 2 ~ ~ ~ 3 3 3 1 40
execute if entity @s[tag=gas,scores={ds_killTimer=..210}] run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 1 0.1
execute if entity @s[tag=gas] run effect give @e[tag=!immune,type=!#drone_strike:inanimate,distance=..4] minecraft:slowness 5 2 true
execute if entity @s[tag=gas] run effect give @e[tag=!immune,type=!#drone_strike:inanimate,distance=..6] minecraft:slowness 4 1 true
execute if entity @s[tag=gas] run effect give @e[tag=!immune,type=!#drone_strike:inanimate,distance=..6] minecraft:weakness 4 1 true
execute if entity @s[tag=gas] run effect give @e[tag=!immune,type=!#drone_strike:inanimate,distance=..6] minecraft:wither 5 0 true
execute if entity @s[tag=gas] run effect give @e[tag=!immune,type=!#drone_strike:inanimate,distance=..6] minecraft:wither 5 1 true
execute if entity @s[tag=gas] run effect give @e[tag=!immune,type=!#drone_strike:inanimate,distance=..7] minecraft:mining_fatigue 4 1 true
execute if entity @s[tag=gas] run effect give @e[tag=!immune,type=!#drone_strike:inanimate,distance=..4] minecraft:mining_fatigue 5 2 true
execute if entity @s[tag=gas,scores={ds_killTimer=220..}] run kill @s
