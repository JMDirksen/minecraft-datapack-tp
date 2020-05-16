tag @s add tpa-source
execute at @a if score @p tp-id = @s tpa run tag @p add tpa-target
tellraw @a[tag=tpa-target,tag=!tpa-requested] ["",{"text":"Player ","color":"green"},{"selector":"@a[tag=tpa-source]","color":"aqua"},{"text":" wants to teleport to you, do you accept? (","color":"green"},{"text":"/trigger tpaccept","color":"yellow"},{"text":")","color":"green"}]
tag @a[tag=tpa-target] add tpa-requested
scoreboard players enable @a[tag=tpa-target] tpaccept
