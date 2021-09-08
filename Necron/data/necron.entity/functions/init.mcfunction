#> necron.entity:init
#
# 
#
# @within function necron.core:tick

# 
#> Tag
#@public
 #declare tag NSD.Entity
# 帽子を他の場所に移す
	execute if data entity @s ArmorItems[3].tag.NsdArmor run data modify storage necron: Status set from entity @s ArmorItems[3].tag
# ステータスを与える
	# 体力
		execute if data storage necron: Status.NsdStatus.HP store result score @s NSD.HP store result score @s NSD.HP.Max run data get storage necron: Status.NsdStatus.HP
		execute unless data storage necron: Status.NsdStatus.HP store result score @s NSD.HP store result score @s NSD.HP.Max run data get entity @s Health 5
	# 防御力
		execute if data storage necron: Status.NsdStatus.DEF store result score @s NSD.ATK run data get storage necron: Status.NsdStatus.DEF
		execute unless data storage necron: Status.NsdStatus.DEF run scoreboard players set @s NSD.DEF 0
	# 攻撃力
		execute if data storage necron: Status.NsdStatus.ATK store result score @s NSD.ATK run data get storage necron: Status.NsdStatus.ATK
		execute unless data storage necron: Status.NsdStatus.ATK run scoreboard players set @s NSD.ATK 10
# 帽子を消す
	execute if data storage necron: Status.NsdRemove run data remove entity @s ArmorItems[3]
# 初期化完了
	tag @s add NSD.Entity
# 一時使用Storageをリセット
	execute if data storage necron: Status run data remove storage necron: Status
