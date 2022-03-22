tag @s add ttc.player.events.death.schedule
schedule function ttc:player/events/actions/on_death/death_schedule 1s
advancement revoke @s only ttc:technical/player/real_death
effect give @s saturation 100000 10 true