#> necron.player:inventory_changed/accessory/status/finger/crit.damage/add
#
# クリティカルダメージを追加
#
# @within function necron.player:inventory_changed/accessory/status/finger/

# クリティカルダメージを元に戻す
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.CritDamage run scoreboard players operation @s NSD.Crit.Damage -= $NSD.Value NSD.Temp
# クリティカルダメージに追加
	scoreboard players operation @s NSD.Crit.Damage += $NSD.Amount NSD.Temp
# 追加クリティカルダメージを保存
	execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.CritDamage int 1 run scoreboard players get $NSD.Amount NSD.Temp
# 変えたことを記録
	execute unless score $NSD.Put.On NSD.Temp matches 1 run scoreboard players set $NSD.Put.On NSD.Temp 1
