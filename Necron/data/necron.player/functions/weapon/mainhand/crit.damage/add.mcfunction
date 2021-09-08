#> necron.player:weapon/mainhand/crit.damage/add
#
# クリティカルダメージを追加
#
# @within function necron.player:weapon/mainhand/

# クリティカルダメージを元に戻す
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand.CritDamage run scoreboard players operation @s NSD.Crit.Damage -= $NSD.Value NSD.Temp
# クリティカルダメージに追加
	scoreboard players operation @s NSD.Crit.Damage += $NSD.Amount NSD.Temp
# 追加クリティカルダメージを保存
	execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand.CritDamage int 1 run scoreboard players get $NSD.Amount NSD.Temp
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1
