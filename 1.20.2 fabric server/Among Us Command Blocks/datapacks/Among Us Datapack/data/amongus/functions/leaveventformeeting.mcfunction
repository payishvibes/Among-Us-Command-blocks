effect clear @s minecraft:invisibility
clear @s carrot_on_a_stick{tags:["VentMoveButton"]}

execute store result score @s ventCooldown run scoreboard players get Manager ventCooldown

tag @s remove Venting
scoreboard players set @s ventnumber 0

function amongus:testforsamecolour