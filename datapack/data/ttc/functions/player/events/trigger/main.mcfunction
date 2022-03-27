execute if entity @s[scores={ttc.t=12400}] positioned -5 103 0 run function ttc:region/lobby/sign/main
scoreboard players reset @s ttc.t
scoreboard players enable @s ttc.t