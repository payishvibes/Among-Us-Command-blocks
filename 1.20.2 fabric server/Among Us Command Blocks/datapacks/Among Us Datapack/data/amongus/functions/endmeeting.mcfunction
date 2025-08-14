team modify Red nametagVisibility never
team modify Blue nametagVisibility never
team modify Green nametagVisibility never
team modify Pink nametagVisibility never
team modify Orange nametagVisibility never
team modify Yellow nametagVisibility never
team modify Black nametagVisibility never
team modify White nametagVisibility never
team modify Purple nametagVisibility never
team modify Brown nametagVisibility never
team modify Cyan nametagVisibility never
team modify Lime nametagVisibility never
team modify Maroon nametagVisibility never
team modify Rose nametagVisibility never
team modify Banana nametagVisibility never
team modify Grey nametagVisibility never
team modify Tan nametagVisibility never
team modify Coral nametagVisibility never

tag @a remove inmeeting
tag @a remove voteConfirmed
effect clear @a

scoreboard players set Manager skippedPlayers 0
scoreboard players set Manager votedPlayers 0
scoreboard players set @a votes 0

execute store result score @a[tag=Imposter] ventCooldown run scoreboard players get Manager ventCooldown
execute store result score @a[tag=Imposter] killCooldown run scoreboard players get Manager killCooldown

scoreboard players set Manager meetingEnding 0
scoreboard players set Manager voting 0
scoreboard players set Manager discussing 0

clear @a

scoreboard players set Manager meetingCooldown 10

scoreboard players set Manager voting 0

gamerule sendCommandFeedback true