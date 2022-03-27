scoreboard players add sign ttc.d 1
execute if score sign ttc.d matches 2.. run scoreboard players set sign ttc.d 0
function ttc:region/lobby/get_avg_lvl
setblock ~ ~ ~ air
scoreboard players reset g_lvl ttc.d 
execute if score sign ttc.d matches 0 run setblock ~ ~-1 ~ air
execute if score sign ttc.d matches 0 run setblock ~ ~ ~ minecraft:warped_wall_sign[facing=east,waterlogged=false]{Color:"white",GlowingText:1b,Text1:'{"color":"white","text":"Welcome to"}',Text2:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger ttc.t set 12400"},"extra":[{"color":"gold","text":" 4"},{"text":"!"}],"text":"Asdrulet "}',Text3:'{"text":"(Right click to "}',Text4:'{"text":"continue)"}'}
execute if score sign ttc.d matches 1 run function ttc:region/lobby/sign/level1
