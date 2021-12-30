execute store result score @s max_health run data get entity @s ArmorItems[3].tag.base.health
scoreboard players operation @s stat.health = @s max_health 
function ttc:entity/mob/update_hp_display