require 'pry'
class CashRegister
    attr_accessor :total
    attr_accessor :discount
    attr_reader :items
    attr_accessor :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
       @total += price * quantity
       @last_transaction = title, price, quantity
       quantity.times do
        self.items=(title)
       end
    end

    def apply_discount
        if (@discount != 0)
            @total -= (@total * discount) / 100
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end

    def items=(item)
        @items.push(item)
    end

    def void_last_transaction
        last_transaction[2].times do
        @total -= @last_transaction[1]
        end
    end

end
