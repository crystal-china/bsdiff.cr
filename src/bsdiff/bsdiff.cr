require "./lib"

module Bsdiff
  def self.bsdiff(old_file : String, new_file : String, patch_file : String)
    ret = LibBsdiff.bsdiff(old_file, new_file, patch_file)

    raise String.new(ret) unless ret.null?
  end
end
