#> necron.player:inventory_changed/accessory/status/necklace/atk/add
#
# 攻撃力を追加
#
# @within function necron.player:inventory_changed/accessory/status/necklace/

# 攻撃力を元に戻す
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.ATK run scoreboard players operation @s NSD.ATK -= $NSD.Value NSD.Temp
# 攻撃力に追加
	scoreboard players operation @s NSD.ATK += $NSD.Amount NSD.Temp
# 追加攻撃力を保存
	execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.ATK int 1 run scoreboard players get $NSD.Amount NSD.Temp
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1
