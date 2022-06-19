execute store result score @s tp-home2-x run data get entity @s Pos[0]
execute store result score @s tp-home2-y run data get entity @s Pos[1]
execute store result score @s tp-home2-z run data get entity @s Pos[2]
execute store result score @s tp-home2-d run data get entity @s Dimension
tellraw @s ["",{"text":"Thuis2 locatie ingesteld","color":"green"}]
