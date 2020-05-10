schedule function sethome:triggers 5

# Sethome trigger
scoreboard players enable @a tp-sethome
execute as @a[scores={tp-sethome=1..}] run function sethome:sethome
execute as @a[scores={tp-sethome=1..}] run tellraw @s ["",{"text":"Your home has been set","color":"green"}]
execute as @a[scores={tp-sethome=1..}] run scoreboard players reset @s tp-sethome

# Home trigger
scoreboard players enable @a tp-home
execute as @a[scores={tp-home=1..},tag=!homeset] run tellraw @s ["",{"text":"No home set","color":"red"}]
execute as @a[scores={tp-home=1..,tp-cooldown=1..},tag=homeset] run tellraw @s ["",{"text":"Can't do that just yet, wait ","color":"red"},{"score":{"name":"@s","objective":"tp-cooldown"},"color":"red"},{"text":" sec.","color":"red"}]
execute as @a[scores={tp-home=1..,tp-cooldown=0},tag=homeset] run function sethome:home
execute as @a[scores={tp-home=1..,tp-cooldown=0},tag=homeset] run tellraw @s ["",{"text":"Teleported","color":"green"}]
execute as @a[scores={tp-home=1..,tp-cooldown=0},tag=homeset] run scoreboard players set @s tp-cooldown 60
execute as @a[scores={tp-home=1..}] run scoreboard players reset @s tp-home

# Spawn trigger
scoreboard players enable @a tp-spawn
execute as @a[scores={tp-spawn=1..,tp-cooldown=1..}] run tellraw @s ["",{"text":"Can't do that just yet, wait ","color":"red"},{"score":{"name":"@s","objective":"tp-cooldown"},"color":"red"},{"text":" sec.","color":"red"}]
execute as @a[scores={tp-spawn=1..,tp-cooldown=0}] run function sethome:spawn
execute as @a[scores={tp-spawn=1..,tp-cooldown=0}] run tellraw @s ["",{"text":"Teleported","color":"green"}]
execute as @a[scores={tp-spawn=1..,tp-cooldown=0}] run scoreboard players set @s tp-cooldown 60
execute as @a[scores={tp-spawn=1..}] run scoreboard players reset @s tp-spawn

# Random trigger
scoreboard players enable @a tp-random
execute as @a[scores={tp-random=1..,tp-cooldown=1..}] run tellraw @s ["",{"text":"Can't do that just yet, wait ","color":"red"},{"score":{"name":"@s","objective":"tp-cooldown"},"color":"red"},{"text":" sec.","color":"red"}]
execute as @a[scores={tp-random=1..,tp-cooldown=0}] run function sethome:random
execute as @a[scores={tp-random=1..,tp-cooldown=0}] run tellraw @s ["",{"text":"Teleported","color":"green"}]
execute as @a[scores={tp-random=1..,tp-cooldown=0}] run scoreboard players set @s tp-cooldown 60
execute as @a[scores={tp-random=1..}] run scoreboard players reset @s tp-random

# Help trigger
scoreboard players enable @a tp-help
execute as @a[scores={tp-help=1..}] run function sethome:help
execute as @a[scores={tp-help=1..}] run scoreboard players reset @s tp-help
