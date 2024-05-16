execute store result score @s ds_posx run data get entity @s Pos[0]
execute store result score @s ds_posy run data get entity @s Pos[1]
execute store result score @s ds_posz run data get entity @s Pos[2]
execute store result score @s ds_strikeType run random value -25..25
scoreboard players operation @s ds_posx += @s ds_strikeType
execute store result score @s ds_strikeType run random value 0..3
scoreboard players operation @s ds_posy += @s ds_strikeType
execute store result score @s ds_strikeType run random value -25..25
scoreboard players operation @s ds_posz += @s ds_strikeType

execute store result entity @s Pos[0] double 1 run scoreboard players get @s ds_posx
execute store result entity @s Pos[1] double 1 run scoreboard players get @s ds_posy
execute store result entity @s Pos[2] double 1 run scoreboard players get @s ds_posz