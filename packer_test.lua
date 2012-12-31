local lunit = require "lunit"
local os = require "os"
local packer = require "packer"

module( "packer_test", lunit.testcase, package.seeall )

local path = "/tmp/packer_test.msgpack"

function setup()
  os.remove( path )
end

function test_read_nonexistant_file()
  table = packer.read( path )
  assert_table( table )
  assert_equal( 0, #table )
end

function test_writing_and_reading()
  table = { a = true, b = "omg" }
  packer.write( path, table )

  table = packer.read( path )
  assert_table( table )
  assert_equal( true, table.a )
  assert_equal( "omg", table.b )
end

