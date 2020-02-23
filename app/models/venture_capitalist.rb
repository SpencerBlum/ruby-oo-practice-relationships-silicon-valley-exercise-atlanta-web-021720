class VentureCapitalist
attr_accessor :name, :total_worth

@@all = []

    def initialize(name, total_worth)
        @total_worth = total_worth

        @name = name
        @@all << self 
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        newArray = VentureCapitalist.all.select{ |companies| companies.total_worth > 10000000}#.to_i > 100000000}
        newArray.map{|el| el.name}
        
    end


    def offer_contract(type,investment, startup)
        FundingRound.new(type, investment, startup, self)
    end

    def funding_rounds

        FundingRound.all.select{|el| el.venture_capitalist == self}.uniq

    end

    def biggest_investment
        # newArray = FundingRound.all.select{|el| el.venture_capitalist == self}
        # newArray.max_by{|el| el.investment}
        funding_rounds.max_by{|el| el.investment}
    end

    def invested(domain_str)
        newArray = funding_rounds.select{|el| el.startup.domain == domain_str }

        newArray.map{|el| el.venture_capitalist.total_worth}.max

        
    end




    

end






