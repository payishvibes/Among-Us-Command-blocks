effect clear @s minecraft:invisibility
clear @s carrot_on_a_stick{tags:["VentMoveButton"]}

execute as @e[tag=targetventpoint] at @s run setblock ~ ~-1 ~ minecraft:iron_trapdoor[open=true,half=top]
execute as @a[distance=..5] run playsound minecraft:vent master @a ~ ~ ~ 0.5 1
schedule function amongus:resetvent 5

execute store result score @s ventCooldown run scoreboard players get Manager ventCooldown

tag @s remove Venting
scoreboard players set @s ventnumber 0