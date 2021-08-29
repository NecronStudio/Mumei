#> necron.player:recover/mp
#
# 体力を回復
#
# @within function necron.player:tick

# スコアをコピー
	scoreboard players operation $NSD.Max.Copy NSD.Temp = @s NSD.MP.Max
	execute store result score $NSD.RcvrPer.Copy NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NsdStatus.MPRcvrPer
# 計算
	scoreboard players operation $NSD.Max.Copy NSD.Temp *= $NSD.RcvrPer.Copy NSD.Temp
	scoreboard players operation $NSD.Max.Copy NSD.Temp /= $NSD.100 NSD.Const
# 回復
	scoreboard players operation @s NSD.MP += $NSD.Max.Copy NSD.Temp
# 過剰に回復したら
	execute if score @s NSD.MP > @s NSD.MP.Max run scoreboard players operation @s NSD.MP = @s NSD.MP.Max
# 回復までのタイマーをリセット
	scoreboard players reset @s NSD.MP.Rcvr.Tmr
# 最後の処理
	function necron.player:recover/last
