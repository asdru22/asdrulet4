scoreboard players set s.lifesteal ttc.d 0
scoreboard players reset lifesteal.val ttc.d
#get mainhand item
execute store result score d.0 ttc.d run data get storage mdata root.temp.equipment.mainhand.tag.base.stats.lifesteal
execute if data storage mdata root.temp.attack.type{type:"melee"} unless data storage mdata root.temp.equipment.mainhand.tag.base{type:"melee"} run scoreboard players set d.0 ttc.d 0
execute if data storage mdata root.temp.attack.type{type:"ranged"} unless data storage mdata root.temp.equipment.mainhand.tag.base{type:"ranged"} run scoreboard players set d.0 ttc.d 0
execute if score @s ttc.level >= lvl.mainhand ttc.d run scoreboard players operation s.lifesteal ttc.d += d.0 ttc.d
#get offhand item
execute store result score d.0 ttc.d run data get storage mdata root.temp.equipment.offhand.tag.base.stats.lifesteal 
execute if score @s ttc.level >= lvl.offhand ttc.d run scoreboard players operation s.lifesteal ttc.d += d.0 ttc.d
#get head item
execute store result score d.0 ttc.d run data get storage mdata root.temp.equipment.head.tag.base.stats.lifesteal 
execute if score @s ttc.level >= lvl.head ttc.d run scoreboard players operation s.lifesteal ttc.d += d.0 ttc.d
#get chest item
execute store result score d.0 ttc.d run data get storage mdata root.temp.equipment.chest.tag.base.stats.lifesteal 
execute if score @s ttc.level >= lvl.chest ttc.d run scoreboard players operation s.lifesteal ttc.d += d.0 ttc.d
#get legs item
execute store result score d.0 ttc.d run data get storage mdata root.temp.equipment.legs.tag.base.stats.lifesteal 
execute if score @s ttc.level >= lvl.legs ttc.d run scoreboard players operation s.lifesteal ttc.d += d.0 ttc.d
#get feet item
execute store result score d.0 ttc.d run data get storage mdata root.temp.equipment.feet.tag.base.stats.lifesteal 
execute if score @s ttc.level >= lvl.feet ttc.d run scoreboard players operation s.lifesteal ttc.d += d.0 ttc.d
#acc 1
execute store result score d.0 ttc.d run data get storage mdata root.temp.equipment.Accessories[0].tag.base.stats.lifesteal 
execute if score @s ttc.level >= lvl.acc1 ttc.d run scoreboard players operation s.lifesteal ttc.d += d.0 ttc.d
#acc 2
execute store result score d.0 ttc.d run data get storage mdata root.temp.equipment.Accessories[1].tag.base.stats.lifesteal 
execute if score @s ttc.level >= lvl.acc2 ttc.d run scoreboard players operation s.lifesteal ttc.d += d.0 ttc.d
#acc 3
execute store result score d.0 ttc.d run data get storage mdata root.temp.equipment.Accessories[2].tag.base.stats.lifesteal 
execute if score @s ttc.level >= lvl.acc3 ttc.d run scoreboard players operation s.lifesteal ttc.d += d.0 ttc.d

#tellraw @s ["lifesteeal: ",{"score":{"name": "s.lifesteal","objective": "ttc.d"}}]

execute if score s.lifesteal ttc.d matches 1.. run function ttc:player/stats/lifesteal/calc