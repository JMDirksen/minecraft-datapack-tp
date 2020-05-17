tp @a[tag=tpa-source] @s

scoreboard players set @a[tag=tpa-source] tp-cooldown 60
scoreboard players remove @a[tag=tpa-source] tp-tokens 1
tellraw @a[tag=tpa-source] ["",{"text":"Teleported to other player (","color":"green"},{"score":{"name":"@s","objective":"tp-tokens"},"color":"aqua"},{"text":" tokens left)","color":"green"}]

tag @a remove tpa-source
tag @a remove tpa-target
schedule clear tp:tpa-expire
