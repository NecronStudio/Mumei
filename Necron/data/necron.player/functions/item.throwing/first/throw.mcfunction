#> necron.player:item.throwing/first/throw
#
# アイテムを投げる
#
# @within function necron.player:item.throwing/first/

# 
#> Tag
#@private
 #declare tag NSD.AS.First
 #declare tag NSD.AECMotion
# 音を鳴らす
	playsound minecraft:entity.player.attack.weak player @s ~ ~ ~ 2 0.5
# アイテム表示のためのASを召喚
	summon minecraft:armor_stand ~ ~ ~ {Tags:["NSD.IT","NSD.AS.First"],ShowArms:1b,Pose:{RightArm:[-10f,0f,-90f]},Invisible:1b,OnGround:1b}
# Motion取得用Entityを召喚
	execute positioned 0.00 0.00 0.00 run summon minecraft:area_effect_cloud ^ ^ ^2.5 {Tags:["NSD.AECMotion"],Age:-2147483648,Duration:-1,WaitTime:-2147483648,}
# Motionを代入
	execute as @e[type=minecraft:armor_stand,tag=NSD.AS.First,distance=..0.001] run data modify entity @s Motion set from entity @e[type=minecraft:area_effect_cloud,tag=NSD.AECMotion,limit=1] Pos
# アイテムを渡す
	execute as @e[type=minecraft:armor_stand,tag=NSD.AS.First] run data modify entity @s HandItems[0] set from entity @e[type=minecraft:item,tag=NSD.Thrown,distance=..2,limit=1] Item
# Tagを外す
	tag @e[type=minecraft:armor_stand,tag=NSD.AS.First,distance=..1] remove NSD.AS.First
# 要らないEntityを消す
	kill @e[type=minecraft:item,tag=NSD.Thrown,distance=..1]
	execute positioned 0.00 0.00 0.00 run kill @e[type=minecraft:area_effect_cloud,tag=NSD.AECMotion,distance=..3]
