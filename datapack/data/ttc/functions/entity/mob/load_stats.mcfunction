execute store result score @s ttc.max_health run data get entity @s ArmorItems[3].tag.base.health
scoreboard players operation @s ttc.stat.health = @s ttc.max_health 
function ttc:entity/mob/update_hp_display