gamemode survival @a[tag=game_is_running,m=!survival,tag=!dev]
scoreboard players add @a[scores={compass_cd=1..}] compass_cd -1
# TIMER
scoreboard players add @a[tag=host,tag=game_is_running,scores={time_t=0..20}] time_t -1
scoreboard players add @a[tag=host,tag=game_is_running,scores={time_t=..-1}] time_s -1
scoreboard players set @a[tag=host,tag=game_is_running,scores={time_t=..-1}] time_t 19
scoreboard players add @a[tag=host,tag=game_is_running,scores={time_s=..-1}] time_m -1
scoreboard players set @a[tag=host,tag=game_is_running,scores={time_s=..-1}] time_s 59
execute @a[tag=host,tag=game_is_running,scores={time_m=-1}] ~~~ function system/ingame/timerends
execute @a[tag=host,tag=game_is_running,scores={time_s=10..60}] ~~~ titleraw @a[tag=game_is_running] actionbar {"rawtext":[{"text":"§cTime: §r§l"}, {"score":{"name":"@a[tag=host,tag=game_is_running]","objective":"time_m"}}, {"text":":"}, {"score":{"name":"@a[tag=host,tag=game_is_running]","objective":"time_s"}}]}
execute @a[tag=host,tag=game_is_running,scores={time_s=0..9}] ~~~ titleraw @a[tag=game_is_running] actionbar {"rawtext":[{"text":"§cTime: §r§l"}, {"score":{"name":"@a[tag=host,tag=game_is_running]","objective":"time_m"}}, {"text":":0"}, {"score":{"name":"@a[tag=host,tag=game_is_running]","objective":"time_s"}}]}

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