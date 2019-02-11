require_relative "./src/billing"
require_relative "./src/calculate_total"
require_relative "./src/discount_finder"
require_relative "./src/apply_discount"
require_relative "./src/grand_total"

class TotalBill

  def find_total_bill
    b = []
    while !ARGF.eof
      data = ARGF.gets
      item_code = data.split[0]
      quantity = data.split[1].to_i
      billing = Billing.new(item_code,quantity).print_bill
      b.push(billing)
      puts billing
      puts "=========="
    end
    total = CalculateTotal.new.find_total_of_products b
    discount = DiscountFinder.new.find_discount total
    discount_value = ApplyDiscount.new.apply_discount total, discount
    grand_total = GrandTotal.new.find_grand_total total, discount_value
    obj = {total: total, discount: discount, discount_value: discount_value, grand_total: grand_total}
    puts "*" * 100
    puts obj
  end
  TotalBill.new.find_total_bill
end