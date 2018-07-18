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
  end
  
  
  
end





# describe '#apply_discount' do
#     context 'the cash register was initialized with an employee discount' do
#       it 'applies the discount to the total price' do
#         cash_register_with_discount.add_item("macbook air", 1000)
#         cash_register_with_discount.apply_discount
#         expect(cash_register_with_discount.total).to eq(800)
#       end

#       it 'returns success message with updated total' do
#         cash_register_with_discount.add_item("macbook air", 1000)
#         expect(cash_register_with_discount.apply_discount).to eq("After the discount, the total comes to $800.")
#       end

#       it 'reduces the total' do
#         cash_register.total = 0
#         cash_register_with_discount.add_item("macbook air", 1000)
#         expect{cash_register_with_discount.apply_discount}.to change{cash_register_with_discount.total}.by(-200)
#       end
#     end