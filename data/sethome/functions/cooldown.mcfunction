schedule function sethome:cooldown 1s

scoreboard players add @a cooldown 0
scoreboard players remove @a[scores={cooldown=1..}] cooldown 1
