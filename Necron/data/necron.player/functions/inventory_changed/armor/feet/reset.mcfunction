#> necron.player:inventory_changed/armor/feet/reset
#
# ステータス増加を元に戻す
#
# @within function necron.player:inventory_changed/

# 値を減少
	execute if score @s NSD.HP.Add.Feet matches ..2147483647 run function necron.player:inventory_changed/armor/feet/hp/remove
	execute if score @s NSD.MP.Add.Feet matches ..2147483647 run function necron.player:inventory_changed/armor/feet/mp/remove
	execute if score @s NSD.DEF.Add.Feet matches ..2147483647 run function necron.player:inventory_changed/armor/feet/def/remove
# Tagを外す
	tag @s remove NSD.Wearing.Feet
