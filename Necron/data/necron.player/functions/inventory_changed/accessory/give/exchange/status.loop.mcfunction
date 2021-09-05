#> necron.player:inventory_changed/accessory/give/exchange/status.loop
#
# 追加効果を付ける
#
# @within function necron.player:inventory_changed/accessory/give/exchange/loop
# @private

# レアリティによって値を変える
	scoreboard players set $NSD.Rand.Max NSD.Temp 5
	function necron.core:random/
	scoreboard players operation $NSD.Value NSD.Temp = $NSD.Rand.Value NSD.Temp
	execute if data storage necron: {Accessory:{tag:{NSD:{Rarity:"Common"}}}} run scoreboard players add $NSD.Value NSD.Temp 1
	execute if data storage necron: {Accessory:{tag:{NSD:{Rarity:"Uncommon"}}}} run scoreboard players add $NSD.Value NSD.Temp 3
	execute if data storage necron: {Accessory:{tag:{NSD:{Rarity:"Rare"}}}} run scoreboard players add $NSD.Value NSD.Temp 5
	execute if data storage necron: {Accessory:{tag:{NSD:{Rarity:"Epic"}}}} run scoreboard players add $NSD.Value NSD.Temp 8
	execute if data storage necron: {Accessory:{tag:{NSD:{Rarity:"Legendary"}}}} run scoreboard players add $NSD.Value NSD.Temp 10
# 付与する追加効果
	function necron.core:random/
# 追加効果が重なっていたら
	execute if score $NSD.Rand.Value NSD.Temp matches 0 if data storage necron: Accessory.tag.NSD.Status.HPMax run function necron.player:inventory_changed/accessory/give/exchange/overlaped.loop
	execute if score $NSD.Rand.Value NSD.Temp matches 1 if data storage necron: Accessory.tag.NSD.Status.HPRcvrPer run function necron.player:inventory_changed/accessory/give/exchange/overlaped.loop
	execute if score $NSD.Rand.Value NSD.Temp matches 2 if data storage necron: Accessory.tag.NSD.Status.MPMax run function necron.player:inventory_changed/accessory/give/exchange/overlaped.loop
	execute if score $NSD.Rand.Value NSD.Temp matches 3 if data storage necron: Accessory.tag.NSD.Status.MPRcvrPer run function necron.player:inventory_changed/accessory/give/exchange/overlaped.loop
	execute if score $NSD.Rand.Value NSD.Temp matches 4 if data storage necron: Accessory.tag.NSD.Status.DEF run function necron.player:inventory_changed/accessory/give/exchange/overlaped.loop
	execute if score $NSD.Rand.Value NSD.Temp matches 5 if data storage necron: Accessory.tag.NSD.Status.ATK run function necron.player:inventory_changed/accessory/give/exchange/overlaped.loop
# 値を調整
	execute if score $NSD.Rand.Value NSD.Temp matches 0 run scoreboard players operation $NSD.Value NSD.Temp *= $NSD.10 NSD.Const
	execute if score $NSD.Rand.Value NSD.Temp matches 2 run scoreboard players operation $NSD.Value NSD.Temp *= $NSD.10 NSD.Const
# 追加効果を付ける
	execute if score $NSD.Rand.Value NSD.Temp matches 0 store result storage necron: Accessory.tag.NSD.Status.HPMax int 1 run scoreboard players get $NSD.Value NSD.Temp
	execute if score $NSD.Rand.Value NSD.Temp matches 1 store result storage necron: Accessory.tag.NSD.Status.HPRcvrPer int 1 run scoreboard players get $NSD.Value NSD.Temp
	execute if score $NSD.Rand.Value NSD.Temp matches 2 store result storage necron: Accessory.tag.NSD.Status.MPMax int 1 run scoreboard players get $NSD.Value NSD.Temp
	execute if score $NSD.Rand.Value NSD.Temp matches 3 store result storage necron: Accessory.tag.NSD.Status.MPRcvrPer int 1 run scoreboard players get $NSD.Value NSD.Temp
	execute if score $NSD.Rand.Value NSD.Temp matches 4 store result storage necron: Accessory.tag.NSD.Status.DEF int 1 run scoreboard players get $NSD.Value NSD.Temp
	execute if score $NSD.Rand.Value NSD.Temp matches 5 store result storage necron: Accessory.tag.NSD.Status.ATK int 1 run scoreboard players get $NSD.Value NSD.Temp
# 確率でまた追加効果を付ける
	execute if predicate necron.core:quarter run function necron.player:inventory_changed/accessory/give/exchange/status.loop
