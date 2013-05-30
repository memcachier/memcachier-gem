require 'spec_helper'

describe "Memcachier" do
  let(:memcachier) { File.join(File.dirname(__FILE__), '..', 'lib', 'memcachier.rb') }
  [ "MEMCACHE_SERVERS", "MEMCACHE_USERNAME", "MEMCACHE_PASSWORD" ].each do |var|
    context var do
      let(:memcachier_var) { var.gsub "MEMCACHE", "MEMCACHIER" }
      before :each do
        ENV[var] = nil
        ENV[memcachier_var] = nil
      end
      it "not set by default" do
        load memcachier
        ENV[var].should be_nil
      end
      it "copied from memcachier" do
        ENV[memcachier_var] = "set"
        load memcachier
        ENV[var].should == "set"
      end
      it "not overwritten by memcachier" do
        ENV[var] = "old"
        ENV[memcachier_var] = "new"
        load memcachier
        ENV[var].should == "old"
      end
      it "not removed by memcachier" do
        ENV[var] = "old"
        load memcachier
        ENV[var].should == "old"
      end
    end
  end
end
