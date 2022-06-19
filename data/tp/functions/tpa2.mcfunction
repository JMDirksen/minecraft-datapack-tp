tag @s add tpa-source
execute at @a if score @p tp-id = @s tpa run tag @p add tpa-target
tellraw @a[tag=tpa-target] ["",{"text":"Speler ","color":"green"},{"selector":"@a[tag=tpa-source]","color":"aqua"},{"text":" wil naar je teleporteren, accepteren? (","color":"green"},{"text":"/trigger tpaccept","color":"yellow"},{"text":")","color":"green"}]
scoreboard players enable @a[tag=tpa-target] tpaccept
schedule function tp:tpa-expire 30s
