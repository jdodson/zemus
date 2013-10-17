require_relative('../spec_helper')
 
describe Zemus::Kickstarter do
  it "embeds images" do
    Zemus::Kickstarter.new.to_embed("http://www.kickstarter.com/projects/sleepninja/monsters-ate-my-birthday-cake").
      should eq("<iframe width='100%' height='' scrolling='no' src='http://www.kickstarter.com/projects/sleepninja/monsters-ate-my-birthday-cake/widget/video.html' frameborder='0'> </iframe><a href='http://www.kickstarter.com/projects/sleepninja/monsters-ate-my-birthday-cake' target='_blank' class='btn btn-default btn-xs'><i class='glyphicon glyphicon-heart'></i> Back this on Kickstarter!</a>")
  end
end