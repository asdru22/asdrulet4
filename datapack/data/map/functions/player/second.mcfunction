function map:player/stats/hp_regen/decrease_timer
execute if score @s stat.mana < @s max_mana run function map:player/stats/mana_regen/get