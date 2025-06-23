function a:murder
scoreboard players reset *
gamerule doImmediateRespawn true
time set 0
team add a
team modify a collisionRule pushOwnTeam
team modify a friendlyFire true
team modify a color reset
difficulty easy
gamerule keepInventory false
scoreboard objectives add score dummy
scoreboard objectives add death deathCount
scoreboard objectives add calc dummy
scoreboard objectives add health dummy
scoreboard objectives add round dummy
scoreboard objectives add multi dummy
scoreboard objectives add left dummy
scoreboard objectives add right dummy
scoreboard objectives add gone dummy
scoreboard objectives add two dummy
scoreboard objectives add five dummy
scoreboard objectives add first dummy
scoreboard objectives add overkill dummy
scoreboard objectives add temp dummy
scoreboard objectives add pcount dummy
scoreboard objectives add tpcount dummy
scoreboard objectives add team dummy
scoreboard objectives add t1 trigger
scoreboard objectives add t2 trigger
scoreboard objectives add t3 trigger
scoreboard objectives add t4 trigger
scoreboard objectives add t5 trigger
scoreboard objectives add t6 trigger
scoreboard objectives add t7 trigger
scoreboard players enable @a t7
scoreboard players enable @a t6
scoreboard players enable @a t5
scoreboard players enable @a t4
scoreboard players enable @a t3
scoreboard players enable @a t2
scoreboard players enable @a t1
scoreboard objectives add glass minecraft.mined:minecraft.glass

scoreboard objectives setdisplay list team
scoreboard objectives setdisplay sidebar health
scoreboard players set @a death 1785
scoreboard players set @a team 0
tellraw @a [{"bold":true,"color":"red","underline":true,"text":"STILL BETA TESTING LMAO Team-based "},{"text":"death speedruns has been loaded! Use /function a:start to begin the games!","color":"green"}]



# create spawn platform
schedule function a:zzzspawn 5t
execute in the_nether run forceload add -13 -14 25 24
place template a:lobbyoverworld -12 295 -14
setworldspawn 0 302 0
spawnpoint @a 0 302 0
tp @a 0 302 0
gamemode survival @a
gamerule spawnRadius 2

# TEXT DISPLAYS
kill @e[type=text_display]
summon text_display -9.00 302 0.50 {Glowing:1b,line_width:600,Rotation:[-90F,0F],text:[{"bold":true,"text":"Death Speedrun Teams Instructions:","underlined":true},{"bold":true,"text":"\nObjective:","underlined":false},{"bold":false,"text":" All teams will be put in the same box in a random location in a Minecraft world. The goal is for just ONE person on the team to die in ANY MEANS POSSIBLE! Just DIE!\n","underlined":false},{"bold":true,"text":"Scoring: ","underlined":false},{"bold":false,"text":"The team's score is the time taken in ticks for any/the first team member to die, which will be printed in chat.\n","underlined":false},{"bold":true,"text":"Health and damage: ","underlined":false},{"bold":false,"italic":false,"strikethrough":false,"text":"Each team starts off with 500 health. The first team to finish takes no damage, and each subsequent team takes damage equivalent to the % difference between their time and the first team's time. However, damage is capped at 150.\n","underlined":false},{"bold":false,"text":"For example, if Team 1 took 1000 ticks and Team 2 took 1500 ticks, Team 2 would take 50 damage. Another team that took 3000 ticks would have taken 200 damage, but the 150 damage cap will make it 150.\n","underlined":false},{"bold":false,"text":"If your team's health reaches 0, your team is eliminated. The last team standing wins!","underlined":false}]}
summon text_display 0.50 303 9.50 {Glowing:1b,line_width:600,Rotation:[180F,0F],text:[{"bold":true,"text":"Allowed client modifications:","underlined":true},{"bold":false,"text":"\n No hacked clients are allowed.\n","underlined":false},{"bold":false,"text":"Any mod that gathers information about the seed, such as minimap mods, mapping mods, entity trackers, etc. are not allowed. ","underlined":false},{"bold":false,"text":"\nHowever, you are allowed to use gamma utils or fullbright to increase your vision during nighttime/in caves provided that you do not toggle between multiple gamma values.","underlined":false}]}
summon text_display 0.50 303 -9.50 {Glowing:1b,line_width:600,text:[{"bold":true,"text":"Teams-specific rules:","underlined":true},{"text":"\n1. ","underlined":false},{"bold":false,"text":"Hitting your teammates is ONLY ALLOWED to boost them forwards. Teams found breaking this rule will lose 100 health as a warning, then 150 health for repeated infractions.\n","underlined":false},{"text":"2.","underlined":false},{"bold":false,"text":" Sabotaging members of other teams is ALLOWED and ENCOURAGED.","underlined":false},{"text":"\n3.","underlined":false},{"bold":false,"text":" Only ONE member of your team needs to die, so strategize accordingly!","underlined":false}]}


execute unless entity @e[type=minecraft:armor_stand,limit=1,tag=score] run summon minecraft:armor_stand 0 330 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["score"]}
scoreboard players set @e[type=armor_stand,tag=score] round 0

function a:zzzfiveschecker