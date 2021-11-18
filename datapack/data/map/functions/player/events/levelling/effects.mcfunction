title @s title [{"text":"L","color":"blue"},{"text":"e","color":"#7f7ffe"},{"text":"v","color":"#bfbffe"},{"text":"e","color":"white"},{"text":"l ","color":"white"},{"text":"u","color":"#bfbffe"},{"text":"p","color":"#7f7ffe"},{"text":"!","color":"blue"}]
scoreboard players operation d.0 map.level = @s map.level 
scoreboard players remove d.0 map.level 1
title @s subtitle [{"translate":"gui.map.levelup_subtitle","with":[{"score":{"objective": "map.level","name": "d.0"},"color":"#8B92EE"},{"score":{"objective": "map.level","name": "@s"},"color":"#8B92EE"}]}]