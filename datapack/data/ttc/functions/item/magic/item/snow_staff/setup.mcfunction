data modify entity @s Owner set from storage ttc:data root.temp.UUID
data modify entity @s Motion set from entity @e[type=marker,tag=ttc.trig,limit=1] Pos
tp @e[type=marker,tag=ttc.trig,limit=1] 0.0 0 0.0
tag @s add ttc.setup