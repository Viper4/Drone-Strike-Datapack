scoreboard players add @e[tag=bioweapon,tag=!immune] ds_killTimer 1
tellraw @a[scores={ds_killTimer=120}] {"text":"Something doesn't seem right...","color":"gray"}
execute at @e[tag=bioweapon] run tag @e[type=!armor_stand,type=!item,type=!#minecraft:impact_projectiles,tag=!immune,distance=..2.5] add bioweapon
execute at @e[tag=bioweapon,scores={ds_killTimer=1000..}] run particle dust 0 0.4 0 0.6 ~ ~1 ~ 0.5 0.5 0.5 0 3
effect give @a[tag=bioweapon,scores={ds_killTimer=220..240}] hunger 1 0 true
effect give @a[tag=bioweapon,scores={ds_killTimer=337}] blindness 1 0 true
effect give @a[tag=bioweapon,scores={ds_killTimer=434..454}] hunger 2 1 true
execute at @a[tag=bioweapon,scores={ds_killTimer=420}] run playsound minecraft:ambient.crimson_forest.mood master @p ~ ~ ~ 10 0.1
effect give @a[tag=bioweapon,scores={ds_killTimer=560..580}] hunger 3 2 true
effect give @a[tag=bioweapon,scores={ds_killTimer=600}] blindness 1 0 true
execute at @a[tag=bioweapon,scores={ds_killTimer=600}] run playsound minecraft:entity.skeleton_horse.ambient_water master @p ~ ~ ~ 10 0.1
effect give @a[tag=bioweapon,scores={ds_killTimer=820..840}] hunger 4 3 true
effect give @e[tag=bioweapon,scores={ds_killTimer=830}] instant_damage 1 0 true
effect give @a[tag=bioweapon,scores={ds_killTimer=840..}] slowness 1 0
execute at @a[tag=bioweapon,scores={ds_killTimer=750}] run playsound minecraft:entity.creeper.primed master @p ^ ^ ^-3 5 1
execute at @a[tag=bioweapon,scores={ds_killTimer=1200}] run playsound minecraft:entity.skeleton_horse.ambient_water master @p ~ ~ ~ 10 0.1
effect give @a[tag=bioweapon,scores={ds_killTimer=1025}] blindness 1 0 true
effect give @a[tag=bioweapon,scores={ds_killTimer=1060..1080}] hunger 5 2 true
execute at @a[tag=bioweapon,scores={ds_killTimer=1300}] run playsound minecraft:entity.blaze.ambient master @p ~ ~ ~ 10 0.1
effect give @a[tag=bioweapon,scores={ds_killTimer=1300}] blindness 1 0 true
effect give @a[tag=bioweapon,scores={ds_killTimer=1800}] blindness 1 0 true
execute at @a[tag=bioweapon,scores={ds_killTimer=2000}] run playsound minecraft:entity.skeleton_horse.ambient_water master @p ~ ~ ~ 10 0.1
effect give @a[tag=bioweapon,scores={ds_killTimer=2000..2020}] hunger 4 2 true
effect give @a[tag=bioweapon,scores={ds_killTimer=2200}] blindness 2 0 true
effect give @a[tag=bioweapon,scores={ds_killTimer=2240..}] nausea 5 0 true
execute at @a[tag=bioweapon,scores={ds_killTimer=2000}] run playsound minecraft:entity.creeper.primed master @p ^-2 ^ ^-3 5 1
execute at @a[tag=bioweapon,scores={ds_killTimer=2200}] run playsound minecraft:entity.blaze.ambient master @p ~ ~ ~ 10 0.1
execute at @a[tag=bioweapon,scores={ds_killTimer=2520}] run playsound minecraft:ambient.crimson_forest.mood master @p ~ ~ ~ 10 0.1
effect give @a[tag=bioweapon,scores={ds_killTimer=2750..2850}] blindness 1 0 true
effect give @a[tag=bioweapon,scores={ds_killTimer=3518..}] blindness 1 0 true
effect give @a[tag=bioweapon,scores={ds_killTimer=2400..}] hunger 5 1 true
execute at @a[tag=bioweapon,scores={ds_killTimer=2650}] run playsound minecraft:ambient.crimson_forest.mood master @p ~ ~ ~ 10 2
execute at @a[tag=bioweapon,scores={ds_killTimer=2900}] run playsound minecraft:entity.skeleton_horse.ambient_water master @p ~ ~ ~ 10 0.4
execute at @a[tag=bioweapon,scores={ds_killTimer=3000}] run playsound minecraft:entity.blaze.ambient master @p ~ ~ ~ 10 0.1
effect give @e[tag=bioweapon,scores={ds_killTimer=3000..}] wither 4 1 true
effect give @e[tag=bioweapon,scores={ds_killTimer=3600..}] instant_damage 1 0 true

#Heart beat sounds
scoreboard players set @a[scores={ds_killTimer=1}] ds_heartBeat 1200
#slow
execute at @a[tag=bioweapon] if score @p ds_killTimer matches 1200..1800 if score @p ds_killTimer = @p ds_heartBeat run playsound minecraft:block.conduit.ambient master @p ~ ~ ~ 10 1
execute at @a[tag=bioweapon] if score @p ds_killTimer matches 1200..1800 if score @p ds_killTimer = @p ds_heartBeat run scoreboard players add @p ds_heartBeat 80

#medium
execute at @a[tag=bioweapon] if score @p ds_killTimer matches 1840..2600 if score @p ds_killTimer = @p ds_heartBeat run playsound minecraft:block.conduit.ambient master @p ~ ~ ~ 10 1.5
execute at @a[tag=bioweapon] if score @p ds_killTimer matches 1840..2600 if score @p ds_killTimer = @p ds_heartBeat run scoreboard players add @p ds_heartBeat 57

#fast
execute at @a[tag=bioweapon] if score @p ds_killTimer matches 2638..3517 if score @p ds_killTimer = @p ds_heartBeat run playsound minecraft:block.conduit.ambient master @p ~ ~ ~ 10 2
execute at @a[tag=bioweapon] if score @p ds_killTimer matches 2638..3517 if score @p ds_killTimer = @p ds_heartBeat run scoreboard players add @p ds_heartBeat 20
execute at @a[tag=bioweapon,scores={ds_killTimer=3518..}] run playsound minecraft:block.conduit.ambient master @p ~ ~ ~ 8 2
