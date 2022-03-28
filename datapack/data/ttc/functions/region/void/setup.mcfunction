forceload add 0 0
setblock 0 0 0 acacia_sign
setblock 0 1 0 barrel
kill @e[type=marker,tag=ttc.trig]
summon marker 0.0 0 0.0 {Tags:["ttc.trig"]}

function ttc:region/lobby/set