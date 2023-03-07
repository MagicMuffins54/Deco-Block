execute unless block ~ ~-1 ~ farmland run function deco_block:impl/crop/drop
execute unless block ~ ~ ~ beetroots run function deco_block:impl/crop/drop

execute if entity @s[scores={deco_block.crop=..2}] run function deco_block:impl/crop/update_cmd