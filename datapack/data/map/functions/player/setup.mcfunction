execute store result score @s map.id run scoreboard players add map.id map.id 1
scoreboard players set @s map.level 1
scoreboard players set @s map.xp 0
scoreboard players set @s map.max_xp 20

scoreboard players set @s damage.base 1
scoreboard players set @s health.base 50
scoreboard players set @s mana.base 100
scoreboard players set @s stat.health 50
scoreboard players set @s stat.mana 100
attribute @s generic.attack_damage base set 10