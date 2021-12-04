scoreboard players operation s.damage map.d = @s damage.base
#get mainhand item

execute store result score d.0 map.d run data get storage mdata root.temp.equipment.mainhand.tag.base.stats.damage

execute if data storage mdata root.temp.attack.type{type:"melee"} run function map:player/stats/damage/melee_abilities
execute if data storage mdata root.temp.attack.type{type:"ranged"} unless data storage mdata root.temp.equipment.mainhand.tag.base{type:"ranged"} run scoreboard players set d.0 map.d 0
execute if data storage mdata root.temp.attack.type{type:"magic"} unless data storage mdata root.temp.equipment.mainhand.tag.base{type:"magic"} run scoreboard players set d.0 map.d 0

execute if score @s map.level >= lvl.mainhand map.d run scoreboard players operation s.damage map.d += d.0 map.d
#get offhand item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.offhand.tag.base.stats.damage 
execute if score @s map.level >= lvl.offhand map.d run scoreboard players operation s.damage map.d += d.0 map.d
#get head item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.head.tag.base.stats.damage 
execute if score @s map.level >= lvl.head map.d run scoreboard players operation s.damage map.d += d.0 map.d
#get chest item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.chest.tag.base.stats.damage 
execute if score @s map.level >= lvl.chest map.d run scoreboard players operation s.damage map.d += d.0 map.d
#get legs item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.legs.tag.base.stats.damage 
execute if score @s map.level >= lvl.legs map.d run scoreboard players operation s.damage map.d += d.0 map.d
#get feet item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.feet.tag.base.stats.damage 
execute if score @s map.level >= lvl.feet map.d run scoreboard players operation s.damage map.d += d.0 map.d
#acc 1
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.Accessory[0].tag.base.stats.damage 
execute if score @s map.level >= lvl.acc1 map.d run scoreboard players operation s.damage map.d += d.0 map.d
#acc 2
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.Accessory[1].tag.base.stats.damage 
execute if score @s map.level >= lvl.acc2 map.d run scoreboard players operation s.damage map.d += d.0 map.d
#acc 3
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.Accessory[2].tag.base.stats.damage 
execute if score @s map.level >= lvl.acc3 map.d run scoreboard players operation s.damage map.d += d.0 map.d

#tellraw @s ["fake damage: ",{"score":{"name": "s.damage","objective": "map.d"}}]
scoreboard players operation s.damage map.d *= real.damage_recived map.d
scoreboard players operation s.damage map.d /= const.100 map.d

execute if data storage mdata root.temp.equipment.mainhand.tag{CustomModelData:5,base:{id:"frostspark_blade"}} run scoreboard players operation s.damage map.d /= const.2 map.d
#execute if data storage mdata root.temp.attack.type{type:"magic"} run scoreboard players operation s.damage map.d /= const.3 map.d

#tellraw @s ["tot damage output: ",{"score":{"name": "s.damage","objective": "map.d"}}]
