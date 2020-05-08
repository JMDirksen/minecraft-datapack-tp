schedule function sethome:check 5

# Sethome trigger
scoreboard players enable @a sethome
execute as @a[scores={sethome=1..}] run function sethome:sethome
execute as @a[scores={sethome=1..}] run scoreboard players reset @s sethome

# Home trigger
scoreboard players enable @a home
execute as @a[scores={home=1..}] run function sethome:home
execute as @a[scores={home=1..}] run scoreboard players reset @s home

# Help-sethome trigger
scoreboard players enable @a help-sethome
execute as @a[scores={help-sethome=1..}] run function sethome:help
execute as @a[scores={help-sethome=1..}] run scoreboard players reset @s help-sethome
