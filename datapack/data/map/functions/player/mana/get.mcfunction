scoreboard players set d.0 map.m_mana 1000
scoreboard players set d.0 map.p_mana 5

## modifying max mana goes here

scoreboard players operation @s map.m_mana = d.0 map.m_mana
scoreboard players operation @s map.p_mana = d.0 map.p_mana

execute unless score @s map.c_mana = @s map.m_mana run function map:player/mana/regen