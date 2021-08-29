#> necron.player:inventory_changed/armor/head/reset
#
# ステータス増加を元に戻す
#
# @within function necron.player:inventory_changed/

# 値を減少
	execute if score @s NSD.HP.Add.Head matches ..2147483647 run function necron.player:inventory_changed/armor/head/hp/remove
	execute if score @s NSD.MP.Add.Head matches ..2147483647 run function necron.player:inventory_changed/armor/head/mp/remove
	execute if score @s NSD.DEF.Add.Head matches ..2147483647 run function necron.player:inventory_changed/armor/head/def/remove
# Tagを外す
	tag @s remove NSD.Wearing.Head
