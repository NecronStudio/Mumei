#> necron.player:weapon/mainhand/mp/remove
#
# 最大魔力を減少
#
# @within function necron.player:weapon/mainhand/

# 最大魔力を元に戻す
	scoreboard players operation @s NSD.MP.Max -= $NSD.Value NSD.Temp
# 追加最大魔力をリセット
	data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand.MP
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1
