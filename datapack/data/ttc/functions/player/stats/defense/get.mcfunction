scoreboard players set s.defense ttc.d 0
#get mainhand item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.mainhand.tag.base.stats.defense
scoreboard players operation s.defense ttc.d += d.0 ttc.d
#get offhand item
execute unless data storage ttc:data root.temp.equipment.offhand.tag.base{type:"ranged"} unless data storage ttc:data root.temp.equipment.offhand.tag.base{type:"melee"} unless data storage ttc:data root.temp.equipment.offhand.tag.base{type:"magic"} store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.offhand.tag.base.stats.defense
scoreboard players operation s.defense ttc.d += d.0 ttc.d
#get head item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.head.tag.base.stats.defense
scoreboard players operation s.defense ttc.d += d.0 ttc.d
#get chest item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.chest.tag.base.stats.defense
scoreboard players operation s.defense ttc.d += d.0 ttc.d
#get legs item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.legs.tag.base.stats.defense
scoreboard players operation s.defense ttc.d += d.0 ttc.d
#get feet item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.feet.tag.base.stats.defense
scoreboard players operation s.defense ttc.d += d.0 ttc.d

scoreboard players operation @s ttc.stat.defense = s.defense ttc.d