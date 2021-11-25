scoreboard players set .crit map.d 0
scoreboard players operation s.crit_chance map.d = @s crit_chance.base
#get mainhand item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.mainhand.tag.base.stats.crit_chance
execute if data storage mdata root.temp.attack.type{type:"melee"} unless data storage mdata root.temp.equipment.mainhand.tag.base{type:"melee"} run scoreboard players set d.0 map.d 0
execute if data storage mdata root.temp.attack.type{type:"ranged"} unless data storage mdata root.temp.equipment.mainhand.tag.base{type:"ranged"} run scoreboard players set d.0 map.d 0
execute if data storage mdata root.temp.attack.type{type:"magic"} unless data storage mdata root.temp.equipment.mainhand.tag.base{type:"magic"} run scoreboard players set d.0 map.d 0
scoreboard players operation s.crit_chance map.d += d.0 map.d
#get offhand item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.offhand.tag.base.stats.crit_chance
scoreboard players operation s.crit_chance map.d += d.0 map.d
#get head item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.head.tag.base.stats.crit_chance
scoreboard players operation s.crit_chance map.d += d.0 map.d
#get chest item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.chest.tag.base.stats.crit_chance
scoreboard players operation s.crit_chance map.d += d.0 map.d
#get legs item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.legs.tag.base.stats.crit_chance
scoreboard players operation s.crit_chance map.d += d.0 map.d
#get feet item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.feet.tag.base.stats.crit_chance
scoreboard players operation s.crit_chance map.d += d.0 map.d

#tellraw @s ["crit_chance: ",{"score":{"name": "s.crit_chance","objective": "map.d"}}]
execute if score s.crit_chance map.d matches 1.. store result score d.0 map.d run loot spawn ~ ~ ~ loot map:technical/rng/random_1_100
#tellraw @s ["rng out: ",{"score":{"name": "d.0","objective": "map.d"}}]

execute if score d.0 map.d < s.crit_chance map.d run function map:player/stats/crit_damage/get 