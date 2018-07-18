class CashRegister
  
  attr_accessor :total, :discount, :quantity
  
  def initialize(discount = 0)
    @total = 0
    @discount=discount
  end
  
  def add_item(title, price, quantity = 1)
    @total = @total + (price*quantity)
  end
  
  def apply_discount
    @total = ( 1 - (@discount.to_f/100))*@total
    if @discount > 0
      return "After the discount, the total comes to #{@total}."
  end
  
end


