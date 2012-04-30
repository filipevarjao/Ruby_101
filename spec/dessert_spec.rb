require File.join(File.dirname(__FILE__), "..", "lib", "dessert")

describe Dessert do

  subject { Dessert.new("Cake", 180) }

  it "should have a name and calories" do
    subject.should nil
  end

  it "should return true, healthy < 200" do
    subject.should be_healthy
  end

  it "should return false, healthy > 200" do
    @dessert = Dessert.new("Cake", 500)
    @dessert.should_not be_healthy
  end

  it "should have a delicious" do
    subject.should be_delicious
  end
end
