require 'pry'
class Discount

    DISCOUNTS = [
   	{ total: 500, discount: 2 }
    ].freeze

    def find_discount total
    	DISCOUNTS.select { |discount| discount[:discount] < total }.last[:discount]
    end

end