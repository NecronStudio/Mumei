#> necron.player:attack/immersive.citizens/attack.4
#
# 
#
# @public
scoreboard players operation $NSD.ATK NSD.ATK = @s NSD.ATK
scoreboard players operation $NSD.ATK.Crit NSD.ATK = @s NSD.ATK
scoreboard players operation $NSD.ATK.Crit NSD.ATK *= @s NSD.Crit.Damage
scoreboard players operation $NSD.ATK.Crit NSD.ATK /= $NSD.100 NSD.Const
scoreboard players operation $NSD.ATK NSD.ATK += $NSD.ATK.Crit NSD.ATK
scoreboard players reset $NSD.ATK.Crit NSD.ATK