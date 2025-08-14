execute as @a run function amongus:removehavetasktags

execute store result score Manager numOfPlayers if entity @a

execute store result score Manager temp_imposters run scoreboard players get Manager noofimposters
execute store result score Manager finalImposterCount run scoreboard players get Manager noofimposters

# execute if score Manager numOfPlayers < $highestimpcount numOfPlayers run scoreboard players set Manager finalImposterCount 1
# execute if score Manager numOfPlayers < $impNoCheck numOfPlayers run scoreboard players set Manager finalImposterCount 1

# execute if score Manager noofimposters >= $impNoCheck numOfPlayers run scoreboard players set Manager finalImposterCount 2
# execute if score Manager noofimposters >= $impNoCheck numOfPlayers run scoreboard players set Manager finalImposterCount 3

# execute if score Manager noofimposters >= #yup noofimposters run scoreboard players set Manager finalImposterCount 3

execute store result score Manager temp_imposters run scoreboard players get Manager finalImposterCount

function amongus:start/assignimposters

tellraw @a[tag=!Imposter] {"text":"You are a crewmate! Your tasks are:","color": "yellow","bold": true}
function amongus:tasks/handout/handouttasks

execute if score Manager finalImposterCount matches 1 run title @a[tag=!Imposter] subtitle [{"text":"There is 1 Imposter among us!","color": "red"}]
execute unless score Manager finalImposterCount matches 1 run title @a[tag=!Imposter] subtitle [{"text":"There are ","color": "red"},{"score":{"name": "Manager","objective": "finalImposterCount"},"color": "red"},{"text":" Imposters among us!","color": "red"}]

title @a[tag=Imposter] actionbar [{"text":"Imposters are: ","color": "red"},{"selector":"@a[tag=Imposter]","color": "red"}]
title @a[tag=Imposter] subtitle [{"text":"Imposters are: ","color": "red"},{"selector":"@a[tag=Imposter]","color": "red"}]
tellraw @a[tag=Imposter] [{"text":"Imposters are: ","color": "red"},{"selector":"@a[tag=Imposter]","color": "red"}]

title @a[tag=!Imposter] title {"text": "Crewmate","color": "aqua"}
title @a[tag=Imposter] title {"text": "Imposter","color": "red"}

tag @a add Alive
tag @a remove Ghosts

execute store result score @a meetings run scoreboard players get Manager meetings

execute as @a run tellraw @s [{"text":"You have ","color": "green"},{"score":{"name":"@s","objective":"meetings"},"color":"yellow"},{"text":" meeting(s) left"}]

title @a[tag=!Imposter] actionbar {"text": "Complete tasks and find the imposters to win.","color": "aqua"}
title @a[tag=Imposter] actionbar {"text": "Sabotage and murder your way to victory.","color": "red"}

execute store result score @a[tag=Imposter] ventCooldown run scoreboard players get Manager ventCooldown
scoreboard players set @a[tag=Imposter] killCooldown 10
scoreboard players set @a[tag=Imposter] sabotageCooldown 10
scoreboard players set @a[tag=Imposter] lowerenginedoors 10
scoreboard players set @a[tag=Imposter] upperenginedoors 10
scoreboard players set @a[tag=Imposter] securitydoors 10
scoreboard players set @a[tag=Imposter] storagedoors 10
scoreboard players set @a[tag=Imposter] medbaydoors 10
scoreboard players set @a[tag=Imposter] cafeteriadoors 10
scoreboard players set @a[tag=Imposter] electricaldoors 10

scoreboard players set Manager gameStarted 1