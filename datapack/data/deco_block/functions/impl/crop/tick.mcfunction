execute unless block ~ ~-1 ~ farmland run function deco_block:impl/crop/drop
execute unless block ~ ~ ~ beetroots run function deco_block:impl/crop/drop

execute unless entity @s[scores={deco_block.crop=3}] run function deco_block:impl/crop/update_cmd