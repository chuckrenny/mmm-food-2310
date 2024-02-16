class FoodFacade

  def self.food_search(q)
    service = FoodService.new
    json = service.search(q)
require 'pry';binding.pry
    @foods = json.map do |food_data|
      Food.new(food_data)
    end
  end
end