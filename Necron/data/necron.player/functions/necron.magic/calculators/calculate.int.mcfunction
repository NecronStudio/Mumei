#> necron.player:necron.magic/calculators/calculate.int
#
# 
#
# @public

# 計算
scoreboard players operation $NSD.INT.Base NSD.INT = @s NSD.INT
scoreboard players operation $NSD.INT.Plus NSD.INT = @s NSD.INT
scoreboard players operation $NSD.INT.Plus NSD.INT += @s NSD.MP.Max
scoreboard players operation $NSD.INT.Plus NSD.INT /= $NSD.100 NSD.Const
scoreboard players operation $NSD.INT.Base NSD.INT += $NSD.INT.Plus NSD.INT
scoreboard players operation @e[type=armor_stand,tag=NSD.Magic.Public,distance=..0.01,sort=nearest,limit=1] NSD.INT = $NSD.INT.Base NSD.INT