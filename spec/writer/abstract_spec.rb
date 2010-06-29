require File.dirname(__FILE__) + '/../spec_helper'

load(File.dirname(__FILE__) + '/../schema.rb')

describe SeedFu::Writer::Abstract do
  
  it "should escape string value correctly" do
    writer = Abstract.new(:seed_file => "/tmp/seed_file")
    writer.escape_value('Test "madness"').should == "Test \"madness\""
  end
  
end