setblock 0 2 0 minecraft:structure_block[mode=load]{author:"asdru",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"ttc:region/dungeon/lobby",posX:-8,posY:0,posZ:-8,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:17,sizeY:15,sizeZ:17}
setblock 0 3 0 redstone_block
setblock -5 5 0 minecraft:warped_wall_sign[facing=east,waterlogged=false]{Color:"white",GlowingText:1b,Text1:'{"color":"white","text":"Welcome to"}',Text2:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger ttc.t set 12400"},"extra":[{"color":"gold","text":" 4"},{"text":"!"}],"text":"Asdrulet "}',Text3:'{"text":"(Right click to "}',Text4:'{"text":"continue)"}'}
scoreboard players set sign ttc.d 0