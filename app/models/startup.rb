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

   def domains
    newArray = Startup.all.map.select{|startups| startups.domain}
    return newArray
   end


end



startup1 = Startup.new("Facebook","Zuck","Social Media")
startup2 = Startup.new("Uber","Travis","Transportation")

# startup1.name

Startup.all
binding.pry