require_relative('../spec_helper')
 
describe Zemus do
 
  it "must have a version" do
    Zemus::VERSION.should_not be_nil
  end
 
end