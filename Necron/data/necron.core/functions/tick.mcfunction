#> necron.core:tick
#
# 常時実行
#
# @within tag/function minecraft:tick

#  闇の一党
execute as @e[type=arrow] at @s run function necron.player:damage.taken/arrow
execute as @e[type=creeper] at @s run function necron.player:damage.taken/creeper
execute as @a at @s run function necron.player:damage.taken/protection
execute as @a at @s run function necron.player:damage.taken/damage.taken.0
execute as @a at @s run function necron.player:attack/attack.0

# 武器投げの会
execute as @a at @s if score @s NSD.WT.Sneak matches 1.. run function necron.player:weapon.throwing/weapon.throwing.0
execute as @e[type=armor_stand,tag=NSD.WT.0] at @s run function necron.player:weapon.throwing/weapon.throwing.1
# プレイヤーで常時実行
	execute as @a run function necron.player:tick
