scoreboard objectives add map.d dummy
#levelling scores
scoreboard objectives add map.level dummy
scoreboard objectives add map.xp dummy
scoreboard objectives add map.max_xp dummy
#mana scores
scoreboard objectives add stat.mana dummy
scoreboard objectives add max_mana dummy
#stats
scoreboard objectives add damage.base dummy
scoreboard objectives add crit_damage.base dummy
scoreboard objectives add crit_chance.base dummy
scoreboard objectives add defense.base dummy
scoreboard objectives add health.base dummy
scoreboard objectives add mana.base dummy
scoreboard objectives add stat.defense dummy
scoreboard objectives add stat.health dummy
scoreboard objectives add regen.delay dummy
scoreboard objectives add max_health dummy
## use items
scoreboard objectives add use_bow minecraft.used:minecraft.bow
scoreboard objectives add use_crossbow minecraft.used:minecraft.crossbow
scoreboard objectives add use_trident minecraft.used:minecraft.trident
scoreboard objectives add use_nether_pick minecraft.used:minecraft.netherite_pickaxe
#other
scoreboard objectives add using_slot dummy
scoreboard objectives add p_using_slot dummy
## block breaking 
scoreboard objectives add block.c_timer dummy
scoreboard objectives add block.m_timer dummy

#entity matching scores
scoreboard objectives add map.id dummy
scoreboard objectives add map.mob_id dummy
scoreboard objectives add map.id.0 dummy
scoreboard objectives add map.id.1 dummy
scoreboard objectives add map.id.2 dummy
scoreboard objectives add map.id.3 dummy
scoreboard objectives add map.id.4 dummy
scoreboard objectives add map.id.5 dummy
scoreboard objectives add map.id.6 dummy
scoreboard objectives add map.id.7 dummy
scoreboard objectives add map.id.8 dummy
scoreboard objectives add map.id.9 dummy
scoreboard objectives add map.id.10 dummy
scoreboard objectives add map.id.11 dummy
scoreboard objectives add map.id.12 dummy
scoreboard objectives add map.id.13 dummy
scoreboard objectives add map.id.14 dummy
scoreboard objectives add map.id.15 dummy
scoreboard objectives add map.id.16 dummy
scoreboard objectives add map.id.17 dummy
scoreboard objectives add map.id.18 dummy
scoreboard objectives add map.id.19 dummy
scoreboard objectives add map.id.20 dummy
scoreboard objectives add map.id.21 dummy
scoreboard objectives add map.id.22 dummy
scoreboard objectives add map.id.23 dummy
scoreboard objectives add map.id.24 dummy
scoreboard objectives add map.id.25 dummy
scoreboard objectives add map.id.26 dummy
scoreboard objectives add map.id.27 dummy
scoreboard objectives add map.id.28 dummy
scoreboard objectives add map.id.29 dummy
scoreboard objectives add map.id.30 dummy
scoreboard objectives add map.id.31 dummy


forceload add -3000000 2000
setblock -3000000 0 2000 yellow_shulker_box{Items:[{Slot:0b,id:"minecraft:barrier",Count:1b}]}
function map:technical/set_constants
function map:technical/timers/second/second

tellraw @a {"text":"reload COMPLETE!!","color":"yellow"}