#> necron.player:item.throwing/kill
#
# 時間が経過したら、消す
#
# @within function necron.player:item.throwing/*

# アイテムを召喚
	summon item ~ ~1 ~ {Tags:["NSD.Item"],Item:{id:"minecraft:cod",Count:1b}}
	data modify entity @e[tag=NSD.Item,limit=1] Item set from entity @s HandItems[0]
	tag @e[type=minecraft:item,tag=NSD.Item,distance=..1] remove NSD.Item
# アイテム表示のためのASを消す
	tp ~ -3000 ~
