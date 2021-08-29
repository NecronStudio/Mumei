#> necron.player:recover.hp
#
# 体力を回復
#
# @within function necron.player:tick

# 
#> ScoreHolder
#@private
 #declare score_holder $NSD.HP.Max.Copy
 #declare score_holder $NSD.HPRcvrPer.Copy

# スコアをコピー
	scoreboard players operation $NSD.HP.Max.Copy NSD.Temp = @s NSD.HP.Max
	execute store result score $NSD.HPRcvrPer.Copy NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NsdStatus.HPRcvrPer
# 計算
	scoreboard players operation $NSD.HP.Max.Copy NSD.Temp *= $NSD.HPRcvrPer.Copy NSD.Temp
	scoreboard players operation $NSD.HP.Max.Copy NSD.Temp /= $NSD.100 NSD.Const
# 回復
	scoreboard players operation @s NSD.HP += $NSD.HP.Max.Copy NSD.Temp
# 過剰に回復したら
	execute if score @s NSD.HP > @s NSD.HP.Max run scoreboard players operation @s NSD.HP = @s NSD.HP.Max
# 表示を更新
	function necron.core:2s.tick
# 回復までのタイマーをリセット
	scoreboard players reset @s NSD.HP.Rcvr.Tmr
# 一時使用ScoreHolderをリセット
	scoreboard players reset $NSD.HP.Max.Copy
	scoreboard players reset $NSD.HPRcvrPer.Copy
