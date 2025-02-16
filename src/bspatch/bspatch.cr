require "./lib"

module Bspatch
  def self.bspatch(old_file : String, new_file : String, patch_file : String)
    ret = LibBspatch.bspatch(old_file, new_file, patch_file)

    raise String.new(ret) unless ret.null?
  end
end
