require "./spec_helper"

describe Bsdiff do
  it "not works" do
    expect_raises Exception, "./spec/files/old_file" do
      Bsdiff.bsdiff("./spec/files/old_file", "./spec/files/new_file", "./spec/files/generated_patch_file")
    end
  end

  it "work" do
    folder = "#{__DIR__}/files"
    Bsdiff.bsdiff("#{folder}/foo_old.gz", "#{folder}/foo_new.gz", "#{folder}/foo.patch")
    File.exists?("#{folder}/foo.patch").should eq true
  end
end
