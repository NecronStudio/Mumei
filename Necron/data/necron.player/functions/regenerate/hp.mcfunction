#> necron.player:regenerate/hp
#
# 体力を回復
#
# @within function necron.player:tick

# 
#> ScoreHolder
#@private
 #declare score_holder $NSD.HP.Max.Copy
# スコアをコピー
	scoreboard players operation $NSD.HP.Max.Copy NSD.Temp = @s NSD.HP.Max
# 計算
	scoreboard players operation $NSD.HP.Max.Copy NSD.Temp *= @s NSD.HP.Reg.Per
	scoreboard players operation $NSD.HP.Max.Copy NSD.Temp /= $NSD.100 NSD.Const
# 回復
	scoreboard players operation @s NSD.HP += $NSD.HP.Max.Copy NSD.Temp
# 過剰に回復したら
	execute if score @s NSD.HP > @s NSD.HP.Max run scoreboard players operation @s NSD.HP = @s NSD.HP.Max
# 回復までのタイマーをリセット
	scoreboard players reset @s NSD.HP.Reg.Tmr
# 表示を更新
	function necron.core:2s.tick
# 一時使用ScoreHolderをリセット
	scoreboard players reset $NSD.HP.Max.Copy
