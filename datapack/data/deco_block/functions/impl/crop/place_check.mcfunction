stopsound @a[distance=..16] * entity.item_frame.place
stopsound @a[distance=..16] * entity.item_frame.add_item

execute as @e[type=item_frame,distance=..10,tag=deco_block] at @s run function deco_block:impl/crop/location_check
advancement revoke @s only deco_block:place_crop