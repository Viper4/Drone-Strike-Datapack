execute at @a[team=ds_bw] store result score All_Infected ds_bw if entity @e[tag=bioweapon,type=!#drone_strike:inanimate,distance=..90]
execute at @a[team=ds_bw] store result score All_Not_Infected ds_bw if entity @e[tag=!bioweapon,type=!#drone_strike:inanimate,distance=..90]
execute at @a[team=ds_bw] store result score All_Total ds_bw if entity @e[type=!#drone_strike:inanimate,distance=..90]

execute at @a[team=ds_bw] store result score Villagers_Infected ds_bw if entity @e[tag=bioweapon,type=villager,distance=..90]
execute at @a[team=ds_bw] store result score Villagers_Not_Infected ds_bw if entity @e[tag=!bioweapon,type=villager,distance=..90]
execute at @a[team=ds_bw] store result score Villagers_Total ds_bw if entity @e[type=villager,distance=..90]
