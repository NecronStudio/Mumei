#> necron.player:necron.magic/kill.public
#
# 
#
# @public
kill @e[tag=NSD.Magic.Public.Motion]
scoreboard players add @s NSD.Global 1
execute if score @s NSD.Global matches 25.. run kill @s
execute unless block ~ ~1 ~ grass unless block ~ ~1 ~ oak_sign unless block ~ ~1 ~ torch unless block ~ ~1 ~ water unless block ~ ~1 ~ air run kill @s
#execute unless block ~ ~1 ~ grass unless block ~ ~1 ~ oak_sign unless block ~ ~1 ~ torch unless block ~ ~1 ~ water unless block ~ ~1 ~ air run tag @s add NSD.Touched
#execute as @e[tag=NSD.Touched] at @s unless blocks ~0.1 ~1 ~0.1 ~-0.1 ~1 ~-0.1 ~ ~ ~ all run kill @s