require "./bspatch/bspatch"

module Bspatch
  VERSION = {{ `shards version "#{__DIR__}"`.chomp.stringify }}

end
