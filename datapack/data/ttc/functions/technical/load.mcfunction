scoreboard objectives add ttc.d dummy
#levelling scores
scoreboard objectives add ttc.level dummy
scoreboard objectives add ttc.xp dummy
scoreboard objectives add ttc.max_xp dummy
#mana scores
scoreboard objectives add stat.mana dummy
scoreboard objectives add max_mana dummy
#psychosis scores
scoreboard objectives add stat.psychosis dummy
scoreboard objectives add max_psychosis dummy
scoreboard objectives add perc_psychosis dummy

#stats
scoreboard objectives add damage.base dummy
scoreboard objectives add crit_damage.base dummy
scoreboard objectives add crit_chance.base dummy
scoreboard objectives add defense.base dummy
scoreboard objectives add health.base dummy
scoreboard objectives add mana.base dummy
scoreboard objectives add psychosis.base dummy

scoreboard objectives add stat.defense dummy
scoreboard objectives add stat.health dummy
scoreboard objectives add regen.delay dummy
scoreboard objectives add max_health dummy
## use items
scoreboard objectives add use_bow minecraft.used:minecraft.bow
scoreboard objectives add use_crossbow minecraft.used:minecraft.crossbow
scoreboard objectives add use_trident minecraft.used:minecraft.trident
scoreboard objectives add use_nether_pick minecraft.used:minecraft.netherite_pickaxe
scoreboard objectives add use_coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add use_wfoas minecraft.used:minecraft.warped_fungus_on_a_stick
#other
scoreboard objectives add using_slot dummy
scoreboard objectives add p_using_slot dummy
## block breaking 
scoreboard objectives add block.c_timer dummy
scoreboard objectives add block.m_timer dummy
## clocks
scoreboard objectives add timer dummy
#entity matching scores
scoreboard objectives add ttc.id dummy
scoreboard objectives add ttc.mob_id dummy
scoreboard objectives add ttc.id.0 dummy
scoreboard objectives add ttc.id.1 dummy
scoreboard objectives add ttc.id.2 dummy
scoreboard objectives add ttc.id.3 dummy
scoreboard objectives add ttc.id.4 dummy
scoreboard objectives add ttc.id.5 dummy
scoreboard objectives add ttc.id.6 dummy
scoreboard objectives add ttc.id.7 dummy
scoreboard objectives add ttc.id.8 dummy
scoreboard objectives add ttc.id.9 dummy
scoreboard objectives add ttc.id.10 dummy
scoreboard objectives add ttc.id.11 dummy
scoreboard objectives add ttc.id.12 dummy
scoreboard objectives add ttc.id.13 dummy
scoreboard objectives add ttc.id.14 dummy
scoreboard objectives add ttc.id.15 dummy
scoreboard objectives add ttc.id.16 dummy
scoreboard objectives add ttc.id.17 dummy
scoreboard objectives add ttc.id.18 dummy
scoreboard objectives add ttc.id.19 dummy
scoreboard objectives add ttc.id.20 dummy
scoreboard objectives add ttc.id.21 dummy
scoreboard objectives add ttc.id.22 dummy
scoreboard objectives add ttc.id.23 dummy
scoreboard objectives add ttc.id.24 dummy
scoreboard objectives add ttc.id.25 dummy
scoreboard objectives add ttc.id.26 dummy
scoreboard objectives add ttc.id.27 dummy
scoreboard objectives add ttc.id.28 dummy
scoreboard objectives add ttc.id.29 dummy
scoreboard objectives add ttc.id.30 dummy
scoreboard objectives add ttc.id.31 dummy


forceload add -3000000 2000
setblock -3000000 0 2000 yellow_shulker_box{Items:[{Slot:0b,id:"minecraft:barrier",Count:1b}]}
function ttc:technical/set_constants
function ttc:technical/timers/second/second
function ttc:technical/timers/2_seconds/main


tellraw @a {"text":"reload COMPLETE!!","color":"yellow"}