#> necron.player:inventory_changed/default.items/exchange/return.item
#
# アイテムを返す
#
# @within function necron.player:inventory_changed/default.items/exchange/loop

# Slotを取得
	execute store result score $NSD.Slot NSD.Temp run data get storage necron: Armor.Slot
	data remove storage necron: Armor.Slot
# データを移す
	data modify storage necron: ReturnItem set from storage necron: Armor
# アイテムを返す
	function necron.player:inventory_changed/return.item
