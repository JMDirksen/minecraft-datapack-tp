schedule function tp:playerids 1s

scoreboard players add @a tp-id 0
scoreboard players operation #playerids tp-id > @a tp-id
scoreboard players add #playerids tp-id 1
scoreboard players operation @a[scores={tp-id=0},limit=1] tp-id = #playerids tp-id

# Reset id offline players
execute as @a run scoreboard players operation @s tp-id-temp = @s tp-id
scoreboard players reset * tp-id
scoreboard players set #playerids tp-id 1
execute as @a run scoreboard players operation @s tp-id = @s tp-id-temp
