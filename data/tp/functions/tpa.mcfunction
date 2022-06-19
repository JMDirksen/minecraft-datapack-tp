execute if entity @a[tag=tpa-source] run tellraw @s ["",{"text":"Er loopt al een ander teleporteer verzoek, probeer later nog eens","color":"red"}]
execute unless entity @a[tag=tpa-source] run function tp:tpa2
