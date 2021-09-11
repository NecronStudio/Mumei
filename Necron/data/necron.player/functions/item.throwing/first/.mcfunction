#> necron.player:item.throwing/first/
#
# アイテム投げの会
#
# @within function necron.player:tick

# 
#> Tag
#@within function necron.player:item.throwing/first/*
 #declare tag NSD.Item
 #declare tag NSD.Thrown
# 
#> Tag
#@within function necron.player:item.throwing/**
#@within function necron.core:tick
 #declare tag NSD.IT
# 
#> ScoreHolder
#@within function necron.player:item.throwing/first/*
 #declare score_holder $NSD.Success
### Citizens for Throwing
# 自分が投げたアイテムを見つける
	data modify storage necron: UUID set from entity @s UUID
	execute as @e[type=minecraft:item,distance=..1] if data entity @s {Age:0s} run tag @s add NSD.Item
	execute as @e[type=minecraft:item,tag=NSD.Item,distance=..1,sort=nearest,limit=1] at @s run function necron.player:item.throwing/first/find.item.loop
# アイテムを投げる
	execute if entity @e[type=minecraft:item,tag=NSD.Thrown,distance=..1] run function necron.player:item.throwing/first/throw
# 一時使用Tagを外す
	tag @e[type=minecraft:item,tag=NSD.Item,distance=..1] remove NSD.Item
	execute as @e[type=minecraft:item,tag=NSD.Thrown,distance=..1] run tag @s remove NSD.Thrown
# 一時使用ScoreHolderをリセット
	scoreboard players reset $NSD.Success
