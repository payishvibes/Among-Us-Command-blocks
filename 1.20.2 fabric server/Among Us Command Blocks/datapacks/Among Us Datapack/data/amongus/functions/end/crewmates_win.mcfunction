title @a title {"text":"Crewmates Win","color": "green","bold": true}
title @a actionbar {"text":"All Imposters voted out","color": "green","bold": true}

scoreboard players add Crewmates Wins 1

function amongus:end/backtolobby

execute as @a run playsound minecraft:crewmate_win master @s