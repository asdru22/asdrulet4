execute if data storage mdata root.temp.equipment.Accessories[].tag.base.AccessoryAbility[{id:"void_charm"}] run function ttc:item/accessory/void_charm


scoreboard players operation psychic.dmg ttc.d = s.damage ttc.d
scoreboard players operation psychic.dmg ttc.d *= s.psychosis_used ttc.d
tellraw @p {"score":{"name":"s.psychosis_used","objective": "ttc.d"}}
scoreboard players operation psychic.dmg ttc.d /= const.1000 ttc.d
scoreboard players set psychic_hit ttc.d 1
scoreboard players operation @s stat.psychosis -= s.psychosis_used ttc.d
execute if score @s stat.psychosis matches ..0 run scoreboard players set @s stat.psychosis 0
function ttc:player/stats/max_psychosis/calc_perc