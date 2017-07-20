class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

     def initialize(discount = 0)
       self.total = 0
       self.discount = discount
       self.items = []
     end

     def add_item (title, price, quantity = 1)
       self.total += price * quantity
       quantity.times { self.items << title }
       self.last_transaction = price * quantity
end

def apply_discount
     if self.total == 0
        "There is no discount to apply."
else
        "After the discount, the total comes to $#{self.total = self.total * 8 / 10 }."
   end
 end


  def void_last_transaction
self.total -= self.last_transaction
  end
end
