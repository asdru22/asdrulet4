scoreboard players reset @s
execute store result score @s ttc.id run scoreboard players add ttc.id ttc.id 1
scoreboard players set @s ttc.level 1
scoreboard players set @s ttc.xp 0
scoreboard players set @s ttc.max_xp 20

scoreboard players set @s ttc.damage.base 1
scoreboard players set @s ttc.health.base 50
scoreboard players set @s ttc.mana.base 100
scoreboard players set @s ttc.stat.health 50
scoreboard players set @s ttc.stat.mana 100

scoreboard players set @s ttc.stat.psychosis 10000
scoreboard players set @s ttc.max_psychosis 10000
scoreboard players set @s ttc.perc_psychosis 100
scoreboard players set @s ttc.psychosis.base 100
attribute @s generic.attack_damage base set 10


scoreboard players set @s[tag=ttc.dev] ttc.level 121321
