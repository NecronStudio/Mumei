#> necron.player:item.throwing/first/find.item.loop
#
# 自分が投げたアイテムを見つける
#
# @within function necron.player:item.throwing/first/
# @private

# UUIDをコピー
	data modify storage necron: UUIDCopy set from storage necron: UUID
# 自分を投げた人のUUIDを代入
	execute store success score $NSD.Success NSD.Temp run data modify storage necron: UUIDCopy set from entity @s Thrower
# 投げた人が見つかったら、自身にTagを付ける
	execute if score $NSD.Success NSD.Temp matches 0 run tag @s add NSD.Thrown
# Tagを外す
	tag @s remove NSD.Item
# ループ
	execute if entity @s[tag=!NSD.Thrown] if entity @e[type=minecraft:item,tag=NSD.Item] as @e[type=minecraft:item,tag=NSD.Item,distance=..1,sort=nearest,limit=1] at @s run function necron.player:item.throwing/first/find.item.loop
