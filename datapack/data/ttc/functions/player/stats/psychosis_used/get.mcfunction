scoreboard players set s.psychosis_used ttc.d 0
scoreboard players set psychic_hit ttc.d 0
 
#get mainhand item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.mainhand.tag.base.stats.psychosis_used 
execute if data storage ttc:data root.temp.attack.type{type:"accessory"} run scoreboard players set d.0 ttc.d 0
execute if score @s ttc.level >= lvl.mainhand ttc.d run scoreboard players operation s.psychosis_used ttc.d += d.0 ttc.d
#get offhand item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.offhand.tag.base.stats.psychosis_used 
execute if score @s ttc.level >= lvl.offhand ttc.d run scoreboard players operation s.psychosis_used ttc.d += d.0 ttc.d
#get head item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.head.tag.base.stats.psychosis_used 
execute if score @s ttc.level >= lvl.head ttc.d run scoreboard players operation s.psychosis_used ttc.d += d.0 ttc.d
#get chest item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.chest.tag.base.stats.psychosis_used 
execute if score @s ttc.level >= lvl.chest ttc.d run scoreboard players operation s.psychosis_used ttc.d += d.0 ttc.d
#get legs item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.legs.tag.base.stats.psychosis_used 
execute if score @s ttc.level >= lvl.legs ttc.d run scoreboard players operation s.psychosis_used ttc.d += d.0 ttc.d
#get feet item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.feet.tag.base.stats.psychosis_used 
execute if score @s ttc.level >= lvl.feet ttc.d run scoreboard players operation s.psychosis_used ttc.d += d.0 ttc.d
#acc 1
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.Accessories[0].tag.base.stats.psychosis_used 
execute if score @s ttc.level >= lvl.acc1 ttc.d run scoreboard players operation s.psychosis_used ttc.d += d.0 ttc.d
#acc 2
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.Accessories[1].tag.base.stats.psychosis_used 
execute if score @s ttc.level >= lvl.acc2 ttc.d run scoreboard players operation s.psychosis_used ttc.d += d.0 ttc.d
#acc 3
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.Accessories[2].tag.base.stats.psychosis_used 
execute if score @s ttc.level >= lvl.acc3 ttc.d run scoreboard players operation s.psychosis_used ttc.d += d.0 ttc.d
scoreboard players operation s.psychosis_used ttc.d *= const.100 ttc.d

execute if score s.psychosis_used ttc.d matches 1.. if score @s ttc.stat.psychosis >= s.psychosis_used ttc.d run function ttc:player/stats/psychosis_used/apply
