schedule function sethome:check 5

# Sethome trigger
scoreboard players enable @a sethome
execute as @a[scores={sethome=1..}] run function sethome:sethome
execute as @a[scores={sethome=1..}] run tellraw @s ["",{"text":"Your home has been set","color":"green"}]
execute as @a[scores={sethome=1..}] run scoreboard players reset @s sethome

# Home trigger
scoreboard players enable @a home
execute as @a[scores={home=1..},tag=homeset] run function sethome:home
execute as @a[scores={home=1..},tag=homeset] run tellraw @s ["",{"text":"Teleported","color":"green"}]
execute as @a[scores={home=1..},tag=!homeset] run tellraw @s ["",{"text":"No home set","color":"red"}]
execute as @a[scores={home=1..}] run scoreboard players reset @s home

# Spawn trigger
scoreboard players enable @a spawn
execute as @a[scores={spawn=1..}] run function sethome:spawn
execute as @a[scores={spawn=1..}] run tellraw @s ["",{"text":"Teleported","color":"green"}]
execute as @a[scores={spawn=1..}] run scoreboard players reset @s spawn

# Help-sethome trigger
scoreboard players enable @a help-sethome
execute as @a[scores={help-sethome=1..}] run function sethome:help
execute as @a[scores={help-sethome=1..}] run scoreboard players reset @s help-sethome

# Settemp trigger
scoreboard players enable @a[tag=Admin] settemp
execute as @a[scores={settemp=1..}] run function sethome:settemp
execute as @a[scores={settemp=1..}] run tellraw @s ["",{"text":"Your temp has been set","color":"green"}]
execute as @a[scores={settemp=1..}] run scoreboard players reset @s settemp

# Temp trigger
scoreboard players enable @a[tag=Admin] temp
execute as @a[scores={temp=1..},tag=tempset] run function sethome:temp
execute as @a[scores={temp=1..},tag=tempset] run tellraw @s ["",{"text":"Teleported","color":"green"}]
execute as @a[scores={temp=1..},tag=!tempset] run tellraw @s ["",{"text":"No temp set","color":"red"}]
execute as @a[scores={temp=1..}] run scoreboard players reset @s temp
