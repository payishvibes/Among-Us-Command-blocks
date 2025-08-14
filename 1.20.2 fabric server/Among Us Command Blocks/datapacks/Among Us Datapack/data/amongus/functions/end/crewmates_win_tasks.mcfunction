title @a title {"text":"Crewmates Win","color": "green","bold": true}
title @a actionbar {"text":"All tasks completed","color": "green","bold": true}

scoreboard players add Crewmates Wins 1

execute as @a run playsound minecraft:crewmate_win master @s

#function amongus:end/backtolobby