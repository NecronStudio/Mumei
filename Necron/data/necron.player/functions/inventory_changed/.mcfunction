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
	data modify storage necron: ItemsCopy set from entity @s Inventory
# 装備をしていたら
	execute if data storage necron: ItemsCopy[{Slot:103b}].tag.NsdArmor run function necron.player:inventory_changed/armor/head/
	execute if data storage necron: ItemsCopy[{Slot:102b}].tag.NsdArmor run function necron.player:inventory_changed/armor/chest/
	execute if data storage necron: ItemsCopy[{Slot:101b}].tag.NsdArmor run function necron.player:inventory_changed/armor/legs/
	execute if data storage necron: ItemsCopy[{Slot:100b}].tag.NsdArmor run function necron.player:inventory_changed/armor/feet/
# 装備をしていなかったら
	execute if entity @s[tag=NSD.Wearing.Head] unless data storage necron: ItemsCopy[{Slot:103b}].tag.NsdArmor run function necron.player:inventory_changed/armor/head/reset
	execute if entity @s[tag=NSD.Wearing.Chest] unless data storage necron: ItemsCopy[{Slot:102b}].tag.NsdArmor run function necron.player:inventory_changed/armor/chest/reset
	execute if entity @s[tag=NSD.Wearing.Legs] unless data storage necron: ItemsCopy[{Slot:101b}].tag.NsdArmor run function necron.player:inventory_changed/armor/legs/reset
	execute if entity @s[tag=NSD.Wearing.Feet] unless data storage necron: ItemsCopy[{Slot:100b}].tag.NsdArmor run function necron.player:inventory_changed/armor/feet/reset
# 最後の処理
	function necron.player:weapon/last
# 進捗を剥奪
	advancement revoke @s only necron.player:inventory_changed
