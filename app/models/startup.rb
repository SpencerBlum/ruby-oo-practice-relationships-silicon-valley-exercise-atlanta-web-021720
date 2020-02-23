require "pry"

class Startup

    attr_accessor :name, :founder, :domain

    @@all = []

   def initialize(name, founder, domain)
        @name =  name
        @founder = founder
        @domain = domain
        @@all << self
   end

   def Startup.all
    @@all
   end

   def pivot(new_domain, new_name)
    #given domain and name change the domain and name of startup
    self.domain = new_domain
    self.name = new_name
   end

   def find_by_founder(founders_name)
    #Return the first startup whos founders name matches
    
     Startup.all.select{|startups| startups.founder == founders_name}
        return self.name
   end

   def self.domains
    Startup.all.map{|startups| startups.domain}
   end

   def sign_contract(investment_type, amount_invested, venture_capitalist)
        FundingRound.new(investment_type, amount_invested, venture_capitalist, self)
   end

   def funding_rounds
     FundingRound.all.select{|el| el.startup == self}.length
   end

   def total_funds
     newArray = FundingRound.all.select{|el| el.startup == self}
     newArray.map{|el| el.investment}.sum

   end

     def investors
          #extra .map to go into name of vc

          FundingRound.all.select{|el| el.startup == self}.map{|el| el.venture_capitalist}.map{|el| el.name}.uniq
     end

     def big_investors
           investors = FundingRound.all.select{|el| el.startup == self}.map{|el| el.venture_capitalist}.map{|el| el.name}.uniq
          
          #VentureCapitalist.tres_commas_club
          #VentureCapitalist.tres_commas_club

              # testArray = []
          for i in 0...investors.length
              newArray =  VentureCapitalist.tres_commas_club.select{|el| el == investors[i]}
               i+= 1
               #testArray.push(investors[i])
          end
          
          newArray

     end


   
end

