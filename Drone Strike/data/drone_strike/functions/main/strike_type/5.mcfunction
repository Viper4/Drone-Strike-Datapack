execute if entity @s[type=!arrow] run summon arrow ~ ~20 ~ {Owner:[I;0,0,0,0],PierceLevel:99,damage:2.0d,Motion:[0d,-10d,0d],Tags:["droneStrike","5"],CustomNameVisible:1b,CustomName:'[{"text":"[","color":"white"},{"text":"Drone Strike","color":"yellow"},{"text":"] ","color":"white"},{"text":"Breaching","color":"yellow"}]'}
execute if entity @s[type=arrow] run fill ^ ^ ^ ^ ^ ^-5 air
execute if entity @s[type=arrow] run playsound minecraft:block.gravel.break master @a ~ ~ ~ 5 0.1
execute if entity @s[type=arrow] run playsound minecraft:block.stone.break master @a ~ ~ ~ 5 0.1
execute if entity @s[type=arrow] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 5 1.8
execute if entity @s[type=arrow] run kill @s
