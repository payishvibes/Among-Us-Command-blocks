execute if score Manager killDistance matches 0 run function amongus:killdistances/short
execute if score Manager killDistance matches 1 run function amongus:killdistances/medium
execute if score Manager killDistance matches 2 run function amongus:killdistances/long

execute if score @s InteractionAllowed matches 1 run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"Kill","italic":false}]'},tags:["KillButton"],CustomModelData:1}
execute if score @s InteractionAllowed matches 0 if entity @s[scores={killCooldown=1..}] run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"Kill","italic":false}]'},tags:["CantKill"],CustomModelData:22}
execute if score @s InteractionAllowed matches 0 if entity @s[scores={killCooldown=0}] run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"Kill","italic":false}]'},tags:["NonInteractable"],CustomModelData:22}

scoreboard players set @s InteractionAllowed 0