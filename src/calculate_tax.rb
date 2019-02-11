require_relative "./tax_finder"
class CalculateTax

  def calculate_tax item_type, total
  	tax = find_tax item_type
  	total_tax = tax * total / 100
  end

  private
  def find_tax item_type
    tax = TaxFinder.new.find_tax item_type
  end
end
