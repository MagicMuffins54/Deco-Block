execute unless block ~ ~-1 ~ farmland run function deco_block:impl/crop/drop
execute unless block ~ ~ ~ beetroots run function deco_block:impl/crop/drop

execute if block ~ ~ ~ beetroots[age=0] run scoreboard players set @s deco_block.crop 0
execute if block ~ ~ ~ beetroots[age=1] run scoreboard players set @s deco_block.crop 1
execute if block ~ ~ ~ beetroots[age=2] run scoreboard players set @s deco_block.crop 2
execute if block ~ ~ ~ beetroots[age=3] run scoreboard players set @s deco_block.crop 3