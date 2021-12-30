function ttc:player/stats/hp_regen/decrease_timer
execute if score @s ttc.stat.mana < @s ttc.max_mana run function ttc:player/stats/mana_regen/get

execute store result score @s ttc.using_slot run data get entity @s SelectedItemSlot
execute unless score @s ttc.using_slot = @s p_ttc.using_slot run function ttc:player/events/key_inputs/scroll/main

execute if entity @s[tag=ttc.ability] run function ttc:item/custom/abilities/main