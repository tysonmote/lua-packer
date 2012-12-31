local io = require "io"
local msgpack = require "cmsgpack"

local packer = {}

function packer.read( path )
  local file = io.open( path, "r" )
  if file then
    return msgpack.unpack( file:read( "*all" ) )
  else
    return {}
  end
end

function packer.write( path, table )
  local file = assert( io.open( path, "w" ) )
  file:write( msgpack.pack( table ) )
  file:close()
end

return packer

