require "./spec_helper"

describe Bsdiff do
  it "not works" do
    expect_raises Exception, "./spec/files/old_file" do
      Bsdiff.bsdiff("./spec/files/old_file", "./spec/files/new_file", "./spec/files/generated_patch_file")
    end
  end

  it "work" do
    folder = "#{__DIR__}/files"
    # Generating a patch for diff of foo_new.gz and foo_old.gz
    Bsdiff.bsdiff("#{folder}/foo_old.gz", "#{folder}/foo_new.gz", "#{folder}/foo.patch")
    File.exists?("#{folder}/foo.patch").should eq true

    # Appling the patch foo.patch into the foo_old.gz, get updated_foo.gz
    Bspatch.bspatch("#{folder}/foo_old.gz", "#{folder}/updated_foo.gz", "#{folder}/foo.patch")

    # Check foo_new.gz same as updated_foo.gz
    system("diff #{folder}/foo_new.gz #{folder}/updated_foo.gz").should eq true
  end
end
