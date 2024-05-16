tag @r[tag=check] add checking
execute if score @s ds_UUID0 = @p[tag=checking] ds_UUID0 if score @s ds_UUID1 = @p[tag=checking] ds_UUID1 if score @s ds_UUID2 = @p[tag=checking] ds_UUID2 if score @s ds_UUID3 = @p[tag=checking] ds_UUID3 run tellraw @p[tag=checking] [{"selector":"@s"},{"text":" Calling a strike at [","color":"white"},{"score":{"name":"@s","objective":"ds_posx"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"ds_posy"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"ds_posz"},"color":"white"},{"text":"]","color":"white"}]
tag @a[tag=checking] remove check
tag @a[tag=checking] remove checking
execute if entity @a[tag=check] run function drone_strike:main/check_owner/alert_strike
