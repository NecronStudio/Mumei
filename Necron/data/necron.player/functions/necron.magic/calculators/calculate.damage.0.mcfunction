#> necron.player:necron.magic/calculators/calculate.damage.0
#
# 
#
# @public

# 計算
effect give @s wither 1 1 true
scoreboard players operation @s NSD.HP -= @e[type=armor_stand,tag=NSD.Magic.Public,distance=..1] NSD.INT
execute as @e[type=armor_stand,tag=NSD.Magic.Public,distance=..1] at @s run kill @s
execute if score @s NSD.HP matches ..0 run kill @s