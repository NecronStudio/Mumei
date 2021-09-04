#> necron.core:random/init
#
# 乱数の初期化
#
# @within function necron.core:init

# 
#> tag
#@private
 #declare tag NSD.Marker
# マーカーを召喚
	execute in minecraft:overworld run summon minecraft:marker 0 0 0 {Tags:["NSD.Marker"]}
# 値を取得
	execute in minecraft:overworld positioned 0 0 0 as @e[type=minecraft:marker,tag=NSD.Marker,distance=..0.001] store result score $NSD.Rand.Current NSD.Global run data get entity @s UUID[0]
	scoreboard players operation $NSD.Rand.Current NSD.Global %= $NSD.2^16 NSD.Const
	scoreboard players add $NSD.Rand.Current NSD.Global 1

	execute in minecraft:overworld positioned 0 0 0 as @e[type=minecraft:marker,tag=NSD.Marker,distance=..0.001] store result score $NSD.Rand.Carry NSD.Global run data get entity @s UUID[1]
	scoreboard players operation $NSD.Rand.Carry NSD.Global %= $NSD.2^16 NSD.Const
	scoreboard players add $NSD.Rand.Carry NSD.Global 1
# マーカーを消す
	execute in minecraft:overworld positioned 0 0 0 run kill @e[type=minecraft:marker,tag=NSD.Marker,distance=..0.001]
