require 'pry'
require_relative "./discount"
class DiscountFinder

  def find_discount total
    total = Discount.new.find_discount total
  end
end
