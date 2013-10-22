require 'spec_helper'
require './src/linked_list.rb'

describe Linked_List do
  before(:each) do
    @linked_list = Linked_List.new
  end

  it "initializes empty" do
    @linked_list.length.should == 0
  end

  describe "#add" do
    it "should add the first item correctly" do
      @linked_list.add('hi')
      @linked_list.length.should == 1
    end

    it "should add other items correctly" do 
      @linked_list.add('first item')
      @linked_list.add('second item')
      @linked_list.length.should == 2
      @linked_list.next.name.should == 'second item'
    end
  end

  describe "#remove" do
    it "should remove items" do
      @linked_list.add('first item')
      @linked_list.length.should == 1
      @linked_list.remove
      @linked_list.length.should == 0
    end

    it "should remove the last item" do
      @linked_list.add('first item')
      @linked_list.add('second item')
      @linked_list.remove.should == 'second item'
      @linked_list.remove.should == 'first item'
    end
  end
end