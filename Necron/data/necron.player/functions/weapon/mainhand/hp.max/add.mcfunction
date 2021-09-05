#> necron.player:weapon/mainhand/hp.max/add
#
# 最大体力を追加
#
# @within function necron.player:weapon/mainhand/

# 最大体力を元に戻す
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand.HPMax run scoreboard players operation @s NSD.HP.Max -= $NSD.Value NSD.Temp
# 最大体力に追加
	scoreboard players operation @s NSD.HP.Max += $NSD.Amount NSD.Temp
# 追加最大体力を保存
	execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand.HPMax int 1 run scoreboard players get $NSD.Amount NSD.Temp
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1
