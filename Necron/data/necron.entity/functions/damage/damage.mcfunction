#> necron.entity:damage/damage
#
# ダメージを受ける
#
# @within function necron.player:item.throwing/damage

# 
#> ScoreHolder
#@within necron.entity:damage/*
 #declare score_holder $NSD.Damage
 #declare score_holder $NSD.HP.1
 #declare score_holder $NSD.DEF
 #declare score_holder $NSD.ATK
 #declare score_holder $NSD.HP.Difference
# 値を調整
	execute store result score $NSD.HP.Difference NSD.Temp run scoreboard players operation $NSD.Damage NSD.Temp = @s NSD.HP
	scoreboard players operation $NSD.DEF NSD.Temp = @s NSD.DEF
	scoreboard players add $NSD.DEF NSD.Temp 100
	scoreboard players operation $NSD.DEF NSD.Temp /= $NSD.100 NSD.Const
	execute store result score $NSD.HP.1 NSD.Temp run scoreboard players operation $NSD.Damage NSD.Temp *= $NSD.DEF NSD.Temp
# ダメージを計算
	scoreboard players operation $NSD.Damage NSD.Temp -= $NSD.ATK NSD.Temp
	scoreboard players operation $NSD.Damage NSD.Temp *= $NSD.100 NSD.Const
	scoreboard players operation $NSD.Damage NSD.Temp /= $NSD.HP.1 NSD.Temp
# HPを減らす
	scoreboard players operation @s NSD.HP *= $NSD.Damage NSD.Temp
	scoreboard players operation @s NSD.HP /= $NSD.100 NSD.Const
# 与えたダメージを表示
	scoreboard players operation $NSD.HP.Difference NSD.Temp -= @s NSD.HP
	execute as @a[tag=NSD.ShowDealt] run tellraw @s [{"text":">>> ","color":"white"},{"score":{"name":"$NSD.HP.Difference","objective":"NSD.Temp"},"color":"red"},{"text":"ダメージ","color":"white"}]
# 回復
	execute if entity @s[type=!#necron.entity:undead] run effect give @s minecraft:instant_health 1 200 true
	execute if entity @s[type=#necron.entity:undead] run effect give @s minecraft:instant_damage 1 200 true
# HPが0以下だったら殺す
	execute if entity @s[scores={NSD.HP=..0}] run kill @s
# 一時使用ScoreHolderをリセット
	scoreboard players reset $NSD.Damage
	scoreboard players reset $NSD.HP.1
	scoreboard players reset $NSD.DEF
	scoreboard players reset $NSD.ATK
	scoreboard players reset $NSD.HP.Difference
