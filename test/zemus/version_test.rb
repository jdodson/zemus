require_relative('../test_helper')
 
describe Zemus do
 
  it "must have a version" do
    Zemus::VERSION.wont_be_nil
  end
 
end