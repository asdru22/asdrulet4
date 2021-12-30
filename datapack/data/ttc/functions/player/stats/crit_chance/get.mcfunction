scoreboard players set .crit ttc.d 0
scoreboard players operation s.crit_chance ttc.d = @s crit_chance.base
#get mainhand item
execute store result score d.0 ttc.d run data get storage mdata root.temp.equipment.mainhand.tag.base.stats.crit_chance
execute if data storage mdata root.temp.attack.type{type:"melee"} unless data storage mdata root.temp.equipment.mainhand.tag.base{type:"melee"} run scoreboard players set d.0 ttc.d 0
execute if data storage mdata root.temp.attack.type{type:"ranged"} unless data storage mdata root.temp.equipment.mainhand.tag.base{type:"ranged"} run scoreboard players set d.0 ttc.d 0
execute if data storage mdata root.temp.attack.type{type:"magic"} unless data storage mdata root.temp.equipment.mainhand.tag.base{type:"magic"} run scoreboard players set d.0 ttc.d 0
execute if score @s ttc.level >= lvl.mainhand ttc.d run scoreboard players operation s.crit_chance ttc.d += d.0 ttc.d
#get offhand item
execute store result score d.0 ttc.d run data get storage mdata root.temp.equipment.offhand.tag.base.stats.crit_chance 
execute if score @s ttc.level >= lvl.offhand ttc.d run scoreboard players operation s.crit_chance ttc.d += d.0 ttc.d
#get head item
execute store result score d.0 ttc.d run data get storage mdata root.temp.equipment.head.tag.base.stats.crit_chance 
execute if score @s ttc.level >= lvl.head ttc.d run scoreboard players operation s.crit_chance ttc.d += d.0 ttc.d
#get chest item
execute store result score d.0 ttc.d run data get storage mdata root.temp.equipment.chest.tag.base.stats.crit_chance 
execute if score @s ttc.level >= lvl.chest ttc.d run scoreboard players operation s.crit_chance ttc.d += d.0 ttc.d
#get legs item
execute store result score d.0 ttc.d run data get storage mdata root.temp.equipment.legs.tag.base.stats.crit_chance 
execute if score @s ttc.level >= lvl.legs ttc.d run scoreboard players operation s.crit_chance ttc.d += d.0 ttc.d
#get feet item
execute store result score d.0 ttc.d run data get storage mdata root.temp.equipment.feet.tag.base.stats.crit_chance 
execute if score @s ttc.level >= lvl.feet ttc.d run scoreboard players operation s.crit_chance ttc.d += d.0 ttc.d
#acc 1
execute store result score d.0 ttc.d run data get storage mdata root.temp.equipment.Accessories[0].tag.base.stats.crit_chance 
execute if score @s ttc.level >= lvl.acc1 ttc.d run scoreboard players operation s.crit_chance ttc.d += d.0 ttc.d
#acc 2
execute store result score d.0 ttc.d run data get storage mdata root.temp.equipment.Accessories[1].tag.base.stats.crit_chance 
execute if score @s ttc.level >= lvl.acc2 ttc.d run scoreboard players operation s.crit_chance ttc.d += d.0 ttc.d
#acc 3
execute store result score d.0 ttc.d run data get storage mdata root.temp.equipment.Accessories[2].tag.base.stats.crit_chance 
execute if score @s ttc.level >= lvl.acc3 ttc.d run scoreboard players operation s.crit_chance ttc.d += d.0 ttc.d

#tellraw @s ["crit_chance: ",{"score":{"name": "s.crit_chance","objective": "ttc.d"}}]
execute if score s.crit_chance ttc.d matches 1.. store result score d.0 ttc.d run loot spawn ~ ~ ~ loot ttc:technical/rng/random_1_100
#tellraw @s ["rng out: ",{"score":{"name": "d.0","objective": "ttc.d"}}]

execute if score d.0 ttc.d < s.crit_chance ttc.d run function ttc:player/stats/crit_damage/get 