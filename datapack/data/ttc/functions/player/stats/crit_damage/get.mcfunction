scoreboard players operation s.crit_damage ttc.d = @s ttc.crit_damage.base
#get mainhand item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.mainhand.tag.base.stats.crit_damage
execute if data storage ttc:data root.temp.attack.type{type:"melee"} unless data storage ttc:data root.temp.equipment.mainhand.tag.base{type:"melee"} run scoreboard players set d.0 ttc.d 0
execute if data storage ttc:data root.temp.attack.type{type:"ranged"} unless data storage ttc:data root.temp.equipment.mainhand.tag.base{type:"ranged"} run scoreboard players set d.0 ttc.d 0
execute if data storage ttc:data root.temp.attack.type{type:"magic"} unless data storage ttc:data root.temp.equipment.mainhand.tag.base{type:"magic"} run scoreboard players set d.0 ttc.d 0
execute if score @s ttc.level >= lvl.mainhand ttc.d run scoreboard players operation s.crit_damage ttc.d += d.0 ttc.d
#get offhand item
execute unless data storage ttc:data root.temp.equipment.offhand.tag.base{type:"ranged"} unless data storage ttc:data root.temp.equipment.offhand.tag.base{type:"melee"} unless data storage ttc:data root.temp.equipment.offhand.tag.base{type:"magic"} store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.offhand.tag.base.stats.crit_damage 
execute if score @s ttc.level >= lvl.offhand ttc.d run scoreboard players operation s.crit_damage ttc.d += d.0 ttc.d
#get head item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.head.tag.base.stats.crit_damage 
execute if score @s ttc.level >= lvl.head ttc.d run scoreboard players operation s.crit_damage ttc.d += d.0 ttc.d
#get chest item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.chest.tag.base.stats.crit_damage 
execute if score @s ttc.level >= lvl.chest ttc.d run scoreboard players operation s.crit_damage ttc.d += d.0 ttc.d
#get legs item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.legs.tag.base.stats.crit_damage 
execute if score @s ttc.level >= lvl.legs ttc.d run scoreboard players operation s.crit_damage ttc.d += d.0 ttc.d
#get feet item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.feet.tag.base.stats.crit_damage 
execute if score @s ttc.level >= lvl.feet ttc.d run scoreboard players operation s.crit_damage ttc.d += d.0 ttc.d
#acc 1
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.Accessories[0].tag.base.stats.crit_damage 
execute if score @s ttc.level >= lvl.acc1 ttc.d run scoreboard players operation s.crit_damage ttc.d += d.0 ttc.d
#acc 2
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.Accessories[1].tag.base.stats.crit_damage 
execute if score @s ttc.level >= lvl.acc2 ttc.d run scoreboard players operation s.crit_damage ttc.d += d.0 ttc.d
#acc 3
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.Accessories[2].tag.base.stats.crit_damage 
execute if score @s ttc.level >= lvl.acc3 ttc.d run scoreboard players operation s.crit_damage ttc.d += d.0 ttc.d

tellraw @s[tag=ttc.dmg_out] ["->| Overall crit damage stat: ",{"score":{"name": "s.crit_damage","objective": "ttc.d"}}]

scoreboard players set .crit ttc.d 1
scoreboard players operation d.0 ttc.d = s.damage ttc.d
scoreboard players operation d.0 ttc.d *= s.crit_damage ttc.d
scoreboard players operation d.0 ttc.d /= const.100 ttc.d
scoreboard players operation s.damage ttc.d += d.0 ttc.d
execute if data storage ttc:data root.temp.attack.type{type:"melee"} run data modify storage ttc:data root.temp.attack.type.display set value '{"text":"\\u003c","font":"ttc:main"}' 
execute if data storage ttc:data root.temp.attack.type{type:"ranged"} run data modify storage ttc:data root.temp.attack.type.display set value '{"text":"\\u003d","font":"ttc:main"}' 
execute if data storage ttc:data root.temp.attack.type{type:"magic"} run data modify storage ttc:data root.temp.attack.type.display set value '{"text":"\\u003e","font":"ttc:main"}' 