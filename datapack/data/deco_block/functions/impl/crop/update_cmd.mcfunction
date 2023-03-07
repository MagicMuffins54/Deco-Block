execute if block ~ ~ ~ beetroots[age=1] run scoreboard players set @s deco_block.crop 1
execute if block ~ ~ ~ beetroots[age=2] run scoreboard players set @s deco_block.crop 2
execute if block ~ ~ ~ beetroots[age=3] run scoreboard players set @s deco_block.crop 3

execute if entity @s[scores={deco_block.crop=1}] run data modify entity @s item.tag.CustomModelData set from entity @s item.tag.deco_block.CustomModelData[1]
execute if entity @s[scores={deco_block.crop=2}] run data modify entity @s item.tag.CustomModelData set from entity @s item.tag.deco_block.CustomModelData[2]
execute if entity @s[scores={deco_block.crop=3}] run data modify entity @s item.tag.CustomModelData set from entity @s item.tag.deco_block.CustomModelData[3]