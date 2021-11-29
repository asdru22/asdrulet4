scoreboard players add @s timer 1
scoreboard players operation .id map.d = @s map.id
scoreboard players operation s.damage map.d = @s damage.base
execute as @a if score @s map.id = .id map.d run tag @s add map.player.owner

execute as @e[type=#map:mobs,tag=map.entity.mob,dx=0,limit=1,sort=nearest,nbt={HurtTime:0s}] positioned ~-0.89 ~-0.89 ~-0.89 if entity @s[dx=0] at @s run function map:entity/technical/projectile/hit

execute as @a[tag=map.player.owner,dx=0,limit=1,sort=nearest] positioned ~-0.89 ~-0.89 ~-0.89 if entity @s[dx=0] at @s run function map:entity/technical/projectile/reach_player

execute if entity @s[tag=map.entity.ice_shard] run function map:entity/technical/projectile/projectiles/ice_shard/tick


tag @p[tag=map.player.owner] remove map.player.owner