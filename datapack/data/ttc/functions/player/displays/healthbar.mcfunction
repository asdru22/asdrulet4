scoreboard players operation t ttc.d = @s ttc.stat.health
scoreboard players operation t ttc.d *= const.100 ttc.d
scoreboard players operation t ttc.d /= @s ttc.max_health

execute if score t ttc.d matches 0..9 run attribute @s generic.armor base set 1
execute if score t ttc.d matches 10..19 run attribute @s generic.armor base set 2
execute if score t ttc.d matches 20..29 run attribute @s generic.armor base set 4
execute if score t ttc.d matches 30..39 run attribute @s generic.armor base set 6
execute if score t ttc.d matches 40..49 run attribute @s generic.armor base set 8
execute if score t ttc.d matches 50..59 run attribute @s generic.armor base set 10
execute if score t ttc.d matches 60..69 run attribute @s generic.armor base set 12
execute if score t ttc.d matches 70..79 run attribute @s generic.armor base set 14
execute if score t ttc.d matches 80..89 run attribute @s generic.armor base set 16
execute if score t ttc.d matches 90..99 run attribute @s generic.armor base set 18
execute if score t ttc.d matches 100 run attribute @s generic.armor base set 20