require 'pry'
require_relative "./product"
class ProductFinder

  def find_product item_code
    product = Product.new.find_product_item item_code
  end
end
