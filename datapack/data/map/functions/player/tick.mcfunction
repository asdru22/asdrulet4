function map:player/displays/actionbar/main
execute if entity @s[scores={use_crossbow=1..}] run function map:player/events/on_used_item/ranged_weapon/main
execute if entity @s[scores={use_bow=1..}] run function map:player/events/on_used_item/ranged_weapon/main
execute if entity @s[scores={use_trident=1..}] run function map:player/events/on_used_item/ranged_weapon/main
execute if entity @s[scores={use_nether_pick=1..}] run function map:player/events/on_used_item/netherite_pickaxe/main
