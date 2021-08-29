#> necron.player:weapon/offhand/reset
#
# ステータス増加を元に戻す
#
# @within function necron.player:tick

# 値を減少
	execute if score @s NSD.HP.Add.Off matches ..2147483647 run function necron.player:weapon/offhand/hp/remove
	execute if score @s NSD.MP.Add.Off matches ..2147483647 run function necron.player:weapon/offhand/mp/remove
	execute if score @s NSD.ATK.Add.Off matches ..2147483647 run function necron.player:weapon/offhand/atk/remove
# Tagを外す
	tag @s remove NSD.Having.Offhand
# 最後の処理
	function necron.player:weapon/last
