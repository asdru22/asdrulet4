function ttc:player/displays/actionbar/main
execute if entity @s[scores={use_crossbow=1..}] run function ttc:player/events/on_used_item/ranged_weapon/main
execute if entity @s[scores={use_bow=1..}] run function ttc:player/events/on_used_item/ranged_weapon/main
execute if entity @s[scores={use_trident=1..}] run function ttc:player/events/on_used_item/ranged_weapon/main
execute if entity @s[scores={use_nether_pick=1..}] run function ttc:player/events/on_used_item/netherite_pickaxe/main
execute if entity @s[scores={use_coas=1..}] run function ttc:player/events/on_used_item/carrot_on_a_stick/main
execute if entity @s[scores={use_wfoas=1..}] run function ttc:player/events/on_used_item/warped_fungus_on_a_stick/main