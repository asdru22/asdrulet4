scoreboard players operation s.damage map.d = @s damage.base
#get mainhand item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.mainhand.tag.base.stats.damage
scoreboard players operation s.damage map.d += d.0 map.d
#get offhand item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.offhand.tag.base.stats.damage
scoreboard players operation s.damage map.d += d.0 map.d
#get head item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.head.tag.base.stats.damage
scoreboard players operation s.damage map.d += d.0 map.d
#get chest item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.chest.tag.base.stats.damage
scoreboard players operation s.damage map.d += d.0 map.d
#get legs item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.legs.tag.base.stats.damage
scoreboard players operation s.damage map.d += d.0 map.d
#get feet item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.feet.tag.base.stats.damage
scoreboard players operation s.damage map.d += d.0 map.d

tellraw @s ["fake damage: ",{"score":{"name": "s.damage","objective": "map.d"}}]
scoreboard players operation s.damage map.d *= real.damage_recived map.d
scoreboard players operation s.damage map.d /= const.10 map.d

tellraw @s ["tot damage output: ",{"score":{"name": "s.damage","objective": "map.d"}}]