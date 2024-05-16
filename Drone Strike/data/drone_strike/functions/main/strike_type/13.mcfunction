execute if entity @s[tag=gas] run scoreboard players add @s ds_killTimer 1
execute if entity @s[tag=!gas] run summon arrow ~ ~20 ~ {Owner:[I;0,0,0,0],PierceLevel:99,damage:0.8d,Motion:[0d,-10d,0d],Tags:["droneStrike","13","gas"],CustomNameVisible:1b,CustomName:'[{"text":"[","color":"white"},{"text":"Drone Strike","color":"yellow"},{"text":"] ","color":"white"},{"text":"Tear Gas","color":"green"}]'}
execute if entity @s[tag=gas,scores={ds_killTimer=..150}] run particle minecraft:dust 1 1 1 2 ~ ~ ~ 2 2 2 1 35
execute if entity @s[tag=gas,scores={ds_killTimer=..150}] run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 1 0.8
execute if entity @s[tag=gas] run effect give @e[tag=!immune,type=!#drone_strike:inanimate,distance=..6] minecraft:blindness 15 0 true
execute if entity @s[tag=gas] run effect give @e[tag=!immune,type=!#drone_strike:inanimate,distance=..6] minecraft:mining_fatigue 14 1 true
execute if entity @s[tag=gas] run effect give @e[tag=!immune,type=!#drone_strike:inanimate,distance=..5] minecraft:slowness 14 0 true
execute if entity @s[tag=gas] run effect give @e[tag=!immune,type=!#drone_strike:inanimate,distance=..4] minecraft:nausea 16 0 true
execute if entity @s[tag=gas] run effect give @e[tag=!immune,type=!#drone_strike:inanimate,distance=..4] minecraft:weakness 13 0 true
execute if entity @s[tag=gas] run effect give @e[tag=!immune,type=!#drone_strike:inanimate,distance=..4] minecraft:blindness 16 1 true
execute if entity @s[tag=gas] run effect give @e[tag=!immune,type=!#drone_strike:inanimate,distance=..3] minecraft:slowness 15 2 true
execute if entity @s[tag=gas] run effect give @e[tag=!immune,type=!#drone_strike:inanimate,distance=..3] minecraft:nausea 18 1 true
execute if entity @s[tag=gas,scores={ds_killTimer=160..}] run kill @s
