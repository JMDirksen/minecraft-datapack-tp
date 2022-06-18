tellraw @s ["",{"text":"You have ","color":"green"},{"score":{"name":"@s","objective":"tp-tokens"},"color":"aqua"},{"text":" tokens and ","color":"green"},{"score":{"name":"@s","objective":"tp-cooldown"},"color":"aqua"},{"text":" seconds cooldown","color":"green"}]

# Home coords
# at overworld
execute as @s[scores={tp-home-d=19}] run tellraw @s ["",{"text":"Home coords: ","color":"green"},{"score":{"name":"@s","objective":"tp-home-x"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home-y"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home-z"},"color":"aqua"},{"text":" @ ","color":"green"},{"text":"Overworld","color":"aqua"}]
# at the nether
execute as @s[scores={tp-home-d=20}] run tellraw @s ["",{"text":"Home coords: ","color":"green"},{"score":{"name":"@s","objective":"tp-home-x"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home-y"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home-z"},"color":"aqua"},{"text":" @ ","color":"green"},{"text":"The Nether","color":"aqua"}]
# at the end
execute as @s[scores={tp-home-d=17}] run tellraw @s ["",{"text":"Home coords: ","color":"green"},{"score":{"name":"@s","objective":"tp-home-x"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home-y"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home-z"},"color":"aqua"},{"text":" @ ","color":"green"},{"text":"The End","color":"aqua"}]

# Home2 coords
# at overworld
execute as @s[scores={tp-home2-d=19}] run tellraw @s ["",{"text":"Home2 coords: ","color":"green"},{"score":{"name":"@s","objective":"tp-home2-x"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home2-y"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home2-z"},"color":"aqua"},{"text":" @ ","color":"green"},{"text":"Overworld","color":"aqua"}]
# at the nether
execute as @s[scores={tp-home2-d=20}] run tellraw @s ["",{"text":"Home2 coords: ","color":"green"},{"score":{"name":"@s","objective":"tp-home2-x"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home2-y"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home2-z"},"color":"aqua"},{"text":" @ ","color":"green"},{"text":"The Nether","color":"aqua"}]
# at the end
execute as @s[scores={tp-home2-d=17}] run tellraw @s ["",{"text":"Home2 coords: ","color":"green"},{"score":{"name":"@s","objective":"tp-home2-x"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home2-y"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-home2-z"},"color":"aqua"},{"text":" @ ","color":"green"},{"text":"The End","color":"aqua"}]

# Back coords
# at overworld
execute as @s[scores={tp-back-d=19}] run tellraw @s ["",{"text":"Back coords: ","color":"green"},{"score":{"name":"@s","objective":"tp-back-x"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-back-y"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-back-z"},"color":"aqua"},{"text":" @ ","color":"green"},{"text":"Overworld","color":"aqua"}]
# at the nether
execute as @s[scores={tp-back-d=20}] run tellraw @s ["",{"text":"Back coords: ","color":"green"},{"score":{"name":"@s","objective":"tp-back-x"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-back-y"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-back-z"},"color":"aqua"},{"text":" @ ","color":"green"},{"text":"The Nether","color":"aqua"}]
# at the end
execute as @s[scores={tp-back-d=17}] run tellraw @s ["",{"text":"Back coords: ","color":"green"},{"score":{"name":"@s","objective":"tp-back-x"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-back-y"},"color":"aqua"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"tp-back-z"},"color":"aqua"},{"text":" @ ","color":"green"},{"text":"The End","color":"aqua"}]
