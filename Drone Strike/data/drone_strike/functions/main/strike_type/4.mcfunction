execute if entity @s[type=!arrow] run summon arrow ~ ~20 ~ {Owner:[I;0,0,0,0],PierceLevel:99,damage:0.8d,Motion:[0d,-10d,0d],Tags:["droneStrike","4"],CustomNameVisible:1b,CustomName:'[{"text":"[","color":"white"},{"text":"Drone Strike","color":"yellow"},{"text":"] ","color":"white"},{"text":"Incendiary","color":"yellow"}]'}
execute if entity @s[type=arrow] run fill ~2.5 ~2.5 ~2.5 ~-2.5 ~-2.5 ~-2.5 fire replace air
execute if entity @s[type=arrow] run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 5 2
execute if entity @s[type=arrow] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 2
