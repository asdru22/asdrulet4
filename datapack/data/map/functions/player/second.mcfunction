function map:player/stats/hp_regen/decrease_timer
execute if score @s stat.mana < @s max_mana run function map:player/stats/mana_regen/get
execute store result score @s using_slot run data get entity @s SelectedItemSlot
execute unless score @s using_slot = @s p_using_slot run function map:player/events/key_inputs/scroll/main

execute if entity @s[tag=map.ability] run function map:item/custom/abilities/main