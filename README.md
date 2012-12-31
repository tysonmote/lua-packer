# lua-packer

A simple wrapper around Antirez's lua-cmsgpack for reading / writing msgpack
files.

```lua
packer = require "packer"

table = packer.read( "./cool_stuff.msgpack" )
table.neat = true
packer.write( "/.cool_stuff.msgpack", table )
```

