scoreboard players operation s.crit_damage map.d = @s crit_damage.base
#get mainhand item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.mainhand.tag.base.stats.crit_damage
execute if data storage mdata root.temp.attack.type{type:"melee"} unless data storage mdata root.temp.equipment.mainhand.tag.base{type:"melee"} run scoreboard players set d.0 map.d 0
execute if data storage mdata root.temp.attack.type{type:"ranged"} unless data storage mdata root.temp.equipment.mainhand.tag.base{type:"ranged"} run scoreboard players set d.0 map.d 0
execute if data storage mdata root.temp.attack.type{type:"magic"} unless data storage mdata root.temp.equipment.mainhand.tag.base{type:"magic"} run scoreboard players set d.0 map.d 0
execute if score @s map.level >= lvl.mainhand map.d run scoreboard players operation s.crit_damage map.d += d.0 map.d
#get offhand item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.offhand.tag.base.stats.crit_damage 
execute if score @s map.level >= lvl.offhand map.d run scoreboard players operation s.crit_damage map.d += d.0 map.d
#get head item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.head.tag.base.stats.crit_damage 
execute if score @s map.level >= lvl.head map.d run scoreboard players operation s.crit_damage map.d += d.0 map.d
#get chest item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.chest.tag.base.stats.crit_damage 
execute if score @s map.level >= lvl.chest map.d run scoreboard players operation s.crit_damage map.d += d.0 map.d
#get legs item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.legs.tag.base.stats.crit_damage 
execute if score @s map.level >= lvl.legs map.d run scoreboard players operation s.crit_damage map.d += d.0 map.d
#get feet item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.feet.tag.base.stats.crit_damage 
execute if score @s map.level >= lvl.feet map.d run scoreboard players operation s.crit_damage map.d += d.0 map.d
#acc 1
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.Accessories[0].tag.base.stats.crit_damage 
execute if score @s map.level >= lvl.acc1 map.d run scoreboard players operation s.crit_damage map.d += d.0 map.d
#acc 2
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.Accessories[1].tag.base.stats.crit_damage 
execute if score @s map.level >= lvl.acc2 map.d run scoreboard players operation s.crit_damage map.d += d.0 map.d
#acc 3
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.Accessories[2].tag.base.stats.crit_damage 
execute if score @s map.level >= lvl.acc3 map.d run scoreboard players operation s.crit_damage map.d += d.0 map.d

#tellraw @s ["crit damage: ",{"score":{"name": "s.crit_damage","objective": "map.d"}}]

scoreboard players set .crit map.d 1
scoreboard players operation d.0 map.d = s.damage map.d
scoreboard players operation d.0 map.d *= s.crit_damage map.d
scoreboard players operation d.0 map.d /= const.100 map.d
scoreboard players operation s.damage map.d += d.0 map.d