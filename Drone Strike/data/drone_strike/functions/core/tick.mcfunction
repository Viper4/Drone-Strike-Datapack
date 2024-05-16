#Runs the call function when a "ds:1b" carrot_on_a_stick is right clicked without shifting
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ds:1b}}},scores={ds_rightClick=1..,ds_shifting=0}] run function drone_strike:main/call
#Runs the cycle_types function when a "ds:1b" carrot_on_a_stick is right clicked when shifting
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ds:1b}}},scores={ds_rightClick=1..,ds_shifting=1..}] run function drone_strike:main/cycle_types

scoreboard players set @a[scores={ds_rightClick=1..}] ds_rightClick 0
scoreboard players set @a[scores={ds_shifting=1..}] ds_shifting 0

execute as @e[type=arrow,tag=droneStrike] run function drone_strike:main/check_block_entity
execute at @a store result score @p ds_UUID0 run data get entity @p UUID[0]
execute at @a store result score @p ds_UUID1 run data get entity @p UUID[1]
execute at @a store result score @p ds_UUID2 run data get entity @p UUID[2]
execute at @a store result score @p ds_UUID3 run data get entity @p UUID[3]

#Kills drone strike armor_stands that haven't found a block or entity
execute as @e[type=armor_stand,tag=droneStrike,tag=!inBlock,tag=!inEntity] run scoreboard players add @s ds_killTimer 1
execute as @e[type=armor_stand,tag=gas,tag=!13,tag=!14,tag=!15,tag=!16] run kill @s
kill @e[tag=droneStrike,scores={ds_killTimer=100..}]

#If a drone strike armor_stand is in a block or entity call the strike function
execute as @e[type=armor_stand,tag=droneStrike,tag=inBlock] at @s run function drone_strike:main/strike
execute as @e[type=armor_stand,tag=droneStrike,tag=inEntity] at @s run function drone_strike:main/strike

#Flash bang
execute as @e[type=arrow,tag=droneStrike,tag=1,tag=inEntity] at @s run function drone_strike:main/strike_type/1
execute as @e[type=arrow,tag=droneStrike,tag=1,tag=inEntity] run kill @s
execute as @e[type=arrow,tag=droneStrike,tag=1,nbt={inGround:1b}] at @s run function drone_strike:main/strike_type/1

execute at @a[tag=flash] run playsound minecraft:block.grindstone.use master @p[distance=..2,tag=flash] ~ ~ ~ 1 2
tag @a[tag=flash,nbt=!{ActiveEffects:[{Id:15b}]}] remove flash

#Summoning lightning_bolt at Electric strikes
execute at @e[type=arrow,tag=droneStrike,tag=3,tag=inEntity] run summon lightning_bolt ~ ~ ~
execute as @e[type=arrow,tag=droneStrike,tag=3,tag=inEntity] run kill @s
execute at @e[type=arrow,tag=droneStrike,tag=3,nbt={inGround:1b}] run summon lightning_bolt ~ ~ ~

#Setting fire at Incendiary strikes
execute as @e[type=arrow,tag=droneStrike,tag=4,tag=inEntity] at @s run function drone_strike:main/strike_type/4
execute as @e[type=arrow,tag=droneStrike,tag=4,tag=inEntity] run kill @s
execute as @e[type=arrow,tag=droneStrike,tag=4,nbt={inGround:1b}] at @s run function drone_strike:main/strike_type/4

#Breaching at Breaching strikes
execute as @e[type=arrow,tag=droneStrike,tag=5,tag=inEntity] at @s run function drone_strike:main/strike_type/5
execute as @e[type=arrow,tag=droneStrike,tag=5,tag=inEntity] run kill @s
execute as @e[type=arrow,tag=droneStrike,tag=5,nbt={inGround:1b}] at @s run function drone_strike:main/strike_type/5

#Summoning frag at Shrapnel strikes
execute as @e[type=arrow,tag=droneStrike,tag=7,tag=inEntity] run function drone_strike:main/strike_type/7
execute as @e[type=arrow,tag=droneStrike,tag=7,tag=inEntity] run kill @s
execute as @e[type=arrow,tag=droneStrike,tag=7,nbt={inGround:1b}] at @s run function drone_strike:main/strike_type/7

#Summoning tnt on Explosive strikes
execute at @e[type=arrow,tag=droneStrike,tag=9,tag=inEntity] run summon tnt ~ ~ ~
execute as @e[type=arrow,tag=droneStrike,tag=9,tag=inEntity] run kill @s
execute at @e[type=arrow,tag=droneStrike,tag=9,nbt={inGround:1b}] run summon tnt ~ ~ ~

#Summoning creepers at Frag arrows
execute as @e[type=arrow,tag=droneStrike,tag=10,tag=inEntity] at @s run function drone_strike:main/strike_type/10
execute as @e[type=arrow,tag=droneStrike,tag=10,tag=inEntity] run kill @s
execute as @e[type=arrow,tag=droneStrike,tag=10,nbt={inGround:1b}] at @s run function drone_strike:main/strike_type/10

execute at @e[type=arrow,tag=droneStrike,tag=frag,tag=inEntity] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1}
execute as @e[type=arrow,tag=droneStrike,tag=frag,tag=inEntity] run kill @s
execute at @e[type=arrow,tag=droneStrike,tag=frag,nbt={inGround:1b}] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1}

#Summoning arrows at strike anchors (Carpets)
execute as @e[type=armor_stand,tag=strike8Anchor] at @s run function drone_strike:main/strike_type/8
execute as @e[type=armor_stand,tag=strike11Anchor] at @s run function drone_strike:main/strike_type/11

#Summoning armor_stands at gas types (chemical, tear gas, etc...)
execute as @e[type=arrow,tag=droneStrike,tag=gas,tag=inEntity] at @s run summon armor_stand ~ ~ ~ {Tags:["gas"],Invisible:1b,NoGravity:1b,Marker:1b,Small:1b}
execute at @e[type=arrow,tag=droneStrike,tag=gas,tag=13,tag=inEntity] run tag @e[type=armor_stand,tag=gas,limit=1,sort=nearest] add 13
execute at @e[type=arrow,tag=droneStrike,tag=gas,tag=14,tag=inEntity] run tag @e[type=armor_stand,tag=gas,limit=1,sort=nearest] add 14
execute at @e[type=arrow,tag=droneStrike,tag=gas,tag=15,tag=inEntity] run tag @e[type=armor_stand,tag=gas,limit=1,sort=nearest] add 15
execute at @e[type=arrow,tag=droneStrike,tag=gas,tag=16,tag=inEntity] run tag @e[type=armor_stand,tag=gas,limit=1,sort=nearest] add 16
execute at @e[type=arrow,tag=droneStrike,tag=gas,tag=17,tag=inEntity] run tag @e[type=armor_stand,tag=gas,limit=1,sort=nearest] add 17
execute as @e[type=arrow,tag=droneStrike,tag=gas,tag=inEntity] run kill @s
execute as @e[type=arrow,tag=droneStrike,tag=gas,nbt={inGround:1b}] at @s run summon armor_stand ~ ~ ~ {Tags:["gas"],Invisible:1b,NoGravity:1b,Marker:1b,Small:1b}
execute at @e[type=arrow,tag=droneStrike,tag=gas,tag=13,nbt={inGround:1b}] run tag @e[type=armor_stand,tag=gas,limit=1,sort=nearest] add 13
execute at @e[type=arrow,tag=droneStrike,tag=gas,tag=14,nbt={inGround:1b}] run tag @e[type=armor_stand,tag=gas,limit=1,sort=nearest] add 14
execute at @e[type=arrow,tag=droneStrike,tag=gas,tag=15,nbt={inGround:1b}] run tag @e[type=armor_stand,tag=gas,limit=1,sort=nearest] add 15
execute at @e[type=arrow,tag=droneStrike,tag=gas,tag=16,nbt={inGround:1b}] run tag @e[type=armor_stand,tag=gas,limit=1,sort=nearest] add 16
execute at @e[type=arrow,tag=droneStrike,tag=gas,tag=17,nbt={inGround:1b}] run tag @e[type=armor_stand,tag=gas,limit=1,sort=nearest] add 17

#Gas type effects
execute as @e[type=armor_stand,tag=gas,tag=13] at @s run function drone_strike:main/strike_type/13
execute as @e[type=armor_stand,tag=gas,tag=14] at @s run function drone_strike:main/strike_type/14
execute as @e[type=armor_stand,tag=gas,tag=15] at @s run function drone_strike:main/strike_type/15
execute as @e[type=armor_stand,tag=gas,tag=16] at @s run function drone_strike:main/strike_type/16

execute if entity @e[type=!#drone_strike:inanimate,tag=radiation,tag=!immune] run function drone_strike:main/gas/radiation
execute if entity @e[type=!#drone_strike:inanimate,tag=bioweapon,tag=!immune] run function drone_strike:main/gas/bioweapon
tag @a[tag=radiation,scores={ds_deaths=1..}] remove radiation
tag @a[tag=bioweapon,scores={ds_deaths=1..}] remove bioweapon
tag @e[tag=immune] remove radiation
tag @e[tag=immune] remove bioweapon
scoreboard players set @a[scores={ds_deaths=1..}] ds_deaths 0
scoreboard players set @e[type=!#drone_strike:inanimate,tag=!radiation,tag=!droneStrike,scores={ds_timer=1..}] ds_timer 0
scoreboard players set @e[type=!#drone_strike:inanimate,tag=!bioweapon,tag=!droneStrike,scores={ds_killTimer=1..}] ds_killTimer 0

#Bioweapon info
execute if entity @a[team=ds_bw] run function drone_strike:main/bw_info

kill @e[type=arrow,nbt={inGround:1b},tag=droneStrike]
kill @e[type=arrow,nbt={inGround:1b},tag=droneStrike]
