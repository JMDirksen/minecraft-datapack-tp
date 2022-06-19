tellraw @s ["",{"text":"Je hebt ","color":"green"},{"score":{"name":"@s","objective":"tp-tokens"},"color":"aqua"},{"text":" tokens en ","color":"green"},{"score":{"name":"@s","objective":"tp-cooldown"},"color":"aqua"},{"text":" seconden afkoeltijd","color":"green"}]

# Home coords
# at overworld
execute as @s[scores={tp-home-d=0}] run tellraw @s ["",{"text":"Thuis coördinaten: ","color":"green"},{"score":{"name":"@s","objective":"tp-home-x"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home-y"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home-z"},"color":"aqua"},{"text":" @ ","color":"green"},{"text":"Bovenwereld","color":"aqua"}]
# at the nether
execute as @s[scores={tp-home-d=-1}] run tellraw @s ["",{"text":"Thuis coördinaten: ","color":"green"},{"score":{"name":"@s","objective":"tp-home-x"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home-y"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home-z"},"color":"aqua"},{"text":" @ ","color":"green"},{"text":"De Nether","color":"aqua"}]
# at the end
execute as @s[scores={tp-home-d=1}] run tellraw @s ["",{"text":"Thuis coördinaten: ","color":"green"},{"score":{"name":"@s","objective":"tp-home-x"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home-y"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home-z"},"color":"aqua"},{"text":" @ ","color":"green"},{"text":"De End","color":"aqua"}]

# Home2 coords
# at overworld
execute as @s[scores={tp-home2-d=0}] run tellraw @s ["",{"text":"Thuis2 coördinaten: ","color":"green"},{"score":{"name":"@s","objective":"tp-home2-x"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home2-y"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home2-z"},"color":"aqua"},{"text":" @ ","color":"green"},{"text":"Bovenwereld","color":"aqua"}]
# at the nether
execute as @s[scores={tp-home2-d=-1}] run tellraw @s ["",{"text":"Thuis2 coördinaten: ","color":"green"},{"score":{"name":"@s","objective":"tp-home2-x"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home2-y"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home2-z"},"color":"aqua"},{"text":" @ ","color":"green"},{"text":"De Nether","color":"aqua"}]
# at the end
execute as @s[scores={tp-home2-d=1}] run tellraw @s ["",{"text":"Thuis2 coördinaten: ","color":"green"},{"score":{"name":"@s","objective":"tp-home2-x"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home2-y"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home2-z"},"color":"aqua"},{"text":" @ ","color":"green"},{"text":"De End","color":"aqua"}]

# Back coords
# at overworld
execute as @s[scores={tp-back-d=0}] run tellraw @s ["",{"text":"Terug coördinaten: ","color":"green"},{"score":{"name":"@s","objective":"tp-back-x"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-back-y"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-back-z"},"color":"aqua"},{"text":" @ ","color":"green"},{"text":"Bovenwereld","color":"aqua"}]
# at the nether
execute as @s[scores={tp-back-d=-1}] run tellraw @s ["",{"text":"Terug coördinaten: ","color":"green"},{"score":{"name":"@s","objective":"tp-back-x"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-back-y"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-back-z"},"color":"aqua"},{"text":" @ ","color":"green"},{"text":"De Nether","color":"aqua"}]
# at the end
execute as @s[scores={tp-back-d=1}] run tellraw @s ["",{"text":"Terug coördinaten: ","color":"green"},{"score":{"name":"@s","objective":"tp-back-x"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-back-y"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-back-z"},"color":"aqua"},{"text":" @ ","color":"green"},{"text":"De End","color":"aqua"}]
