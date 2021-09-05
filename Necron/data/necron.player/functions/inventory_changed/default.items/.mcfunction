#> necron.player:inventory_changed/default.items/
#
# デフォルトアイテムの数値を変える
#
# @within function necron.player:inventory_changed/

# 登録されてない武器or防具
	data modify storage necron: DamageItems append from storage necron: Items[{tag:{}}]
	data remove storage necron: DamageItems[{tag:{NSD:{Status:{}}}}]
# アイテムを返す
	execute if data storage necron: DamageItems[] run function necron.player:inventory_changed/default.items/exchange/loop
# 一時使用Storageをリセット
	data remove storage necron: DamageItems
	execute if data storage necron: Armor run data remove storage necron: Armor
	execute if data storage necron: ReturnItem run data remove storage necron: ReturnItem
# 一時使用ScoreHolderをリセット
	execute if score $NSD.Success NSD.Temp matches 0..1 run scoreboard players reset $NSD.Success
	execute if score $NSD.Slot NSD.Temp matches -106..103 run scoreboard players reset $NSD.Slot
