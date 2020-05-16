scoreboard objectives add tp-home-x dummy
scoreboard objectives add tp-home-y dummy
scoreboard objectives add tp-home-z dummy
scoreboard objectives add tp-home-d dummy
scoreboard objectives add tp-home2-x dummy
scoreboard objectives add tp-home2-y dummy
scoreboard objectives add tp-home2-z dummy
scoreboard objectives add tp-home2-d dummy
scoreboard objectives add tp-back-x dummy
scoreboard objectives add tp-back-y dummy
scoreboard objectives add tp-back-z dummy
scoreboard objectives add tp-back-d dummy
scoreboard objectives add tp-diff-x dummy
scoreboard objectives add tp-diff-y dummy
scoreboard objectives add tp-diff-z dummy
scoreboard objectives add tp-diff-d dummy
scoreboard objectives add tp-cooldown dummy
scoreboard objectives add tp-tokens dummy
scoreboard objectives add tp-token-timer dummy
scoreboard objectives add tp-id dummy
scoreboard objectives add tp-id-temp dummy

scoreboard objectives add tp-sethome trigger
scoreboard objectives add tp-home trigger
scoreboard objectives add tp-sethome2 trigger
scoreboard objectives add tp-home2 trigger
scoreboard objectives add tp-back trigger
scoreboard objectives add tp-spawn trigger
scoreboard objectives add tp-random trigger
scoreboard objectives add tp-help trigger
scoreboard objectives add tp-info trigger
scoreboard objectives add tpa trigger
scoreboard objectives add tpaccept trigger

function tp:triggers
function tp:cooldown
function tp:tokens
function tp:playerids

scoreboard objectives setdisplay list tp-id
