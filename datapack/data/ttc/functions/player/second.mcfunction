function ttc:player/stats/hp_regen/decrease_timer
execute if score @s stat.mana < @s max_mana run function ttc:player/stats/mana_regen/get

execute store result score @s using_slot run data get entity @s SelectedItemSlot
execute unless score @s using_slot = @s p_using_slot run function ttc:player/events/key_inputs/scroll/main

execute if entity @s[tag=ttc.ability] run function ttc:item/custom/abilities/main