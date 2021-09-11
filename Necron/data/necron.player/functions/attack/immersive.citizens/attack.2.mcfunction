#> necron.player:attack/immersive.citizens/attack.2
#
# ステータスを取得
#
# @public

# 
	scoreboard players operation $NSD.Enemy.HP.0 NSD.Temp = @s NSD.HP
	scoreboard players operation $NSD.Enemy.HP.1 NSD.Temp = @s NSD.HP
	scoreboard players operation $NSD.Enemy.DEF NSD.Temp = @s NSD.DEF
	scoreboard players add $NSD.Enemy.DEF NSD.Temp 100
	scoreboard players operation $NSD.Enemy.DEF NSD.Temp /= $NSD.100 NSD.Const
	scoreboard players operation $NSD.Enemy.HP.0 NSD.Temp *= $NSD.Enemy.DEF NSD.Temp
	scoreboard players operation $NSD.Enemy.HP.1 NSD.Temp *= $NSD.Enemy.DEF NSD.Temp
