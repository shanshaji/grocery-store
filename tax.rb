require 'pry'
class Tax

    TAXES = [
   	{ item_type: "Eatable", gst_tax: 5 }
    ].freeze

    def find_tax item_type
    	TAXES.select { |tax| tax[:item_type] == item_type }.first[:gst_tax]
    end

end