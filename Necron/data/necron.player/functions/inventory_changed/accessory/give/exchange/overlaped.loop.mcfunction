#> necron.player:inventory_changed/accessory/give/exchange/overlaped.loop
#
# 追加効果が重なっていたら
#
# @within function necron.player:inventory_changed/accessory/give/exchange/status.loop
# @private

# 付与する追加効果
	scoreboard players set $NSD.Rand.Max NSD.Temp 8
	function necron.core:random/
# 追加効果が重なっていたら
	execute if score $NSD.Rand.Value NSD.Temp matches 0 if data storage necron: Accessory.tag.NSD.Status.HPMax run function necron.player:inventory_changed/accessory/give/exchange/overlaped.loop
	execute if score $NSD.Rand.Value NSD.Temp matches 1 if data storage necron: Accessory.tag.NSD.Status.HPRegPer run function necron.player:inventory_changed/accessory/give/exchange/overlaped.loop
	execute if score $NSD.Rand.Value NSD.Temp matches 2 if data storage necron: Accessory.tag.NSD.Status.MPMax run function necron.player:inventory_changed/accessory/give/exchange/overlaped.loop
	execute if score $NSD.Rand.Value NSD.Temp matches 3 if data storage necron: Accessory.tag.NSD.Status.MPRegPer run function necron.player:inventory_changed/accessory/give/exchange/overlaped.loop
	execute if score $NSD.Rand.Value NSD.Temp matches 4 if data storage necron: Accessory.tag.NSD.Status.DEF run function necron.player:inventory_changed/accessory/give/exchange/overlaped.loop
	execute if score $NSD.Rand.Value NSD.Temp matches 5 if data storage necron: Accessory.tag.NSD.Status.ATK run function necron.player:inventory_changed/accessory/give/exchange/overlaped.loop
	execute if score $NSD.Rand.Value NSD.Temp matches 6 if data storage necron: Accessory.tag.NSD.Status.CritChance run function necron.player:inventory_changed/accessory/give/exchange/overlaped.loop
	execute if score $NSD.Rand.Value NSD.Temp matches 7 if data storage necron: Accessory.tag.NSD.Status.CritDamage run function necron.player:inventory_changed/accessory/give/exchange/overlaped.loop
