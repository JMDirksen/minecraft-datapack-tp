function tp:setback

execute in overworld run tp @s 0 0 0
spreadplayers 0 0 0 10 false @s

scoreboard players set @s tp-cooldown 60
scoreboard players remove @s tp-tokens 1
tellraw @s ["",{"text":"Naar het spawnpunt geteleporteerd (","color":"green"},{"score":{"name":"@s","objective":"tp-tokens"},"color":"aqua"},{"text":" tokens over)","color":"green"}]
