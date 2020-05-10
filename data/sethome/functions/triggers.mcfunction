schedule function sethome:triggers 5

# Sethome trigger
scoreboard players enable @a sethome
execute as @a[scores={sethome=1..}] run function sethome:sethome
execute as @a[scores={sethome=1..}] run tellraw @s ["",{"text":"Your home has been set","color":"green"}]
execute as @a[scores={sethome=1..}] run scoreboard players reset @s sethome

# Home trigger
scoreboard players enable @a home
execute as @a[scores={home=1..},tag=!homeset] run tellraw @s ["",{"text":"No home set","color":"red"}]
execute as @a[scores={home=1..,cooldown=1..},tag=homeset] run tellraw @s ["",{"text":"Can't do that just yet, wait ","color":"red"},{"score":{"name":"@s","objective":"cooldown"},"color":"red"},{"text":" sec.","color":"red"}]
execute as @a[scores={home=1..,cooldown=0},tag=homeset] run function sethome:home
execute as @a[scores={home=1..,cooldown=0},tag=homeset] run tellraw @s ["",{"text":"Teleported","color":"green"}]
execute as @a[scores={home=1..,cooldown=0},tag=homeset] run scoreboard players set @s cooldown 60
execute as @a[scores={home=1..}] run scoreboard players reset @s home

# Spawn trigger
scoreboard players enable @a spawn
execute as @a[scores={spawn=1..,cooldown=1..}] run tellraw @s ["",{"text":"Can't do that just yet, wait ","color":"red"},{"score":{"name":"@s","objective":"cooldown"},"color":"red"},{"text":" sec.","color":"red"}]
execute as @a[scores={spawn=1..,cooldown=0}] run function sethome:spawn
execute as @a[scores={spawn=1..,cooldown=0}] run tellraw @s ["",{"text":"Teleported","color":"green"}]
execute as @a[scores={spawn=1..,cooldown=0}] run scoreboard players set @s cooldown 60
execute as @a[scores={spawn=1..}] run scoreboard players reset @s spawn

# Random trigger
scoreboard players enable @a random
execute as @a[scores={random=1..,cooldown=1..}] run tellraw @s ["",{"text":"Can't do that just yet, wait ","color":"red"},{"score":{"name":"@s","objective":"cooldown"},"color":"red"},{"text":" sec.","color":"red"}]
execute as @a[scores={random=1..,cooldown=0}] run function sethome:random
execute as @a[scores={random=1..,cooldown=0}] run tellraw @s ["",{"text":"Teleported","color":"green"}]
execute as @a[scores={random=1..,cooldown=0}] run scoreboard players set @s cooldown 60
execute as @a[scores={random=1..}] run scoreboard players reset @s random

# Help-sethome trigger
scoreboard players enable @a help-sethome
execute as @a[scores={help-sethome=1..}] run function sethome:help
execute as @a[scores={help-sethome=1..}] run scoreboard players reset @s help-sethome
