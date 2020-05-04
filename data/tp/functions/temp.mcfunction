# Set current pos
execute store result score @s CurrentX run data get entity @s Pos[0]
execute store result score @s CurrentY run data get entity @s Pos[1]
execute store result score @s CurrentZ run data get entity @s Pos[2]

# Set diff = Temp pos - Current pos
scoreboard players operation @s DiffX = @s TempX
scoreboard players operation @s DiffX -= @s CurrentX
scoreboard players operation @s DiffY = @s TempY
scoreboard players operation @s DiffY -= @s CurrentY
scoreboard players operation @s DiffZ = @s TempZ
scoreboard players operation @s DiffZ -= @s CurrentZ

# TP X
execute as @s[tag=tempset,scores={DiffX=1..}] run function tp:x
execute as @s[tag=tempset,scores={DiffX=..-1}] run function tp:-x

# TP Y
execute as @s[tag=tempset,scores={DiffY=1..}] run function tp:y
execute as @s[tag=tempset,scores={DiffY=..-1}] run function tp:-y

# TP Z
execute as @s[tag=tempset,scores={DiffZ=1..}] run function tp:z
execute as @s[tag=tempset,scores={DiffZ=..-1}] run function tp:-z

# Center on block
execute at @s align xyz run tp @s ~.5 ~ ~.5
