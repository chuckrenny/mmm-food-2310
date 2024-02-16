class WelcomeController < ApplicationController
  def index
    @foods = FoodFacade.food_search(params[:q])
    if @foods
      redirect foods_path
    end
  end
end
