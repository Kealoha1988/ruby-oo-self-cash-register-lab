class CashRegister
    attr_accessor :discount, :total, :item
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @item = []
        @transaction = []
    end

    def add_item(title, price, quantity = 1)
        @total = total + (price * quantity)
        quantity.times do @item << title
        end
        @transaction << price *quantity
        @total
    end

    def apply_discount
      cool = @total * (@discount.to_f / 100.to_f)
      weird = @total - cool.to_i
      @total = weird
      @discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{weird}."
    end

    def items
        @item
    end

    def void_last_transaction
        @total = @total - @transaction.pop
    end



end

