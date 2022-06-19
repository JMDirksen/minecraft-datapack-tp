execute store result score @s tp-home2-x run data get entity @s Pos[0]
execute store result score @s tp-home2-y run data get entity @s Pos[1]
execute store result score @s tp-home2-z run data get entity @s Pos[2]
scoreboard players set @s[nbt={Dimension:"minecraft:overworld"}] tp-home2-d 0
scoreboard players set @s[nbt={Dimension:"minecraft:the_nether"}] tp-home2-d -1
scoreboard players set @s[nbt={Dimension:"minecraft:the_end"}] tp-home2-d 1
tellraw @s ["",{"text":"Your home2 has been set","color":"green"}]
