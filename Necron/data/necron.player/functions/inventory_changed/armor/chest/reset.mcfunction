#> necron.player:inventory_changed/armor/chest/reset
#
# ステータス増加を元に戻す
#
# @within function necron.player:inventory_changed/

# 値を減少
	execute if score @s NSD.HP.Add.Chest matches ..2147483647 run function necron.player:inventory_changed/armor/chest/hp/remove
	execute if score @s NSD.MP.Add.Chest matches ..2147483647 run function necron.player:inventory_changed/armor/chest/mp/remove
	execute if score @s NSD.DEF.Add.Cest matches ..2147483647 run function necron.player:inventory_changed/armor/chest/def/remove
# Tagを外す
	tag @s remove NSD.Wearing.Chest
