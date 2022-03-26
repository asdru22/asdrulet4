execute store result score rng ttc.d run loot spawn ~ ~ ~ loot ttc:technical/rng/1-4
setblock ~-5 ~2 ~-5 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"1withspaghetti",rotation:"NONE",posX:0,mode:"LOAD",posY:-2,sizeX:0,posZ:0,integrity:1.0f,showair:0b,name:"ttc:region/dungeon/",sizeY:0,sizeZ:0,showboundingbox:0b}
execute if score dung_type ttc.d matches 1 run function ttc:region/dungeon/set_type/1/main
setblock ~-5 ~1 ~-5 minecraft:redstone_block