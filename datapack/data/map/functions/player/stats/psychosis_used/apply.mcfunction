execute if data storage mdata root.temp.equipment.Accessories[].tag.base.AccessoryAbility[{id:"void_charm"}] run function map:item/accessory/void_charm


scoreboard players operation psychic.dmg map.d = s.damage map.d
scoreboard players operation psychic.dmg map.d *= s.psychosis_used map.d
tellraw @p {"score":{"name":"s.psychosis_used","objective": "map.d"}}
scoreboard players operation psychic.dmg map.d /= const.1000 map.d
scoreboard players set psychic_hit map.d 1
scoreboard players operation @s stat.psychosis -= s.psychosis_used map.d
execute if score @s stat.psychosis matches ..0 run scoreboard players set @s stat.psychosis 0
function map:player/stats/max_psychosis/calc_perc