#Constantly timing
scoreboard players add @s ds_timer 1

execute store result score @s ds_posx run data get entity @s Pos[0]
execute store result score @s ds_posy run data get entity @s Pos[1]
execute store result score @s ds_posz run data get entity @s Pos[2]

#Set Rotation[1] to 0 to stabilize for carpet strikes
execute if score @s ds_timer matches 1 run tp @s ~ ~ ~ ~ 0
execute if score @s ds_timer matches 1 run tag @a[tag=!check] add check
execute if score @s ds_timer matches 1 run function drone_strike:main/check_owner/alert_strike
#Teleporting to any nearby entity with their x rotation
execute at @e[type=!#drone_strike:inanimate,limit=1,sort=nearest,distance=..1.6] run tp @s ~ ~ ~ ~ 0
#Make the marked spot visible with particles and a nametag
data merge entity @s {CustomNameVisible:1b}
execute at @s[scores={ds_timer=..40}] run particle minecraft:dust 0 0 255 5 ~ ~0.5 ~ 1.5 0.3 1.5 1 3
execute at @s[scores={ds_timer=40..80}] run particle minecraft:dust 0 255 0 3 ~ ~0.5 ~ 1 0.1 1 1 2
execute at @s[scores={ds_timer=80..120}] run particle minecraft:dust 255 0 0 2 ~ ~0.5 ~ 0.5 0.06 0.5 0.02 1

#Summoning the arrow(s)
execute if entity @s[tag=1,scores={ds_timer=120..}] run function drone_strike:main/strike_type/1
execute if entity @s[tag=2,scores={ds_timer=120..}] run function drone_strike:main/strike_type/2
execute if entity @s[tag=3,scores={ds_timer=120..}] run function drone_strike:main/strike_type/3
execute if entity @s[tag=4,scores={ds_timer=120..}] run function drone_strike:main/strike_type/4
execute if entity @s[tag=5,scores={ds_timer=120..}] run function drone_strike:main/strike_type/5
execute if entity @s[tag=6,scores={ds_timer=120..}] run function drone_strike:main/strike_type/6
execute if entity @s[tag=7,scores={ds_timer=120..}] run function drone_strike:main/strike_type/7
#The Carpet drone strikes (types 8 and 11) require an anchor to summon arrows at intervals
execute if entity @s[tag=8,scores={ds_timer=120..}] run summon armor_stand ~ ~ ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["strike8Anchor"]}
execute if entity @s[tag=8,scores={ds_timer=120..}] run tp @e[type=armor_stand,tag=strike8Anchor,limit=1,sort=nearest,distance=..1] ^ ^20 ^-6 ~ 0
execute if entity @s[tag=9,scores={ds_timer=120..}] run function drone_strike:main/strike_type/9
execute if entity @s[tag=10,scores={ds_timer=120..}] run function drone_strike:main/strike_type/10
execute if entity @s[tag=11,scores={ds_timer=120..}] run summon armor_stand ~ ~ ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["strike11Anchor"]}
execute if entity @s[tag=11,scores={ds_timer=120..}] run tp @e[type=armor_stand,tag=strike11Anchor,limit=1,sort=nearest,distance=..1] ^ ^20 ^-10 ~ 0
execute if entity @s[tag=12,scores={ds_timer=120..}] run function drone_strike:main/strike_type/12
execute if entity @s[tag=13,scores={ds_timer=120..}] run function drone_strike:main/strike_type/13
execute if entity @s[tag=14,scores={ds_timer=120..}] run function drone_strike:main/strike_type/14
execute if entity @s[tag=15,scores={ds_timer=120..}] run function drone_strike:main/strike_type/15
execute if entity @s[tag=16,scores={ds_timer=120..}] run function drone_strike:main/strike_type/16
execute if entity @s[tag=17,scores={ds_timer=120..}] run function drone_strike:main/strike_type/17
#Saving armor_stand's Owner UUID to arrow Owner nbt
execute if score @s ds_timer matches 120.. positioned ~ ~20 ~ store result entity @e[tag=droneStrike,limit=1,sort=nearest] Owner[0] int 1 run scoreboard players get @s ds_UUID0
execute if score @s ds_timer matches 120.. positioned ~ ~20 ~ store result entity @e[tag=droneStrike,limit=1,sort=nearest] Owner[1] int 1 run scoreboard players get @s ds_UUID1
execute if score @s ds_timer matches 120.. positioned ~ ~20 ~ store result entity @e[tag=droneStrike,limit=1,sort=nearest] Owner[2] int 1 run scoreboard players get @s ds_UUID2
execute if score @s ds_timer matches 120.. positioned ~ ~20 ~ store result entity @e[tag=droneStrike,limit=1,sort=nearest] Owner[3] int 1 run scoreboard players get @s ds_UUID3
#Saving Owner UUID to strike anchors
execute if score @s ds_timer matches 120.. positioned ~ ~20 ~ run scoreboard players operation @e[type=minecraft:armor_stand,tag=droneStrike,limit=1,sort=nearest] ds_UUID0 = @s ds_UUID0
execute if score @s ds_timer matches 120.. positioned ~ ~20 ~ run scoreboard players operation @e[type=minecraft:armor_stand,tag=droneStrike,limit=1,sort=nearest] ds_UUID1 = @s ds_UUID1
execute if score @s ds_timer matches 120.. positioned ~ ~20 ~ run scoreboard players operation @e[type=minecraft:armor_stand,tag=droneStrike,limit=1,sort=nearest] ds_UUID2 = @s ds_UUID2
execute if score @s ds_timer matches 120.. positioned ~ ~20 ~ run scoreboard players operation @e[type=minecraft:armor_stand,tag=droneStrike,limit=1,sort=nearest] ds_UUID3 = @s ds_UUID3
#Killing the armor_stand after the strike
kill @s[scores={ds_timer=120..}]
