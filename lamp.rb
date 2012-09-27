class Lamp
    
    attr_reader :id, :name, :price

    @@count = 0

    def initialize(name, price)
        @name = name
        @price = price

        @id = @@count
        @@count += 1
    end
end
