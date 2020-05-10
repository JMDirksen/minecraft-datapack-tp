schedule function tp:triggers 5
scoreboard players add @a tp-tokens 0

# Sethome trigger
scoreboard players enable @a tp-sethome
execute as @a[scores={tp-sethome=1..}] run function tp:sethome
execute as @a[scores={tp-sethome=1..}] run tellraw @s ["",{"text":"Your home has been set","color":"green"}]
execute as @a[scores={tp-sethome=1..}] run scoreboard players reset @s tp-sethome

# Home trigger
scoreboard players enable @a tp-home
scoreboard players add @a[scores={tp-home=1..}] tp-home-y 0
execute as @a[scores={tp-home=1..,tp-home-y=0}] run tellraw @s ["",{"text":"No home set","color":"red"}]
execute as @a[scores={tp-home=1..,tp-home-y=1..,tp-tokens=0}] run tellraw @s ["",{"text":"No teleport tokens left","color":"red"}]
execute as @a[scores={tp-home=1..,tp-home-y=1..,tp-tokens=1..,tp-cooldown=1..}] run tellraw @s ["",{"text":"Can't do that just yet, wait ","color":"red"},{"score":{"name":"@s","objective":"tp-cooldown"},"color":"red"},{"text":" sec.","color":"red"}]
execute as @a[scores={tp-home=1..,tp-home-y=1..,tp-tokens=1..,tp-cooldown=0}] run function tp:home
execute as @a[scores={tp-home=1..,tp-home-y=1..,tp-tokens=1..,tp-cooldown=0}] run scoreboard players set @s tp-cooldown 60
execute as @a[scores={tp-home=1..,tp-home-y=1..,tp-tokens=1..,tp-cooldown=60}] run scoreboard players remove @s tp-tokens 1
execute as @a[scores={tp-home=1..,tp-home-y=1..,tp-tokens=1..,tp-cooldown=60}] run tellraw @s ["",{"text":"Teleported home (","color":"green"},{"score":{"name":"@s","objective":"tp-tokens"},"color":"aqua"},{"text":" tokens left)","color":"green"}]
execute as @a[scores={tp-home=1..}] run scoreboard players reset @s tp-home

# Back trigger
scoreboard players enable @a tp-back
scoreboard players add @a[scores={tp-back=1..}] tp-back-y 0
execute as @a[scores={tp-back=1..,tp-back-y=0}] run tellraw @s ["",{"text":"Nowhere to go back to","color":"red"}]
execute as @a[scores={tp-back=1..,tp-back-y=1..,tp-tokens=0}] run tellraw @s ["",{"text":"No teleport tokens left","color":"red"}]
execute as @a[scores={tp-back=1..,tp-back-y=1..,tp-tokens=1..,tp-cooldown=1..}] run tellraw @s ["",{"text":"Can't do that just yet, wait ","color":"red"},{"score":{"name":"@s","objective":"tp-cooldown"},"color":"red"},{"text":" sec.","color":"red"}]
execute as @a[scores={tp-back=1..,tp-back-y=1..,tp-tokens=1..,tp-cooldown=0}] run function tp:back
execute as @a[scores={tp-back=1..,tp-back-y=1..,tp-tokens=1..,tp-cooldown=0}] run scoreboard players set @s tp-cooldown 60
execute as @a[scores={tp-back=1..,tp-back-y=1..,tp-tokens=1..,tp-cooldown=60}] run scoreboard players remove @s tp-tokens 1
execute as @a[scores={tp-back=1..,tp-back-y=1..,tp-tokens=1..,tp-cooldown=60}] run tellraw @s ["",{"text":"Teleported back (","color":"green"},{"score":{"name":"@s","objective":"tp-tokens"},"color":"aqua"},{"text":" tokens left)","color":"green"}]
execute as @a[scores={tp-back=1..}] run scoreboard players reset @s tp-back

# Spawn trigger
scoreboard players enable @a tp-spawn
execute as @a[scores={tp-spawn=1..,tp-tokens=0}] run tellraw @s ["",{"text":"No teleport tokens left","color":"red"}]
execute as @a[scores={tp-spawn=1..,tp-tokens=1..,tp-cooldown=1..}] run tellraw @s ["",{"text":"Can't do that just yet, wait ","color":"red"},{"score":{"name":"@s","objective":"tp-cooldown"},"color":"red"},{"text":" sec.","color":"red"}]
execute as @a[scores={tp-spawn=1..,tp-tokens=1..,tp-cooldown=0}] run function tp:spawn
execute as @a[scores={tp-spawn=1..,tp-tokens=1..,tp-cooldown=0}] run scoreboard players set @s tp-cooldown 60
execute as @a[scores={tp-spawn=1..,tp-tokens=1..,tp-cooldown=60}] run scoreboard players remove @s tp-tokens 1
execute as @a[scores={tp-spawn=1..,tp-tokens=1..,tp-cooldown=60}] run tellraw @s ["",{"text":"Teleported to spawn (","color":"green"},{"score":{"name":"@s","objective":"tp-tokens"},"color":"aqua"},{"text":" tokens left)","color":"green"}]
execute as @a[scores={tp-spawn=1..}] run scoreboard players reset @s tp-spawn

# Random trigger
scoreboard players enable @a tp-random
execute as @a[scores={tp-random=1..,tp-tokens=0}] run tellraw @s ["",{"text":"No teleport tokens left","color":"red"}]
execute as @a[scores={tp-random=1..,tp-tokens=1..,tp-cooldown=1..}] run tellraw @s ["",{"text":"Can't do that just yet, wait ","color":"red"},{"score":{"name":"@s","objective":"tp-cooldown"},"color":"red"},{"text":" sec.","color":"red"}]
execute as @a[scores={tp-random=1..,tp-tokens=1..,tp-cooldown=0}] run function tp:random
execute as @a[scores={tp-random=1..,tp-tokens=1..,tp-cooldown=0}] run scoreboard players set @s tp-cooldown 60
execute as @a[scores={tp-random=1..,tp-tokens=1..,tp-cooldown=60}] run scoreboard players remove @s tp-tokens 1
execute as @a[scores={tp-random=1..,tp-tokens=1..,tp-cooldown=60}] run tellraw @s ["",{"text":"Teleported to a random location (","color":"green"},{"score":{"name":"@s","objective":"tp-tokens"},"color":"aqua"},{"text":" tokens left)","color":"green"}]
execute as @a[scores={tp-random=1..}] run scoreboard players reset @s tp-random

# Help trigger
scoreboard players enable @a tp-help
execute as @a[scores={tp-help=1..}] run function tp:help
execute as @a[scores={tp-help=1..}] run scoreboard players reset @s tp-help
