#> necron.player:weapon/offhand/crit.damage/remove
#
# クリティカルダメージを減少
#
# @within function necron.player:weapon/offhand/

# クリティカルダメージを元に戻す
	scoreboard players operation @s NSD.Crit.Damage -= $NSD.Value NSD.Temp
# 追加クリティカルダメージをリセット
	data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Offhand.CritDamage
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1
