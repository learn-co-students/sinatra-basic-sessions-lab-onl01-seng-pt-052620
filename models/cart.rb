class Cart

    attr_reader :items

    @@all = []

    def initialize(items)
    
        @items = items
        @@all << self

    end

    def self.all

        @@all

    end

end