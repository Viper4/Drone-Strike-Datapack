execute if entity @s[type=!arrow] run summon arrow ~ ~20 ~ {PierceLevel:99,damage:0.8d,Motion:[0d,-10d,0d],Tags:["droneStrike","19"],CustomNameVisible:1b,CustomName:'[{"text":"[","color":"white"},{"text":"Drone Strike","color":"yellow"},{"text":"] ","color":"white"},{"text":"Enderman","color":"dark_purple"}]'}
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 3 1
execute if entity @s[type=arrow] run summon minecraft:endermite ~ ~ ~
execute if entity @s[type=arrow] run tag @a[distance=..5] add enderman
execute if entity @s[type=arrow] as @e[type=!player,distance=..5] run function drone_strike:main/random_teleport
execute if entity @s[type=arrow] run tp @a[tag=enderman,distance=..50] @s
tag @a[distance=..50] remove enderman
