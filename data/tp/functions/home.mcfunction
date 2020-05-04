# Set current pos
execute store result score @s CurrentX run data get entity @s Pos[0]
execute store result score @s CurrentY run data get entity @s Pos[1]
execute store result score @s CurrentZ run data get entity @s Pos[2]

# Set diff = Home pos - Current pos
scoreboard players operation @s DiffX = @s HomeX
scoreboard players operation @s DiffX -= @s CurrentX
scoreboard players operation @s DiffY = @s HomeY
scoreboard players operation @s DiffY -= @s CurrentY
scoreboard players operation @s DiffZ = @s HomeZ
scoreboard players operation @s DiffZ -= @s CurrentZ

# TP X
execute as @s[scores={DiffX=1..}] run function tp:x
execute as @s[scores={DiffX=..-1}] run function tp:-x

# TP Y
execute as @s[scores={DiffY=1..}] run function tp:y
execute as @s[scores={DiffY=..-1}] run function tp:-y

# TP Z
execute as @s[scores={DiffZ=1..}] run function tp:z
execute as @s[scores={DiffZ=..-1}] run function tp:-z

# Center on block
execute at @s align xyz run tp @s ~.5 ~ ~.5
