# How to use:
1) add to your pack the function tag at `...\data\deco_block\tags\functions\block\drops.json`, which calls a function that runs a command like

```haskell
execute if data storage deco_block:data root{drop:"namespace:cool_ore"} run loot spawn ~ ~ ~ loot namespace:cool_ore
```

2) create a loot table with a format as follows:
```json
{
    "pools": [
      {
        "rolls": 1,
        "entries": [
          {
            "type": "minecraft:item",
            "name": "minecraft:furnace",
            "functions": [
              {
                "function": "minecraft:set_nbt",
                "tag": "{BlockEntityTag:{Items:[{id:\"minecraft:furnace\",Count:1b,Slot:0b,tag:{CustomModelData:1,smithed:{block:{id:\"deco_block\"}},deco_block:{drop:\"namespace:cool_ore\"}}}]}}"
              }
            ]
          }
        ]
      }
    ]
  }
```
`tag.BlockEntityTag.Items[0].tag..deco_block.drop` is where the check the mined block id happens
3) Install smithed.custom_block if you haven't aready. https://wiki.smithed.dev/libraries/custom-block/

# Extras

score `#silk_touch deco_block.mine` will be `1` when the tool used to break the block is enchanted with silk touch
storage `deco_block:data root.tool` contains the nbt of the tool used to mine the block
support for looting enchant coming soon
