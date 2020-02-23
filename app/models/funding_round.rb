class FundingRound

    attr_accessor :startup, :venture_capitalist, :type, :investment, :domain

    @@all = []
    def initialize(type, investment, venture_capitalist, startup)
        @type = type
        @investment = investment
        @venture_capitalist = venture_capitalist
        @startup = startup
        @@all << self
    end

    def self.all
        @@all
    end


end
