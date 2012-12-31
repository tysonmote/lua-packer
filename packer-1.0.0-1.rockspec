package = "packer"
version = "1.0.0-1"
source = {
  url = "git://github.com/tysontate/lua-packer.git",
  tag = "1.0.0"
}
description = {
  summary = "Quick 'n easy msgpack file storage of tables.'",
  detailed = [[
    Packer is a simple wrapper around Antirez's lua-cmsgpack for writing and
    reading msgpack files.
  ]],
  homepage = "https://github.com/tysontate/lua-packer",
  license = "MIT/X11"
}
dependencies = {
  "lua-cmsgpack >= 0.3.0"
}
build = {
  type = "builtin",
  modules = {
    packer = "packer.lua"
  }
}

