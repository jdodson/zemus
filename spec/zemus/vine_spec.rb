require_relative('../spec_helper')
 
describe Zemus::Vine do
  it "embeds vine" do
    Zemus::Vine.new("https://vine.co/v/bFPjjheVnau/embed/simple").to_embed.
      should eq("<iframe class='vine-embed' src='https://vine.co/v/bFPjjheVnau/embed/simple' width='100%' height='' frameborder='0'></iframe><script async src='//platform.vine.co/static/scripts/embed.js' charset='utf-8'></script>")
  end
end