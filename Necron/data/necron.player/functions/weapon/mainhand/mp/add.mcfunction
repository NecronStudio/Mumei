#> necron.player:weapon/mainhand/mp/add
#
# 最大魔力を追加
#
# @within function necron.player:weapon/mainhand/

# 最大魔力を元に戻す
	execute if score @s NSD.MP.Add.Main matches ..2147483647 run scoreboard players operation @s NSD.MP.Max -= @s NSD.MP.Add.Main
# 最大魔力を追加
	scoreboard players operation @s NSD.MP.Max += $NSD.Amount NSD.Temp
	scoreboard players operation @s NSD.MP.Add.Main = $NSD.Amount NSD.Temp
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1
