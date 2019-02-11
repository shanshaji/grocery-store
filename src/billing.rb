require 'pry'
require_relative "./product_finder"
require_relative "./calculate_tax"
require_relative "./calculate_unit_total"
require_relative "./calculate_product_cost"
class Billing
  attr_reader :item_code, :quantity
  def initialize(item_code, quantity)
    @item_code = item_code
    @quantity = quantity
  end

  def print_bill
    product = ProductFinder.new.find_product @item_code
    output = {}
    if product
    	unit_total = CalculateUnitTotal.new.find_total product[:unit_price], @quantity
    	tax = CalculateTax.new.calculate_tax product[:item_type], unit_total
    	final_product_cost = CalculateProductCost.new.find_product_cost tax, unit_total
    	output = { product_name: product[:item_name], unit_price: product[:unit_price], tax: tax, price: final_product_cost, quantity: @quantity, item_code: item_code }
    end
    output
  end
end
