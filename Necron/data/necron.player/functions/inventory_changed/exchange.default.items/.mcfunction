#> necron.player:inventory_changed/exchange.default.items/
#
# デフォルトアイテムの数値を変える
#
# @within function necron.player:inventory_changed/

# 
#> Scoreholder
#@within necron.player:inventory_changed/exchange.default.items/*
 #declare score_holder $NSD.Slot
# 
#> Tag
#@within necron.player:inventory_changed/exchange.default.items/*
 #declare tag NSD.ChestMinecart
# 登録されてない武器or防具を
	data modify storage necron: DamageItems append from storage necron: ItemsCopy[{tag:{}}]
	data remove storage necron: DamageItems[{tag:{NsdArmor:1b}}]
	data remove storage necron: DamageItems[{tag:{NsdWeapon:1b}}]
# アイテムを返す
	execute if data storage necron: DamageItems[] run function necron.player:inventory_changed/exchange.default.items/loop
# 一時使用Storageをリセット
	data remove storage necron: DamageItems
	execute if data storage necron: Armor run data remove storage necron: Armor
# 一時使用ScoreHolderをリセット
	execute if score $NSD.Success NSD.Temp matches 0..1 run scoreboard players reset $NSD.Success
	execute if score $NSD.Slot NSD.Temp matches -106..103 run scoreboard players reset $NSD.Slot
