require_relative "./tax_finder"
class CalculateTotal

  def find_total_of_products products
  	total = 0
  	products.each do |product|
  		total += product[:price]
  	end
  	total
  end
end
