scoreboard players operation s.crit_damage map.d = @s crit_damage.base
#get mainhand item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.mainhand.tag.base.stats.crit_damage
scoreboard players operation s.crit_damage map.d += d.0 map.d
#get offhand item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.offhand.tag.base.stats.crit_damage
scoreboard players operation s.crit_damage map.d += d.0 map.d
#get head item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.head.tag.base.stats.crit_damage
scoreboard players operation s.crit_damage map.d += d.0 map.d
#get chest item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.chest.tag.base.stats.crit_damage
scoreboard players operation s.crit_damage map.d += d.0 map.d
#get legs item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.legs.tag.base.stats.crit_damage
scoreboard players operation s.crit_damage map.d += d.0 map.d
#get feet item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.feet.tag.base.stats.crit_damage
scoreboard players operation s.crit_damage map.d += d.0 map.d

tellraw @s ["crit damage: ",{"score":{"name": "s.crit_damage","objective": "map.d"}}]
say CRIT!!
scoreboard players set .crit map.d 1
scoreboard players operation d.0 map.d = s.damage map.d
scoreboard players operation d.0 map.d *= s.crit_damage map.d
scoreboard players operation d.0 map.d /= const.100 map.d
scoreboard players operation s.damage map.d += d.0 map.d