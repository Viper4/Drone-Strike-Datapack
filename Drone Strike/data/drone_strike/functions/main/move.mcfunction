function drone_strike:main/check_block_entity
tp @s[tag=!inBlock,tag=!inEntity] ^ ^ ^1
scoreboard players add @s ds_rightClick 1
tag @s[tag=babyMode,scores={ds_rightClick=20..}] add inEntity
tag @s[tag=!babyMode,scores={ds_rightClick=100..}] add inEntity
execute at @s[tag=!inBlock,tag=!inEntity] run function drone_strike:main/move
