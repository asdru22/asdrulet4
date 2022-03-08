data modify storage ttc:data root.temp.editing set from block 0 -1 0 Items[0]
data remove block 0 -1 0 Items[0].tag.display.Lore
function ttc:item/custom/lore/get
function ttc:item/custom/lore/modifiers
function ttc:item/custom/lore/load
item modify block 0 -1 0 container.0 ttc:lore