execute if entity @s[type=!arrow] run summon arrow ~ ~20 ~ {PierceLevel:99,damage:0.8d,Motion:[0d,-10d,0d],Tags:["droneStrike","1"],CustomNameVisible:1b,CustomName:'[{"text":"[","color":"white"},{"text":"Drone Strike","color":"yellow"},{"text":"] ","color":"white"},{"text":"Flash Bang","color":"yellow"}]'}
execute if entity @s[type=arrow] run particle minecraft:flash ~ ~ ~ 0.2 0.2 0.2 0 10
execute if entity @s[type=arrow] run tag @a[distance=..13] add flash
execute if entity @s[type=arrow] run effect give @a[distance=..13] blindness 10 255 true
execute if entity @s[type=arrow] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 10 1
execute if entity @s[type=arrow] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 10 1
execute if entity @s[type=arrow] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 10 1
execute if entity @s[type=arrow] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 10 1
execute if entity @s[type=arrow] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 10 1
execute if entity @s[type=arrow] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 10 1
