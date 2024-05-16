tag @s add inBlock
execute at @s if block ~ ~ ~ #drone_strike:non_solid run tag @s remove inBlock
execute at @s if entity @e[type=!#drone_strike:inanimate,distance=..1.6] run tag @s add inEntity
execute at @s if entity @a[distance=..2] if score @s ds_UUID0 = @p ds_UUID0 if score @s ds_UUID1 = @p ds_UUID1 if score @s ds_UUID2 = @p ds_UUID2 if score @s ds_UUID3 = @p ds_UUID3 run tag @s remove inEntity
