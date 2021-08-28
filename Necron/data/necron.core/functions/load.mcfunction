#> necron.core:load
#
# リロード時実行
#
# @within tag/function minecraft:load

# 初期化
	execute unless data storage necron: Once run function necron.core:init
# ２秒に一回実行されるfunctionを予約
	schedule function necron.core:2s.tick 1t
