execute if entity @a[tag=tpa-source] run tellraw @s ["",{"text":"Another teleport already in progress, try again later","color":"red"}]
execute unless entity @a[tag=tpa-source] run function tp:tpa2
