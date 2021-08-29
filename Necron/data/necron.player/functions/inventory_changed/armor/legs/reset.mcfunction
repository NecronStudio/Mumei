#> necron.player:inventory_changed/armor/legs/reset
#
# ステータス増加を元に戻す
#
# @within function necron.player:inventory_changed/

# 値を減少
	execute if score @s NSD.HP.Add.Legs matches ..2147483647 run function necron.player:inventory_changed/armor/legs/hp/remove
	execute if score @s NSD.MP.Add.Legs matches ..2147483647 run function necron.player:inventory_changed/armor/legs/mp/remove
	execute if score @s NSD.DEF.Add.Legs matches ..2147483647 run function necron.player:inventory_changed/armor/legs/def/remove
# Tagを外す
	tag @s remove NSD.Wearing.Legs
