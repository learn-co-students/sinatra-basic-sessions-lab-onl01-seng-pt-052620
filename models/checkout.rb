class Checkout
    attr_accessor :item, :shopping_cart
    @@all = []
    
    def initialize(item, shopping_cart)
        @item = item 
        @shopping_cart = shopping_cart
        @@all << self
    end

    def self.all 
        @@all
    end

end