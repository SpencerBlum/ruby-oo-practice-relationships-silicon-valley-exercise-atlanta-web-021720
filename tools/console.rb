require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

startup1 = Startup.new("Facebook","Zuck","Social Media")
startup2 = Startup.new("Uber","Travis","Transportation")
startup3 = Startup.new("Uber","Travis","Transportation")

# startup1.name

kkb = VentureCapitalist.new("kkb", 1000000)
klinerperkins = VentureCapitalist.new("klinerperkins", 3100000000)
andreson = VentureCapitalist.new("andreeson", 1200000000)

seriesa = FundingRound.new("Series A", 150, kkb, startup1)
seriesB = FundingRound.new("Series B", 400, klinerperkins, startup3)
seriesD = FundingRound.new("Series C", 500, andreson, startup1)
seriesD = FundingRound.new("Series b", 300, andreson, startup3)
seriesD = FundingRound.new("Series a", 100, andreson, startup3)









Startup.all 



binding.pry
0 #leave this here to ensure binding.pry isn't the last line