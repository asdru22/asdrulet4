scoreboard players add @s ttc.timer 1
scoreboard players operation .id ttc.d = @s ttc.id
scoreboard players operation s.damage ttc.d = @s ttc.damage.base
execute as @a if score @s ttc.id = .id ttc.d run tag @s add ttc.player.owner

execute as @e[type=#ttc:mobs,tag=ttc.entity.mob,dx=0,limit=1,sort=nearest,nbt={HurtTime:0s}] positioned ~-0.89 ~-0.89 ~-0.89 if entity @s[dx=0] at @s run function ttc:entity/technical/projectile/hit

execute as @a[tag=ttc.player.owner,dx=0,limit=1,sort=nearest] positioned ~-0.89 ~-0.89 ~-0.89 if entity @s[dx=0] at @s run function ttc:entity/technical/projectile/reach_player

execute if entity @s[tag=ttc.entity.ice_shard] run function ttc:entity/technical/projectile/projectiles/ice_shard/tick


tag @p[tag=ttc.player.owner] remove ttc.player.owner