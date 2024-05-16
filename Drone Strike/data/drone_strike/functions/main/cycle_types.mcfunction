#First setting player's ds_strikeType to the type of their carrot_on_a_stick in case they have multiple carrot on a sticks
execute store result score @p[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ds:1b}}}] ds_strikeType run data get entity @p SelectedItem.tag.strike_type 

#Adding 1 to player's ds_strikeType and setting !DarkAccess players with ds_strikeType >=18 back to 0
scoreboard players add @p[distance=..1] ds_strikeType 1
scoreboard players add @a[tag=!DarkAccess,scores={ds_strikeType=12}] ds_strikeType 1
scoreboard players add @a[tag=!DarkAccess,scores={ds_strikeType=16}] ds_strikeType 1
scoreboard players add @a[tag=!DarkAccess,scores={ds_strikeType=17}] ds_strikeType 1
scoreboard players set @a[scores={ds_strikeType=18..}] ds_strikeType 1

#Telling the player what type was selected and actually changing the carrot_on_a_stick
tellraw @p [{"text":"Set Drone Strike type to ","color":"gray"},{"score":{"name":"@p","objective":"ds_strikeType"},"color":"white"}]
item replace entity @p[scores={ds_strikeType=1,ds_rightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ds:1b}}},distance=..1] weapon.mainhand with minecraft:carrot_on_a_stick{ds:1b,strike_type:1,CustomModelData:1}
item replace entity @p[scores={ds_strikeType=2,ds_rightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ds:1b}}},distance=..1] weapon.mainhand with minecraft:carrot_on_a_stick{ds:1b,strike_type:2,CustomModelData:2}
item replace entity @p[scores={ds_strikeType=3,ds_rightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ds:1b}}},distance=..1] weapon.mainhand with minecraft:carrot_on_a_stick{ds:1b,strike_type:3,CustomModelData:3}
item replace entity @p[scores={ds_strikeType=4,ds_rightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ds:1b}}},distance=..1] weapon.mainhand with minecraft:carrot_on_a_stick{ds:1b,strike_type:4,CustomModelData:4}
item replace entity @p[scores={ds_strikeType=5,ds_rightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ds:1b}}},distance=..1] weapon.mainhand with minecraft:carrot_on_a_stick{ds:1b,strike_type:5,CustomModelData:5}
item replace entity @p[scores={ds_strikeType=6,ds_rightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ds:1b}}},distance=..1] weapon.mainhand with minecraft:carrot_on_a_stick{ds:1b,strike_type:6,CustomModelData:6}
item replace entity @p[scores={ds_strikeType=7,ds_rightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ds:1b}}},distance=..1] weapon.mainhand with minecraft:carrot_on_a_stick{ds:1b,strike_type:7,CustomModelData:7}
item replace entity @p[scores={ds_strikeType=8,ds_rightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ds:1b}}},distance=..1] weapon.mainhand with minecraft:carrot_on_a_stick{ds:1b,strike_type:8,CustomModelData:8}
item replace entity @p[scores={ds_strikeType=9,ds_rightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ds:1b}}},distance=..1] weapon.mainhand with minecraft:carrot_on_a_stick{ds:1b,strike_type:9,CustomModelData:9}
item replace entity @p[scores={ds_strikeType=10,ds_rightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ds:1b}}},distance=..1] weapon.mainhand with minecraft:carrot_on_a_stick{ds:1b,strike_type:10,CustomModelData:10}
item replace entity @p[scores={ds_strikeType=11,ds_rightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ds:1b}}},distance=..1] weapon.mainhand with minecraft:carrot_on_a_stick{ds:1b,strike_type:11,CustomModelData:11}
item replace entity @p[scores={ds_strikeType=12,ds_rightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ds:1b}}},distance=..1] weapon.mainhand with minecraft:carrot_on_a_stick{ds:1b,strike_type:12,CustomModelData:12}
item replace entity @p[scores={ds_strikeType=13,ds_rightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ds:1b}}},distance=..1] weapon.mainhand with minecraft:carrot_on_a_stick{ds:1b,strike_type:13,CustomModelData:13}
item replace entity @p[scores={ds_strikeType=14,ds_rightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ds:1b}}},distance=..1] weapon.mainhand with minecraft:carrot_on_a_stick{ds:1b,strike_type:14,CustomModelData:14}
item replace entity @p[scores={ds_strikeType=15,ds_rightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ds:1b}}},distance=..1] weapon.mainhand with minecraft:carrot_on_a_stick{ds:1b,strike_type:15,CustomModelData:15}
item replace entity @p[scores={ds_strikeType=16,ds_rightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ds:1b}}},distance=..1] weapon.mainhand with minecraft:carrot_on_a_stick{ds:1b,strike_type:16,CustomModelData:16}
item replace entity @p[scores={ds_strikeType=17,ds_rightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ds:1b}}},distance=..1] weapon.mainhand with minecraft:carrot_on_a_stick{ds:1b,strike_type:17,CustomModelData:17}
