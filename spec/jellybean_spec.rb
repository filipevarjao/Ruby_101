require File.join(File.dirname(__FILE__), "..", "lib", "dessert")
require File.join(File.dirname(__FILE__), "..", "lib", "jellybean")

describe JellyBean do

  subject { JellyBean.new("Cake", 100, "black licorice") }

  it "should have a delicious" do
    subject.should nil
  end

  it "should return true, healthy < 200" do
    subject.should be_healthy
  end

  it "should return false, healthy > 200" do
    @dessert = JellyBean.new("Cake", 500, "black licorice")
    @dessert.should_not be_healthy
  end

  it "should return false, a delicious" do
    subject.should_not be_delicious
  end

  it "should return true, a delicious" do
    @dessert = JellyBean.new("Cake", 180, "chocolate")
    @dessert.should be_delicious
  end

end
