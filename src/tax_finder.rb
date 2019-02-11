require 'pry'
require_relative "./tax"
class TaxFinder

  def find_tax item_type
    tax = Tax.new.find_tax item_type
    
  end
end
