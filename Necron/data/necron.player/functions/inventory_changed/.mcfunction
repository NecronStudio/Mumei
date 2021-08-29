#> necron.player:inventory_changed/
#
# インベントリーのアイテムを変えたら
#
# @within advancement necron.player:inventory_changed

# 
#> ScoreHolder
#@within function necron.player:inventory_changed/**
 #declare score_holder $NSD.Amount
 #declare score_holder $NSD.Success
# インベントリーをコピー
	data modify storage necron: InventoryCopy set from entity @s Inventory
# 装備をしていたら
	execute if data storage necron: InventoryCopy[{Slot:103b}].tag.NsdArmor run function necron.player:inventory_changed/armor/head/
	execute if data storage necron: InventoryCopy[{Slot:102b}].tag.NsdArmor run function necron.player:inventory_changed/armor/chest/
	execute if data storage necron: InventoryCopy[{Slot:101b}].tag.NsdArmor run function necron.player:inventory_changed/armor/legs/
	execute if data storage necron: InventoryCopy[{Slot:100b}].tag.NsdArmor run function necron.player:inventory_changed/armor/feet/
# 装備をしていなかったら
	execute if entity @s[tag=NSD.Wearing.Head] unless data storage necron: InventoryCopy[{Slot:103b}].tag.NsdArmor run function necron.player:inventory_changed/armor/head/reset
	execute if entity @s[tag=NSD.Wearing.Chest] unless data storage necron: InventoryCopy[{Slot:102b}].tag.NsdArmor run function necron.player:inventory_changed/armor/chest/reset
	execute if entity @s[tag=NSD.Wearing.Legs] unless data storage necron: InventoryCopy[{Slot:101b}].tag.NsdArmor run function necron.player:inventory_changed/armor/legs/reset
	execute if entity @s[tag=NSD.Wearing.Feet] unless data storage necron: InventoryCopy[{Slot:100b}].tag.NsdArmor run function necron.player:inventory_changed/armor/feet/reset
# 表示を更新
	execute if score $NSD.Success NSD.Temp matches 1 run function necron.core:2s.tick
# 一時使用Storageをリセット
	data remove storage necron: InventoryCopy
# 一時使用ScoreHolderをリセット
	execute if score $NSD.Amount NSD.Temp matches ..2147483647 run scoreboard players reset $NSD.Amount
	execute if score $NSD.Success NSD.Temp matches 1 run scoreboard players reset $NSD.Success
# 進捗を剥奪
	advancement revoke @s only necron.player:inventory_changed
