scoreboard players set d.0 max_mana 1000
scoreboard players set d.0 map.p_mana 5

## modifying max mana goes here

scoreboard players operation @s max_mana = d.0 max_mana
scoreboard players operation @s map.p_mana = d.0 map.p_mana

execute unless score @s stat.mana = @s max_mana run function map:player/mana/regen