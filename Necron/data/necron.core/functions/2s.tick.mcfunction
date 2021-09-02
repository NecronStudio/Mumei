#> necron.core:2s.tick
#
# ２秒に一回実行
#
# @public


# プレイヤーのステータスを表示
	execute as @a run title @s actionbar [{"text":"Lv ","color":"yellow","underlined":true},{"score":{"name":"@s","objective":"NSD.Lv"},"color":"yellow","bold":true},{"text":"  ","underlined": false},{"text":"HP ","color":"light_purple"},{"score":{"name":"@s","objective":"NSD.HP"},"bold":true,"color":"light_purple"},{"text":"/","color":"light_purple"},{"score":{"name":"@s","objective":"NSD.HP.Max"},"color":"light_purple"},{"text":"  ","underlined":false},{"text":"MP ","color":"aqua","underlined":true},{"score":{"name":"@s","objective":"NSD.MP"},"color":"aqua","bold":true},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"NSD.MP.Max"},"color":"aqua"}]
# 次の実行を予約
	schedule clear necron.core:2s.tick
	schedule function necron.core:2s.tick 2s
