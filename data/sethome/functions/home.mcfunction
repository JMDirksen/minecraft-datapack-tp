# Switch dimension
execute as @s[tag=homeset,scores={HomeDim=-1}] in the_nether run tp 0 0 0
execute as @s[tag=homeset,scores={HomeDim=0}] in overworld run tp 0 0 0
execute as @s[tag=homeset,scores={HomeDim=1}] in the_end run tp 0 0 0

# Set diff = Home pos
scoreboard players operation @s DiffX = @s HomeX
scoreboard players operation @s DiffY = @s HomeY
scoreboard players operation @s DiffZ = @s HomeZ

# TP X
execute as @s[tag=homeset,scores={DiffX=1..}] run function sethome:x
execute as @s[tag=homeset,scores={DiffX=..-1}] run function sethome:-x

# TP Y
execute as @s[tag=homeset,scores={DiffY=1..}] run function sethome:y
execute as @s[tag=homeset,scores={DiffY=..-1}] run function sethome:-y

# TP Z
execute as @s[tag=homeset,scores={DiffZ=1..}] run function sethome:z
execute as @s[tag=homeset,scores={DiffZ=..-1}] run function sethome:-z

# Center on block
execute at @s align xyz run tp @s ~.5 ~ ~.5
