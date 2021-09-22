#> necron.core:random/
#
# 
#
# @public

# 
#> ScoreHolder
#@within function necron.core:random/*
 #declare score_holder $NSD.Rand.Current
 #declare score_holder $NSD.Rand.Carry
# 
#> ScoreHolder
#@within function necron.core:**
#@within function necron.entity:**
#@within function necron.player:**
 #declare score_holder $NSD.Rand.Max
 #declare score_holder $NSD.Rand.Value
# 計算
	scoreboard players operation $NSD.Rand.Current NSD.Global *= $NSD.31743 NSD.Const
	scoreboard players operation $NSD.Rand.Current NSD.Global += $NSD.Rand.Carry NSD.Global
	scoreboard players operation $NSD.Rand.Carry NSD.Global = $NSD.Rand.Current NSD.Global
	execute store result score $NSD.Rand.Value NSD.Temp run scoreboard players operation $NSD.Rand.Current NSD.Global %= $NSD.2^16 NSD.Const

	scoreboard players operation $NSD.Rand.Carry NSD.Global /= $NSD.2^16 NSD.Const
# 最大値以下にする
	scoreboard players operation $NSD.Rand.Value NSD.Temp %= $NSD.Rand.Max NSD.Temp
