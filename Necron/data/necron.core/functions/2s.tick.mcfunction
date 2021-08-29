#> necron.core:2s.tick
#
# ２秒に一回実行
#
# @within function necron.core:load
# @within function necron.player:recover/last
# @within function necron.player:weapon/last
# @private

# プレイヤーのステータスを表示
	execute as @a run title @s actionbar [{"text":"HP ","color":"light_purple","underlined":true},{"score":{"name":"@s","objective":"NSD.HP"},"bold":true},{"text":"/"},{"score":{"name":"@s","objective":"NSD.HP.Max"}},{"text":"  ","underlined":false},{"text":"Lv ","color":"yellow"},{"score":{"name":"@s","objective":"NSD.Lv"},"color":"yellow","bold":true},{"text":"  ","underlined": false},{"text":"MP ","color":"aqua","underlined":true},{"score":{"name":"@s","objective":"NSD.MP"},"color":"aqua","bold":true},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"NSD.MP.Max"},"color":"aqua"}]
# 次の実行を予約
	schedule clear necron.core:2s.tick
	schedule function necron.core:2s.tick 2s
