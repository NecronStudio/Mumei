#> necron.player:necron.magic/kill.public
#
# 全体的なキルコマンド
#
# @public
kill @e[tag=NSD.Magic.Public.Motion]
scoreboard players add @s NSD.Magic.Time.0 1
execute if score @s NSD.Magic.Time.0 matches 25.. run kill @s
execute unless block ~ ~1 ~ grass unless block ~ ~1 ~ oak_sign unless block ~ ~1 ~ torch unless block ~ ~1 ~ water unless block ~ ~1 ~ air run kill @s
kill @e[tag=NSD.Magic.Public.Above]