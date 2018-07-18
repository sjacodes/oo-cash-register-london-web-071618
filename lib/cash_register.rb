class CashRegister
  
  attr_accessor :total, :discount, :quantity
  
  def initialize(discount = 0)
    @total = 0
    @discount=discount
    
    ALL_ITEMS << self
    
  end
  
  ALL_ITEMS = []
  
  def add_item(title, price, quantity = 1)
    @total = @total + (price*quantity)
    
  end
  
  def apply_discount
    @total = ( 1 - (@discount.to_f/100))*@total
    if @discount > 0
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    ALL_ITEMS
  end
  
end



# describe '#items' do
#     it 'returns an array containing all items that have been added' do
#       new_register = CashRegister.new
#       new_register.add_item("eggs", 1.99)
#       new_register.add_item("tomato", 1.76, 3)
#       expect(new_register.items).to eq(["eggs", "tomato", "tomato", "tomato"])
#     end
#   end

