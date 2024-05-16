scoreboard players add @e[tag=radiation,tag=!immune] ds_timer 1
tellraw @a[scores={ds_timer=10}] {"text":"There's a faint taste of iron...","color":"gray"}
tellraw @a[scores={ds_timer=500}] {"text":"You feel weaker","color":"gray"}
tellraw @a[scores={ds_timer=780}] {"text":"You can't think straight","color":"gray"}
tellraw @a[scores={ds_timer=1000}] {"text":"You feel disoriented","color":"gray"}
tellraw @a[scores={ds_timer=2500}] {"text":"You can barely stand","color":"gray"}
effect give @e[tag=radiation,scores={ds_timer=500..780}] slowness 1 0 true
effect give @e[tag=radiation,scores={ds_timer=550..780}] weakness 1 0 true
effect give @e[tag=radiation,scores={ds_timer=780..1000}] slowness 1 1 true
effect give @e[tag=radiation,scores={ds_timer=780..1000}] weakness 1 1 true
effect give @e[tag=radiation,scores={ds_timer=780..2000}] mining_fatigue 1 0 true
effect give @e[tag=radiation,scores={ds_timer=1000..4000}] slowness 1 2 true
effect give @e[tag=radiation,scores={ds_timer=1000..4000}] weakness 1 2 true
effect give @e[tag=radiation,scores={ds_timer=2000..4000}] mining_fatigue 1 1 true
effect give @e[tag=radiation,scores={ds_timer=3400..4000}] blindness 5 0 true
effect give @e[tag=radiation,scores={ds_timer=4000..}] weakness 1 3 true
effect give @e[tag=radiation,scores={ds_timer=4000..}] blindness 5 1 true
effect give @e[tag=radiation,scores={ds_timer=4000..}] slowness 1 4 true
effect give @e[tag=radiation,scores={ds_timer=4000..4200}] mining_fatigue 1 2 true
effect give @e[tag=radiation,scores={ds_timer=4200..}] mining_fatigue 1 3 true
effect give @e[tag=radiation,scores={ds_timer=4200..}] nausea 5 0 true
effect give @e[tag=radiation,scores={ds_timer=4400..}] wither 5 1 true
