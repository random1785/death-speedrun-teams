# death-speedrun-teams
Minecraft Datapack (works on any version past 1.21.5, last tested on 26.2) that allows players to team up and race each other to die!

## Features:
Players can choose their teams by using `/trigger t<number>` in the lobby<br>
Timer determines how long players took to die<br/>
Once someone on a team dies, everyone on the team dies with them <br>
Health and damage calculator to determine a winner across the game<br/>
Maximum damage threshold to kill players once they have reached 150 damage<br/>
Random spawns for each and every round<br/>
Upon death, players are put in spectator above spawn to see the round + spectate others

## More technical stuff that is mostly for myself:
Team picking is only enabled for players once /reload is ran <br>
Repeated attempts to heal players in case they spawn on lower health<br/>
Detection for players who have escaped the spawn cage starts at 5 seconds left<br/>
If a player joins midway through a match, they are instantly eliminated and put into spectator mode<br/>
If a player leaves midway through a match, they are able to rejoin as long as the health calculation has not started (nobody is alive and playing)
Some bugs involving team damage being wonky? Doesn't seem to happen anymore on this version though <br>

## Todo list:
spectator mode for players
