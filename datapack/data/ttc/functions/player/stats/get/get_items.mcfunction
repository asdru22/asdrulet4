data modify storage ttc:data root.temp.equipment set value {Accessories:[{},{},{}]}
# get mainhand item
execute if entity @s[nbt={SelectedItem:{tag:{base:{custom_item:1b}}}}] run data modify storage ttc:data root.temp.equipment.mainhand set from entity @s SelectedItem
#get offhand item
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{base:{custom_item:1b}}}]}] run data modify storage ttc:data root.temp.equipment.offhand set from entity @s Inventory[{Slot:-106b}]
#get head item
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{base:{custom_item:1b}}}]}] run data modify storage ttc:data root.temp.equipment.head set from entity @s Inventory[{Slot:103b}]
#get chest item
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{base:{custom_item:1b}}}]}] run data modify storage ttc:data root.temp.equipment.chest set from entity @s Inventory[{Slot:102b}]
#get legs item
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{base:{custom_item:1b}}}]}] run data modify storage ttc:data root.temp.equipment.legs set from entity @s Inventory[{Slot:101b}]
#get feet item
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{base:{custom_item:1b}}}]}] run data modify storage ttc:data root.temp.equipment.feet set from entity @s Inventory[{Slot:100b}]

execute if entity @s[nbt={Inventory:[{Slot:9b,tag:{base:{type:"accessory",custom_item:1b}}}]}] run data modify storage ttc:data root.temp.equipment.Accessories[0] set from entity @s Inventory[{Slot:9b}]
execute if entity @s[nbt={Inventory:[{Slot:18b,tag:{base:{type:"accessory",custom_item:1b}}}]}] run data modify storage ttc:data root.temp.equipment.Accessories[1] set from entity @s Inventory[{Slot:18b}]
execute if entity @s[nbt={Inventory:[{Slot:27b,tag:{base:{type:"accessory",custom_item:1b}}}]}] run data modify storage ttc:data root.temp.equipment.Accessories[2] set from entity @s Inventory[{Slot:27b}]

## store level req
execute store result score lvl.mainhand ttc.d run data get storage ttc:data root.temp.equipment.mainhand.tag.base.level_req
execute store result score lvl.offhand ttc.d run data get storage ttc:data root.temp.equipment.offhand.tag.base.level_req
execute store result score lvl.head ttc.d run data get storage ttc:data root.temp.equipment.head.tag.base.level_req
execute store result score lvl.chest ttc.d run data get storage ttc:data root.temp.equipment.chest.tag.base.level_req
execute store result score lvl.legs ttc.d run data get storage ttc:data root.temp.equipment.legs.tag.base.level_req
execute store result score lvl.feet ttc.d run data get storage ttc:data root.temp.equipment.feet.tag.base.level_req
execute store result score lvl.acc1 ttc.d run data get storage ttc:data root.temp.equipment.Accesories[0].tag.base.level_req
execute store result score lvl.acc2 ttc.d run data get storage ttc:data root.temp.equipment.Accesories[1].tag.base.level_req
execute store result score lvl.acc3 ttc.d run data get storage ttc:data root.temp.equipment.Accesories[2].tag.base.level_req