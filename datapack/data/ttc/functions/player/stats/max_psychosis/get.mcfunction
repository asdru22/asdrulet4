scoreboard players operation s.ttc.max_psychosis ttc.d = @s ttc.psychosis.base

#get mainhand item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.mainhand.tag.base.stats.max_psychosis 
execute if score @s ttc.level >= lvl.mainhand ttc.d run scoreboard players operation s.ttc.max_psychosis ttc.d += d.0 ttc.d
#get offhand item
execute unless data storage ttc:data root.temp.equipment.offhand.tag.base{type:"ranged"} unless data storage ttc:data root.temp.equipment.offhand.tag.base{type:"melee"} unless data storage ttc:data root.temp.equipment.offhand.tag.base{type:"magic"} store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.offhand.tag.base.stats.max_psychosis 
execute if score @s ttc.level >= lvl.offhand ttc.d run scoreboard players operation s.ttc.max_psychosis ttc.d += d.0 ttc.d
#get head item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.head.tag.base.stats.max_psychosis 
execute if score @s ttc.level >= lvl.head ttc.d run scoreboard players operation s.ttc.max_psychosis ttc.d += d.0 ttc.d
#get chest item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.chest.tag.base.stats.max_psychosis 
execute if score @s ttc.level >= lvl.chest ttc.d run scoreboard players operation s.ttc.max_psychosis ttc.d += d.0 ttc.d
#get legs item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.legs.tag.base.stats.max_psychosis 
execute if score @s ttc.level >= lvl.legs ttc.d run scoreboard players operation s.ttc.max_psychosis ttc.d += d.0 ttc.d
#get feet item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.feet.tag.base.stats.max_psychosis 
execute if score @s ttc.level >= lvl.feet ttc.d run scoreboard players operation s.ttc.max_psychosis ttc.d += d.0 ttc.d
#acc 1
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.Accessories[0].tag.base.stats.max_psychosis 
execute if score @s ttc.level >= lvl.acc1 ttc.d run scoreboard players operation s.ttc.max_psychosis ttc.d += d.0 ttc.d
#acc 2
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.Accessories[1].tag.base.stats.max_psychosis 
execute if score @s ttc.level >= lvl.acc2 ttc.d run scoreboard players operation s.ttc.max_psychosis ttc.d += d.0 ttc.d
#acc 3
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.Accessories[2].tag.base.stats.max_psychosis 
execute if score @s ttc.level >= lvl.acc3 ttc.d run scoreboard players operation s.ttc.max_psychosis ttc.d += d.0 ttc.d

scoreboard players operation s.ttc.max_psychosis ttc.d *= const.100 ttc.d

scoreboard players operation @s ttc.max_psychosis = s.ttc.max_psychosis ttc.d
execute if score @s ttc.stat.psychosis > @s ttc.max_psychosis run scoreboard players operation @s ttc.stat.psychosis = @s ttc.max_psychosis 