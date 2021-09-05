#> necron.player:inventory_changed/accessory/give/
#
# アクセサリーを変える
#
# @within function necron.player:inventory_changed/

# 登録されてないアクセサリー
	data modify storage necron: Accessories append from storage necron: Items[{tag:{NSD:{Accessory:1b}}}]
	data remove storage necron: Accessories[{tag:{NSD:{Status:{}}}}]
# アクセサリーの追加効果＆返す
	execute if data storage necron: Accessories[] run function necron.player:inventory_changed/accessory/give/exchange/loop
# 一時使用Storageをリセット
	data remove storage necron: Accessories
	execute if data storage necron: Accessory run data remove storage necron: Accessory
	execute if data storage necron: Rarity run data remove storage necron: Rarity
	execute if data storage necron: ReturnItem run data remove storage necron: ReturnItem
# 一時使用Scoreboardをリセット
	execute if score $NSD.Rand.Max NSD.Temp matches 5 run scoreboard players reset $NSD.Rand.Max
	execute if score $NSD.Value NSD.Temp matches 0..5 run scoreboard players reset $NSD.Value
