#> necron.player:weapon/mainhand/reset
#
# ステータス増加を元に戻す
#
# @within function necron.player:tick

# 値を減少
	execute if score @s NSD.HP.Add.Main matches ..2147483647 run function necron.player:weapon/mainhand/hp/remove
	execute if score @s NSD.MP.Add.Main matches ..2147483647 run function necron.player:weapon/mainhand/mp/remove
	execute if score @s NSD.ATK.Add.Main matches ..2147483647 run function necron.player:weapon/mainhand/atk/remove
# Tagを外す
	tag @s remove NSD.Having.Mainhand
# 最後の処理
	function necron.player:weapon/last
