require 'spec_helper'
require './src/tree.rb'

describe Tree do
  before(:each) do
    @tree = Tree.new
  end

  it "initializes empty" do
    @tree.length.should == 0
  end

  describe "#add" do
    it "should add the first item correctly" do
      @tree.add('hi')
      @tree.length.should == 1
    end

    it "should add other items correctly" do 
      @tree.add('first item')
      @tree.add('second item')
      @tree.length.should == 2
    end
  end

  describe "#remove" do
    it "should remove items" do
      @tree.add('first item')
      @tree.length.should == 1
      @tree.remove
      @tree.length.should == 0
    end

    it "should remove the last item" do
      @tree.add('first item')
      @tree.add('second item')
      @tree.remove.should == 'second item'
      @tree.remove.should == 'first item'
    end
  end
end