scoreboard objectives add ds_rightClick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add ds_timer dummy
scoreboard objectives add ds_killTimer dummy
scoreboard objectives add ds_shifting minecraft.custom:minecraft.sneak_time
scoreboard objectives add ds_strikeType dummy
scoreboard objectives add ds_UUID0 dummy
scoreboard objectives add ds_UUID1 dummy
scoreboard objectives add ds_UUID2 dummy
scoreboard objectives add ds_UUID3 dummy
scoreboard objectives add ds_posx dummy
scoreboard objectives add ds_posy dummy
scoreboard objectives add ds_posz dummy
scoreboard objectives add ds_heartBeat dummy
scoreboard objectives add ds_deaths deathCount

scoreboard objectives add ds_bw dummy {"text":"Bioweapon Info","color":"dark_green"}
scoreboard objectives setdisplay sidebar.team.gold ds_bw
team add ds_bw {"text":"Bioweapon Info","color":"gold"}
team modify ds_bw color gold
tellraw @a {"text":"Loaded Drone Strike by Viper1618","color":"dark_green"}
