function map:player/stats/get/get_items
execute if data storage mdata root.temp.equipment.Accessories[].tag.base{type:"accessory"} run function map:item/accessory/main
function map:player/stats/health/get
function map:player/stats/defense/get
function map:player/stats/max_mana/get
function map:player/stats/max_psychosis/get
advancement revoke @s only map:technical/item/update_stats