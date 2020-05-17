schedule function tp:triggers 5
scoreboard players add @a tp-tokens 0

# Sethome trigger
scoreboard players enable @a tp-sethome
execute as @a[scores={tp-sethome=1..}] run function tp:sethome
scoreboard players reset @a[scores={tp-sethome=1..}] tp-sethome

# Home trigger
scoreboard players enable @a tp-home
scoreboard players add @a[scores={tp-home=1..}] tp-home-y 0
execute as @a[scores={tp-home=1..,tp-home-y=0}] run tellraw @s ["",{"text":"No home set","color":"red"}]
execute as @a[scores={tp-home=1..,tp-home-y=1..,tp-tokens=0}] run tellraw @s ["",{"text":"No teleport tokens left","color":"red"}]
execute as @a[scores={tp-home=1..,tp-home-y=1..,tp-tokens=1..,tp-cooldown=1..}] run tellraw @s ["",{"text":"Can't do that just yet, wait ","color":"red"},{"score":{"name":"@s","objective":"tp-cooldown"},"color":"red"},{"text":" sec.","color":"red"}]
execute as @a[scores={tp-home=1..,tp-home-y=1..,tp-tokens=1..,tp-cooldown=0}] run function tp:home
scoreboard players reset @a[scores={tp-home=1..}] tp-home

# Sethome2 trigger
scoreboard players enable @a[tag=Admin] tp-sethome2
execute as @a[scores={tp-sethome2=1..}] run function tp:sethome2
scoreboard players reset @a[scores={tp-sethome2=1..}] tp-sethome2

# Home2 trigger
scoreboard players enable @a[tag=Admin] tp-home2
scoreboard players add @a[scores={tp-home2=1..}] tp-home2-y 0
execute as @a[scores={tp-home2=1..,tp-home2-y=0}] run tellraw @s ["",{"text":"No home2 set","color":"red"}]
execute as @a[scores={tp-home2=1..,tp-home2-y=1..,tp-tokens=0}] run tellraw @s ["",{"text":"No teleport tokens left","color":"red"}]
execute as @a[scores={tp-home2=1..,tp-home2-y=1..,tp-tokens=1..,tp-cooldown=1..}] run tellraw @s ["",{"text":"Can't do that just yet, wait ","color":"red"},{"score":{"name":"@s","objective":"tp-cooldown"},"color":"red"},{"text":" sec.","color":"red"}]
execute as @a[scores={tp-home2=1..,tp-home2-y=1..,tp-tokens=1..,tp-cooldown=0}] run function tp:home2
scoreboard players reset @a[scores={tp-home2=1..}] tp-home2

# Back trigger
scoreboard players enable @a tp-back
scoreboard players add @a[scores={tp-back=1..}] tp-back-y 0
execute as @a[scores={tp-back=1..,tp-back-y=0}] run tellraw @s ["",{"text":"Nowhere to go back to","color":"red"}]
execute as @a[scores={tp-back=1..,tp-back-y=1..,tp-tokens=0}] run tellraw @s ["",{"text":"No teleport tokens left","color":"red"}]
execute as @a[scores={tp-back=1..,tp-back-y=1..,tp-tokens=1..,tp-cooldown=1..}] run tellraw @s ["",{"text":"Can't do that just yet, wait ","color":"red"},{"score":{"name":"@s","objective":"tp-cooldown"},"color":"red"},{"text":" sec.","color":"red"}]
execute as @a[scores={tp-back=1..,tp-back-y=1..,tp-tokens=1..,tp-cooldown=0}] run function tp:back
scoreboard players reset @a[scores={tp-back=1..}] tp-back

# Spawn trigger
scoreboard players enable @a tp-spawn
execute as @a[scores={tp-spawn=1..,tp-tokens=0}] run tellraw @s ["",{"text":"No teleport tokens left","color":"red"}]
execute as @a[scores={tp-spawn=1..,tp-tokens=1..,tp-cooldown=1..}] run tellraw @s ["",{"text":"Can't do that just yet, wait ","color":"red"},{"score":{"name":"@s","objective":"tp-cooldown"},"color":"red"},{"text":" sec.","color":"red"}]
execute as @a[scores={tp-spawn=1..,tp-tokens=1..,tp-cooldown=0}] run function tp:spawn
scoreboard players reset @a[scores={tp-spawn=1..}] tp-spawn

# Random trigger
scoreboard players enable @a tp-random
execute as @a[scores={tp-random=1..,tp-tokens=0}] run tellraw @s ["",{"text":"No teleport tokens left","color":"red"}]
execute as @a[scores={tp-random=1..,tp-tokens=1..,tp-cooldown=1..}] run tellraw @s ["",{"text":"Can't do that just yet, wait ","color":"red"},{"score":{"name":"@s","objective":"tp-cooldown"},"color":"red"},{"text":" sec.","color":"red"}]
execute as @a[scores={tp-random=1..,tp-tokens=1..,tp-cooldown=0}] run function tp:random
scoreboard players reset @a[scores={tp-random=1..}] tp-random

# Help trigger
scoreboard players enable @a tp-help
execute as @a[scores={tp-help=1..}] run function tp:help
scoreboard players reset @a[scores={tp-help=1..}] tp-help

# Info trigger
scoreboard players enable @a tp-info
execute as @a[scores={tp-info=1..}] run function tp:info
scoreboard players reset @a[scores={tp-info=1..}] tp-info

# TPA trigger
scoreboard players enable @a tpa
scoreboard players add @a tpa 0
execute as @a[scores={tpa=1}] run function tp:tpa-help
execute as @a[scores={tpa=2..}] run function tp:tpa
scoreboard players reset @a[scores={tpa=1..}] tpa

# TPAccept trigger
execute as @a[scores={tpaccept=1..}] run function tp:tpaccept
scoreboard players reset @a[scores={tpaccept=1..}] tpaccept
