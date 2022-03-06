scoreboard players set s.dodge_chance ttc.d 0

#get mainhand item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.mainhand.tag.base.stats.dodge_chance 
execute if score @s ttc.level >= lvl.mainhand ttc.d run scoreboard players operation s.dodge_chance ttc.d += d.0 ttc.d
#get offhand item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.offhand.tag.base.stats.dodge_chance 
execute if score @s ttc.level >= lvl.offhand ttc.d run scoreboard players operation s.dodge_chance ttc.d += d.0 ttc.d
#get head item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.head.tag.base.stats.dodge_chance 
execute if score @s ttc.level >= lvl.head ttc.d run scoreboard players operation s.dodge_chance ttc.d += d.0 ttc.d
#get chest item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.chest.tag.base.stats.dodge_chance 
execute if score @s ttc.level >= lvl.chest ttc.d run scoreboard players operation s.dodge_chance ttc.d += d.0 ttc.d
#get legs item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.legs.tag.base.stats.dodge_chance 
execute if score @s ttc.level >= lvl.legs ttc.d run scoreboard players operation s.dodge_chance ttc.d += d.0 ttc.d
#get feet item
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.feet.tag.base.stats.dodge_chance 
execute if score @s ttc.level >= lvl.feet ttc.d run scoreboard players operation s.dodge_chance ttc.d += d.0 ttc.d
#acc 1
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.Accessories[0].tag.base.stats.dodge_chance 
execute if score @s ttc.level >= lvl.acc1 ttc.d run scoreboard players operation s.dodge_chance ttc.d += d.0 ttc.d
#acc 2
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.Accessories[1].tag.base.stats.dodge_chance 
execute if score @s ttc.level >= lvl.acc2 ttc.d run scoreboard players operation s.dodge_chance ttc.d += d.0 ttc.d
#acc 3
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.Accessories[2].tag.base.stats.dodge_chance 
execute if score @s ttc.level >= lvl.acc3 ttc.d run scoreboard players operation s.dodge_chance ttc.d += d.0 ttc.d

#tellraw @s ["dodge_chance: ",{"score":{"name": "s.dodge_chance","objective": "ttc.d"}}]
execute if score s.dodge_chance ttc.d matches 1.. store result score d.0 ttc.d run loot spawn ~ ~ ~ loot ttc:technical/rng/random_1_100
execute if score d.0 ttc.d >= s.dodge_chance ttc.d run function ttc:player/events/actions/when_hit/main 
execute if score d.0 ttc.d < s.dodge_chance ttc.d run function ttc:player/displays/dodge