scoreboard players operation d.0 map.d = @s map.m_mana
scoreboard players operation d.0 map.d *= @s map.p_mana
scoreboard players operation d.0 map.d /= const.100 map.d
scoreboard players operation @s map.c_mana += d.0 map.d

execute if score @s map.c_mana > @s map.m_mana run scoreboard players operation @s map.c_mana = @s map.m_mana

scoreboard players operation d.1 map.d = d.0 map.d
scoreboard players operation d.1 map.d /= const.10 map.d
scoreboard players operation d.0 map.d %= const.10 map.d

scoreboard players operation d.2 map.d = @s map.c_mana
scoreboard players operation d.3 map.d = @s map.c_mana
scoreboard players operation d.2 map.d /= const.10 map.d
scoreboard players operation d.3 map.d %= const.10 map.d

scoreboard players operation d.4 map.d = @s map.m_mana
scoreboard players operation d.5 map.d = @s map.m_mana
scoreboard players operation d.4 map.d /= const.10 map.d
scoreboard players operation d.5 map.d %= const.10 map.d

title @s[tag=!map.entity.player.mana.display] actionbar [{"text":"+","color":"gray"},{"score":{"name":"d.1","objective":"map.d"},"color":"#8B92EE"},{"text":"."},{"score":{"name":"d.0","objective":"map.d"},"color":"#8B92EE"},{"text":"\ua005","font":"map:main","color":"white"},{"text":" ("},{"score":{"name":"d.2","objective":"map.d"},"color":"#8B92EE"},{"text":"."},{"score":{"name":"d.3","objective":"map.d"},"color":"#8B92EE"},{"text":"/"},{"score":{"name":"d.4","objective":"map.d"},"color":"#8B92EE"},{"text":"."},{"score":{"name":"d.5","objective":"map.d"},"color":"#8B92EE"},{"text":")"}]

tag @s remove map.entity.player.mana.display