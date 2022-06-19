tellraw @a[tag=tpa-source] ["",{"text":"Teleporteer verzoek is verlopen","color":"red"}]
tellraw @a[tag=tpa-target] ["",{"text":"Teleporteer verzoek is verlopen","color":"red"}]
tag @a remove tpa-source
tag @a remove tpa-target
scoreboard players reset @a tpaccept
