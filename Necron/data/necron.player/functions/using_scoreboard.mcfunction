#> necron.player:using_scoreboard
#
# 
#
# @within function necron.player:damage_taken/damage_taken

scoreboard objectives add NSD.Detection dummy
scoreboard objectives add NSD.Health.0 dummy
scoreboard objectives add NSD.Health.1 dummy
scoreboard objectives add NSD.S dummy
scoreboard objectives add NSD.Damage.Taken minecraft.custom:minecraft.damage_taken
scoreboard players set $2 NSD.S 2
scoreboard players set $1 NSD.S 1
scoreboard players set $NSD.Detection NSD.Detection 1000000