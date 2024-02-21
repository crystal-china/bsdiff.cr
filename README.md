# bsdiff

Crystal bindings to [bsdiff](https://github.com/petervas/bsdifflib)

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     bsdiff:
       github: crystal-china/bsdiff
   ```

2. Run `shards install`

## Usage

```crystal
require "bsdiff"

Bsdiff.bsdiff("./old_file", "./new_file", "./generated_patch_file")
```

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/zw963/bsdiff/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Billy.Zheng](https://github.com/zw963) - creator and maintainer
