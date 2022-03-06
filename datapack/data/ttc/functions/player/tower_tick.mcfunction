function ttc:player/displays/actionbar/main
execute if entity @s[tag=ttc.player.in_level] run function ttc:player/tower/tick
execute store result score @s ttc.gui if data entity @s EnderItems[{tag:{ttc:{gui:1b}}}]
execute unless score @s ttc.gui = @s ttc.prev_gui run function ttc:player/gui/update