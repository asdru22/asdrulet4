function ttc:player/stats/get/get_items
execute if data storage ttc:mdata root.temp.equipment.Accessories[].tag.base{type:"accessory"} run function ttc:item/accessory/main
function ttc:player/stats/health/get
function ttc:player/stats/defense/get
function ttc:player/stats/max_mana/get
function ttc:player/stats/max_psychosis/get
advancement revoke @s only ttc:technical/item/update_stats