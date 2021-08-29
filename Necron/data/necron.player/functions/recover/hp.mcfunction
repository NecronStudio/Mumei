#> necron.player:recover/hp
#
# 体力を回復
#
# @within function necron.player:tick

# スコアをコピー
	scoreboard players operation $NSD.Max.Copy NSD.Temp = @s NSD.HP.Max
	execute store result score $NSD.RcvrPer.Copy NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NsdStatus.HPRcvrPer
# 計算
	scoreboard players operation $NSD.Max.Copy NSD.Temp *= $NSD.RcvrPer.Copy NSD.Temp
	scoreboard players operation $NSD.Max.Copy NSD.Temp /= $NSD.100 NSD.Const
# 回復
	scoreboard players operation @s NSD.HP += $NSD.Max.Copy NSD.Temp
# 過剰に回復したら
	execute if score @s NSD.HP > @s NSD.HP.Max run scoreboard players operation @s NSD.HP = @s NSD.HP.Max
# 回復までのタイマーをリセット
	scoreboard players reset @s NSD.HP.Rcvr.Tmr
# 最後の処理
	function necron.player:recover/last
