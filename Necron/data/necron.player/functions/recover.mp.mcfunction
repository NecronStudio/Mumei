#> necron.player:recover.mp
#
# 体力を回復
#
# @within function necron.player:tick

# 
#> ScoreHolder
#@private
 #declare score_holder $NSD.MP.Max.Copy
 #declare score_holder $NSD.MPRcvrPer.Copy

# スコアをコピー
	scoreboard players operation $NSD.MP.Max.Copy NSD.Temp = @s NSD.MP.Max
	execute store result score $NSD.MPRcvrPer.Copy NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NsdStatus.MPRcvrPer
# 計算
	scoreboard players operation $NSD.MP.Max.Copy NSD.Temp *= $NSD.MPRcvrPer.Copy NSD.Temp
	scoreboard players operation $NSD.MP.Max.Copy NSD.Temp /= $NSD.100 NSD.Const
# 回復
	scoreboard players operation @s NSD.MP += $NSD.MP.Max.Copy NSD.Temp
# 過剰に回復したら
	execute if score @s NSD.MP > @s NSD.MP.Max run scoreboard players operation @s NSD.MP = @s NSD.MP.Max
# 表示を更新
	function necron.core:2s.tick
# 回復までのタイマーをリセット
	scoreboard players reset @s NSD.MP.Rcvr.Tmr
# 一時使用ScoreHolderをリセット
	scoreboard players reset $NSD.MP.Max.Copy
	scoreboard players reset $NSD.MPRcvrPer.Copy
