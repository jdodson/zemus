require_relative('../spec_helper')
 
describe Zemus::Kickstarter do
  it "embeds kickstarter" do
    Zemus::Kickstarter.new("http://www.kickstarter.com/projects/sleepninja/monsters-ate-my-birthday-cake").to_embed.
      should eq("<iframe width='100%' height='600px' scrolling='no' src='http://www.kickstarter.com/projects/sleepninja/monsters-ate-my-birthday-cake/widget/video.html' frameborder='0'> </iframe><a href='http://www.kickstarter.com/projects/sleepninja/monsters-ate-my-birthday-cake' target='_blank' class='btn btn-default btn-xs'><i class='glyphicon glyphicon-heart'></i> Back this on Kickstarter!</a>")
  
    # fix for a bug where a kickstarter URL had a # sign at the end
    Zemus::Kickstarter.new("http://www.kickstarter.com/projects/sleepninja/monsters-ate-my-birthday-cake#").to_embed.
      should eq("<iframe width='100%' height='600px' scrolling='no' src='http://www.kickstarter.com/projects/sleepninja/monsters-ate-my-birthday-cake/widget/video.html' frameborder='0'> </iframe><a href='http://www.kickstarter.com/projects/sleepninja/monsters-ate-my-birthday-cake' target='_blank' class='btn btn-default btn-xs'><i class='glyphicon glyphicon-heart'></i> Back this on Kickstarter!</a>")
  end
end