#> necron.player:inventory_changed/accessory/give/exchange/overlaped.loop
#
# 追加効果が重なっていたら
#
# @within function necron.player:inventory_changed/accessory/give/exchange/status.loop
# @private

# 付与する追加効果
	scoreboard players set $NSD.Rand.Max NSD.Temp 5
	function necron.core:random/

# 追加効果が重なっていたら
	execute if score $NSD.Rand.Value NSD.Temp matches 0 if data storage necron: Accessory.tag.NsdStatus.HP run function necron.player:inventory_changed/accessory/give/exchange/overlaped.loop
	execute if score $NSD.Rand.Value NSD.Temp matches 1 if data storage necron: Accessory.tag.NsdStatus.HPRcvrPer run function necron.player:inventory_changed/accessory/give/exchange/overlaped.loop
	execute if score $NSD.Rand.Value NSD.Temp matches 2 if data storage necron: Accessory.tag.NsdStatus.MP run function necron.player:inventory_changed/accessory/give/exchange/overlaped.loop
	execute if score $NSD.Rand.Value NSD.Temp matches 3 if data storage necron: Accessory.tag.NsdStatus.MPRcvrPer run function necron.player:inventory_changed/accessory/give/exchange/overlaped.loop
	execute if score $NSD.Rand.Value NSD.Temp matches 4 if data storage necron: Accessory.tag.NsdStatus.DEF run function necron.player:inventory_changed/accessory/give/exchange/overlaped.loop
	execute if score $NSD.Rand.Value NSD.Temp matches 5 if data storage necron: Accessory.tag.NsdStatus.ATK run function necron.player:inventory_changed/accessory/give/exchange/overlaped.loop
