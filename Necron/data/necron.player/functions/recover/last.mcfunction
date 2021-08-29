#> necron.player:recover/last
#
# 最後の処理
#
# @within function necron.player:recover/mp
# @within function necron.player:recover/hp

# 
#> ScoreHolder
#@within function necron.player:recover/*
 #declare score_holder $NSD.Max.Copy
 #declare score_holder $NSD.RcvrPer.Copy
# 表示を更新
	function necron.core:2s.tick
# 一時使用ScoreHolderをリセット
	scoreboard players reset $NSD.Max.Copy
	scoreboard players reset $NSD.RcvrPer.Copy
