tellraw @s ["",{"text":"Teleports cost 1 token, you get 1 token per 5 min. 3 tokens max., teleporting has a 1 min. cooldown","color":"green"}]
tellraw @s ["",{"text":"/trigger tp-help","color":"yellow"},{"text":" Show this help","color":"green"}]
tellraw @s ["",{"text":"/trigger tp-sethome","color":"yellow"},{"text":" Set home here","color":"green"}]
tellraw @s ["",{"text":"/trigger tp-home","color":"yellow"},{"text":" Teleport to home","color":"green"}]
tellraw @s ["",{"text":"/trigger tp-spawn","color":"yellow"},{"text":" Teleport to spawn","color":"green"}]
tellraw @s ["",{"text":"/trigger tp-random","color":"yellow"},{"text":" Teleport to random location far away","color":"green"}]
tellraw @s ["",{"text":"/trigger tp-back","color":"yellow"},{"text":" Teleport back to where you came from","color":"green"}]
tellraw @s ["",{"text":"You have ","color":"green"},{"score":{"name":"@s","objective":"tp-tokens"},"color":"aqua"},{"text":" tokens and ","color":"green"},{"score":{"name":"@s","objective":"tp-cooldown"},"color":"aqua"},{"text":" seconds cooldown","color":"green"}]

# Home coords
# at overworld
execute as @s[scores={tp-home-d=0}] run tellraw @s ["",{"text":"Home coords: ","color":"green"},{"score":{"name":"@s","objective":"tp-home-x"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home-y"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home-z"},"color":"aqua"},{"text":" @ ","color":"green"},{"text":"Overworld","color":"aqua"}]
# at the nether
execute as @s[scores={tp-home-d=-1}] run tellraw @s ["",{"text":"Home coords: ","color":"green"},{"score":{"name":"@s","objective":"tp-home-x"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home-y"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home-z"},"color":"aqua"},{"text":" @ ","color":"green"},{"text":"The Nether","color":"aqua"}]
# at the end
execute as @s[scores={tp-home-d=1}] run tellraw @s ["",{"text":"Home coords: ","color":"green"},{"score":{"name":"@s","objective":"tp-home-x"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home-y"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home-z"},"color":"aqua"},{"text":" @ ","color":"green"},{"text":"The End","color":"aqua"}]

# Back coords
# at overworld
execute as @s[scores={tp-back-d=0}] run tellraw @s ["",{"text":"Back coords: ","color":"green"},{"score":{"name":"@s","objective":"tp-back-x"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-back-y"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-back-z"},"color":"aqua"},{"text":" @ ","color":"green"},{"text":"Overworld","color":"aqua"}]
# at the nether
execute as @s[scores={tp-back-d=-1}] run tellraw @s ["",{"text":"Back coords: ","color":"green"},{"score":{"name":"@s","objective":"tp-back-x"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-back-y"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-back-z"},"color":"aqua"},{"text":" @ ","color":"green"},{"text":"The Nether","color":"aqua"}]
# at the end
execute as @s[scores={tp-back-d=1}] run tellraw @s ["",{"text":"Back coords: ","color":"green"},{"score":{"name":"@s","objective":"tp-back-x"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-back-y"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-back-z"},"color":"aqua"},{"text":" @ ","color":"green"},{"text":"The End","color":"aqua"}]
