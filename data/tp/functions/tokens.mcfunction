schedule function tp:tokens 60s

scoreboard players add @a tp-tokens 0
scoreboard players add @a[scores={tp-tokens=..2}] tp-token-timer 1
scoreboard players add @a[scores={tp-tokens=..2,tp-token-timer=5..}] tp-tokens 1
scoreboard players set @a[scores={tp-token-timer=5..}] tp-token-timer 0
