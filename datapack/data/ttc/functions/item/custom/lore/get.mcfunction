execute store result score lore.damage ttc.d run data get storage ttc:data root.temp.editing.tag.base.stats.damage
execute store result score lore.mana_req ttc.d run data get storage ttc:data root.temp.editing.tag.base.stats.mana_req
execute store result score lore.attack_speed ttc.d run data get storage ttc:data root.temp.editing.tag.base.stats.attack_speed 100
execute store result score lore.arrow_speed ttc.d run data get storage ttc:data root.temp.editing.tag.base.stats.arrow_speed
execute store result score lore.crit_chance ttc.d run data get storage ttc:data root.temp.editing.tag.base.stats.crit_chance
execute store result score lore.crit_damage ttc.d run data get storage ttc:data root.temp.editing.tag.base.stats.crit_damage
execute store result score lore.lifesteal ttc.d run data get storage ttc:data root.temp.editing.tag.base.stats.lifesteal
execute store result score lore.mining_speed ttc.d run data get storage ttc:data root.temp.editing.tag.base.stats.mining_speed
execute store result score lore.psychosis_used ttc.d run data get storage ttc:data root.temp.editing.tag.base.stats.psychosis_used
execute store result score lore.health ttc.d run data get storage ttc:data root.temp.editing.tag.base.stats.health
execute store result score lore.hp_regen ttc.d run data get storage ttc:data root.temp.editing.tag.base.stats.hp_regen
execute store result score lore.defense ttc.d run data get storage ttc:data root.temp.editing.tag.base.stats.defense
execute store result score lore.damage_reduction ttc.d run data get storage ttc:data root.temp.editing.tag.base.stats.damage_reduction
execute store result score lore.max_mana ttc.d run data get storage ttc:data root.temp.editing.tag.base.stats.max_mana
execute store result score lore.mana_regen ttc.d run data get storage ttc:data root.temp.editing.tag.base.stats.mana_regen
execute store result score lore.max_psychosis ttc.d run data get storage ttc:data root.temp.editing.tag.base.stats.max_psychosis
execute store result score lore.dodge_chance ttc.d run data get storage ttc:data root.temp.editing.tag.base.stats.dodge_chance
execute store result score lore.knockback_resistance ttc.d run data get storage ttc:data root.temp.editing.tag.base.stats.knockback_resistance
execute store result score lore.movement_speed ttc.d run data get storage ttc:data root.temp.editing.tag.base.stats.movement_speed 100
execute store result score lore.luck ttc.d run data get storage ttc:data root.temp.editing.tag.base.stats.luck
execute store result score lore.ability_lines ttc.d if data storage ttc:data root.temp.editing.tag.base.Ability[]
execute store result score lore.level_req ttc.d run data get storage ttc:data root.temp.editing.tag.base.level_req
execute store result score lore.sell_price ttc.d run data get storage ttc:data root.temp.editing.tag.base.sell_price
scoreboard players set lore.durability ttc.d 0
execute store result score lore.durability ttc.d run data get storage ttc:data root.temp.editing.tag.base.Durability.current
execute store result score lore.cooldown ttc.d run data get storage ttc:data root.temp.editing.tag.base.ability_cooldown 2