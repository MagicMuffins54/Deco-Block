data modify storage deco_block:data root.item set from entity @s Item

execute unless block ~ ~-1 ~ farmland run loot give @a[advancements={deco_block:place_crop=true},gamemode=!creative] loot deco_block:technical/item_frame_copy_nbt
execute if block ~ ~-1 ~ farmland align xyz positioned ~.5 ~.5 ~.5 summon item_display run function deco_block:impl/crop/item_display_setup

tp @s ~ -1000 ~
kill @s