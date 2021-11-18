data modify storage mdata root.temp.equipment set value {}
## get mainhand item
execute if entity @s[nbt={SelectedItem:{tag:{base:{custom_item:1b}}}}] run data modify storage mdata root.temp.equipment.mainhand set from entity @s SelectedItem
#get offhand item
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{base:{custom_item:1b}}}]}] run data modify storage mdata root.temp.equipment.offhand set from entity @s Inventory[{Slot:-106b}]
#get head item
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{base:{custom_item:1b}}}]}] run data modify storage mdata root.temp.equipment.head set from entity @s Inventory[{Slot:103b}]
#get chest item
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{base:{custom_item:1b}}}]}] run data modify storage mdata root.temp.equipment.chest set from entity @s Inventory[{Slot:102b}]
#get legs item
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{base:{custom_item:1b}}}]}] run data modify storage mdata root.temp.equipment.legs set from entity @s Inventory[{Slot:101b}]
#get feet item
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{base:{custom_item:1b}}}]}] run data modify storage mdata root.temp.equipment.feet set from entity @s Inventory[{Slot:100b}]