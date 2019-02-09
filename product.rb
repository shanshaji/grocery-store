require 'pry'
class Product
    PRODUCTS = [
   	{ item_code: "00001", item_name: "COCONUT OIL", item_type: "Eatable", unit_price: 200 },
   	{ item_code: "00004", item_name: "OIL", item_type: "Eatable", unit_price: 220 },
   	{ item_code: "00006", item_name: "Vegetable OIL", item_type: "Eatable", unit_price: 220 }
    ].freeze
    def find_product_item item_code
    	PRODUCTS.select { |product| product[:item_code] == item_code }.first
    end
end