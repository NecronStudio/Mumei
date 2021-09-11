#> necron.player:inventory_changed/default.items/exchange/return.item
#
# アイテムを返す
#
# @within function necron.player:inventory_changed/default.items/exchange/loop

# Slotを取得
	execute store result score $NSD.Slot NSD.Temp run data get storage necron: Item.Slot
	data remove storage necron: Item.Slot
# データを移す
	data modify storage necron: ReturnItem set from storage necron: Item
# アイテムを返す
	function necron.player:inventory_changed/return.item
