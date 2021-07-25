gamemode survival @a[tag=game_is_running,m=!survival,tag=!dev]
scoreboard players add @a[scores={compass_cd=1..}] compass_cd -1

execute @a[tag=host,tag=game_is_running,scores={speedrunners=..0}] ~~~ tag @a[tag=host] add end_game
execute @a[tag=host,tag=game_is_running,scores={speedrunners=..0}] ~~~ tellraw @a {"rawtext":[{"text":"§b§lGame §r>> §eSpeedrunner died! Hunters won!"}]}
execute @a[tag=host,tag=game_is_running,scores={speedrunners=..0}] ~~~ title @a[tag=hunter] subtitle §eCongratulations!
execute @a[tag=host,tag=game_is_running,scores={speedrunners=..0}] ~~~ title @a[tag=hunter] title §eYou won!
execute @a[tag=host,tag=game_is_running,scores={speedrunners=..0}] ~~~ title @a[tag=speedrunner] subtitle §cYou lost!
execute @a[tag=host,tag=game_is_running,scores={speedrunners=..0}] ~~~ title @a[tag=speedrunner] title 
execute @a[tag=host,tag=game_is_running,scores={speedrunners=..0}] ~~~ gamemode 2 @a
execute @a[tag=host,tag=game_is_running,scores={speedrunners=..0}] ~~~ tag @a remove game_is_running
execute @a[tag=host,tag=game_is_running,scores={speedrunners=..0}] ~~~ tag @a remove hunter
execute @a[tag=host,tag=game_is_running,scores={speedrunners=..0}] ~~~ tag @a remove speedrunner