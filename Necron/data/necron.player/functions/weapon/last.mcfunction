#> necron.player:weapon/last
#
# 最後の処理
#
# @within function necron.player:weapon/**

# 
#> ScoreHolder
#@within function necron.player:weapon/**
 #declare score_holder $NSD.Amount
 #declare score_holder $NSD.Value
 #declare score_holder $NSD.Success
 # 表示を更新
	execute if score $NSD.Success NSD.Temp matches 1 run function necron.core:2s.tick
# 一時使用Storageをリセット
	data remove storage necron: Items
# 一時使用ScoreHolderをリセット
	execute if score $NSD.Amount NSD.Temp matches ..2147483647 run scoreboard players reset $NSD.Amount
	execute if score $NSD.Value NSD.Temp matches ..2147483647 run scoreboard players reset $NSD.Value
	execute if score $NSD.Success NSD.Temp matches 1 run scoreboard players reset $NSD.Success
